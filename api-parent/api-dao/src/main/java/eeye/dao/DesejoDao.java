package eeye.dao;

import java.util.ArrayList;
import java.util.List;

import eeye.model.Desejo;
import eeye.model.Produto;

public class DesejoDao extends GerenciaDao<Desejo> {
	
	public List<Produto> readList() throws Exception {
		open();

		List<Produto> resultado = new ArrayList<>();
		try {
			stmt = con.prepareStatement("select * from desejo a "
					+ "inner join produtos tp on a.id_produto = tp.id ");

			rs = stmt.executeQuery();
			while (rs.next()) {
				Produto produto = new Produto();
				produto.setId(rs.getInt("a.id_produto"));
				produto.setNome(rs.getString("tp.nome"));
				resultado.add(produto);
			}
		} finally {
			close();
		}
		return resultado;
	}
        
}
