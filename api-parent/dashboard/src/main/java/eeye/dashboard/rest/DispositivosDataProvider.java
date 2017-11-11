package eeye.dashboard.rest;

import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.TipoDispositivo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/dashboardData/dispositivos")
public class DispositivosDataProvider {

	@Autowired
	private NavegacaoRepository repo;	

	@RequestMapping(method = RequestMethod.GET, value = "/totais")
	public ResponseEntity<Map<TipoDispositivo, Integer>> porcentagemDispositivos(@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);
		int totalDesktop = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.DESKTOP, dataFim, dataInicio).size();
		int totalTablet = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.TABLET, dataFim, dataInicio).size();
		int totalCelular = repo.findByTipoDispositivoAndHorarioBetween(TipoDispositivo.CELULAR, dataFim, dataInicio).size();
		
		Map<TipoDispositivo, Integer> totais = new HashMap<>();

		totais.put(TipoDispositivo.DESKTOP, totalDesktop);
		totais.put(TipoDispositivo.TABLET, totalTablet);
		totais.put(TipoDispositivo.CELULAR, totalCelular);
		
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}
}
