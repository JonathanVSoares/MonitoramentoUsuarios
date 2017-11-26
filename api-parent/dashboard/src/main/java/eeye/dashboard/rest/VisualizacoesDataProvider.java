package eeye.dashboard.rest;

import java.text.SimpleDateFormat;
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
import com.mongodb.DBCursor;

import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData")
public class VisualizacoesDataProvider {

	@Autowired
	MongoTemplate mongoTemplate;

	@Autowired
	private NavegacaoRepository navegacaoRepository;


	private final SimpleDateFormat formatoDataGraficos = new SimpleDateFormat("dd/MM");

	@RequestMapping(method = RequestMethod.GET, value = "/numVisualizacoes")
	public ResponseEntity<Integer> numeroUsuariosSemana(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		return new ResponseEntity<>(navegacaoRepository.findByHorarioBetween(dataFim, dataInicio).size(), HttpStatus.OK);
	}
	
	@RequestMapping(method = RequestMethod.GET, value = "/numVisualizacoesAgrupadas/")
	public ResponseEntity<Map<String, Integer>> numSessoesPorDia(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);
		
		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);
		return new ResponseEntity<>(visualizacoesPorDia(navegacoes), HttpStatus.OK);
	}


	private Map<String, Integer> visualizacoesPorDia(List<Navegacao> eventos) {

		Map<String, Integer> usuariosDia = new HashMap<>();

		for (Navegacao evento : eventos) {
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
}
