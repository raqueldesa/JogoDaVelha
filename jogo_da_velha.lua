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
    {0, 0, 0},
    {0, 0, 0}
}

-- print(type(matriz[1]))

-- 1 == X
-- 2 == O

--funcional
-- printInicio()

jogadas = 0
empate = false

while not ganhador do
    
    if jogadas >= 9 then
        empate = true
        break
    end

    matriz = lerCoordenadas(1, matriz)
    printEstadoAtualJogo(matriz)
    
    ganhador = verificaGanhador(matriz)
    if ganhador then 
        break
    end
    if jogadas >= 9 then
        empate = true
        break
    end

    matriz = lerCoordenadas(2, matriz)
    printEstadoAtualJogo(matriz)
    
    ganhador = verificaGanhador(matriz)
 

end

if not empate then
    print("Jogador ", ganhador, " ganhou! *emogi de confete* :)")
else
    print("Nao houveram ganhadores, ou os dois sao muito bons, o sao muito ruins kkk")
end

print("Parabens :D ate a proxima jogada")







