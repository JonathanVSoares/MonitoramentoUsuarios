package eeye.api.rest;

import eeye.api.helpers.SessaoHelper;
import eeye.dao.TempoEmPaginaRepository;
import eeye.model.TempoEmPagina;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/tempoEmPagina")
@RestController
public class TempoEmPaginaController {

	@Autowired
	private TempoEmPaginaRepository tempoEmPaginaRepository;
	
	@Autowired
	private SessaoHelper sessaoHelper;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regTempoEmPagina(@RequestBody TempoEmPagina tempoEmPagina) {
		sessaoHelper.incluirSessaoAtual(tempoEmPagina);
		tempoEmPagina = tempoEmPaginaRepository.save(tempoEmPagina);

		return new ResponseEntity<>(tempoEmPagina, HttpStatus.OK);
	}
}
