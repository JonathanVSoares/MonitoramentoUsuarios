package ufpr.tads.monitorusuario.api.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ufpr.tads.monitorusuario.api.dao.BotaoRepository;

@Controller
@RequestMapping("/index")
public class PaginaInicialController {

	private static final Logger log = LoggerFactory.getLogger(PaginaInicialController.class);

	@Autowired
	private BotaoRepository botoesRepo;

	@RequestMapping(method = RequestMethod.GET)
	public String listar(Model model) {
		model.addAttribute("listaBotoes", botoesRepo.findAll());

		return "paginaInicial";
	}
}
