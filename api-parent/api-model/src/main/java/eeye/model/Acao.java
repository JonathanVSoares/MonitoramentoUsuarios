package eeye.model;

import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Document(collection = "acoes")
@Data
@EqualsAndHashCode(callSuper=true)
public class Acao extends Evento {
	private String idElemento;
}
