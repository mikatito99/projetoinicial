package sistemadecadastrodecontasbancarias;

import exceptions.SaldoInsuficienteException;

public class ContaCorrente extends Conta {
    private double limiteCredito;

    public ContaCorrente(int numero, String agencia, String nomeTitular, String cpf, double limiteCred) {
        super(numero, agencia, nomeTitular, cpf);
        this.limiteCredito = limiteCred;
    }

    public double getLimiteCredito() {
        return limiteCredito;
    }

    public void setLimiteCredito(double limiteCredito) {
        this.limiteCredito = limiteCredito;
    }

    @Override
    public void saque(double valor) throws SaldoInsuficienteException {
        if (valor > getSaldo()) {
            double saldoComLimite = getSaldo() + limiteCredito;
            if (valor > saldoComLimite) {
                throw new SaldoInsuficienteException("Saldo insuficiente");
            }
            
        setSaldo(getSaldo() - valor);
    }
}
    
