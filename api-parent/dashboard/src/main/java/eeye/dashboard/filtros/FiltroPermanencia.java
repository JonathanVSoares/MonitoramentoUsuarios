package eeye.dashboard.filtros;

import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import eeye.dashboard.domain.TempoDuracaoSessao;
import eeye.model.Navegacao;

@Component
public class FiltroPermanencia implements FiltroMetrica {

	@Override
	public void filtrar(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String... args) {
		int[][] horariosLimite = new int[args.length][2];
		for (int i = 0; i < args.length; i++) {
			String[] valores = args[i].split(":");
			horariosLimite[i] = new int[] { Integer.valueOf(valores[0]), Integer.valueOf(valores[1]) };
		}

		Map<String, TempoDuracaoSessao> duracoes = new HashMap<>();

		navegacoes.forEach((navegacao) -> {
			TempoDuracaoSessao duracao;
			String sessao = navegacao.getSessao();
			if (duracoes.containsKey(sessao)) {
				duracao = duracoes.get(sessao);
			} else {
				duracao = new TempoDuracaoSessao();
				duracoes.put(sessao, duracao);
			}

			Calendar cal = Calendar.getInstance();
			cal.setTime(navegacao.getHorario());

			duracao.verificarComecoFimSessao(cal);
		});

		Map<String, Integer> duracoesSessoes = new HashMap<>();

		Iterator<Map.Entry<String, TempoDuracaoSessao>> it = duracoes.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, TempoDuracaoSessao> entry = it.next();
			duracoesSessoes.put(entry.getKey(), entry.getValue().calcularDuracaoEmSec()/60);
		}
		
		Iterator<Map.Entry<String, Integer>> iterator = duracoesSessoes.entrySet().iterator();
		while (iterator.hasNext()) {
			Map.Entry<String, Integer> entry = iterator.next();
			int duracao = entry.getValue();

			boolean match = false;
			for (int[] horarioLimite : horariosLimite) {
				if (duracao >= horarioLimite[0] && (duracao <= horarioLimite[1] || horarioLimite[1] == 0)) {
					match = true;
					break;
				}
			}

			if (!match) {
				iterator.remove();
			}
		}
		
		navegacoes.removeIf((navegacao) -> {
			return !duracoesSessoes.containsKey(navegacao.getSessao());
		});
	}
}
