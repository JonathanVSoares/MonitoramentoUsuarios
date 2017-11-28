package eeye.dashboard.filtros;

import java.text.Normalizer;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Component;

import eeye.model.Navegacao;

@Component
public class FiltroHorario implements FiltroMetrica {

	private enum Horario {
		MANHA(6, 12), TARDE(12, 18), NOITE(18, 24), MADRUGADA(0, 6);

		private int horaComeco;
		private int horaFim;

		private Horario(int horaComeco, int horaFim) {
			this.horaComeco = horaComeco;
			this.horaFim = horaFim;
		}

		public int getHoraComeco() {
			return horaComeco;
		}

		public int getHoraFim() {
			return horaFim;
		}
	}

	@Override
	public void filtrar(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String... args) {
		Horario[] horarios = new Horario[args.length];
		for (int i = 0; i < args.length; i++) {
			String normalized = Normalizer.normalize(args[i], Normalizer.Form.NFD);
			String accentRemoved = normalized.replaceAll("\\p{InCombiningDiacriticalMarks}+", "");
			
			horarios[i] = Horario.valueOf(accentRemoved.toUpperCase());
		}

		navegacoes.removeIf((navegacao) -> {
			boolean match = false;

			for (Horario horario : horarios) {
				if (navegacao.getHorario().getHours() > horario.getHoraComeco()
						&& navegacao.getHorario().getHours() < horario.getHoraFim()) {
					match = true;
					break;
				}
			}

			return !match;
		});
	}

}
