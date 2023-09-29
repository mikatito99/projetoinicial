programa {
  inclua biblioteca Tipos --> p
  inclua biblioteca Util --> u
  cadeia produtos[100][3] 
  inteiro totalProdutos = 100

  funcao exibirMenu() {
        limpa()
        escreva("================== Menu ==================\n")
        escreva("1 - Adicionar Produto\n")
        escreva("2 - Atualizar Produto\n")
        escreva("3 - Remover Produto\n")
        escreva("4 - Pesquisar Produto\n")
        escreva("5 - Exibir Produtos em Estoque\n")
        escreva("6 - Calcular Valor Total do Estoque\n")
        escreva("7 - Sair\n")
        escreva("\nEscolha uma opção: ")
    }
  funcao inicio() 
  { 
    faca {
      exibirMenu()
      leia(opcao)

      escolha (opcao) {
        caso 1:
          limpa()
          adicionarProduto()
          pare
        caso 2:
          atualizarProduto()
          pare
        caso 3:
          removerProduto()
          pare
        caso 4:
          pesquisarProduto()
          pare
        caso 5:
          exibirProdutosEstoque()
          pare
        caso 6:
          calcularValorTotalEstoque()
          pare
        caso 7:
          pare
        caso contrario:
          limpa()
          escreva("Opção inválida. Tente novamente")
          u.aguarde(1000)
      }
    } enquanto (opcao != 7)
   
    // Definição da matriz para o estoque de produtos
    // Total de produtos no estoque

    funcao adicionarProduto() {
        cadeia nomeProduto
        inteiro quantidade
        real precoUnitario


 para (inteiro i = 0; i < 100; i++) {
      se (produtos[i][0] == nomeProduto){ 
        produtoJaExiste = verdadeiro
        escreva("   Aviso\n\n")      
        escreva("Este produto já existe no estoque.")
        pare                  
      }
        

        // Adiciona o novo produto ao estoque
        produtos[totalProdutos][0] = nomeProduto
        produtos[totalProdutos][1] = quantidade
        produtos[totalProdutos][2] = precoUnitario

        totalProdutos++

        escreva("\nProduto adicionado ao estoque.")
        aguarde(1000)
    }

    
    funcao exibirProdutosEstoque() {
        limpa()
        escreva("================= Estoque =================\n")

        // Itera sobre os produtos no estoque e  exibe
        para (inteiro i = 0; i < totalProdutos; i++) {
            escreva("Nome: ", produtos[i][0], "\n")
            escreva("Quantidade: ", produtos[i][1], "\n")
            escreva("Preço Unitário: R$", produtos[i][2], "\n")
            escreva("Custo Total: R$", produtos[i][1] * produtos[i][2], "\n")
            escreva("-------------------------------------------\n")
        }

        aguarde(3500)
    }

  
        cadeia opcao

        faca {
            exibirMenu()
            leia(opcao)

            escolha (opcao) {
                caso "1":
                    adicionarProduto()
                caso "2":
                    // Implementar a função atualizarProduto aqui
                caso "3":
                    // Implementar a função removerProduto aqui
                caso "4":
                    // Implementar a função pesquisarProduto aqui
                caso "5":
                    exibirProdutosEstoque()
                caso "6":
                    // Implementar a função calcularValorTotalEstoque aqui
                caso "7":
                    escreva("Saindo do programa.")
                caso contrario:
                    escreva("Opção inválida. Tente novamente.")
                    aguarde(2000)
            }
        } enquanto (opcao != "7")
    }
}

  }
}
