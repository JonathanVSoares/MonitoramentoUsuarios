package eeye.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/localizacao")
public class LocalizacaoController {
	@RequestMapping(method = RequestMethod.GET)
	public String listar() {
		return "localizacao";
	}
}
