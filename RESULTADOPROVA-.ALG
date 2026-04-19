ALGORITMO: "ResultadoProva"
DESCRIÇÃO:realiza a correção automática de provas para uma turma de três alunos.
-------------------------------------------------------

var
   G: vetor[1..5] de caracter     // Gabarito
   A: vetor[1..3] de caracter     // Nomes dos Alunos
   RA: caracter                   // Resposta Atual (auxiliar)
   Nota: vetor[1..3] de inteiro   // Nota de cada aluno
   I, J: inteiro                  // Contadores simples para os laços
   SomaNotas, MT: real            // Para calcular a média
inicio
   // PASSO 1 - Cadastro de Gabarito
   Para I <- 1 ate 5 faca
      escreva("Gabarito Questao ", I, ": ")
      Leia(G[I])
   FimPara

   LimpaTela

   // PASSO 2 - Cadastro de Alunos e Respostas
   Para I <- 1 ate 3 faca
      escreval("---------------")
      escreval("ALUNO ", I)
      escreval("---------------")
      escreva("Nome: ")
      leia(A[I])
      
      Nota[I] <- 0 // Zera a nota do aluno atual antes de corrigir
      Para J <- 1 ate 5 faca
         escreva("Resposta da Questao ", J, ": ")
         leia(RA)
         // Comparação individual de cada questão
         Se (RA = G[J]) entao
            Nota[I] <- Nota[I] + 2
         FimSe
      FimPara
      SomaNotas <- SomaNotas + Nota[I]
      LimpaTela
   FimPara

   // PASSO 3 - Exibição dos Resultados
   escreval("NOTAS FINAIS")
   escreval("-----------------------")
   Para I <- 1 ate 3 faca
      escreval(A[I]:15, Nota[I])
   FimPara
   
   MT <- SomaNotas / 3
   escreval("-----------------------")
   escreval("Media da Turma: ", MT:4:2)
fimalgoritmo

fimalgoritmo