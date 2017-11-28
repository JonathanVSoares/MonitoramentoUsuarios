package eeye.dashboard.filtros;

import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Component;

import eeye.model.Navegacao;
import eeye.model.TipoDispositivo;

@Component
public class FiltroDispositivos implements FiltroMetrica {

	@Override
	public void filtrar(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String... args) {
		TipoDispositivo[] tipos = new TipoDispositivo[args.length];

		for (int i = 0; i < args.length; i++) {
			tipos[i] = TipoDispositivo.valueOf(args[i].toUpperCase());
		}

		Iterator<Navegacao> it = navegacoes.iterator();
		while (it.hasNext()) {
			Navegacao navegacao = it.next();
			boolean match = false;
			for (TipoDispositivo tipo : tipos) {
				if (navegacao.getTipoDispositivo() == tipo) {
					match = true;
					break;
				}
			}
			
			if (!match) {
				it.remove();
			}
		}
	}

}
