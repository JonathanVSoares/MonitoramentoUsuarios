package ufpr.tads.monitorusuario.api.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class Acao extends Evento {
	private String idElemento;
}
