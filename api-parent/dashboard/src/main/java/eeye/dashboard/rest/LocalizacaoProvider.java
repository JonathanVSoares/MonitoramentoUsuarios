package eeye.dashboard.rest;

import java.util.Date;
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
import eeye.dashboard.utils.AgrupadorDeDados;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Navegacao;

@RestController
@RequestMapping("/dashboardData/localizacao")
public class LocalizacaoProvider {
	@Autowired
	private NavegacaoRepository navegacaoRepository;

	@Autowired
	private AgrupadorDeDados agrupador;

	@RequestMapping(method = RequestMethod.GET, value = "/totalEstadosAbrev")
	public ResponseEntity<Map<String, Integer>> totalEstadosAbrev(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Integer> totais = agrupador.agruparTotaisUsuariosPorCampo(navegacoes,
				(navegacao) -> navegacao.getEstadoAbrev());

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/totalEstados")
	public ResponseEntity<Map<String, Integer>> totalEstados(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Integer> totais = agrupador.agruparTotaisUsuariosPorCampo(navegacoes,
				(navegacao) -> navegacao.getEstado());

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/idiomas")
	public ResponseEntity<Map<String, Integer>> idiomas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Integer> totais = agrupador.agruparTotaisUsuariosPorCampo(navegacoes, (navegacao) -> navegacao.getIdioma());

		totais.remove("ND");
		
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/estrangeiros")
	public ResponseEntity<Map<String, Integer>> outrosPaises(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetweenAndPaisNot(dataFim, dataInicio, "Brazil");

		Map<String, Integer> totais = agrupador.agruparTotaisUsuariosPorCampo(navegacoes, (navegacao) -> navegacao.getPais());

		totais.remove("ND");

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}
}
