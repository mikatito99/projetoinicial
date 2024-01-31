package Empresa;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.time.LocalDate;

public class Contrato {
    public class Funcionario {
        private String matricula;
        private String nome;
        private String email;
        private String genero;
        private LocalDate dataAdmissao;
        private List<Beneficio> beneficios;

        public Funcionario(String matricula, String nome, String email, String genero, LocalDate dataAdmissao) {
            this.matricula = matricula;
            this.nome = nome;
            this.email = email;
            this.genero = genero;
            this.dataAdmissao = dataAdmissao;
            this.beneficios = new ArrayList<>();
        }

        public String getMatricula() {
            return this.matricula;
        }

        public String getNome() {
            return this.nome;
        }

        public String getEmail() {
            return this.email;
        }

        public String getGenero() {
            return this.genero;
        }

        public LocalDate getDataAdmissao() {
            return this.dataAdmissao;
        }

        public void adicionarBeneficio(Beneficio beneficio) {
            this.beneficios.add(beneficio);
        }

        public void removerBeneficio(Beneficio beneficio) {
            this.beneficios.remove(beneficio);
        }

        public List<Beneficio> getBeneficios() {
            return this.beneficios;
        }
    }

    public class Beneficio {
        private String nome;
        private BigDecimal valor;

        public Beneficio(String nome, BigDecimal valor) {
            this.nome = nome;
            this.valor = valor;
        }

        public String getNome() {
            return this.nome;
        }

        public BigDecimal getValor() {
            return this.valor;
        }
    }
}
