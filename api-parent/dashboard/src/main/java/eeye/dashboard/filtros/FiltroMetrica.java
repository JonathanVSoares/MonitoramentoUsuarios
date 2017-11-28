package eeye.dashboard.filtros;

import java.util.Date;
import java.util.List;

import eeye.model.Navegacao;

public interface FiltroMetrica {
	public void filtrar(List<Navegacao> navegacoes, Date dataFim, Date dataInicio, String... args);
}
