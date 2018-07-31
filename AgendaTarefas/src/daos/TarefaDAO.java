package daos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import models.Tarefa;



public class TarefaDAO {
	private Connection connection;

	public TarefaDAO() {
		connection = ConnectionFactory.getConnection();
	}

	public boolean inserir(Tarefa tarefa) {

		String sql = "insert into tarefas (descricao, dataFinalizacao) " + "values (?, ?);";

		try {
			PreparedStatement stmt = connection.prepareStatement(sql);

			stmt.setString(1, tarefa.getDescricao());
			

			stmt.setDate(2, new java.sql.Date(tarefa.getDataFinalizacao().getTimeInMillis()));

			stmt.execute();
			stmt.close();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public List<Tarefa> getLista() {
		List<Tarefa> result = new ArrayList<>();

		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from tarefas");
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// criando o objeto 
				Tarefa tarefa = new Tarefa();
				tarefa.setId(rs.getLong("id"));
				tarefa.setDescricao(rs.getString("descricao"));
				

				// montando a data através do Calendar
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("dataFinalizacao"));
				tarefa.setDataFinalizacao(data);

				// adicionando o objeto à lista
				result.add(tarefa);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	public boolean alterar(Tarefa tarefa) {
		String sql = "update tarefas set descricao=?, dataFinalizacao=? where id=?";
		try {
			PreparedStatement stmt = connection.prepareStatement(sql);
			stmt.setString(1, tarefa.getDescricao());
			
			stmt.setDate(2, new java.sql.Date(tarefa.getDataFinalizacao().getTimeInMillis()));
			stmt.setLong(3, tarefa.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public boolean remover(Tarefa tarefa) {
		try {
			PreparedStatement stmt = connection.prepareStatement("delete from tarefas where id=?");
			stmt.setLong(1, tarefa.getId());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public Tarefa getById(Long id) {
		Tarefa result = null;

		try {
			PreparedStatement stmt = this.connection.prepareStatement("select * from tarefas where id = ?;");
			stmt.setLong(1, id);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				// criando o objeto
				result = new Tarefa();
				result.setId(rs.getLong("id"));
				result.setDescricao(rs.getString("descricao"));
				
				// montando a data através do Calendar
				Calendar data = Calendar.getInstance();
				data.setTime(rs.getDate("dataFinalizacao"));
				result.setDataFinalizacao(data);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return result;
	}

	

}

	
