package eeye.dashboard.utils;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import eeye.dao.NavegacaoRepository;
import eeye.dashboard.utils.AgrupadorDeDados.CampoParaAgrupar;
import eeye.model.Navegacao;

@Component
public class ProvedorDeDados {
	@Autowired
	private NavegacaoRepository navegacaoRepository;

	public interface MetodoAgrupamentoDados {
		public Map<String, Integer> usarAgrupador(CampoParaAgrupar campoParaAgrupar, List<Navegacao> navegacoes);
	}

	public Map<String, Integer> pegarDadosEntreDatasPorCampoAgrupandoCom(int diasInicio, int diasFim,
			CampoParaAgrupar campoParaAgrupar, MetodoAgrupamentoDados metodoAgrupamento) {

		Date dataInicio = DateUtils.pegarDataMenosXDias(diasInicio);
		Date dataFim = DateUtils.pegarDataMenosXDias(diasFim);

		List<Navegacao> navegacoes = navegacaoRepository.findByHorarioBetween(dataFim, dataInicio);

		Map<String, Integer> totais = metodoAgrupamento.usarAgrupador(campoParaAgrupar, navegacoes);
		
		return totais;
	}
}
