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
	
	public int count() throws Exception {
		open();

		int num = 0;
		try {
			stmt = con.prepareStatement("select count(a.id_produto) as qtd from desejo a ");

			rs = stmt.executeQuery();
			if (rs.next()) {
				num = rs.getInt("qtd");
			}
		} finally {
			close();
		}
		return num;
	}
	
	public void salvar(int id) throws Exception {
		open();

		try {
			stmt = con.prepareStatement("insert into desejo values (1, ? , 1) ");
			stmt.setInt(1, id);
		    stmt.executeUpdate();
			
		} finally {
			close();
		}
	}

        
}
