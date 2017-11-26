package eeye.dashboard.rest;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
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
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

import eeye.dao.AcoesRepository;
import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Acao;
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData")
public class DashboardDataProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	@Autowired
	private NavegacaoRepository navegacaoRepository;

	@Autowired
	private AcoesRepository acaoRepository;

	private final SimpleDateFormat formatoDataGraficos = new SimpleDateFormat("dd/MM");

	@RequestMapping(method = RequestMethod.GET, value = "/numUsuariosAtuais")
	public ResponseEntity<Integer> numeroSessoesAtual() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusMinutes(10);

		Date desde10Min = Date.from(date.toInstant());

		return new ResponseEntity<>(totalUsuariosDesde(desde10Min), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numUsuarios")
	public ResponseEntity<Integer> numeroUsuariosSemana(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		return new ResponseEntity<>(totalUsuariosEntre(dataInicio, dataFim), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numSessoes")
	public ResponseEntity<Integer> numeroSessoesSemana(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		return new ResponseEntity<>(totalSessoesEntre(dataInicio, dataFim), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numUsuariosAgrupados/")
	public ResponseEntity<Map<String, Integer>> numUsuariosPorDia(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);
		return new ResponseEntity<>(usuariosPorDia(navegacoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numSessoesAgrupadas/")
	public ResponseEntity<Map<String, Integer>> numSessoesPorDia(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);
		return new ResponseEntity<>(sessoesPorDia(navegacoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numPesquisasAgrupadas/")
	public ResponseEntity<Map<String, Integer>> numPesquisasPorDia(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Acao> acoes = acaoRepository.findByHorarioBetweenAndTipo(dataFim, dataInicio, "pesquisa");
		return new ResponseEntity<>(acoesPorDia(acoes), HttpStatus.OK);
	}

	private Integer totalUsuariosDesde(Date date) {
		return totalXDesde("user", date);
	}

	private Integer totalUsuariosEntre(Date dataInicio, Date dataFim) {
		return totalXEntre("user", dataInicio, dataFim);
	}

	private Integer totalSessoesEntre(Date dataInicio, Date dataFim) {
		return totalXEntre("sessao", dataInicio, dataFim);
	}

	private Integer totalXDesde(String campo, Date date) {
		BasicDBObject query = new BasicDBObject();

		query.put("horario", new BasicDBObject("$gt", date));

		List<String> sessoes = mongoTemplate.getCollection("navegacao").distinct(campo, query);

		return sessoes.size();
	}

	private Integer totalXEntre(String campo, Date dataInicio, Date dataFim) {
		BasicDBObject query = new BasicDBObject();

		query.put("horario", BasicDBObjectBuilder.start("$gte", dataFim).add("$lt", dataInicio).get());

		List<String> sessoes = mongoTemplate.getCollection("navegacao").distinct(campo, query);

		return sessoes.size();
	}

	@RequestMapping(method = RequestMethod.GET, value = "/paginasAtivas")
	public ResponseEntity<Map<String, Integer>> paginasAtivas() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusMinutes(10);

		BasicDBObject query = new BasicDBObject();

		query.put("horario", new BasicDBObject("$gt", Date.from(date.toInstant())));

		DBCursor cursor = mongoTemplate.getCollection("navegacao").find(query);

		Map<String, Integer> contadorPaginas = new HashMap<>();
		while (cursor.hasNext()) {
			DBObject evento = cursor.next();

			String pagina = (String) evento.get("pagina");
			adicionarContadorPagina(contadorPaginas, pagina);
		}

		return new ResponseEntity<>(contadorPaginas, HttpStatus.OK);
	}

	private void adicionarContadorPagina(Map<String, Integer> contadorPaginas, String pagina) {
		contadorPaginas.merge(pagina, 1, (a, b) -> a + b);
	}

	private Map<String, Integer> sessoesPorDia(List<Navegacao> eventos) {
		Map<String, Integer> sessoesDia = new HashMap<>();
		Set<String> sessoesJaSalvas = new HashSet<>();

		for (Navegacao evento : eventos) {
			String diaEvento = formatoDataGraficos.format(evento.getHorario());
			String sessaoDia = evento.getSessao() + diaEvento;

			adicionarALista(sessoesDia, sessoesJaSalvas, sessaoDia, diaEvento);
		}

		return sessoesDia;
	}

	private Map<String, Integer> usuariosPorDia(List<Navegacao> eventos) {
		Map<String, Integer> usuariosDia = new HashMap<>();
		Set<String> usuariosJaSalvos = new HashSet<>();

		for (Navegacao evento : eventos) {
			String diaEvento = formatoDataGraficos.format(evento.getHorario());
			String usuarioDia = evento.getUser() + diaEvento;

			adicionarALista(usuariosDia, usuariosJaSalvos, usuarioDia, diaEvento);
		}

		return usuariosDia;
	}

	private Map<String, Integer> acoesPorDia(List<Acao> eventos) {
		Map<String, Integer> acoesPorDia = new HashMap<>();

		for (Acao evento : eventos) {
			String diaEvento = formatoDataGraficos.format(evento.getHorario());
			acoesPorDia.merge(diaEvento, 1, (a, b) -> a + b);
		}

		return acoesPorDia;
	}

	private void adicionarALista(Map<String, Integer> elementos, Set<String> elementosJaSalvos, String idElemento,
			String elemento) {
		if (elementosJaSalvos.contains(idElemento)) {
			return;
		}

		elementosJaSalvos.add(idElemento);

		if (elementos.containsKey(elemento)) {
			elementos.put(elemento, elementos.get(elemento) + 1);
		} else {
			elementos.put(elemento, 1);
		}
	}
}
