package eeye.dashboard.rest;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import eeye.dao.AcoesRepository;
import eeye.dao.NavegacaoRepository;
import eeye.dashboard.domain.TempoDuracaoSessao;
import eeye.dashboard.utils.DateUtils;
import eeye.model.Acao;
import eeye.model.Evento;
import eeye.model.Navegacao;
import eeye.model.TipoDispositivo;

@RestController
@RequestMapping("/dashboardData/sessoeshorario")
public class DadosPorSessoesHorarioController {
	@Autowired
	private NavegacaoRepository navegacaoRepository;

	@Autowired
	private AcoesRepository acaoRepo;

	private static final String MANHA = "MANHA";
	private static final String TARDE = "TARDE";
	private static final String NOITE = "NOITE";
	private static final String MADRUGADA = "MADRUGADA";

	@RequestMapping(method = RequestMethod.GET, value = "/visitantes")
	public ResponseEntity<Map<String, Integer>> visitantes(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		return new ResponseEntity<>(agruparPorHorarioFiltrandoPorMultUsuario(navegacoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/pesquisas")
	public ResponseEntity<Map<String, Integer>> pesquisas(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Acao> acoes = acaoRepo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "pesquisa");

		return new ResponseEntity<>(agruparPorHorario(acoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/wishlist")
	public ResponseEntity<Map<String, Integer>> wishlist(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Acao> acoes = acaoRepo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "wishlist");

		return new ResponseEntity<>(agruparPorHorario(acoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/carrinho")
	public ResponseEntity<Map<String, Integer>> carrinho(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Acao> acoes = acaoRepo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "carrinho");

		return new ResponseEntity<>(agruparPorHorario(acoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/mobile")
	public ResponseEntity<Map<String, Integer>> mobile(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		return new ResponseEntity<>(agruparPorHorarioFiltrandoPorMultUsuarioEMobile(navegacoes), HttpStatus.OK);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/mediaDuracao")
	public ResponseEntity<Map<String, Integer>> mediaDuracao(@RequestParam(value = "diasInicio") int diasInicio,
			@RequestParam(value = "diasFim") int diasFim) {
		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);
		Map<String, TempoDuracaoSessao> duracoes = new HashMap<>();

		navegacoes.forEach((navegacao) -> {
			TempoDuracaoSessao duracao;
			String sessao = navegacao.getSessao();
			if (duracoes.containsKey(sessao)) {
				duracao = duracoes.get(sessao);
			} else {
				duracao = new TempoDuracaoSessao();
				duracao.setHorarioDoDia(getHorarioDoDia(navegacao));
				duracoes.put(sessao, duracao);
			}

			Calendar cal = Calendar.getInstance();
			cal.setTime(navegacao.getHorario());

			duracao.verificarComecoFimSessao(cal);
		});

		Map<String, Integer> mediaDuracao = new HashMap<>();
		Map<String, Integer> numSessoesHorario = new HashMap<>();
		duracoes.entrySet().forEach((entry) -> {
			TempoDuracaoSessao tempoDuracao = entry.getValue();
			mediaDuracao.merge(tempoDuracao.getHorarioDoDia(), tempoDuracao.calcularDuracaoEmMin(), (a, b) -> a + b);
			numSessoesHorario.merge(tempoDuracao.getHorarioDoDia(), 1, (a, b) -> a + b);
		});

		mediaDuracao.entrySet().forEach((entry) -> {
			Integer currValue = entry.getValue();
			entry.setValue(currValue / numSessoesHorario.get(entry.getKey()));
		});

		preencherHorariosVazios(mediaDuracao);

		return new ResponseEntity<>(mediaDuracao, HttpStatus.OK);
	}

	private <T extends Evento> Map<String, Integer> agruparPorHorario(List<T> eventos) {
		Map<String, Integer> eventosPorHorarios = new HashMap<>();

		eventos.forEach((evento) -> {
			String horario = getHorarioDoDia(evento);
			eventosPorHorarios.merge(horario, 1, (a, b) -> a + b);
		});

		preencherHorariosVazios(eventosPorHorarios);

		return eventosPorHorarios;
	}

	private <T extends Evento> Map<String, Integer> agruparPorHorarioFiltrandoPorMultUsuario(List<T> eventos) {
		Map<String, Integer> eventosPorHorarios = new HashMap<>();
		Set<String> combinacoesJaRegistradas = new HashSet<>();
		String separador = "-";

		eventos.forEach((evento) -> {
			String horario = getHorarioDoDia(evento);
			String combinacao = evento.getUser().concat(separador).concat(horario);

			if (combinacoesJaRegistradas.contains(combinacao)) {
				return;
			}

			combinacoesJaRegistradas.add(combinacao);

			eventosPorHorarios.merge(horario, 1, (a, b) -> a + b);
		});

		preencherHorariosVazios(eventosPorHorarios);

		return eventosPorHorarios;
	}

	private void preencherHorariosVazios(Map<String, Integer> eventosPorHorarios) {
		if (eventosPorHorarios.get(MANHA) == null) {
			eventosPorHorarios.put(MANHA, 0);
		}

		if (eventosPorHorarios.get(TARDE) == null) {
			eventosPorHorarios.put(TARDE, 0);
		}

		if (eventosPorHorarios.get(NOITE) == null) {
			eventosPorHorarios.put(NOITE, 0);
		}

		if (eventosPorHorarios.get(MADRUGADA) == null) {
			eventosPorHorarios.put(MADRUGADA, 0);
		}

	}

	private Map<String, Integer> agruparPorHorarioFiltrandoPorMultUsuarioEMobile(List<Navegacao> eventos) {
		Map<String, Integer> eventosPorHorarios = new HashMap<>();
		Set<String> combinacoesJaRegistradas = new HashSet<>();
		String separador = "-";

		eventos.forEach((evento) -> {
			if (!(evento.getTipoDispositivo() == TipoDispositivo.CELULAR
					|| evento.getTipoDispositivo() == TipoDispositivo.TABLET)) {
				return;
			}

			String horario = getHorarioDoDia(evento);
			String combinacao = evento.getUser().concat(separador).concat(horario);

			if (combinacoesJaRegistradas.contains(combinacao)) {
				return;
			}

			combinacoesJaRegistradas.add(combinacao);

			eventosPorHorarios.merge(horario, 1, (a, b) -> a + b);
		});

		preencherHorariosVazios(eventosPorHorarios);

		return eventosPorHorarios;
	}

	private <T extends Evento> String getHorarioDoDia(T evento) {
		Calendar cal = Calendar.getInstance();
		cal.setTime(evento.getHorario());
		int hour = cal.get(Calendar.HOUR_OF_DAY);

		if (hour < 6) {
			return MADRUGADA;
		} else if (hour < 12) {
			return MANHA;
		} else if (hour < 18) {
			return TARDE;
		} else {
			return NOITE;
		}
	}
}
