package eeye.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/buscas")
public class BuscasController {
	@RequestMapping(method = RequestMethod.GET)
	public String listar() {
		return "buscas";
	}
}
