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

import ufpr.tads.monitorusuario.api.dao.BotaoPressionadoRepository;
import ufpr.tads.monitorusuario.api.model.BotaoPressionado;

@RequestMapping("/botaoPressionado")
@RestController
public class BotaoPressionadoController {

	private static final Logger log = LoggerFactory.getLogger(BotaoPressionadoController.class);

	@Resource
	private BotaoPressionadoRepository botaoPressionadoRepo;

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public ResponseEntity<?> regBotaoPressionado(@RequestBody BotaoPressionado botaoPressionado) {
		
		botaoPressionadoRepo.save(botaoPressionado);

		log.info("Botão clicado: " + botaoPressionado.getTexto() + " - id: " + botaoPressionado.getId());

		return new ResponseEntity<>(botaoPressionado.getId(), HttpStatus.OK);
	}
}
