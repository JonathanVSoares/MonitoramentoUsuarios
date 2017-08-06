package ufpr.tads.monitorusuario.api.model;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class Botao {
	@Id
	private String id;
	private String nome;

}
