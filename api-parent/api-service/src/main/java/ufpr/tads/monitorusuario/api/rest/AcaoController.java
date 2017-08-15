package ufpr.tads.monitorusuario.api.rest;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import ufpr.tads.monitorusuario.api.dao.AcoesRepository;
import ufpr.tads.monitorusuario.api.model.Acao;

@RequestMapping("/acao")
@RestController
public class AcaoController {

	private static final Logger log = LoggerFactory.getLogger(AcaoController.class);

	@Resource
	private AcoesRepository acoesRepository;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regBotaoPressionado(@RequestBody Acao acao) {
		acoesRepository.save(acao);

		log.info("Id elemento clicado:" + acao.getIdElemento() + ". Tipo Evento:" + acao.getTipo()
				+ ". Id Evento:" + acao.getId());

		return new ResponseEntity<>(acao.getId(), HttpStatus.OK);
	}

}
