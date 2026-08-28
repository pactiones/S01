function calcularMedia(a, b)
    local resposta = (a+b)/2
    return resposta
end

function encontrarMaior(a, b)
    if a > b then
        return a
    else
        return b
    end
end

function calcularDiferencaAbsoluta(a, b)
    if (a - b) < 0 then
        local resposta = (a - b) * (-1)
        return resposta
    else
        local resposta = a - b
        return resposta
    end
end

function analisarNumeros(n1, n2, operacao)
    if operacao == 'media' then
        return calcularMedia(n1, n2)
    elseif operacao == 'maior' then
        return encontrarMaior(n1, n2)
    elseif operacao == 'diferenca' then
        return calcularDiferencaAbsoluta(n1, n2)
    else
        print("Operacao invalida")
    end
end

print("Digite o primeiro numero: ")
    local n1 = tonumber(io.read())
    print("Digite o segundo numero: ")
    local n2 = tonumber(io.read())
    print("Digite a operacao ('media', 'maior' ou 'diferenca'):")
    local operacao = tostring(io.read())

    local resposta = analisarNumeros(n1, n2, operacao)
    print (resposta)
