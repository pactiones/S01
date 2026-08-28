function filtrarMaiores(tabela, limite)
    local tabelaNova = {}
    for i = 1, #tabela do
       if tabela[i] > limite then
        table.insert(tabelaNova, tabela[i])
       end
    end
    return tabelaNova
end

local elementos = {}

print("Digite a quantidade de elementos de uma tabela: ")
local N = tonumber(io.read())
for i = 1, N do
    print("Digite o elemento " .. i .. ": ")
    Y = tonumber(io.read())
    table.insert(elementos, Y)
end

print("Digite o valor limite: ")
local K = tonumber(io.read())

print("---Elementos maiores que " .. K .. "---")

local resposta = filtrarMaiores(elementos, K)

for i = 1, #resposta do
    print(resposta[i])
end
