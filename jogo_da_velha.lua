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
    {0, 0, 0},
    {0, 1, 0},
    {0, 0, 2}
}
-- 1 == X
-- 2 == O

printInicio()

-- printJogo(matriz)

-- print("Jogador X ")