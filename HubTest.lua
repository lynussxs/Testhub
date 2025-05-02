-- Tạo GUI bảng chính
local gui = Instance.new("ScreenGui")
gui.Name = "MultiGameHub"
gui.ResetOnSpawn = false
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Visible = true
frame.Parent = gui

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.3, 0)
label.Position = UDim2.new(0, 0, 0, 0)
label.Text = "LongMa Hub 😎"
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Font = Enum.Font.SourceSansBold
label.TextScaled = true
label.Parent = frame

-- Nút tải script
local runButton = Instance.new("TextButton")
runButton.Size = UDim2.new(0.8, 0, 0.3, 0)
runButton.Position = UDim2.new(0.1, 0, 0.4, 0)
runButton.Text = "Fix Lag"
runButton.Font = Enum.Font.SourceSans
runButton.TextScaled = true
runButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
runButton.TextColor3 = Color3.new(1, 1, 1)
runButton.Parent = frame

-- Nút Bật / Tắt bảng
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, 0, 0.2, 0)
toggleButton.Position = UDim2.new(0.1, 0, 0.75, 0)
toggleButton.Text = "Tắt Bảng"
toggleButton.Font = Enum.Font.SourceSans
toggleButton.TextScaled = true
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Parent = frame

-- Logic tải script
local function loadGameScript()
    local id = game.PlaceId
    if id == 2753915549 or id == 4442272183 or id == 7449423635 then -- Blox Fruits
        runButton.Text = "Đang Fix Lag Blox Fruits..."
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fix-lag-all-game-24449"))()
    elseif id == 1234567890 then -- Game khác
        runButton.Text = "Đang Fix Lag Game khác..."
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fix-lag-all-game-24449"))()
    else
        runButton.Text = "Game chưa hỗ trợ!"
    end
end

-- Gắn sự kiện
runButton.MouseButton1Click:Connect(function()
    loadGameScript()
end)

toggleButton.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
    toggleButton.Text = frame.Visible and "Ẩn bảng" or "Hiện bảng"
end)