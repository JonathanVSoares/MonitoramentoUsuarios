package eeye.api.rest;

import eeye.api.helpers.SessaoHelper;
import eeye.dao.NavegacaoRepository;
import eeye.model.Navegacao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/navegacao")
@RestController
public class NavegacaoController {
	@Autowired
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
