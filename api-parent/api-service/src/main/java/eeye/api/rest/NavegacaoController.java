package eeye.api.rest;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.google.maps.errors.ApiException;

import eeye.api.helpers.LocalizacaoHelper;
import eeye.api.helpers.SessaoHelper;
import eeye.dao.NavegacaoRepository;
import eeye.model.Navegacao;

@RequestMapping("/navegacao")
@RestController
public class NavegacaoController {
	@Autowired
	private NavegacaoRepository navegacaoRepository;
	
	@Autowired
	private SessaoHelper sessaoHelper;
	
	@Autowired
	private LocalizacaoHelper localizacaoHelper;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regNavegacao(@RequestBody Navegacao navegacao) throws ApiException, InterruptedException, IOException {
		sessaoHelper.incluirSessaoAtual(navegacao);
		localizacaoHelper.registrarLocalizacao(navegacao);
		navegacaoRepository.save(navegacao);

		return new ResponseEntity<>(navegacao.getId(), HttpStatus.OK);
	}

}
