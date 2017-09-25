package ufpr.tads.monitorusuario.api.rest;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ufpr.tads.monitorusuario.api.dao.NavegacaoRepository;
import ufpr.tads.monitorusuario.api.helpers.SessaoHelper;
import ufpr.tads.monitorusuario.api.model.Navegacao;

@RequestMapping("/navegacao")
@RestController
public class NavegacaoController {

	private static final Logger log = LoggerFactory.getLogger(NavegacaoController.class);

	@Resource
	private NavegacaoRepository navegacaoRepository;
	
	@Autowired
	private SessaoHelper sessaoHelper;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regNavegacao(@RequestBody Navegacao navegacao) {
		sessaoHelper.incluirSessaoAtual(navegacao);
		navegacaoRepository.save(navegacao);

		return new ResponseEntity<>(navegacao.getId(), HttpStatus.OK);
	}

}
