-- =======================================================================
-- INICIALIZAÇÃO SEGURA PARA DELTA EXECUTOR
-- =======================================================================
if not game:IsLoaded() then game.Loaded:Wait() end

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- =======================================================================
-- KEYS
-- =======================================================================
local SISTEMA_DE_KEYS = {
    ["99"] = { Tipo = "LIFETIME" },
    ["PREMIUM_988"] = { Tipo = "LIFETIME" },
    ["INDEFINIDA"] = { Tipo = "TEMPO", Segundos = 60 }
}

local LINK_KEY = "https://killer-main.vercel.app"
local DISCORD_DONO = "Peça uma Key pro dono no discord: killer_exp"

-- =======================================================================
-- SCRIPTS ABA PRINCIPAL
-- =======================================================================
local ScriptsPrincipal = {
    {Nome = "Nameless Admin (Universal)", URL = "https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source", UsarTrue = false},
    {Nome = "Fly Gui v3 (Universal)", URL = "https://rawscripts.net/raw/Universal-Script-Fly-gui-v3-78856", UsarTrue = false},
    {Nome = "Zenith Hub (Fish/The Forge)", URL = "https://zenithhub.cloud/panel/script", UsarTrue = false},
    {Nome = "Universal Farm Hub Mobile (Jailbreak)", URL = "https://raw.githubusercontent.com/BlitzIsKing/UniversalFarm/main/Loader/Regular", UsarTrue = false},
    {Nome = "Zephyr Hub (Hypershot)", URL = "https://raw.githubusercontent.com/TheRealAvrwm/Zephyr-V2/refs/heads/main/Hypershot.lua", UsarTrue = true},
    {Nome = "Argon Hub X (Blade Ball)", URL = "https://rawscripts.net/raw/Universal-Script-Argon-Hub-X-Blade-Ball-OP-50392", UsarTrue = false},
    {Nome = "Redz Hub (Blox Fruits)", URL = "https://raw.githubusercontent.com/luraobermeyer-jpg/redzhub/refs/heads/main/redzhub.lua.txt", UsarTrue = false},
    {Nome = "Onion Hub PVP (Blox Fruits)", URL = "https://raw.githubusercontent.com/onion132005-bit/esponion.lua/refs/heads/main/onion13v4.lua", UsarTrue = false},
    {Nome = "Driving Empire (Pc/Mobile)", URL = "https://raw.githubusercontent.com/Marco8642/science/main/drivingempire", UsarTrue = true},
    {Nome = "Ekuve Hub (Fuja do tsunami para brainrot)", URL = "https://rawscripts.net/raw/RIVALS-BEST-SCRIPT-Ekuve-hub-77255", UsarTrue = false},
    {Nome = "Rubi Hub (Mad City)", URL = "https://raw.githubusercontent.com/AdminEvilDRagon/RubyHub-V2-Chapter-2/refs/heads/main/RubyHub%20V2%20Chapter2%20.lua", UsarTrue = false},
    {Nome = "Thegxx Hub (Counter Blox)", URL = "https://rawscripts.net/raw/Counter-Blox-No-key-Thegxx-62079", UsarTrue = false},
    {Nome = "Kron Hub (Lumber Tycoon 2)", URL = "https://rawscripts.net/raw/Lumber-Tycoon-2-Kron-Hub-20796", UsarTrue = false},
    {Nome = "Auto Bonds (Dead Rails)", URL = "https://rawscripts.net/raw/Dead-Rails-Beta-bonds-88006", UsarTrue = false},
    {Nome = "Kayla Hub (99 nights)", URL = "https://rawscripts.net/raw/99-Nights-in-the-Forest-KaylaHub-Keyless-OP-65968", UsarTrue = false},
    {Nome = "Zeck hub (Lendas do Voleibol)", URL = "https://raw.githubusercontent.com/scriptshubzeck/Zeckhubv1/refs/heads/main/zeckhub", UsarTrue = false},
    {Nome = "Redz Hub (Meme Sea)", URL = "https://raw.githubusercontent.com/tlredz/Scripts/refs/heads/main/main.luau", UsarTrue = false, Especial = true},
    {Nome = "Vylik Hub (One Block)", URL = "https://rawscripts.net/raw/ONE-BLOCK-OP-KEYLESS-SCRIPT-One-Block-51618", UsarTrue = false},
    {Nome = "Pizza Hub (One Block)", URL = "https://rawscripts.net/raw/ONE-BLOCK-pizza-hub-105652", UsarTrue = false},
    {Nome = "Enchanted Hub (Lendas da Velocidade)", URL = "https://rawscripts.net/raw/Legends-Of-Speed-Enchanted-Hub-43785", UsarTrue = false},
    {Nome = "Coquette Hub (Brookhaven)", URL = "https://raw.githubusercontent.com/Daivd977/Coquettekk/refs/heads/main/play", UsarTrue = false}
}

-- =======================================================================
-- FUNÇÕES DOS BOTÕES DE SCRIPTS
-- =======================================================================
local function carregarAimbot() loadstring(game:HttpGet("https://pastebin.com/raw/N0LZ0tWJ"))() end
local function carregarEsp() loadstring(game:HttpGet("https://pastebin.com/raw/f9fxwkN4"))() end
local function carregarWaypoint() loadstring(game:HttpGet("https://pastebin.com/raw/jXL7tXsY"))() end
local function carregarTeleporte() loadstring(game:HttpGet("https://pastebin.com/raw/1Brjf1uY"))() end
local function carregarBring() loadstring(game:HttpGet("https://pastebin.com/raw/JUxhhkp9"))() end
local function carregarKillerX() loadstring(game:HttpGet("https://pastebin.com/raw/xFy1LbBf"))() end

-- =======================================================================
-- DEFINE ONDE A INTERFACE VAI FICAR (OTIMIZADO PARA DELTA)
-- =======================================================================
local GuiParent
pcall(function()
    -- gethui() é a forma nativa que o Delta e outros mobiles usam para proteger a GUI
    GuiParent = gethui and gethui() or game:GetService("CoreGui")
end)

if not GuiParent and LocalPlayer then
    GuiParent = LocalPlayer:FindFirstChild("PlayerGui")
end

-- Destruir interface antiga se existir para não duplicar
pcall(function()
    if GuiParent:FindFirstChild("KillerHubSystem") then
        GuiParent.KillerHubSystem:Destroy()
    end
end)

-- =======================================================================
-- CRIAÇÃO DA UI PRINCIPAL
-- =======================================================================
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "KillerHubSystem"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = GuiParent

local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 400, 0, 400)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(24, 25, 28)
MainFrame.BorderSizePixel = 2
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.Parent = ScreenGui

-- =======================================================================
-- BOTÃO CIRCULAR K PARA OCULTAR/MOSTRAR
-- =======================================================================
local ToggleButton = Instance.new("TextButton")
ToggleButton.Name = "ToggleButton"
ToggleButton.Size = UDim2.new(0, 45, 0, 45)
ToggleButton.Position = UDim2.new(0.1, 0, 0.1, 0)
ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ToggleButton.BorderSizePixel = 0
ToggleButton.Text = "K"
ToggleButton.TextColor3 = Color3.fromRGB(255, 0, 0)
ToggleButton.TextSize = 26
ToggleButton.Font = Enum.Font.SourceSansBold
ToggleButton.Active = true
ToggleButton.Draggable = true
ToggleButton.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner")
ToggleCorner.CornerRadius = UDim.new(1, 0)
ToggleCorner.Parent = ToggleButton

local ToggleStroke = Instance.new("UIStroke")
ToggleStroke.Color = Color3.fromRGB(150, 0, 0)
ToggleStroke.Thickness = 1.5
ToggleStroke.Parent = ToggleButton

ToggleButton.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- Textos e Cabeçalho
local TitleBox = Instance.new("TextLabel")
TitleBox.Size = UDim2.new(0, 95, 0, 25)
TitleBox.Position = UDim2.new(0, 12, 0, 12)
TitleBox.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
TitleBox.BorderSizePixel = 2
TitleBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TitleBox.Text = "KILLER HUB"
TitleBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleBox.TextSize = 13
TitleBox.Font = Enum.Font.SourceSansBold
TitleBox.Parent = MainFrame

-- BARRA DE PESQUISA
local SearchBox = Instance.new("TextBox")
SearchBox.Size = UDim2.new(0, 130, 0, 25)
SearchBox.Position = UDim2.new(0.5, -65, 0, 12)
SearchBox.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
SearchBox.BorderSizePixel = 2
SearchBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.Text = ""
SearchBox.PlaceholderText = "Pesquisar..."
SearchBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextSize = 14
SearchBox.Font = Enum.Font.SourceSans
SearchBox.ClearTextOnFocus = false
SearchBox.Visible = false -- Fica invisível na tela de Key
SearchBox.Parent = MainFrame

local TimeBox = Instance.new("TextLabel")
TimeBox.Size = UDim2.new(0, 115, 0, 25)
TimeBox.Position = UDim2.new(1, -127, 0, 12)
TimeBox.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
TimeBox.BorderSizePixel = 2
TimeBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
TimeBox.Text = ""
TimeBox.TextColor3 = Color3.fromRGB(255, 255, 255)
TimeBox.TextSize = 12
TimeBox.Font = Enum.Font.SourceSansBold
TimeBox.Visible = false
TimeBox.Parent = MainFrame

local FooterLeft = Instance.new("TextLabel")
FooterLeft.Size = UDim2.new(0, 100, 0, 20)
FooterLeft.Position = UDim2.new(0, 5, 1, -22)
FooterLeft.BackgroundTransparency = 1
FooterLeft.Text = "By: KILLER"
FooterLeft.TextColor3 = Color3.fromRGB(255, 255, 255)
FooterLeft.TextSize = 11
FooterLeft.Font = Enum.Font.SourceSansBold
FooterLeft.TextXAlignment = Enum.TextXAlignment.Left
FooterLeft.Parent = MainFrame

local FooterRightButton = Instance.new("TextButton")
FooterRightButton.Size = UDim2.new(0, 200, 0, 20)
FooterRightButton.Position = UDim2.new(1, -205, 1, -22)
FooterRightButton.BackgroundTransparency = 1
FooterRightButton.Text = LINK_KEY
FooterRightButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FooterRightButton.TextSize = 11
FooterRightButton.Font = Enum.Font.SourceSans
FooterRightButton.TextXAlignment = Enum.TextXAlignment.Right
FooterRightButton.Parent = MainFrame

FooterRightButton.MouseButton1Click:Connect(function()
    if setclipboard then
        pcall(function() setclipboard(LINK_KEY) end)
        FooterRightButton.Text = "Link Copiado!"
        task.wait(2)
        FooterRightButton.Text = LINK_KEY
    end
end)

-- ==========================================
-- SISTEMA DE KEY
-- ==========================================
local KeyContainer = Instance.new("Frame")
KeyContainer.Size = UDim2.new(1, 0, 1, 0)
KeyContainer.BackgroundTransparency = 1
KeyContainer.Visible = true
KeyContainer.Parent = MainFrame

local InstructionLabel = Instance.new("TextLabel")
InstructionLabel.Size = UDim2.new(0, 150, 0, 40)
InstructionLabel.Position = UDim2.new(0.5, -75, 0, 140)
InstructionLabel.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
InstructionLabel.BorderSizePixel = 2
InstructionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
InstructionLabel.Text = "Digite sua key:"
InstructionLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
InstructionLabel.TextSize = 18
InstructionLabel.Font = Enum.Font.SourceSans
InstructionLabel.Parent = KeyContainer

local KeyTextBox = Instance.new("TextBox")
KeyTextBox.Size = UDim2.new(0, 300, 0, 45)
KeyTextBox.Position = UDim2.new(0.5, -150, 0, 195)
KeyTextBox.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
KeyTextBox.BorderSizePixel = 2
KeyTextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
KeyTextBox.Text = ""
KeyTextBox.PlaceholderText = "Sua key..."
KeyTextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.TextSize = 18
KeyTextBox.Font = Enum.Font.SourceSans
KeyTextBox.ClearTextOnFocus = false
KeyTextBox.Parent = KeyContainer

local GetKeyButton = Instance.new("TextButton")
GetKeyButton.Size = UDim2.new(0, 145, 0, 35)
GetKeyButton.Position = UDim2.new(0.5, -150, 0, 255)
GetKeyButton.BackgroundColor3 = Color3.fromRGB(28, 30, 33)
GetKeyButton.BorderSizePixel = 2
GetKeyButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
GetKeyButton.Text = "Obtenha uma key"
GetKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
GetKeyButton.TextSize = 14
GetKeyButton.Font = Enum.Font.SourceSans
GetKeyButton.Parent = KeyContainer

local ValidarButton = Instance.new("TextButton")
ValidarButton.Size = UDim2.new(0, 145, 0, 35)
ValidarButton.Position = UDim2.new(0.5, 5, 0, 255)
ValidarButton.BackgroundColor3 = Color3.fromRGB(28, 30, 33)
ValidarButton.BorderSizePixel = 2
ValidarButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ValidarButton.Text = "Validar"
ValidarButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ValidarButton.TextSize = 14
ValidarButton.Font = Enum.Font.SourceSansBold
ValidarButton.Parent = KeyContainer

GetKeyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        pcall(function() setclipboard(DISCORD_DONO) end)
        GetKeyButton.Text = "Copiado!"
        task.wait(2)
        GetKeyButton.Text = "Obtenha uma key"
    end
end)

-- ==========================================
-- SISTEMA DE ABAS (HUB)
-- ==========================================
local HubContainer = Instance.new("Frame")
HubContainer.Size = UDim2.new(1, 0, 1, 0)
HubContainer.BackgroundTransparency = 1
HubContainer.Visible = false
HubContainer.Parent = MainFrame

local Sidebar = Instance.new("Frame")
Sidebar.Size = UDim2.new(0, 110, 0, 300)
Sidebar.Position = UDim2.new(0, 12, 0, 50)
Sidebar.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
Sidebar.BorderSizePixel = 2
Sidebar.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sidebar.Parent = HubContainer

local ContentArea = Instance.new("Frame")
ContentArea.Size = UDim2.new(0, 255, 0, 300)
ContentArea.Position = UDim2.new(0, 132, 0, 50)
ContentArea.BackgroundTransparency = 1
ContentArea.Parent = HubContainer

local TabScriptsBtn = Instance.new("TextButton")
TabScriptsBtn.Size = UDim2.new(1, -10, 0, 35)
TabScriptsBtn.Position = UDim2.new(0, 5, 0, 5)
TabScriptsBtn.BackgroundColor3 = Color3.fromRGB(40, 42, 46)
TabScriptsBtn.BorderSizePixel = 2
TabScriptsBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabScriptsBtn.Text = "Principal"
TabScriptsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
TabScriptsBtn.Font = Enum.Font.SourceSansBold
TabScriptsBtn.TextSize = 14
TabScriptsBtn.Parent = Sidebar

local TabKillerBtn = Instance.new("TextButton")
TabKillerBtn.Size = UDim2.new(1, -10, 0, 35)
TabKillerBtn.Position = UDim2.new(0, 5, 0, 45)
TabKillerBtn.BackgroundColor3 = Color3.fromRGB(24, 25, 28)
TabKillerBtn.BorderSizePixel = 2
TabKillerBtn.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabKillerBtn.Text = "KILLER"
TabKillerBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
TabKillerBtn.Font = Enum.Font.SourceSans
TabKillerBtn.TextSize = 14
TabKillerBtn.Parent = Sidebar

local PageScripts = Instance.new("ScrollingFrame")
PageScripts.Size = UDim2.new(1, 0, 1, 0)
PageScripts.BackgroundTransparency = 1
PageScripts.ScrollBarThickness = 4
PageScripts.Visible = true
PageScripts.Parent = ContentArea

-- Tabela para armazenar os botões e facilitar a pesquisa
local BotoesPrincipal = {}

local posicaoY = 5
for _, info in ipairs(ScriptsPrincipal) do
    local sNome = info.Nome
    local sURL = info.URL
    local sTrue = info.UsarTrue
    local sEspecial = info.Especial

    local BotaoScript = Instance.new("TextButton")
    BotaoScript.Size = UDim2.new(1, -10, 0, 40)
    BotaoScript.Position = UDim2.new(0, 0, 0, posicaoY)
    BotaoScript.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
    BotaoScript.BorderSizePixel = 2
    BotaoScript.BorderColor3 = Color3.fromRGB(0, 0, 0)
    BotaoScript.Text = sNome
    BotaoScript.TextColor3 = Color3.fromRGB(255, 255, 255)
    BotaoScript.TextSize = 14
    BotaoScript.Font = Enum.Font.SourceSans
    BotaoScript.Parent = PageScripts

    table.insert(BotoesPrincipal, {
        Botao = BotaoScript,
        Nome = string.lower(sNome)
    })

    BotaoScript.MouseButton1Click:Connect(function()
        pcall(function()
            if sEspecial then
                loadstring(game:HttpGet(sURL))(Settings)
            elseif sTrue then
                loadstring(game:HttpGet(sURL, true))()
            else
                loadstring(game:HttpGet(sURL))()
            end
        end)
    end)
    posicaoY = posicaoY + 50
end
PageScripts.CanvasSize = UDim2.new(0, 0, 0, posicaoY)

-- LÓGICA DO FILTRO DE PESQUISA
SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    local textoPesquisa = string.lower(SearchBox.Text)
    local posYAtual = 5
    
    for _, item in ipairs(BotoesPrincipal) do
        if textoPesquisa == "" or string.find(item.Nome, textoPesquisa, 1, true) then
            item.Botao.Visible = true
            item.Botao.Position = UDim2.new(0, 0, 0, posYAtual)
            posYAtual = posYAtual + 50
        else
            item.Botao.Visible = false
        end
    end
    
    PageScripts.CanvasSize = UDim2.new(0, 0, 0, posYAtual)
end)

local PageKiller = Instance.new("ScrollingFrame")
PageKiller.Size = UDim2.new(1, 0, 1, 0)
PageKiller.BackgroundTransparency = 1
PageKiller.ScrollBarThickness = 4
PageKiller.CanvasSize = UDim2.new(0, 0, 0, 310)
PageKiller.Visible = false
PageKiller.Parent = ContentArea

local function CriarBotaoKiller(nome, posY, funcao)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -10, 0, 40)
    btn.Position = UDim2.new(0, 0, 0, posY)
    btn.BackgroundColor3 = Color3.fromRGB(18, 19, 21)
    btn.BorderSizePixel = 2
    btn.BorderColor3 = Color3.fromRGB(0, 0, 0)
    btn.Text = nome
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 16
    btn.Font = Enum.Font.SourceSans
    btn.Parent = PageKiller
    btn.MouseButton1Click:Connect(function() pcall(funcao) end)
end

CriarBotaoKiller("AimBot (Universal)", 5, carregarAimbot)
CriarBotaoKiller("Esp (Universal)", 55, carregarEsp)
CriarBotaoKiller("Waypoint System (Universal)", 105, carregarWaypoint)
CriarBotaoKiller("Teleporte Hub (Universal)", 155, carregarTeleporte)
CriarBotaoKiller("Bring Hub (Universal)", 205, carregarBring)
CriarBotaoKiller("KILLER X (Universal)", 255, carregarKillerX)

local function MudarAba(nomeDaAba)
    PageScripts.Visible = (nomeDaAba == "Principal")
    PageKiller.Visible = (nomeDaAba == "KILLER")
    
    if HubContainer.Visible then
        SearchBox.Visible = (nomeDaAba == "Principal")
    end
    
    if nomeDaAba == "Principal" then
        TabScriptsBtn.BackgroundColor3 = Color3.fromRGB(40, 42, 46)
        TabScriptsBtn.Font = Enum.Font.SourceSansBold
        TabScriptsBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        
        TabKillerBtn.BackgroundColor3 = Color3.fromRGB(24, 25, 28)
        TabKillerBtn.Font = Enum.Font.SourceSans
        TabKillerBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
    else
        TabKillerBtn.BackgroundColor3 = Color3.fromRGB(40, 42, 46)
        TabKillerBtn.Font = Enum.Font.SourceSansBold
        TabKillerBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        
        TabScriptsBtn.BackgroundColor3 = Color3.fromRGB(24, 25, 28)
        TabScriptsBtn.Font = Enum.Font.SourceSans
        TabScriptsBtn.TextColor3 = Color3.fromRGB(200, 200, 200)
    end
end

TabScriptsBtn.MouseButton1Click:Connect(function() MudarAba("Principal") end)
TabKillerBtn.MouseButton1Click:Connect(function() MudarAba("KILLER") end)

ValidarButton.MouseButton1Click:Connect(function()
    local chaveDigitada = KeyTextBox.Text
    local dadosDaKey = SISTEMA_DE_KEYS[chaveDigitada]

    if dadosDaKey then
        local arquivoNome = "KillerHub_Key_" .. chaveDigitada .. ".txt"
        local tempoRestante = dadosDaKey.Segundos

        pcall(function()
            if isfile and readfile and isfile(arquivoNome) then
                local tempoSalvo = tonumber(readfile(arquivoNome))
                if tempoSalvo then tempoRestante = tempoSalvo end
            end
        end)

        if dadosDaKey.Tipo == "TEMPO" and tempoRestante <= 0 then
            ValidarButton.Text = "Expirada!"
            ValidarButton.TextColor3 = Color3.fromRGB(255, 0, 0)
            task.wait(1.5)
            ValidarButton.Text = "Validar"
            ValidarButton.TextColor3 = Color3.fromRGB(255, 255, 255)
            return
        end

        KeyContainer.Visible = false
        HubContainer.Visible = true
        TimeBox.Visible = true
        SearchBox.Visible = (PageScripts.Visible == true)

        if dadosDaKey.Tipo == "LIFETIME" then
            TimeBox.Text = "LIFETIME"
        elseif dadosDaKey.Tipo == "TEMPO" then
            task.spawn(function()
                while tempoRestante > 0 and ScreenGui.Parent do
                    local dias = math.floor(tempoRestante / 86400)
                    local horas = math.floor((tempoRestante % 86400) / 3600)
                    local minutos = math.floor((tempoRestante % 3600) / 60)
                    local segundos = math.floor(tempoRestante % 60)

                    TimeBox.Text = string.format("%dD %dH %dM %dS", dias, horas, minutos, segundos)
                    
                    pcall(function()
                        if writefile then writefile(arquivoNome, tostring(tempoRestante)) end
                    end)

                    task.wait(1)
                    tempoRestante = tempoRestante - 1
                end

                if tempoRestante <= 0 then
                    pcall(function()
                        if writefile then writefile(arquivoNome, "0") end
                    end)
                    TimeBox.Text = "EXPIRADO"
                    task.wait(1)
                    ScreenGui:Destroy()
                end
            end)
        end
    else
        ValidarButton.Text = "Incorreta!"
        ValidarButton.TextColor3 = Color3.fromRGB(255, 0, 0)
        task.wait(1.5)
        ValidarButton.Text = "Validar"
        ValidarButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    end
end)

-- =======================================================================
-- SISTEMA DE NOTIFICAÇÃO
-- =======================================================================
local function EnviarNotificacao(titulo, texto)
    task.spawn(function()
        local TweenService = game:GetService("TweenService")
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        
        -- Garantia
        local GuiParent
        pcall(function()
            GuiParent = gethui and gethui() or game:GetService("CoreGui")
        end)
        if not GuiParent and LocalPlayer then
            GuiParent = LocalPlayer:FindFirstChild("PlayerGui")
        end
        
        local NotifGui = Instance.new("ScreenGui")
        NotifGui.Name = "KillerNotif"
        NotifGui.Parent = GuiParent
        
        local NotifFrame = Instance.new("Frame")
        NotifFrame.Size = UDim2.new(0, 300, 0, 80)
        NotifFrame.Position = UDim2.new(1, 20, 1, -120) -- Começa fora da tela
        NotifFrame.BackgroundColor3 = Color3.fromRGB(30, 31, 34)
        NotifFrame.BorderSizePixel = 2
        NotifFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
        NotifFrame.Parent = NotifGui
        
        local NotifCorner = Instance.new("UICorner")
        NotifCorner.CornerRadius = UDim.new(0, 8)
        NotifCorner.Parent = NotifFrame
        
        -- Ícone
        local IconBg = Instance.new("Frame")
        IconBg.Size = UDim2.new(0, 45, 0, 45)
        IconBg.Position = UDim2.new(0, 15, 0.5, -22.5)
        IconBg.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        IconBg.BorderSizePixel = 0
        IconBg.Parent = NotifFrame
        
        local IconCorner = Instance.new("UICorner")
        IconCorner.CornerRadius = UDim.new(1, 0)
        IconCorner.Parent = IconBg
        
        local IconStroke = Instance.new("UIStroke")
        IconStroke.Color = Color3.fromRGB(150, 0, 0)
        IconStroke.Thickness = 1.5
        IconStroke.Parent = IconBg
        
        local IconText = Instance.new("TextLabel")
        IconText.Size = UDim2.new(1, 0, 1, 0)
        IconText.BackgroundTransparency = 1
        IconText.Text = "K"
        IconText.TextColor3 = Color3.fromRGB(255, 0, 0)
        IconText.TextSize = 26
        IconText.Font = Enum.Font.SourceSansBold
        IconText.Parent = IconBg
        
        -- Textos da Notificação
        local TitleLbl = Instance.new("TextLabel")
        TitleLbl.Size = UDim2.new(0, 200, 0, 20)
        TitleLbl.Position = UDim2.new(0, 75, 0, 15)
        TitleLbl.BackgroundTransparency = 1
        TitleLbl.Text = titulo
        TitleLbl.TextColor3 = Color3.fromRGB(255, 255, 255)
        TitleLbl.TextSize = 16
        TitleLbl.Font = Enum.Font.SourceSansBold
        TitleLbl.TextXAlignment = Enum.TextXAlignment.Left
        TitleLbl.Parent = NotifFrame
        
        local DescLbl = Instance.new("TextLabel")
        DescLbl.Size = UDim2.new(0, 210, 0, 35)
        DescLbl.Position = UDim2.new(0, 75, 0, 35)
        DescLbl.BackgroundTransparency = 1
        DescLbl.Text = texto
        DescLbl.TextColor3 = Color3.fromRGB(200, 200, 200)
        DescLbl.TextSize = 14
        DescLbl.Font = Enum.Font.SourceSans
        DescLbl.TextXAlignment = Enum.TextXAlignment.Left
        DescLbl.TextYAlignment = Enum.TextYAlignment.Top
        DescLbl.TextWrapped = true
        DescLbl.Parent = NotifFrame
        
        -- Entrada
        local tweenIn = TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Position = UDim2.new(1, -320, 1, -120)})
        tweenIn:Play()
        
        task.wait(5) -- Tempo que a notificação fica na tela
        
        -- Saída
        local tweenOut = TweenService:Create(NotifFrame, TweenInfo.new(0.5, Enum.EasingStyle.Quart, Enum.EasingDirection.In), {Position = UDim2.new(1, 20, 1, -120)})
        tweenOut:Play()
        
        task.wait(0.5)
        NotifGui:Destroy()
    end)
end

-- =======================================================================
-- Chamar notificação
-- =======================================================================
EnviarNotificacao("KILLER HUB", "Obrigado por usar o KILLER HUB!")
