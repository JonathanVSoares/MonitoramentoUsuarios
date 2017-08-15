package ufpr.tads.monitorusuario.api.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class Navegacao extends Evento {
	private String info;
}
