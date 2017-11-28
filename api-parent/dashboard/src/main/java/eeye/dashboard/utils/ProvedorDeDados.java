package eeye.dashboard.utils;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import eeye.dao.AcoesRepository;
import eeye.dao.NavegacaoRepository;
import eeye.dashboard.filtros.FiltroAcao;
import eeye.dashboard.filtros.FiltroDispositivos;
import eeye.dashboard.filtros.FiltroHorario;
import eeye.dashboard.filtros.FiltroLocalizacao;
import eeye.dashboard.filtros.FiltroPermanencia;
import eeye.dashboard.utils.AgrupadorDeDados.CampoParaAgrupar;
import eeye.model.Acao;
import eeye.model.Navegacao;

@Component
public class ProvedorDeDados {
	@Autowired
	private NavegacaoRepository navegacaoRepository;

	@Autowired
	private AcoesRepository repo;

	@Autowired
	private FiltroAcao filtroAcao;

	@Autowired
	private FiltroHorario filtroHorario;

	@Autowired
	private FiltroLocalizacao filtroLocalizacao;

	@Autowired
	private FiltroDispositivos filtroDispositivos;

	@Autowired
	private FiltroPermanencia filtroPermanencia;

	public interface MetodoAgrupamentoDados {
		public Map<String, Integer> usarAgrupador(CampoParaAgrupar campoParaAgrupar, List<Navegacao> navegacoes);
	}

	public Map<String, Integer> pegarDadosEntreDatasPorCampoAgrupandoComFiltrandoPor(int diasInicio, int diasFim,
			CampoParaAgrupar campoParaAgrupar, MetodoAgrupamentoDados metodoAgrupamento, String[] argsAcao,
			String[] argsLocalizacao, String[] argsPermanencia, String[] argsHorario) {

		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);
		
		aplicarFiltros(navegacoes, dataFim, dataInicio, argsAcao, argsLocalizacao, null, argsPermanencia, argsHorario);

		Map<String, Integer> totais = metodoAgrupamento.usarAgrupador(campoParaAgrupar, navegacoes);

		return totais;
	}

	public void aplicarFiltros(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String[] argsAcao, String[] argsLocalizacao, String[] argsDispositivos,
			String[] argsPermanencia, String[] argsHorario) {
		if (argsAcao != null && argsAcao.length != 0) {
			filtroAcao.filtrar(navegacoes, dataFim, dataInicio, argsAcao);
		}

		if (argsLocalizacao != null && argsLocalizacao.length != 0) {
			filtroLocalizacao.filtrar(navegacoes, dataFim, dataInicio, argsLocalizacao);
		}

		if (argsDispositivos != null && argsDispositivos.length != 0) {
			filtroDispositivos.filtrar(navegacoes, dataFim, dataInicio, argsDispositivos);
		}

		if (argsPermanencia != null && argsPermanencia.length != 0) {
			filtroPermanencia.filtrar(navegacoes, dataFim, dataInicio, argsPermanencia);
		}

		if (argsHorario != null && argsHorario.length != 0) {
			filtroHorario.filtrar(navegacoes, dataFim, dataInicio, argsHorario);
		}
		
	}

	public Map<String, Integer> pegarDadosPesquisasEntreDatasPorCampoAgrupandoCom(int diasInicio, int diasFim,
			CampoParaAgrupar campoParaAgrupar, MetodoAgrupamentoDados metodoAgrupamento, String[] argsAcao,
			String[] argsLocalizacao, String[] argsPermanencia, String[] argsHorario) {

		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);
		
		aplicarFiltros(navegacoes, dataFim, dataInicio, argsAcao, argsLocalizacao, null, argsPermanencia, argsHorario);


		List<Acao> pesquisas = repo.findByHorarioBetweenAndTipo(dataFim, dataInicio, "pesquisa");

		List<Navegacao> navegacoesPesquisas = new ArrayList<>();

		navegacoes.forEach((navegacao) -> {
			for (Acao pesquisa : pesquisas) {
				if (pesquisa.getSessao().equals(navegacao.getSessao())) {
					navegacoesPesquisas.add(navegacao);
					pesquisas.remove(pesquisa);
					break;
				}
			}
		});

		Map<String, Integer> totais = metodoAgrupamento.usarAgrupador(campoParaAgrupar, navegacoesPesquisas);

		return totais;
	}
}
