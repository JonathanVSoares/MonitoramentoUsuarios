package eeye.dao;

import java.util.ArrayList;
import java.util.List;

import eeye.model.Carrinho;
import eeye.model.Produto;

public class CarrinhoDao extends GerenciaDao<Carrinho> {
	
	public List<Produto> readList() throws Exception {
		open();

		List<Produto> resultado = new ArrayList<>();
		try {
			stmt = con.prepareStatement("select * from carrinho a "
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
	
	public void salvar(int id) throws Exception {
		open();

		try {
			stmt = con.prepareStatement("insert into carrinho values (1, ? , 1) ");
			stmt.setInt(1, id);
		    stmt.executeUpdate();
			
		} finally {
			close();
		}
	}

      
	public Produto readList2(int id) throws Exception {
		open();

		Produto resultado = new Produto();
		try {
			stmt = con.prepareStatement("select * from produtos a "
					+ "where a.id= "+id);

			rs = stmt.executeQuery();
			if (rs.next()) {
				resultado.setId(rs.getInt("a.id"));
				resultado.setNome(rs.getString("a.nome"));
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
			stmt = con.prepareStatement("select count(a.id_produto) as qtd from carrinho a ");

			rs = stmt.executeQuery();
			if (rs.next()) {
				num = rs.getInt("qtd");
			}
		} finally {
			close();
		}
		return num;
	}

}
