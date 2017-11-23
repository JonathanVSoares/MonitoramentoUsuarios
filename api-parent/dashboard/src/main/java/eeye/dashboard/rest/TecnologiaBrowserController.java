package eeye.dashboard.rest;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import eeye.dashboard.utils.AgrupadorDeDados;
import eeye.dashboard.utils.ProvedorDeDados;

@RestController
@RequestMapping("/dashboardData/tecnologia")
public class TecnologiaBrowserController {
	@Autowired
	private AgrupadorDeDados agrupador;

	@Autowired
	private ProvedorDeDados provedor;

	@RequestMapping(method = RequestMethod.GET, value = "/browser/visualizacoes")
	public ResponseEntity<Map<String, Integer>> browserVisualizacoes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getBrowser(), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/browser/sessoesUnicas")
	public ResponseEntity<Map<String, Integer>> browserSessoesUnicas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getBrowser(),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesUnicasPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/browser/sessoesRetorno")
	public ResponseEntity<Map<String, Integer>> browserSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getBrowser(), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesRetornoPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/resolucao/visualizacoes")
	public ResponseEntity<Map<String, Integer>> resolucaoVisualizacoes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getResolutionWidth().concat("x").concat(navegacao.getResolutionHeight()), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/resolucao/sessoesUnicas")
	public ResponseEntity<Map<String, Integer>> resolucaoSessoesUnicas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getResolutionWidth().concat("x").concat(navegacao.getResolutionHeight()),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesUnicasPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/resolucao/sessoesRetorno")
	public ResponseEntity<Map<String, Integer>> resolucaorSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getResolutionWidth().concat("x").concat(navegacao.getResolutionHeight()), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesRetornoPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/dispositivos/visualizacoes")
	public ResponseEntity<Map<String, Integer>> dispositivosVisualizacoes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getTipoDispositivo().name(), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/dispositivos/sessoesUnicas")
	public ResponseEntity<Map<String, Integer>> dispositivosSessoesUnicas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getTipoDispositivo().name(),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesUnicasPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/dispositivos/sessoesRetorno")
	public ResponseEntity<Map<String, Integer>> dispositivosSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getTipoDispositivo().name(), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesRetornoPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/so/visualizacoes")
	public ResponseEntity<Map<String, Integer>> soVisualizacoes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getOs(), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/so/sessoesUnicas")
	public ResponseEntity<Map<String, Integer>> soSessoesUnicas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getOs(),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesUnicasPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/so/sessoesRetorno")
	public ResponseEntity<Map<String, Integer>> soSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getOs(), 
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesRetornoPorCampo(navegacoes, campoParaAgrupar));

		return new ResponseEntity<>(totais, HttpStatus.OK);
	}
}
