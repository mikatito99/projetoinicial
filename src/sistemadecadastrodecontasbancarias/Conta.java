package sistemadecadastrodecontasbancarias;

public abstract class Conta {
    private int numero;
    private String agencia;
    private String nomeTitular;
    private String cpf;

    public Conta(int numero, String agencia, String nomeTitular, String cpf) {
        this.numero = numero;
        this.agencia = agencia;
        this.nomeTitular = nomeTitular;
        this.cpf = cpf;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getAgencia() {
        return agencia;
    }

    public void setAgencia(String agencia) {
        this.agencia = agencia;
    }

    public String getNomeTitular() {
        return nomeTitular;
    }

    public void setNomeTitular(String nomeTitular) {
        this.nomeTitular = nomeTitular;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    @Override
    public String toString() {
        return "Conta: " + numero + ", Agência: " + agencia + ", Nome do Titular: " + nomeTitular + ", CPF: " + cpf;
    }

    public abstract double saque(double valor) throws Exception;

    public abstract double deposito(double valor);

    public abstract double transferencia(Conta contaDestino, double valor);
}