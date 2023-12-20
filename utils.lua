coordenadas = [[
1 1 | 1 2 | 1 3
---------------
2 1 | 2 2 | 2 3
---------------
3 1 | 3 2 | 3 3
]]
cerquilha0 = [[
    |   |
-------------
    |   |
-------------
    |   |
]]
cerquilha1 = [[
    |   |
-------------
    | X |
-------------
    |   |
]]

function pausaELimpa()
    print()
    os.execute("pause")
    os.execute("cls")
end

function printInicio()
    print()
    print("Bem vindo ao Jogo da Velha da Raquel :)")
    print("-------------feito em Lua--------------")
    print()
    print("Reginha:")
    print("Jogador 1 = X")
    print("Jogador 2 = O")
    
    pausaELimpa()
    
    print("Para escolher onde quer jogar, digite dois numeros que indicam linha e coluna de uma matriz 3x3")
    print("Exemplo:")
    print("Jogo antes:")
    print(cerquilha0)

    pausaELimpa()

    print("Voce digita: 2 2")
    print("Resultado:")
    print(cerquilha1)

    pausaELimpa()
    print("Essas sao todas as coordenadas")
    print()

    print(coordenadas)

    pausaELimpa()
    print("Agora estao prontos pra jogar. Bom Jogo!")

    pausaELimpa()
end

function printEstadoAtualJogo(jogo)
    for i = 1, #jogo do
        for j = 1, #jogo[i] do
            local jogada = "-"
            if  jogo[i][j] == 1 then
                jogada = "X"
            elseif jogo[i][j] == 2 then
                jogada = "O"
            end
            io.write(jogada, " ")
        end
        print()  -- Nova linha para cada linha da matriz
    end
end

function lerCoordenadas(jogador, jogo)
    io.write("Jogador ", jogador, " digite suas coordenadas: ")
    linha = io.read("*number")
    coluna = io.read("*number")
    
    jogo[linha][coluna] = jogador
    return jogo
end

function verificaValoresIguais(lista)
    
    local primeiroElemento = lista[1]
    for i = 2, #lista do
        if lista[i] ~= primeiroElemento then
            return false
        end
    end
    return true
end


-- function verificaGanhador(jogo)
--     for i = 1, #jogo do
--         local 
--         for j = 1, #jogo[i] do

--             if i == j then


--     return 0
-- end