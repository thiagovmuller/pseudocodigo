algoritmo "Agência de Viagens"

const
maxClientes= 500
maxDestinos=500

Var
vetCliente: vetor[0..maxClientes] de caractere
nome: caractere
vetDestino: vetor[0..maxDestinos] de caractere
destino: caractere
quantClientes: inteiro
quantDestinos: inteiro
numClientes: inteiro
numDestinos: inteiro
opcao: inteiro
ind: inteiro

procedimento cadastrarCliente()
inicio
escreva("Quantos clientes deseja cadastrar? ")
leia(quantClientes)

para ind de numClientes+1 até quantClientes + numClientes faca:
     escreva("Digite o nome do cliente: ")
     leia(vetCliente[ind])
     numClientes <- numClientes + 1
     escreval("Cliente cadastrado com sucesso.")
     escreval()
fimpara
fimprocedimento

procedimento consultarClientes()
inicio
    se numClientes = 0 entao
        escreval("Nenhum cliente cadastrado.")
    senao
        para ind de 1 ate numClientes faca
             escreval()
             escreval("Cliente ", ind, ":")
             escreval("Nome: ", vetCliente[ind])
             escreval()
        fimpara
    fimse
fimprocedimento

procedimento cadastrarDestino()
inicio
escreva("Quantos destinos deseja cadastrar? ")
leia (quantDestinos)

para ind de numDestinos+1 até quantDestinos + numDestinos faca
     escreva("Digite o destino: ")
     leia(vetDestino[ind])
     numDestinos <- numDestinos + 1
     escreval("Destino cadastrado com sucesso.")
     escreval()
fimpara
fimprocedimento

procedimento consultarDestinos()
inicio
    se numDestinos = 0 entao
        escreval("Nenhum destino cadastrado.")
    senao
        para ind de 1 ate numDestinos faca
             escreval()
             escreval("Cadastro ", ind, ":")
             escreval("Destino: ",vetDestino[ind])
             escreval()
        fimpara
    fimse
fimprocedimento



inicio

    repita
        escreval("Menu:")
        escreval("1 - Cadastrar cliente")
        escreval("2 - Consultar clientes")
        escreval("3 - Cadastrar destino")
        escreval("4 - Consultar destinos")
        escreval("5 - Sair")
        escreva("Escolha a opcao desejada: ")
        leia(opcao)

        escolha opcao
            caso 1
                 cadastrarCliente()
            caso 2
                 consultarClientes()
            caso 3
                 cadastrarDestino()
            caso 4
                 consultarDestinos()
            caso 5
                escreval("Encerrando o programa.")
            outrocaso
                escreval("Opcão invalida. Por favor, escolha uma opcao valida.")
        fimescolha
    ate opcao = 5


fimalgoritmo