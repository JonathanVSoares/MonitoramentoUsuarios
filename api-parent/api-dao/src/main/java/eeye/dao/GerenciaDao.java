package eeye.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public abstract class GerenciaDao<G> {

    public static Connection con;
    PreparedStatement stmt;
    ResultSet rs;
    CallableStatement call;

    public void open() throws ClassNotFoundException, SQLException {
        close();
        if (con == null || con.isClosed()) {
            //con = DriverManager.getConnection(URL);
            con = ConnectionFactory.getConnection();
        }
    }

    protected void close() {
        try {
            rs.close();
        } catch (Exception e) {
        }

        try {
            stmt.close();
        } catch (Exception e) {
        }

        try {
            con.close();
        } catch (Exception e) {
        }
    }

    public Integer getNextId() throws Exception {
        open();
        String sql = "SELECT valor FROM Sequence WHERE idsequence = ?";
        String seqName = String.format("seq_%s", this.getClass().getSimpleName().toLowerCase());
        stmt = con.prepareStatement(sql);
        stmt.setString(1, seqName);
        rs = stmt.executeQuery();
        Integer id = null;
        if (rs.next()) {
            id = rs.getInt("valor");
            sql = "UPDATE Sequence set valor = ? WHERE idsequence = ?";
            stmt = con.prepareStatement(sql);
            stmt.setInt(1, id + 1);
            stmt.setString(2, seqName);
            stmt.execute();
        }
        close();
        return id;
    }

    
    @Override
    public void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
