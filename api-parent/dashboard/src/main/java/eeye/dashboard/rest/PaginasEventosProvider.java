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

import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData/paginasEventos")
public class PaginasEventosProvider {

	@Autowired
	NavegacaoRepository repo;

	@RequestMapping(method = RequestMethod.GET, value = "/paginasMaisAcessadas")
	public ResponseEntity<Map<String, Integer>> termosMaisComuns(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> pesquisas = repo.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Integer> mapPaginasAcessadas = new HashMap<>();

		pesquisas.forEach((pesquisa) -> {
			mapPaginasAcessadas.merge(pesquisa.getPagina(), 1, (a, b) -> a + b);
		});

		return new ResponseEntity<>(mapPaginasAcessadas, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/paginasMaisRejeitadas")
	public ResponseEntity<Map<String, Integer>> paginasMaisRejeitadas(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = repo.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Navegacao> mapUltimasNavegacoes = new HashMap<>();

		navegacoes.forEach((navegacao) -> {
			mapUltimasNavegacoes.merge(navegacao.getSessao(), navegacao, (navegacaoAtual, navegacaoNova) -> {
				return navegacaoAtual.getHorario().after(navegacaoNova.getHorario()) ? navegacaoAtual : navegacaoNova;
			});
		});

		Map<String, Integer> mapPaginasAcessadas = new HashMap<>();

		mapUltimasNavegacoes.entrySet().forEach((entry) -> {
			mapPaginasAcessadas.merge(entry.getValue().getPagina(), 1, (a, b) -> a + b);
		});

		return new ResponseEntity<>(mapPaginasAcessadas, HttpStatus.OK);
	}
}
