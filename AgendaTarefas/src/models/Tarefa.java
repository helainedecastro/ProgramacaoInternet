package models;

import java.util.Calendar;

import org.springframework.format.annotation.DateTimeFormat;

public class Tarefa {

	private Long id;
	private String descricao;
	@DateTimeFormat(pattern = "dd/MM/yyyy")
	private Calendar dataFinalizacao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Calendar getDataFinalizacao() {
		return dataFinalizacao;
	}

	public void setDataFinalizacao(Calendar dataFinalizacao) {
		this.dataFinalizacao = dataFinalizacao;
	}

	@Override
	public String toString() {
		return "Tarefa [id=" + id + ", descricao=" + descricao + ", dataFinalizacao=" + dataFinalizacao + "]";
	}

}
