wait(0.1)
game.StarterGui:SetCore("SendNotification", {
    Title = "Script is loaded";
    Text = "ok now enjoy with script"; -- Water team
    Duration = 5;
})






local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Water Hub universal", "Default")

local tab1 = DrRayLibrary.newTab("Main", "ImageIdHere")

tab1.newButton("Esp", "Click Me!", function()
    local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)

tab1.newButton("Noclip", "Click me!", function()
    for i, v in next, workspace:GetDescendants() do
    if v:IsA("Part") or v:IsA("BasePart") and not v.Color == Color3.fromRGB(73, 84, 98) then
        v.CanCollide = false 
    end
end
end)

tab1.newButton("Click to tp tool", "Click me!", function()
    mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "Click Teleport"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

tab1.newButton("Hitbox", "Click me!", function()
    _G.HeadSize = 50
_G.Disabled = true
 
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)
end
end
end
end)
end)

tab1.newButton("inf jump", "Click me!", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)

tab1.newButton("fling all ", "Click me!", function()
    print("Soon")
end)

tab1.newButton("X-Ray", "Click me!", function()
    local RunService = game:GetService('RunService')
local LocalPlayer = game:GetService('Players').LocalPlayer
local Camera = workspace.CurrentCamera
local Obscuring = {}

RunService.RenderStepped:connect(function()
    for _, v in pairs(Obscuring) do 
        v.LocalTransparencyModifier = 0
        for _, v2 in pairs(v:GetChildren()) do
            if v2:IsA('Texture') then
                v2.Transparency /= 1000
            end
        end
    end

    if not LocalPlayer.Character then return end
    Obscuring = Camera:GetPartsObscuringTarget({LocalPlayer.Character.HumanoidRootPart.CFrame.p}, LocalPlayer.Character:GetChildren())

    for _, v in pairs(Obscuring) do 
        v.LocalTransparencyModifier = 1
        for _, v2 in pairs(v:GetChildren()) do
            if v2:IsA('Texture') then
                v2.Transparency *= 1000
            end
        end
    end    
end)

tab1.newButton("Fly ", "Click me!", function()
    loadstring(game:HttpGet('https://pastebin.com/raw/YSL3xKYU'))()
end)

local tab2 = DrRayLibrary.newTab("Speedwalk", "ImageIdHere")

tab2.newButton("speed 25", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 25
end)

tab2.newButton("speed 30", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 30
end)

tab2.newButton("speed 35", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 35
end)

tab2.newButton("speed 40", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 40
end)

tab2.newButton("speed 50", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 50
end)

tab2.newButton("speed 60", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 60
end)

tab2.newButton("speed 70", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 70
end)

tab2.newButton("speed 80", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 80
end)

tab2.newButton("speed 90", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 90
end)

tab2.newButton("speed 100", "this future (make u so speed) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.Walkspeed = 100
end)

local tab3 = DrRayLibrary.newTab("Jump Power", "ImageIdHere")

tab3.newButton("Jump 70", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 70
end)

tab3.newButton("Jump 80", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 80
end)

tab3.newButton("Jump 100", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 100
end)

tab3.newButton("Jump 120", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 120
end)

tab3.newButton("Jump 130", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 130
end)

tab3.newButton("Jump 150", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 150
end)

tab3.newButton("Jump 170", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 170
end)

tab3.newButton("Jump 180", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 180
end)

tab3.newButton("Jump 200", "this future (make u super jump) ", function()
    local player = game.Player. LocalPlayer
    local char = player.Character
    local humanoid = char:WaitForChild("Humanoid") 
    humanoid.JumpPower = 200
end)

local tab4 = DrRayLibrary.newTab("Scripts mm2", "ImageIdHere")

tab4.newButton("Eclipse hub", "Execute!", function()
    getgenv().mainKey = "nil"

local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https\58//api.eclipsehub.xyz/auth";c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()
end)

tab4.newButton("highlight hub", "the key (hlvipcomingsoon)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
end)

tab4.newButton("copy key for highlight H", "Click me for copy!", function()
    setclipboard("hlvipcomingsoon") 
end)

tab4.newButton("HL Auto Farm", "execute! (this a highlight but it farm script)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Lite"))()
end)

tab4.newButton("symphony hub", "Execute!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/ThatSick/ArrayField/main/SymphonyHub.lua'))()
end)

tab4.newButton("Overdrive Hub", "Execute!", function()
    loadstring(game:HttpGet("https://overdrive-h.ohd.workers.dev/?d=loader"))()
end)

tab4.newButton("yrahum script", "Execute!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm-dev.lua", false))()
end)

tab4.newButton("R3th priv", "Execute!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/R3TH-PRIV/R3TH-PRIV/main/LOAD.lua'))()
end)

local tab5 = DrRayLibrary.newTab("Scripts blox fruits", "ImageIdHere")

tab5.newButton("Redz Hub", "Execute!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
end)

tab5.newButton("Soon new scripts", "Prints Hello!", function()
    print('Soon!')
end)

local tab6 = DrRayLibrary.newTab("Scripts Blade ball", "ImageIdHere")

tab6.newButton("soon i will add script", "Prints Hello!", function()
    print('Hello!')
end)

local tab7 = DrRayLibrary.newTab("Other Script", "ImageIdHere")

tab7.newButton("inf yield", "execute!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

tab7.newButton("nameless admin", "execute!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/FilteringEnabled/NamelessAdmin/main/Source'))()
end)

tab7.newButton("Ghost hub", "execute!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))()
end)

tab7.newButton("the floor is lava script", "execute!", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Appel-man/The-Floor-Is-LAVA-Script/main/The%20Floor%20Is%20LAVA%20Script'))()
end)

tab7.newButton("rochips panel", "execute!", function()
    if "Rochips Loader" then
	local Rochips_panel,v,u,i=loadstring,"/snippets","gwwv","/raw/main.lua" ;
	Rochips_panel(game:HttpGet("https://glot.io"..v.."/" ..u.."877ga3"..i))();
	return "it will load in around 3 - 131 seconds"
end
end)

tab7.newButton("Shader script", "execute!", function()
    getgenv().RTX_Name = "rtxnamehere" --not really needed if you don't need it

--[[
examples auto loads features :


getgenv().RTX_Name = "Midday lite" 

-Morning
-Afternoon
-Midday
-Evening
-Night
-Midnight

-Morning lite
-Midday lite
-Afternoon lite
-Evening lite
-Night lite
-Midnight lite

]]

loadstring(game:HttpGet(('https://pastefy.app/xXkUxA0P/raw'),true))() 
end)

tab.newButton("System broken script", "execute!", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/H20CalibreYT/SystemBroken/main/script"))()
end)

local tab8 = DrRayLibrary.newTab("Credits", "ImageIdHere")

tab8.newButton("copy invite link dc server", "Click me for copy link!", function()
    setclipboard("https://discord.com/invite/R5kuGNWg3j") 
end)

tab8.newButton("print", "click it for print and open console to know who owner!", function()
    print("Water hub owner")
end)
