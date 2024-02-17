package sistemadecadastrodecontasbancarias;

import java.util.Scanner;

public class Menu {
    private Scanner scanner;

    public Menu() {
        this.scanner = new Scanner(System.in);
    }
    
    public int mostrarOpcoes() {
        System.out.println("Escolha uma opção:");
        System.out.println("1 - Criar conta corrente");
        System.out.println("2 - Criar conta poupança");
        System.out.println("3 - Realizar saque");
        System.out.println("4 - Realizar depósito");
        System.out.println("5 - Realizar transferência");
        System.out.println("6 - Listar contas");
        System.out.println("7 - Sair");

        return scanner.nextInt();
    }
}


