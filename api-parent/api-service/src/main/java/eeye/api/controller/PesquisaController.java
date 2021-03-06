package eeye.api.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import eeye.dao.CarrinhoDao;
import eeye.dao.DesejoDao;
import eeye.dao.PesquisaDao;
import eeye.model.Produto;

@Controller
@RequestMapping("/pesquisa")
public class PesquisaController {
	@RequestMapping(method = RequestMethod.GET)
	public String listar(Model model, @RequestParam("pesquisa")  String pesquisa) throws Exception {
		List<Produto> lista = new PesquisaDao().readList(pesquisa);
		int num = new CarrinhoDao().count();
		int num2 = new DesejoDao().count();
		model.addAttribute("lista", lista);
		model.addAttribute("carrinho", num);
		model.addAttribute("desejo", num2);
		return "pesquisa";
	}
}
