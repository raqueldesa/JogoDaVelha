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
    print("Regrinhas:")
    print("Jogador 1 = X")
    print("Jogador 2 = O")
    
    pausaELimpa()
    
    print("Para escolher onde quer jogar, digite dois numeros que indicam linha e coluna de uma matriz 3x3")
    print("Exemplo:")
    print()
    print("Jogo antes:")
    print(cerquilha0)

    pausaELimpa()

    print("Voce digita: 2 2")
    print()

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

function erroCoordenada()
    print()
    print("Coordenadas nao aceitas")
    print("Jogador perdeu a vez :(")
    print()
    print("Coordenadas validas:")
    print(coordenadas)
end

function erroJaExiste()
    print("Posicao ja preenchida")
    print("Jogador perdeu a vez :(")
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
    io.write("Jogador ", jogador, ", digite suas coordenadas: ")

    local entrada = io.read("*line")
    local linha, coluna = string.match(entrada, "(%d+)%s+(%d+)")
    
    linha = tonumber(linha)
    coluna = tonumber(coluna)

    
        

    if linha and coluna and linha >= 1 and linha <= 3 and coluna >= 1 and coluna <= 3 then
        if jogo[linha][coluna] == 0 then
            jogo[linha][coluna] = jogador
            jogadas = jogadas + 1
        else
            erroJaExiste()
        end
    else
        erroCoordenada()

    end
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


function obterLinhasColunasDiagonais(matriz)
    local resultado = {}

    for i = 1, #matriz do
        table.insert(resultado, matriz[i])
    end

    for j = 1, #matriz[1] do
        local coluna = {}
        for i = 1, #matriz do
            table.insert(coluna, matriz[i][j])
        end
        table.insert(resultado, coluna)
    end

    local diagonalPrincipal = {}
    for i = 1, #matriz do
        table.insert(diagonalPrincipal, matriz[i][i])
    end
    table.insert(resultado, diagonalPrincipal)

    local diagonalSecundaria = {}
    for i = 1, #matriz do
        table.insert(diagonalSecundaria, matriz[i][#matriz - i + 1])
    end
    table.insert(resultado, diagonalSecundaria)

    return resultado
end




function verificaGanhador(jogo)
    local lista = obterLinhasColunasDiagonais(jogo)

    for _, linha in ipairs(lista) do
        if verificaValoresIguais(linha) and linha[1] ~= 0 then
            return linha[1]
        end
    end
    return false
end