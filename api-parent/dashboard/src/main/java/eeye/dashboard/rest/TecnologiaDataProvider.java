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
public class TecnologiaDataProvider {
	@Autowired
	private AgrupadorDeDados agrupador;

	@Autowired
	private ProvedorDeDados provedor;

	@RequestMapping(method = RequestMethod.GET, value = "/browser/visualizacoes")
	public ResponseEntity<Map<String, Integer>> browserVisualizacoes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim, @RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getBrowser(), (campoParaAgrupar, navegacoes) -> agrupador
						.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosBrowser(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/browser/sessoes")
	public ResponseEntity<Map<String, Integer>> browserSessoesUnicas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim, @RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getBrowser(),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisSessoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosBrowser(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/browser/pesquisas")
	public ResponseEntity<Map<String, Integer>> browserSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosPesquisasEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getBrowser(), (campoParaAgrupar, navegacoes) -> agrupador
						.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosBrowser(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	private void colocarZerosBrowser(Map<String, Integer> totais) {
		String[] browsers = { "Chrome", "Firefox", "Explorer", "Safari", "Opera" };

		colocarZeros(totais, browsers);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/resolucao/visualizacoes")
	public ResponseEntity<Map<String, Integer>> resolucaoVisualizacoes(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getResolutionWidth().concat("x").concat(navegacao.getResolutionHeight()),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisVisualizacoesPorCampo(navegacoes,
						campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosResolucao(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/resolucao/sessoes")
	public ResponseEntity<Map<String, Integer>> resolucaoSessoesUnicas(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getResolutionWidth().concat("x").concat(navegacao.getResolutionHeight()),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisSessoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosResolucao(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/resolucao/pesquisas")
	public ResponseEntity<Map<String, Integer>> resolucaorSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosPesquisasEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getResolutionWidth().concat("x").concat(navegacao.getResolutionHeight()),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisVisualizacoesPorCampo(navegacoes,
						campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosResolucao(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	private void colocarZerosResolucao(Map<String, Integer> totais) {
		String[] browsers = { "800x600", "1366x768", "1280x1024", "1920x1080" };

		colocarZeros(totais, browsers);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/dispositivos/visualizacoes")
	public ResponseEntity<Map<String, Integer>> dispositivosVisualizacoes(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getTipoDispositivo().name(), (campoParaAgrupar, navegacoes) -> agrupador
						.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosDispositivos(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/dispositivos/sessoes")
	public ResponseEntity<Map<String, Integer>> dispositivosSessoesUnicas(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getTipoDispositivo().name(),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparTotaisSessoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosDispositivos(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/dispositivos/pesquisas")
	public ResponseEntity<Map<String, Integer>> dispositivosSessoesRetorno(
			@RequestParam(value = "diasInicio") int diasInicio, @RequestParam(value = "diasFim") int diasFim,
			@RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {

		Map<String, Integer> totais = provedor.pegarDadosPesquisasEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getTipoDispositivo().name(), (campoParaAgrupar, navegacoes) -> agrupador
						.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosDispositivos(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	private void colocarZerosDispositivos(Map<String, Integer> totais) {
		String[] browsers = { "DESKTOP", "NOTEBOOK", "TABLET", "CELULAR" };

		colocarZeros(totais, browsers);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/so/visualizacoes")
	public ResponseEntity<Map<String, Integer>> soVisualizacoes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim, @RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getOs(), (campoParaAgrupar, navegacoes) -> agrupador
						.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosSo(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/so/sessoes")
	public ResponseEntity<Map<String, Integer>> soSessoesUnicas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim, @RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(diasInicio, diasFim,
				(navegacao) -> navegacao.getOs(),
				(campoParaAgrupar, navegacoes) -> agrupador.agruparSessoesUnicasPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosSo(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/so/pesquisas")
	public ResponseEntity<Map<String, Integer>> soSessoesRetorno(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim, @RequestParam(value = "argsAcao") String[] argsAcao,
			@RequestParam(value = "argsLocalizacao") String[] argsLocalizacao,
			@RequestParam(value = "argsPermanencia") String[] argsPermanencia,
			@RequestParam(value = "argsHorario") String[] argsHorario) {
		Map<String, Integer> totais = provedor.pegarDadosPesquisasEntreDatasPorCampoAgrupandoCom(diasInicio, diasFim,
				(navegacao) -> navegacao.getOs(), (campoParaAgrupar, navegacoes) -> agrupador
						.agruparTotaisVisualizacoesPorCampo(navegacoes, campoParaAgrupar),
				argsAcao, argsLocalizacao, argsPermanencia, argsHorario);

		colocarZerosSo(totais);
		return new ResponseEntity<>(totais, HttpStatus.OK);
	}

	private void colocarZerosSo(Map<String, Integer> totais) {
		String[] browsers = { "Windows", "Linux", "Android", "Apple" };

		colocarZeros(totais, browsers);
	}

	private void colocarZeros(Map<String, Integer> totais, String[] valores) {
		for (String valor : valores) {
			if (!totais.containsKey(valor)) {
				totais.put(valor, 0);
			}
		}
	}
}
