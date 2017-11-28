package eeye.dashboard.filtros;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Component;

import eeye.model.Navegacao;

@Component
public class FiltroLocalizacao implements FiltroMetrica {

	@Override
	public void filtrar(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String... args) {
		Iterator<Navegacao> it = navegacoes.iterator();
		while (it.hasNext()) {
			Navegacao navegacao = it.next();
			boolean match = false;

			if (navegacao.getPais() == null) {
				it.remove();
				continue;
			}

			for (String arg : args) {
				if (arg.toUpperCase().equals("EXTERIOR")) {
					if (!navegacao.getPais().equals("Brazil")) {
						match = true;
					}
					break;
				}

				Localizacoes local = Localizacoes.valueOf(arg.toUpperCase());

				for (String estado : local.getEstados()) {
					if (estado.equals(navegacao.getEstadoAbrev())) {
						match = true;
						break;
					}
				}

				if (match) {
					break;
				}
			}

			if (!match) {
				it.remove();
			}
		}
	}

}
