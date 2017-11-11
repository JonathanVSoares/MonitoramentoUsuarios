package eeye.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class Inview extends Evento {
	private String idElemento;
	private long tempoTotal;
}
