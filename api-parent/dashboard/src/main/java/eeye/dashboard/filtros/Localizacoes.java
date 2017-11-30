package eeye.dashboard.filtros;

public enum Localizacoes {
	SUL("PR", "SC", "RS"),
	SUDESTE("RJ", "SP", "ES", "MG"),
	NORTE("AC", "AP", "AM", "PA", "RO", "RR", "TO"),
	NORDESTE("AL", "BA", "CE", "MA", "PB", "PE", "PI", "RN", "SE"),
	CENTROOESTE("DF", "GO", "MT", "MS");
	
	private String[] estados;
	
	private Localizacoes(String... estados) {
		this.estados = estados;
	}
	
	public String[] getEstados() {
		return estados;
	}
}
