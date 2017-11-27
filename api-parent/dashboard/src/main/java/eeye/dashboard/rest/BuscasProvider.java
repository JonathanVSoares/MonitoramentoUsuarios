package eeye.dashboard.rest;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import eeye.dao.AcoesRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Acao;

@RestController
@RequestMapping("/dashboardData/buscas")
public class BuscasProvider {
	
	@Autowired
	AcoesRepository repo;

	@RequestMapping(method = RequestMethod.GET, value = "/termosMaisComuns")
	public ResponseEntity<Map<String, Integer>> termosMaisComuns(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);
		
		List<Acao> pesquisas = repo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "pesquisa");
		
		Map<String, Integer> mapPalavras = new HashMap<>();
		
		pesquisas.forEach((pesquisa) -> {
			String textoPesquisa = pesquisa.getIdElemento();
			
			for (String palavraPesquisa : textoPesquisa.split(" ")) {
				mapPalavras.merge(palavraPesquisa, 1, (a, b) -> a + b);
			}
		});

		return new ResponseEntity<>(mapPalavras, HttpStatus.OK);
	}
}
