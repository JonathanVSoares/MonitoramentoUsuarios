package ufpr.tads.monitorusuario.api.rest;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ufpr.tads.monitorusuario.api.dao.AcoesRepository;
import ufpr.tads.monitorusuario.api.helpers.SessaoHelper;
import ufpr.tads.monitorusuario.api.model.Acao;

@RequestMapping("/acao")
@RestController
public class AcaoController {
	@Resource
	private AcoesRepository acoesRepository;
	
	@Autowired
	private SessaoHelper sessaoHelper;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regAcoes(@RequestBody List<Acao> acaoList) {
		sessaoHelper.incluirSessaoAtual(acaoList);
		acoesRepository.save(acaoList);

		return new ResponseEntity<>(HttpStatus.OK);
	}

}
