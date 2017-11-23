package eeye.dashboard.utils;

import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import eeye.model.Navegacao;

@Component
public class AgrupadorDeDados {

	private static final String SEPARADOR = "-";

	public interface CampoParaAgrupar {
		public String getCampoPraAgrupar(Navegacao navegacao);
	}

	public interface FiltroContador {
		public boolean deveContar(Set<String> combinacoesJaRegistradas, Navegacao navegacao, String campo);
	}

	public Map<String, Integer> agruparTotaisSessoesPorCampo(List<Navegacao> navegacoes,
			CampoParaAgrupar retornaCampo) {
		return getTotaisPorCampo(navegacoes, retornaCampo, (combinacoes, navegacao, campo) -> {
			String combinacao = navegacao.getSessao().concat(SEPARADOR).concat(campo);
			if (combinacoes.contains(combinacao)) {
				return false;
			}
			combinacoes.add(combinacao);
			return true;
		});
	}

	public Map<String, Integer> agruparTotaisUsuariosPorCampo(List<Navegacao> navegacoes,
			CampoParaAgrupar retornaCampo) {
		return getTotaisPorCampo(navegacoes, retornaCampo, (combinacoes, navegacao, campo) -> {
			String combinacao = navegacao.getUser().concat(SEPARADOR).concat(campo);
			if (combinacoes.contains(combinacao)) {
				return false;
			}
			combinacoes.add(combinacao);
			return true;
		});
	}

	public Map<String, Integer> agruparTotaisVisualizacoesPorCampo(List<Navegacao> navegacoes,
			CampoParaAgrupar retornaCampo) {
		return getTotaisPorCampo(navegacoes, retornaCampo, (combinacoes, navegacao, campo) -> {
			return true;
		});
	}

	public Map<String, Integer> getTotaisPorCampo(List<Navegacao> navegacoes, CampoParaAgrupar campoParaAgrupar,
			FiltroContador filtro) {
		Map<String, Integer> totais = new HashMap<>();
		Set<String> combinacoesJaRegistradas = new HashSet<>();

		navegacoes.forEach(navegacao -> {
			String campo = campoParaAgrupar.getCampoPraAgrupar(navegacao);
			if (StringUtils.isEmpty(campo)) {
				campo = "ND";
			}

			if (!filtro.deveContar(combinacoesJaRegistradas, navegacao, campo)) {
				return;
			}

			totais.merge(campo, 1, (a, b) -> a + b);
		});

		return totais;
	}

	public Map<String, Integer> agruparSessoesUnicasPorCampo(List<Navegacao> navegacoes,
			CampoParaAgrupar retornaCampo) {
		Map<String, Integer> totaisComUser = agruparTotaisSessoesPorCampo(navegacoes, (navegacao) -> retornaCampo
				.getCampoPraAgrupar(navegacao).concat(SEPARADOR).concat(navegacao.getUser()));

		totaisComUser.entrySet().removeIf((entry) -> entry.getValue() > 1);

		Map<String, Integer> totais = new HashMap<>();
		totaisComUser.entrySet().forEach(
				(entry) -> totais.merge(entry.getKey().split(SEPARADOR)[0], entry.getValue(), (a, b) -> a + b));

		return totais;
	}

	public Map<String, Integer> agruparSessoesRetornoPorCampo(List<Navegacao> navegacoes,
			CampoParaAgrupar retornaCampo) {
		Map<String, Integer> totaisComUser = agruparTotaisSessoesPorCampo(navegacoes, (navegacao) -> retornaCampo
				.getCampoPraAgrupar(navegacao).concat(SEPARADOR).concat(navegacao.getUser()));

		totaisComUser.entrySet().removeIf((entry) -> {
			entry.setValue(entry.getValue() - 1);
			return entry.getValue() == 0;
		});

		Map<String, Integer> totais = new HashMap<>();
		totaisComUser.entrySet().forEach(
				(entry) -> totais.merge(entry.getKey().split(SEPARADOR)[0], entry.getValue(), (a, b) -> a + b));

		return totais;
	}
}
