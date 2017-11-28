package eeye.dashboard.rest;

import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData/paginasEventos")
public class PaginasEventosProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	@Autowired
	NavegacaoRepository repo;
	
	@Autowired
	AcoesRepository acoesRepo;

	@RequestMapping(method = RequestMethod.GET, value = "/paginasMaisAcessadas")
	public ResponseEntity<Map<String, Integer>> termosMaisComuns(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = repo.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Integer> mapPaginasAcessadas = new HashMap<>();

		navegacoes.forEach((navegacao) -> {
			adicionarBarraNoFinal(navegacao);
			mapPaginasAcessadas.merge(navegacao.getPagina(), 1, (a, b) -> a + b);
		});

		return new ResponseEntity<>(mapPaginasAcessadas, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/paginasMaisRejeitadas")
	public ResponseEntity<Map<String, Integer>> paginasMaisRejeitadas(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = repo.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Navegacao> mapUltimasNavegacoes = new HashMap<>();

		navegacoes.forEach((navegacao) -> {
			adicionarBarraNoFinal(navegacao);
			mapUltimasNavegacoes.merge(navegacao.getSessao(), navegacao, (navegacaoAtual, navegacaoNova) -> {
				return navegacaoAtual.getHorario().after(navegacaoNova.getHorario()) ? navegacaoAtual : navegacaoNova;
			});
		});

		Map<String, Integer> mapPaginasAcessadas = new HashMap<>();

		mapUltimasNavegacoes.entrySet().forEach((entry) -> {
			mapPaginasAcessadas.merge(entry.getValue().getPagina(), 1, (a, b) -> a + b);
		});

		return new ResponseEntity<>(mapPaginasAcessadas, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/cliquesBanner")
	public ResponseEntity<Integer> cliquesBanner() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);
		
		int total = acoesRepo.findByHorarioBetweenAndTipoAndIdElemento(dataFim, dataInicio, "clique", "BANNER_PROMOCIONAL").size();

		return new ResponseEntity<>(total, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/eventosSessao")
	public ResponseEntity<Integer> eventosSessao() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);
		
		BasicDBObject query = new BasicDBObject();
		query.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());
		List<String> sessoes = mongoTemplate.getCollection("navegacao").distinct("sessao", query);
		int totalSessoes = sessoes.size();
		
		int totalEventos = acoesRepo.findByHorarioBetween(dataFim, dataInicio).size();

		return new ResponseEntity<>(totalEventos/totalSessoes, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/visitantesWishlistCarrinho")
	public ResponseEntity<Integer> visitantesWishlistCarrinho() {
		Date dataInicio = DateUtils.pegarDataMenosXDias(-1);
		Date dataFim = DateUtils.pegarDataMenosXDias(6);
		
		List<Acao> acoes = acoesRepo.findByHorarioBetweenAndTipoOrTipo(dataFim, dataInicio, "wishlist", "carrinho");
		Set<String> usuariosContabilizados = new HashSet<>();
		
		acoes.forEach((acao) -> {
			if (!usuariosContabilizados.contains(acao.getUser())) {
				usuariosContabilizados.add(acao.getUser());
			}
		});

		return new ResponseEntity<>(usuariosContabilizados.size(), HttpStatus.OK);
	}
	
	private void adicionarBarraNoFinal(Navegacao navegacao) {
		String pagina = navegacao.getPagina();
		if (!pagina.endsWith("/")) {
			navegacao.setPagina(pagina.concat("/"));
		}
	}
}
