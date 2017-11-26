package eeye.api.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import eeye.dao.CarrinhoDao;
import eeye.dao.DesejoDao;
import eeye.model.Produto;

@Controller
@RequestMapping("/carrinho")
public class CarrinhoController  {
	@RequestMapping(method = RequestMethod.GET)
	public String listar(Model model, @RequestParam("produto_kit") String produto, @RequestParam("acao")  String acao) throws Exception {
		if (acao.equals("inc")) {
			new CarrinhoDao().salvar(Integer.valueOf(produto));
			List<Produto> lista = new CarrinhoDao().readList();
			int num = new CarrinhoDao().count();
			int num2 = new DesejoDao().count();
			model.addAttribute("carrinho", num);
			model.addAttribute("desejo", num2);
			
			model.addAttribute("lista", lista);
		}
		List<Produto> lista = new CarrinhoDao().readList();
		int num = new CarrinhoDao().count();
		int num2 = new DesejoDao().count();
		model.addAttribute("carrinho", num);
		model.addAttribute("desejo", num2);
		
		model.addAttribute("lista", lista);
		return "carrinho";
	}
}
