package ufpr.tads.monitorusuario.dashboard.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/index")
public class DashboardController {
	@RequestMapping(method = RequestMethod.GET)
	public String listar(Model model) {
		return "index";
	}
}
