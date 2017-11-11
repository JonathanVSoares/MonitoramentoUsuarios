package eeye.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class TempoEmPagina extends Evento {
	private long tempoTotal;
}
