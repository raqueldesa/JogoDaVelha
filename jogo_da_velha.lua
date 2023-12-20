utils = require("utils")

-- FLUXO do JOGO
-- 1. printInicio()
-- 2. printEstadoAtualJogo()
-- 3. ler coordenada jogador 1
-- 4. printEstadoAtualJogo()
-- 5. ler coordenada jogador 2
-- 6. printEstadoAtualJogo()
-- 7. verificaGanhador()
-- 8. repete tudo ou finaliza

-- futura feature -> criar um arquivo e registrar os jogos e pontuações
-- teste de commit 

jogo = 1

-- print(cerquilha)

local matriz = {
    {1, 1, 1},
    {0, 1, 0},
    {0, 1, 0}
}

print(type(matriz[1]))

-- 1 == X
-- 2 == O

-- printInicio()

-- printEstadoAtualJogo(matriz)
-- matriz = lerCoordenadas(1, matriz)

-- ganhador = verificaGanhador(matriz)

-- printEstadoAtualJogo(matriz)

print(verificaValoresIguais(matriz[1]))

-- ideia: percorrer a matriz e adicionar a uma 'lista' os valores das colunas e diagonais, para serem chamadas pela funcao verificaValoresIguais()

