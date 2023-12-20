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

function printInicio()
    print()
    print("Bem vindo ao Jogo da Velha da Raquel :)")
    print("-------------feito em Lua--------------")
    print()
    print("Reginha:")
    print("Jogador 1 = X")
    print("Jogador 2 = O")
    print()
    os.execute("pause")
    os.execute("cls")
    
    print("Para escolher onde quer jogar, digite dois numeros que indicam linha e coluna de uma matriz 3x3")
    print("Exemplo:")
    print("Jogo antes:")
    print(cerquilha0)
    print()
    os.execute("pause")
    os.execute("cls")

    print("Voce digita: 2 2")
    print("Resultado:")
    print(cerquilha1)
    print()
    os.execute("pause")
    os.execute("cls")
    print("Essas sao todas as coordenadas")
    print()

    print(coordenadas)
    print()
    os.execute("pause")
    os.execute("cls")
    print("Agora estao prontos pra jogar. Bom Jogo!")
    print()

    os.execute("pause")
    os.execute("cls")
end

function printJogo(jogo)
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