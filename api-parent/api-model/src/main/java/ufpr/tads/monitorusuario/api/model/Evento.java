package ufpr.tads.monitorusuario.api.model;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

import lombok.Data;

@Document(collection = "eventos")
@Data
public class Evento {
	@Id
	private String id;
	private String tipo;
	private String user;
}
