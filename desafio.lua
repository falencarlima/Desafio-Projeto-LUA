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
-- Função responsável por gerar as barras de progresso
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

-- Descrição da criatura
local monsterName = "Zombie"
local monsterDescription = "                                                   ▥▥\n▥▥   Criatura morta-viva muito hostil, causa dano corpo a corpo. ▥▥"
local monsterSound = "grrruuuoooo"
local monsterEmoji = "🧟"

-- Atributos da criatura
local attackAttribute = 3
local defenseAttribute = 3
local vitalityAttribute = 10
local speedAttribute = 2
local inteligenceAttribute = 1

--
print("▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨")
print("▥▥ Nome da criatura: " .. monsterName .. "                                      ▥▥")
print("▥▥ Emoji favorito: " .. monsterEmoji .. "                                            ▥▥")
print("▥▥ Descrição: " .. monsterDescription)
print("▥▥ Som que ele faz: " .. monsterSound .. "                                  ▥▥")
print("▥▥ Attributos:" .. "                                                   ▥▥")
print("▥▥          Atack: " .. getProgressBar(attackAttribute) .. "                                    ▥▥")
print("▥▥         Defesa: " .. getProgressBar(defenseAttribute) .. "                                    ▥▥")
print("▥▥           Vida: " .. getProgressBar(vitalityAttribute) .. "                                    ▥▥")
print("▥▥     Velocidade: " .. getProgressBar(speedAttribute) .. "                                    ▥▥")
print("▥▥   Inteligencia: " .. getProgressBar(inteligenceAttribute) .. "                                    ▥▥")
print("▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨▨")