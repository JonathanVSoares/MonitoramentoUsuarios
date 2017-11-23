package eeye.model;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;

@Document(collection = "eventos")
@Data
public abstract class Evento {
	@Id
	private String id;
	private String tipo;
	private String user;
	private String sessao;
	private Date horario;
}
