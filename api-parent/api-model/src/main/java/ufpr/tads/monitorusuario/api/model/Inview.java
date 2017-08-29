package ufpr.tads.monitorusuario.api.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class Inview extends Evento {
	private long tempoTotal;
}
