package eeye.api.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import eeye.dao.CarrinhoDao;
import eeye.model.Produto;

@Controller
@RequestMapping("/carrinho")
public class CarrinhoController  {
	@RequestMapping(method = RequestMethod.GET)
	public String listar(Model model) throws Exception {
		List<Produto> lista = new CarrinhoDao().readList();
		model.addAttribute("lista", lista);
		return "carrinho";
	}
}
