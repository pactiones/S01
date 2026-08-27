function contarOcorrencias(tabela, alvo)
    local ocorrencia = 0
    for i = 1, #tabela do
       if tabela[i] == alvo then
        ocorrencia = ocorrencia + 1
       end
    end
    return ocorrencia
end

local elementos = {}

print("Digite a quantidade de elementos de uma tabela: ")
local N = tonumber(io.read())
for i = 1, N do
    print("Digite o elemento " .. i .. ": ")
    Y = tonumber(io.read())
    table.insert(elementos, Y)
 end

 print("Digite o número X a ser buscado:")
 local X = tonumber(io.read())

 local ocorrencia = contarOcorrencias(elementos, X)
print("O número " .. X .. " aparece " .. ocorrencia .. " vez(es) na tabela.")
