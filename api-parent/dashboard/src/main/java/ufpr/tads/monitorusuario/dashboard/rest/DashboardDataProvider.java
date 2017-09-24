package ufpr.tads.monitorusuario.dashboard.rest;

import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
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
import org.springframework.web.bind.annotation.RestController;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

@RequestMapping("/dashboardData")
@RestController
public class DashboardDataProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	@RequestMapping(method = RequestMethod.GET, value = "/numSessoes")
	public ResponseEntity<Integer> numeroSessoesAtual() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusMinutes(10);
		
		Date desde10Min = Date.from(date.toInstant());

		return new ResponseEntity<Integer>(totalSessoesDesde(desde10Min), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/numSessoes/ultimosDias")
	public ResponseEntity<Integer> numeroSessoesSemana() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(7).withHour(0).withMinute(0).withSecond(0);
		
		Date desde7Dias = Date.from(date.toInstant());

		return new ResponseEntity<Integer>(totalSessoesDesde(desde7Dias), HttpStatus.OK);
	}
	
	private Integer totalSessoesDesde(Date date) {
		Date.from(date.toInstant());

		BasicDBObject query = new BasicDBObject();

		query.put("horario", new BasicDBObject("$gt", date));

		List<String> sessoes = mongoTemplate.getCollection("eventos").distinct("user", query);
		
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
}
