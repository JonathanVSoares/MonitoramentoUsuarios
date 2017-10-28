package ufpr.tads.monitorusuario.dashboard.rest;

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
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

import ufpr.tads.monitorusuario.api.model.Evento;

@RestController
@RequestMapping("/dashboardData")
public class DashboardDataProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	private final SimpleDateFormat formatoDataGraficos = new SimpleDateFormat("dd/MM");

	@RequestMapping(method = RequestMethod.GET, value = "/numUsuarios")
	public ResponseEntity<Integer> numeroSessoesAtual() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusMinutes(10);

		Date desde10Min = Date.from(date.toInstant());

		return new ResponseEntity<Integer>(totalUsuariosDesde(desde10Min), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numUsuarios/ultimosDias")
	public ResponseEntity<Integer> numeroUsuariosSemana() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(7).withHour(0).withMinute(0)
				.withSecond(0);

		Date desde7Dias = Date.from(date.toInstant());

		return new ResponseEntity<Integer>(totalUsuariosDesde(desde7Dias), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/numSessoes/ultimosDias")
	public ResponseEntity<Integer> numeroSessoesSemana() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(7).withHour(0).withMinute(0)
				.withSecond(0);

		Date desde7Dias = Date.from(date.toInstant());

		return new ResponseEntity<Integer>(totalSessoesDesde(desde7Dias), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/numUsuariosAgrupados/")
	public ResponseEntity<Map<String, Integer>> numUsuariosPorDia(@RequestParam(value = "dias") int dias) {
		return new ResponseEntity<>(usuariosPorDia(dias), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/numSessoesAgrupadas/")
	public ResponseEntity<Map<String, Integer>> numSessoesPorDia(@RequestParam(value = "dias") int dias) {
		return new ResponseEntity<>(sessoesPorDia(dias), HttpStatus.OK);
	}

	private Integer totalUsuariosDesde(Date date) {
		return totalXDesde("user", date);
	}

	private Integer totalSessoesDesde(Date date) {
		return totalXDesde("sessao", date);
	}

	private Integer totalXDesde(String campo, Date date) {
		Date.from(date.toInstant());

		BasicDBObject query = new BasicDBObject();

		query.put("horario", new BasicDBObject("$gt", date));

		List<String> sessoes = mongoTemplate.getCollection("eventos").distinct(campo, query);

		return sessoes.size();
	}

	@RequestMapping(method = RequestMethod.GET, value = "/paginasAtivas")
	public ResponseEntity<Map<String, Integer>> paginasAtivas() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusMinutes(10);

		BasicDBObject query = new BasicDBObject();

		query.put("horario", new BasicDBObject("$gt", Date.from(date.toInstant())));
		query.put("tipo", "navegacao");

		DBCursor cursor = mongoTemplate.getCollection("eventos").find(query);

		Map<String, Integer> contadorPaginas = new HashMap<>();
		while (cursor.hasNext()) {
			DBObject evento = cursor.next();

			String pagina = (String) evento.get("pagina");
			adicionarContadorPagina(contadorPaginas, pagina);
		}

		return new ResponseEntity<Map<String, Integer>>(contadorPaginas, HttpStatus.OK);
	}

	private void adicionarContadorPagina(Map<String, Integer> contadorPaginas, String pagina) {
		if (contadorPaginas.get(pagina) == null) {
			contadorPaginas.put(pagina, 1);
		} else {
			contadorPaginas.put(pagina, contadorPaginas.get(pagina) + 1);
		}
	}

	@RequestMapping(method = RequestMethod.GET, value = "/graficoHorarios")
	public ResponseEntity<?> graficoHorariosDias() {

		return null;
	}

	private Map<String, Integer> sessoesPorDia(int dias) {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(dias).withHour(0).withMinute(0)
				.withSecond(0);
		Date desdeXDias = Date.from(date.toInstant());

		List<Evento> eventos = pegarEventosDesde("navegacao", desdeXDias);

		Map<String, Integer> sessoesDia = new HashMap<>();
		Set<String> sessoesJaSalvas = new HashSet<>();

		for (Evento evento : eventos) {
			String diaEvento = formatoDataGraficos.format(evento.getHorario());
			String sessaoDia = evento.getSessao() + diaEvento;

			adicionarALista(sessoesDia, sessoesJaSalvas, sessaoDia, diaEvento);
		}

		return sessoesDia;
	}

	private Map<String, Integer> usuariosPorDia(int dias) {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(dias).withHour(0).withMinute(0)
				.withSecond(0);
		Date desdeXDias = Date.from(date.toInstant());

		List<Evento> eventos = pegarEventosDesde("navegacao", desdeXDias);

		Map<String, Integer> usuariosDia = new HashMap<>();
		Set<String> usuariosJaSalvos = new HashSet<>();

		for (Evento evento : eventos) {
			String diaEvento = formatoDataGraficos.format(evento.getHorario());
			String usuarioDia = evento.getUser() + diaEvento;
			
			adicionarALista(usuariosDia, usuariosJaSalvos, usuarioDia, diaEvento);
		}

		return usuariosDia;
	}

	private void adicionarALista(Map<String, Integer> elementos, Set<String> elementosJaSalvos, String idElemento, String elemento) {
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

	private List<Evento> pegarEventosDesde(String tipoEvento, Date desde) {
		Query query = new Query();
		query.addCriteria(Criteria.where("horario").gt(desde).and("tipo").is(tipoEvento));

		return mongoTemplate.find(query, Evento.class);
	}
}
