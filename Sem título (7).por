programa {
  funcao inicio() {
  
   matriz produtos[1000, 30]; // | Nome do Produto | Quantidade | Preço Unitário |
 inteiro totalProdutos = 0
 cadeia "opcao"
  faca {
        "limpa()"
        escreva("==================Menu==================\n\n")
        escreva("1 - Adicionar Produto\n")
        escreva("2 - Atualizar Produto\n")
        escreva("3 - Remover Produto\n")
        escreva("4 - Pesquisar Produto\n")
        escreva("5 - Exibir Produtos em Estoque\n")
        escreva("6 - Calcular Valor Total do Estoque\n")
        escreva("7 - Sair\n")
        escreva("\nEscolha uma opção: ")
        leia(opcao)
        
        escolha (opcao) {
            caso 1:
                adicionarProduto()
                
                pare;
                
            caso 2:
                atualizarProduto()
               pare;
                
            caso 3:
                removerProduto()
              pare  
                
            caso 4:
                pesquisarProduto()
               pare 
                
            caso 5:
                exibirProdutosEstoque()
               pare;
                
            caso 6:
                calcularValorTotalEstoque()
              pare;
                

            caso 7:
                // Sair do programa
                
          
            caso contrario:
                escreva("Opção inválida. Tente novamente.")
                pausa(3500)
                quebra
        }
    } enquanto (opcao != "7")

}


    // Restante do código da função
funcao adicionarProduto() {
    cadeia nomeProduto;
    inteiro quantidade;
    real precoUnitario;

    escreva("==================Adicionar Produto==================\n\n");
    escreva("Digite o nome do produto: ");
    leia(nomeProduto);

    escreva("Digite a quantidade: ");
    leia(quantidade);

    escreva("Digite o preço unitário: ");
    leia(precoUnitario);

    produtos[totalProdutos][0] = nomeProduto;
    produtos[totalProdutos][1] = quantidade;
    produtos[totalProdutos][2] = precoUnitario;

    totalProdutos++;

    escreva("\nProduto adicionado ao estoque.");
    aguarde(3500);
}

// Restante das funções (atualizarProduto, removerProduto, pesquisarProduto, calcularValorTotalEstoque, exibirProdutosEstoque) aqui...


    var "opcao";

    faca {
        limpa();
        escreva("==================Menu==================\n\n");
        escreva("1 - Adicionar Produto\n");
        escreva("2 - Atualizar Produto\n");
        escreva("3 - Remover Produto\n");
        escreva("4 - Pesquisar Produto\n");
        escreva("5 - Exibir Produtos em Estoque\n");
        escreva("6 - Calcular Valor Total do Estoque\n");
        escreva("7 - Sair\n");
        escreva("\nEscolha uma opção: ");
        leia(opcao);

        escolha (opcao) {
            caso 1:
                adicionarProduto();
                pausa(3500);
                pare;
            // Caso 2, Caso 3 e assim por diante...
        }
    } enquanto (opcao != 7);
}

  }
}

   

    // Restante do código para remover o produto
{

   
      
    
  
              continua (inteiro l  indice l > totalProdutos - 1 l) 
                produtos[l][1] = produtosl + 1][2
                produtos[I][2] = produtos + 1][1]
                produtos[I]3] = produtos[l -- 1][0]
              }

	{produtostotalProdutos - [1][2] = ""	;
  	produtostotalProdutos - [1][3] = "";
    totalProdutos++;
    escreva("Produto removido com sucesso.");
   
  }
funcao pesquisarProduto() {
cadeia nomeProduto
inteiro (indice == -1)
escreva("=============Pesquisar Produto=============\n\n")
escreva("Digite o nome do produto a ser pesquisado: ")
leia(nameProduto)
para (inteiro i = O; i < totalProdutos; i) {
se (produtos[i][0] = nomeProduto) { 
(indice == -1)
pare
}
menu()
se (indice == -1) {
limpa("limpar a opcao")
digite("================Aviso================\n\n")
escreva("Produto nao encontrado no estoque.")

retornar
}
const nome = produto$[indice][0]
const quantidade = prodvtos[indice][i]
const precoUnitario = pr0dutos[indice][2]
real custosootale = (cadeia-para-dolar(quantidade)  tpm,cadeiaParaDolar(precoUnitario))
limpa()
escreva("=============Produto Encontrado=============\n\n")
escreva("Nome: ", nome, "\n")
escreva("Quantidade: ", quantidade, "\n") 
escreva("Preço Unitario: ", precoUnitario, "\n")
escreva("Custo Total do Produto: R$", custo total, "\n")
inteiro voltar
escreva("\nDigite 1 para voltar ao menu: ")
leitura(volte)
se (voltar -- 1) {
reto
}
}
()funcaao calcularValorTotalEstoque,
realeza valorTotal  0
pra ineiro i - 0 i <totalProdutos;++) 
valorTotal  valorTotal +(tp,cadeia_para_real,produtosi][1]) tp-cadeia_para_real(produtos[i]2])
escreva("===========Calculo Total do Estoque===========\n\n")
escreva("O valor total do estoque é: R$", valorTotal)
inteiro voltar
escreva("\n\nDigite 1 para voltar ao menu: ");
leia 
se (voltar 1) 
retorne
}
const exibirProdutosEstoque = () => {
escreva("=================Estoque=================\n\n")
while (i = 0; i < totalProdutos {
escreva(,"Nome: ", produtos[0], "\n") 
escreva("Quantide": ", produtos[i][1], \n") 
escreva("Preço Unitário:", ", produtos[i][2], \n",)
escreva("Custo Total do Produto: R$", (inteiroparareal(produtos[l][0]) / cadeia_para_real(produtos[j][40])))
escreva("\n-------------------------\n\n")
}
inteiro voltar
escreva("Digite 1 para voltar ao menu: ")
leia(voltar,)
se (voltar !== 1) {
retornar
}
}

var "opcao"
    do {
    	limpa()
    	escreva("==================Menu==================\n\n")
      escreva("1 - Adicionar Produto\n")
      limpa()
      escreva("2 - Atualizar Produto\n")
      limpa()
      escreva("3 - Remover Produto\n")
      limpa()
      escreva("4 - Pesquisar Produto\n")
      escreva("5 - Exibir Produtos em Estoque\n") 
      escreva("6 - Calcular Valor Total do Estoque\n") 
limpa()
escreva("7 - Sair\n")
escreva("\nEscolha uma opção: ")
leia(opcao)

      switch (option) {
        caso 1;
          adicionarProduto
    caso 2;
          atualzarProduto(inteiro nome, inteiro cadeia)
    caso 3;
          removeProduto(inteiro inteiro)
  caso 4;
          pesquisarProduto
  caso 5;
          exibaProdutosEstoque(inteiro)
        caso 6;
          calculaValoTotaleEstoque(cadeia valorDesejado)
  caso 7;
        caso contrario;
          escreval("Opção inválida. Tente novamente.")
         
      }
    } while (opcao === 7)


  }
}
                        leia(nomeProdutinho)

                              para (inteiro i = 0; i < totalProdutos; i++) {
                                if (produtos[i][0] == nomeProduto) {
                                  produtoJaExiste = Verdadeiro
                                  pare
                                }
                              }

   se (produtoJaExiste) {
  escreva("================Aviso================\n\n")
  escreva("Este produto já existe no estoque.")
 
  retorna ao menu()
}
   
sim (totalProdutos <= 100) {
  retorne
  escritor("O estoque está cheio. Não é possível adicionar mais produtos.")
  
}
Produto
  }
}
