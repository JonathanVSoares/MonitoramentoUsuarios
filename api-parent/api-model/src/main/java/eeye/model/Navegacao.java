package eeye.model;

import java.util.Date;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class Navegacao extends Evento {
	private String browser;
	private String pagina;
	private Date horario;
	private TipoDispositivo tipoDispositivo;
}
