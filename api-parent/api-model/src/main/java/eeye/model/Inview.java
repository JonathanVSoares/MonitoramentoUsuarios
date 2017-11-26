package eeye.model;

import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Document(collection = "inview")
@Data
@EqualsAndHashCode(callSuper=true)
public class Inview extends Evento {
	private String idElemento;
	private long tempoTotal;
}
