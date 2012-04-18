package br.com.mackenzie.Model;

import java.io.Serializable;

public class Aluno implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1146412943087915328L;
	private String nome;
	private double nota1;
	private double nota2;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getNota1() {
		return nota1;
	}

	public void setNota1(double nota1) {
		this.nota1 = nota1;
	}

	public double getNota2() {
		return nota2;
	}

	public void setNota2(double nota2) {
		this.nota2 = nota2;
	}

	@Override
	public String toString() {
		return "Aluno :" + nome + ", Nota 1 :" + this.nota1 + ", Nota 2 :"
				+ this.nota2;
	}

}
