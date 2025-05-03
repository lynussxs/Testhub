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
label.Text = "Main Hub Của Bạn 😎"
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Font = Enum.Font.SourceSansBold
label.TextScaled = true
label.Parent = frame

-- Nút "Fix Lag" (bạn sẽ thêm logic riêng vào đây)
local fixLagButton = Instance.new("TextButton")
fixLagButton.Size = UDim2.new(0.8, 0, 0.3, 0)
fixLagButton.Position = UDim2.new(0.1, 0, 0.4, 0)
fixLagButton.Text = "Fix Lag"
fixLagButton.Font = Enum.Font.SourceSans
fixLagButton.TextScaled = true
fixLagButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
fixLagButton.TextColor3 = Color3.new(1, 1, 1)
fixLagButton.Parent = frame

-- Nút Bật / Tắt bảng
local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, 0, 0.2, 0)
toggleButton.Position = UDim2.new(0.1, 0, 0.75, 0)
toggleButton.Text = "Ẩn Bảng"
toggleButton.Font = Enum.Font.SourceSans
toggleButton.TextScaled = true
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Parent = frame

-- Logic cho nút "Fix Lag" (HÃY THAY THẾ PHẦN NÀY BẰNG CODE FIX LAG CỦA BẠN)
local function handleFixLag()
    fixLagButton.Text = "Đang thực hiện..."
    -- *** loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fix-lag-all-game-24449"))() ***
    print("Nút Fix Lag đã được nhấn!")
    wait(2) -- Ví dụ: đợi 2 giây
    fixLagButton.Text = "Fix Lag"
end

-- Gắn sự kiện cho nút "Fix Lag"
fixLagButton.MouseButton1Click:Connect(handleFixLag)

-- Logic cho nút bật/tắt bảng
toggleButton.MouseButton1Click:Connect(function()
    frame.Visible = not frame.Visible
    toggleButton.Text = frame.Visible and "Ẩn Bảng" or "Hiện Bảng"
end)
