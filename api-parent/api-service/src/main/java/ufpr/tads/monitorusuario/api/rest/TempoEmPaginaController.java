package ufpr.tads.monitorusuario.api.rest;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ufpr.tads.monitorusuario.api.dao.TempoEmPaginaRepository;
import ufpr.tads.monitorusuario.api.helpers.SessaoHelper;
import ufpr.tads.monitorusuario.api.model.TempoEmPagina;

@RequestMapping("/tempoEmPagina")
@RestController
public class TempoEmPaginaController {

	@Resource
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