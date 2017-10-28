package ufpr.tads.monitorusuario.dashboard.rest;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

import ufpr.tads.monitorusuario.api.model.Evento;

@RestController
@RequestMapping("/dashboardData")
public class VisualizacoesDataProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	private final SimpleDateFormat formatoDataGraficos = new SimpleDateFormat("dd/MM");

	@RequestMapping(method = RequestMethod.GET, value = "/numVisualizacoes/ultimosDias")
	public ResponseEntity<Integer> numeroUsuariosSemana() {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(7).withHour(0).withMinute(0)
				.withSecond(0);

		Date desde7Dias = Date.from(date.toInstant());

		BasicDBObject query = new BasicDBObject();
		query.put("horario", new BasicDBObject("$gt", Date.from(desde7Dias.toInstant())));
		query.put("tipo", "navegacao");
		DBCursor cursor = mongoTemplate.getCollection("eventos").find(query);

		return new ResponseEntity<Integer>(cursor.count(), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/numVisualizacoesAgrupadas/")
	public ResponseEntity<Map<String, Integer>> numSessoesPorDia(@RequestParam(value = "dias") int dias) {
		return new ResponseEntity<>(visualizacoesPorDia(dias), HttpStatus.OK);
	}


	private Map<String, Integer> visualizacoesPorDia(int dias) {
		ZonedDateTime date = LocalDateTime.now().atZone(ZoneId.systemDefault()).minusDays(dias).withHour(0).withMinute(0)
				.withSecond(0);
		Date desdeXDias = Date.from(date.toInstant());

		List<Evento> eventos = pegarEventosDesde("navegacao", desdeXDias);

		Map<String, Integer> usuariosDia = new HashMap<>();

		for (Evento evento : eventos) {
			String diaEvento = formatoDataGraficos.format(evento.getHorario());
			
			adicionarALista(usuariosDia, diaEvento);
		}

		return usuariosDia;
	}


	private void adicionarALista(Map<String, Integer> elementos, String elemento) {
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
