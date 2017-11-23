package eeye.model;

import org.springframework.data.mongodb.core.geo.GeoJsonPoint;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=true)
public class Navegacao extends Evento {
	private String browser;
	private String pagina;
	private TipoDispositivo tipoDispositivo;
	private GeoJsonPoint posicaoGeo;
	private String pais;
	private String estado;
	private String estadoAbrev;
	private String cidade;
	private String resolutionHeight;
	private String resolutionWidth;
	private String os;
	private String idioma;
}
