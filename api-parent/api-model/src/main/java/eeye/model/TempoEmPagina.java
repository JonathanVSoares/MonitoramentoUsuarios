package eeye.model;

import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Document(collection = "tempoEmPagina")
@Data
@EqualsAndHashCode(callSuper=true)
public class TempoEmPagina extends Evento {
	private long tempoTotal;
}
