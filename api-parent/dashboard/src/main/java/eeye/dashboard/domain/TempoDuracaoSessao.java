package eeye.dashboard.domain;

import java.time.temporal.ChronoUnit;
import java.util.Calendar;

public class TempoDuracaoSessao {
	private String horarioDoDia;
	private Calendar horarioComeco;
	private Calendar horarioFim;

	public String getHorarioDoDia() {
		return horarioDoDia;
	}

	public void setHorarioDoDia(String horarioDoDia) {
		this.horarioDoDia = horarioDoDia;
	}

	public void verificarComecoFimSessao(Calendar horario) {
		if (horarioComeco == null || horario.before(horarioComeco)) {
			horarioComeco = horario;
		}

		if (horarioFim == null || horario.after(horarioFim)) {
			horarioFim = horario;
		}
	}

	public int calcularDuracaoEmMin() {
		return (int) ChronoUnit.SECONDS.between(horarioComeco.toInstant(), horarioFim.toInstant());
	}
}
