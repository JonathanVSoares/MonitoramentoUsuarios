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

import ufpr.tads.monitorusuario.api.dao.EventosRepository;
import ufpr.tads.monitorusuario.api.model.Evento;

@RequestMapping("/evento")
@RestController
public class EventoController {

	private static final Logger log = LoggerFactory.getLogger(EventoController.class);

	@Resource
	private EventosRepository eventosRepository;

	@RequestMapping(method = RequestMethod.POST)
	public ResponseEntity<?> regBotaoPressionado(@RequestBody Evento evento) {
		eventosRepository.save(evento);

		log.info("Id elemento clicado:" + evento.getIdElemento() + ". Tipo Evento:" + evento.getTipo()
				+ ". Id Evento:" + evento.getId());

		return new ResponseEntity<>(evento.getId(), HttpStatus.OK);
	}

}
