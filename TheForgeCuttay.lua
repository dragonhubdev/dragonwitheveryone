
local DISCORD_LINK = "https://discord.gg/XHwADtqwT8"
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Desc = Instance.new("TextLabel")
local CopyBtn = Instance.new("TextButton")
local BtnCorner = Instance.new("UICorner")
local CloseBtn = Instance.new("TextButton")

ScreenGui.Name = "UpdateUI"
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.Size = UDim2.new(0, 300, 0, 180)
Frame.Position = UDim2.new(0.5, -150, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Frame.Active = true
Frame.Draggable = true

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 12)

Title.Parent = Frame
Title.Size = UDim2.new(1, 0, 0, 40)
Title.Text = "🔔 UPDATE"
Title.TextColor3 = Color3.fromRGB(255, 80, 80)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 20
Title.BackgroundTransparency = 1

Desc.Parent = Frame
Desc.Position = UDim2.new(0, 10, 0, 45)
Desc.Size = UDim2.new(1, -20, 0, 50)
Desc.Text = "Script Update \nJoin discord for update new script"
Desc.TextWrapped = true
Desc.TextColor3 = Color3.fromRGB(220,220,220)
Desc.Font = Enum.Font.Gotham
Desc.TextSize = 14
Desc.BackgroundTransparency = 1

CopyBtn.Parent = Frame
CopyBtn.Position = UDim2.new(0.5, -90, 1, -55)
CopyBtn.Size = UDim2.new(0, 180, 0, 35)
CopyBtn.Text = "📋 Copy Link Discord"
CopyBtn.BackgroundColor3 = Color3.fromRGB(60, 170, 255)
CopyBtn.TextColor3 = Color3.fromRGB(255,255,255)
CopyBtn.Font = Enum.Font.GothamBold
CopyBtn.TextSize = 14

BtnCorner.Parent = CopyBtn
BtnCorner.CornerRadius = UDim.new(0, 8)

CloseBtn.Parent = Frame
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.Text = "✕"
CloseBtn.TextColor3 = Color3.fromRGB(255,255,255)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextSize = 18

-- FUNCTIONS
CopyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(DISCORD_LINK)
        CopyBtn.Text = "✅ Copy"
        task.wait(1.5)
        CopyBtn.Text = "📋 Copy link discord"
    else
        CopyBtn.Text = "❌ No Support"
    end
end)

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
