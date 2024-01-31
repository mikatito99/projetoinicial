package Empresa;
import java.util.ArrayList;
import java.util.List;
public class Cargo {

    private String nome;
    private String descricao;
    private double remuneracao;

    public static void main(String[] args) {
        List<Cargo> cargos = new ArrayList<>();
        cargos.add(new Cargo("Engenheiro De Software", "Projeta e implementa sistemas de software", 80000));
        cargos.add(new Cargo("Gerente De Projetos", "Gerencia projetos e equipes de software.", 90000));
        cargos.add(new Cargo("Cientista De Dados", "analisa e completa dados complexos ", 95000));

        for (Cargo cargo : cargos) {
            System.out.println("Nome: " + cargo.getNome());
            System.out.println("Descrição: " + cargo.getDescricao());
            System.out.println("Remuneração: " + cargo.getRemuneracao());
            System.out.println();
        }
    }

    public Cargo(String nome, String descricao, double remuneracao) {
        this.nome = nome;
        this.descricao = descricao;
        this.remuneracao = remuneracao;
    }

    public Cargo(String nome, String descricao, double remuneracao) {
        this.nome = nome;
        this.descricao = descricao;
        this.remuneracao = remuneracao;
    }

    public String getNome() {
        return nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public double getRemuneracao() {
        return remuneracao;
    }
}