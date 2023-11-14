 import java.util.Scanner;
import java.util.Random;
public class jogoSena {

	    public static void main(String[] args) {
	
	 Scanner scanner = new Scanner(System.in);
	    Random random = new Random();

	    int[] aposta = new int[7];
	    int[] resultado = new int[7];


	    for (int i = 0; i < 7; i++) {
	        do {
	            System.out.print("Digite o " + (i + 1) + "º número da aposta: ");
	            aposta[i] = scanner.nextInt();
	        } while (aposta[i] < 0 || aposta[i] > 100);
	    }

	    
	    for (int i = 0; i < 7; i++) {
	        resultado[i] = random.nextInt(101);
	    }
	    int acertos = 0;
	    for (int i = 0; i < 7; i++) {
	        for (int j = 0; j < 7; j++) {
	            if (aposta[i] == resultado[j]) {
	                acertos++;
	                break;
	            }
	        }
	    }
	    System.out.print("\nResultado da aposta: ");
	    for (int num : aposta) {
	        System.out.print(num + " ");
	    }

	    System.out.print("\nResultado sorteado: ");
	    for (int num : resultado) {
	        System.out.print(num + " ");
	    }
	    
	 

	    // Calculando   o premio
	    int premio = 0;
	    switch (acertos) {
	        case 5:
	            premio = 10000;
	            break;
	        case 6:
	            premio = 50000;
	            break;
	        case 7:
	            premio = 200000;
	            break;
	    }

	   
		
	}
}
