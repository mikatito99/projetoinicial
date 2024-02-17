package sistemadecadastrodecontasbancarias;


public class ContaCorrente extends Conta {
    private double limiteCredito;

    public ContaCorrente(int numero, String agencia, String nomeTitular, String cpf, double limiteCredito) {
        super(numero, agencia, nomeTitular, cpf);
        this.limiteCredito = limiteCredito;
        if (limiteCredito < 0) {
            throw new IllegalArgumentException("O limite de crédito deve ser positivo.");
        }
    }

    public double getLimiteCredito() {
        return limiteCredito;
    }

    public void setLimiteCredito(double limiteCredito) {
        this.limiteCredito = limiteCredito;
    }

    @Override
    public void saque(double valor) throws SaldoInsuficienteException {
        double saldoComLimite = getSaldoAtual() + limiteCredito;
        if (valor > saldoComLimite) {
            throw new SaldoInsuficienteException("Saldo insuficiente");
        }
        setSaldoAtual(getSaldoAtual() - valor);
    }

    public double getSaldoAtual() {
        return super.getSaldo();
    }

    public void setSaldoAtual(double saldoAtual) {
        super.setSaldo(saldoAtual);
    }
}

public class SaldoInsuficienteException extends Exception {
    public SaldoInsuficienteException(String message) {
        super(message);
    }
}

public abstract class Conta {
    private int numero;
    private String agencia;
    private String nomeTitular;
    private String cpf;
    private double saldoAtual;

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
    

    public double getSaldoAtual() {
        return saldoAtual;
    