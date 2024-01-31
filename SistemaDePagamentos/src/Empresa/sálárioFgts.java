package Empresa;

public class sálárioFgts {
	public static SalarioFgts calcularSalarioFgts(double salarioBase, double percentualFgts, String tipoContrato) {
        double salario;
        double fgts;

        if (tipoContrato.equalsIgnoreCase("CLT")) {
            salario = salarioBase;
            fgts = salarioBase * (percentualFgts / 100);
        } else if (tipoContrato.equalsIgnoreCase("PJ")) {
            salario = salarioBase;
            fgts = 0;
        } else {
            throw new IllegalArgumentException("Tipo de contrato inválido");
        }

        return new SalarioFgts(salario, fgts);
    }
}

class SalarioFgts {
    private double salario;
    private double fgts;

    public SalarioFgts(double salario, double fgts) {
        this.salario = salario;
        this.fgts = fgts;
    }

    public double getSalario() {
        return salario;
    }

    public double getFgts() {
        return fgts;
    }
}

