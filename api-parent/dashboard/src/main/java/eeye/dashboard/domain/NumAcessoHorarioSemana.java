package eeye.dashboard.domain;

import lombok.Data;

@Data
public class NumAcessoHorarioSemana {
	String horario;
	int diaDaSemana;
	int numeroAcessos;
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		NumAcessoHorarioSemana other = (NumAcessoHorarioSemana) obj;
		if (diaDaSemana != other.diaDaSemana)
			return false;
		if (horario == null) {
			if (other.horario != null)
				return false;
		} else if (!horario.equals(other.horario))
			return false;
		return true;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + diaDaSemana;
		result = prime * result + ((horario == null) ? 0 : horario.hashCode());
		return result;
	}
}
