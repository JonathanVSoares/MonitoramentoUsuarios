package eeye.dao;

import java.util.ArrayList;
import java.util.List;

import eeye.model.Desejo;
import eeye.model.Produto;

public class PesquisaDao extends GerenciaDao<Desejo> {
	
	public List<Produto> readList(String pesquisa) throws Exception {
		open();

		List<Produto> resultado = new ArrayList<>();
		try {
			stmt = con.prepareStatement("select * from produtos p where p.nome like '%"+pesquisa+"%' limit 10");
			rs = stmt.executeQuery();
			while (rs.next()) {
				Produto produto = new Produto();
				produto.setId(rs.getInt("p.id"));
				produto.setNome(rs.getString("p.nome"));
				resultado.add(produto);
			}
		} finally {
			close();
		}
		return resultado;
	}
        
}
