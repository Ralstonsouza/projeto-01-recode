Algoritmo "AIR AMR"

// Professor   : Artur Brant
// Descrição   : Cadastro de Clientes e Destino desejado, com a função de pesquisar por nome de cliente cadastrado.
// Autor(a)    : Nome do(a) aluno(a) RALSTON SOUZA
// Data atual  : 21/06/2022

Var
   nomes: vetor [1..3] de caracter
   destinos: vetor [1..3] de caracter
   op, nome: caracter
   i, f, c: inteiro
      //

   procedimento Inicializar ()
  //Só encontrei esta maneira de fazer esse codigo funcionar para pesquisa,
  //usando essa função "Procedimento".
inicio

           enquanto op <> "3" faca

              Escreval ("| ****      AIR AMR       **** |")
              Escreval (" (1) Cadastro de Clientes. ")
              Escreval (" (2) Consulta Cliente Cadastrado. ")
              Escreval (" (3) Sair ")
              Escreval ("")
              Escreva  (" Opção: ")
                       leia (op)
                        Se op = "1" entao
                            limpaTela
                               Se f = 3 entao
                                   EscrevaL (" Nao e possivel mais embarcar esgotado !")
                                   Escreval ("")
                                   Escreval ("")
                                        Senao
                                        cadastra_cliente ()
                               FimSe
                         FimSe
                         Se op = "2" entao
                            LimpaTela
                            pesquisar_cliente ()
                         FimSe
                         Se op = "3" entao
                            para i de 1 ate 3 faca
                                 nomes[i] <- "x"
                            FimPara
                                LimpaTela
                                   Escreval ("*-----------------------------------------*")
                                   Escreval ("* * *    Obrigado por Voar Conosco!   * * *")
                                   Escreval ("*-----------------------------------------*")
                         FimSe
           FimEnquanto


 FimProcedimento



 procedimento cadastra_cliente ()

Inicio


      Escreval ("| ****  CADASTRO DE CLIENTES AIR AMR  **** |")

      Escreval ("")
        para i de 1 ate 3 faca
           se (nomes[i]="") entao
              Escreva ("Nome: ")
                      leia (nomes[i])
              Escreva ("Destino: ")
                      leia (destinos[i])

              f <- f + 1
                       limpaTela
           Fimse
        FimPara
               EscrevaL ("Fim Do Cadastro !")
 FimProcedimento



 Procedimento pesquisar_cliente ()

inicio

      Escreval ("* * *  PESQUISAR CLIENTE CADASTRADO   * * *")
      Escreval ("")
               c <- 0
      Escreva ("Digite o Nome do Cliente: ")
              Leia (nome)
                   Para i de 1 ate 3 faca
                    Se nome = nomes[i] entao
                     EscrevaL ("Nome: ",nomes[i])
                     EscrevaL ("Destino: ",destinos[i])
                     c <- c + 1
                     FimSe
                   FimPara
                   Se c = 0 entao
                      EscrevaL ("Cliente não Cadastrado!")
                   FimSe
                   Voltar_Menu ()
                   LimpaTela
  FimProcedimento

  Procedimento  Voltar_Menu ()
inicio

      Escreva ("Voltar ao Menu? (S/N): ")
              Leia (op)
              se op = "S" entao
                 LimpaTela
                       inicializar ()
                       senao
                 LimpaTela
                        pesquisar_cliente
              FimSe
  FimProcedimento

inicio

      inicializar ()

Fimalgoritmo