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
@RequestMapping("/detalhes")
public class DetalhesController  {
	@RequestMapping(method = RequestMethod.GET)
	public String listar(Model model, @RequestParam("id")  String id) throws Exception {
		Produto lista = new CarrinhoDao().readList2(Integer.valueOf(id));
		int num = new CarrinhoDao().count();
		int num2 = new DesejoDao().count();
		model.addAttribute("carrinho", num);
		model.addAttribute("desejo", num2);
		
		model.addAttribute("lista", lista);
		return "detalhes";
	}
}
