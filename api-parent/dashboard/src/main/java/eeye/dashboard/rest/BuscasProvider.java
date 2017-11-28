package eeye.dashboard.rest;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mongodb.BasicDBObject;
import com.mongodb.BasicDBObjectBuilder;

import eeye.dao.AcoesRepository;
import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Acao;
import eeye.model.TipoDispositivo;

@RestController
@RequestMapping("/dashboardData/buscas")
public class BuscasProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	@Autowired
	AcoesRepository repo;

	@Autowired
	NavegacaoRepository navRepo;

	@RequestMapping(method = RequestMethod.GET, value = "/termosMaisComuns")
	public ResponseEntity<Map<String, Integer>> termosMaisComuns(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Acao> pesquisas = repo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "pesquisa");

		Map<String, Integer> mapPalavras = new HashMap<>();

		pesquisas.forEach((pesquisa) -> {
			String textoPesquisa = pesquisa.getIdElemento();

			for (String palavraPesquisa : textoPesquisa.split(" ")) {
				mapPalavras.merge(palavraPesquisa, 1, (a, b) -> a + b);
			}
		});

		return new ResponseEntity<>(mapPalavras, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/visitantesBuscas")
	public ResponseEntity<Integer[]> numVisitantesBuscas() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);

		BasicDBObject query = new BasicDBObject();
		query.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());
		List<String> users = mongoTemplate.getCollection("navegacao").distinct("user", query);
		int totalUsers = users.size();

		BasicDBObject queryPesquisas = new BasicDBObject();
		queryPesquisas.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());
		queryPesquisas.put("tipo", "pesquisa");
		List<String> usersPesquisas = mongoTemplate.getCollection("acoes").distinct("user", queryPesquisas);
		int totalUsersPesquisas = usersPesquisas.size();

		return new ResponseEntity<>(new Integer[] { totalUsers, totalUsersPesquisas }, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/cliqueProdutosPesquisa")
	public ResponseEntity<Integer[]> numCliqueProdutosPesquisa() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);

		int totalPesquisa = repo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "pesquisa").size();
		int totalCliques = repo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "clique").size();

		return new ResponseEntity<>(new Integer[] { totalPesquisa, totalCliques }, HttpStatus.OK);	
	}

	@RequestMapping(method = RequestMethod.GET, value = "/pesquisasMobile")
	public ResponseEntity<Integer[]> numPesquisasMobile() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);

		BasicDBObject query = new BasicDBObject();

		query.putAll(BasicDBObjectBuilder
				.start("$or",
						new Object[] {
								BasicDBObjectBuilder.start("tipoDispositivo", TipoDispositivo.CELULAR.name()).get(),
								BasicDBObjectBuilder.start("tipoDispositivo", TipoDispositivo.TABLET.name()).get() })
				.get());
		query.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());
		List<String> users = mongoTemplate.getCollection("navegacao").distinct("user", query);
		int totalUsers = users.size();

		BasicDBObject queryPesquisas = new BasicDBObject();
		queryPesquisas.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());
		queryPesquisas.put("tipo", "pesquisa");
		List<String> usersPesquisas = mongoTemplate.getCollection("acoes").distinct("user", queryPesquisas);
		usersPesquisas.removeIf((userPesquisa) -> !users.contains(userPesquisa));
		int totalUsersPesquisas = usersPesquisas.size();

		return new ResponseEntity<>(new Integer[] { totalUsers, totalUsersPesquisas }, HttpStatus.OK);
	}
}
