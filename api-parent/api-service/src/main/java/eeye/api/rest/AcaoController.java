package eeye.api.rest;

import eeye.api.helpers.SessaoHelper;
import eeye.dao.AcoesRepository;
import eeye.model.Acao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/acao")
@RestController
public class AcaoController {
	@Autowired
	private AcoesRepository acoesRepository;
	
	@Autowired
	private SessaoHelper sessaoHelper;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regAcoes(@RequestBody List<Acao> acaoList) {
		sessaoHelper.incluirSessaoAtual(acaoList);
		acoesRepository.save(acaoList);

		return new ResponseEntity<>(HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.POST, value="/unico")
	public ResponseEntity<?> regAcoes(@RequestBody Acao acao) {
		sessaoHelper.incluirSessaoAtual(acao);
		acoesRepository.save(acao);

		return new ResponseEntity<>(HttpStatus.OK);
	}

}
