package eeye.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/horario")
public class HorarioController {
	@RequestMapping(method = RequestMethod.GET)
	public String listar() {
		return "horario";
	}
}
