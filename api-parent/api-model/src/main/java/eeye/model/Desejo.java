package eeye.model;

import java.io.Serializable;

import lombok.Data;

@Data
public class Desejo implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int idCliente;
	private int idProduto;
	private int quantidade;

}
