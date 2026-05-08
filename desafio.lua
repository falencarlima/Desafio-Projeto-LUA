--[[
    Nome da criatura
    Descrição
    Som que faz
    Atributos
        Ataque
        Defesa
        Vitalidade
        Velocidade
        Inteligência
    Habilidades
        Quebrar Portas
        Gerar Zumbis
        Virar Afogado
        Virar Líder
        Jokey
]]

-- Habilitar UTF-8 no terminal e depois limpa a mensagem de código de página
os.execute("chcp 65001")
os.execute("cls")
-- Funções responsáveis pelas bordas de cima e de baixo do card.
local function drawBorderTop()
    print("▨▨▨▨▨▨▨▨▨▨▨▨▨ MONSTER CARD ▨▨▨▨▨▨▨▨▨▨▨▨▨")
    return
end
local function drawBorderBottom()
    print("▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨")
    return
end

-- Função responsável por gerar as barras de progresso.
local function getProgressBar(attribute)
    local result = ""
    local fullChar = "▮"
    local emptyChar = "▯"
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

-- Descrição da criatura.
local monsterName = "Zombie"
local monsterDescription = [[
▨    Criatura morta-viva muito hostil, ▨
▨    causa dano corpo a corpo.         ▨]]
local monsterSound = "grrruuuoooo"
local monsterEmoji = "🧟"

-- Atributos da criatura.
local attackAttribute = 3
local defenseAttribute = 3
local vitalityAttribute = 10
local speedAttribute = 2
local inteligenceAttribute = 1

-- Card com informações da criatura.
drawBorderTop()
print("▨  Nome da criatura: " .. monsterName .. "            ▨")
print("▨  Emoji favorito: " .. monsterEmoji .. "                  ▨")
print("▨  Descrição:                          ▨\n" .. monsterDescription)
print("▨  Som que ele faz: " .. monsterSound .. "        ▨")
print("▨  Attributos:" .. "                         ▨")
print("▨           Atack: " .. getProgressBar(attackAttribute) .. "          ▨")
print("▨          Defesa: " .. getProgressBar(defenseAttribute) .. "          ▨")
print("▨            Vida: " .. getProgressBar(vitalityAttribute) .. "          ▨")
print("▨      Velocidade: " .. getProgressBar(speedAttribute) .. "          ▨")
print("▨    Inteligencia: " .. getProgressBar(inteligenceAttribute) .. "          ▨")
drawBorderBottom()