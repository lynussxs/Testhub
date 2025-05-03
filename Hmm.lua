local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- GUI Loading (đã chỉnh đẹp)
local loadingGui = Instance.new("ScreenGui")
loadingGui.Name = "LoadingUI"
loadingGui.ResetOnSpawn = false
loadingGui.Parent = player:WaitForChild("PlayerGui")

local loadingFrame = Instance.new("Frame")
loadingFrame.Size = UDim2.new(0, 450, 0, 160)
loadingFrame.Position = UDim2.new(0.5, -225, 0.5, -80)
loadingFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
loadingFrame.BorderSizePixel = 0
loadingFrame.Parent = loadingGui

local corner = Instance.new("UICorner", loadingFrame)
corner.CornerRadius = UDim.new(0, 16)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0.3, 0)
title.Position = UDim2.new(0, 0, 0, 0)
title.Text = "LongMa X Bloxfruit [ Intelligence Project ]"
title.TextColor3 = Color3.fromRGB(255, 50, 50)
title.Font = Enum.Font.SourceSansBold
title.TextScaled = true
title.BackgroundTransparency = 1
title.Parent = loadingFrame

local loadingText = Instance.new("TextLabel")
loadingText.Size = UDim2.new(1, 0, 0.2, 0)
loadingText.Position = UDim2.new(0, 0, 0.3, 0)
loadingText.Text = "Loading Asset, please wait..."
loadingText.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingText.Font = Enum.Font.SourceSans
loadingText.TextScaled = true
loadingText.BackgroundTransparency = 1
loadingText.Parent = loadingFrame

-- Thanh progress với hiệu ứng mở
local progressBG = Instance.new("Frame")
progressBG.Size = UDim2.new(1, -40, 0.15, 0)
progressBG.Position = UDim2.new(0, 20, 0.75, 0)
progressBG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
progressBG.BorderSizePixel = 0
progressBG.Parent = loadingFrame

local progressBGCorner = Instance.new("UICorner", progressBG)
progressBGCorner.CornerRadius = UDim.new(0, 10)

local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.Position = UDim2.new(0, 0, 0, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
progressBar.BorderSizePixel = 0
progressBar.ZIndex = 2
progressBar.Parent = progressBG

local progressBarCorner = Instance.new("UICorner", progressBar)
progressBarCorner.CornerRadius = UDim.new(0, 10)

local progressBarGlow = Instance.new("UIStroke", progressBar)
progressBarGlow.Thickness = 4
progressBarGlow.Color = Color3.fromRGB(0, 255, 255)
progressBarGlow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
progressBarGlow.Transparency = 0.5

local sound = Instance.new("Sound", loadingGui)
sound.SoundId = "rbxassetid://12222030"
sound.Volume = 1

-- GUI chính
local gui = Instance.new("ScreenGui")
gui.Name = "MultiGameHub"
gui.ResetOnSpawn = false
gui.Parent = player:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
frame.BorderSizePixel = 0
frame.Visible = false
frame.Parent = gui

local uiCorner = Instance.new("UICorner", frame)
uiCorner.CornerRadius = UDim.new(0, 10)

local shadow = Instance.new("ImageLabel")
shadow.Name = "Shadow"
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageTransparency = 0.5
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10, 10, 118, 118)
shadow.Size = UDim2.new(1, 20, 1, 20)
shadow.Position = UDim2.new(0, -10, 0, -10)
shadow.ZIndex = 0
shadow.Parent = frame

local label = Instance.new("TextLabel")
label.Size = UDim2.new(1, 0, 0.3, 0)
label.Position = UDim2.new(0, 0, 0, 0)
label.Text = "LongMa Hub"
label.TextColor3 = Color3.new(1, 1, 1)
label.BackgroundTransparency = 1
label.Font = Enum.Font.SourceSansBold
label.TextScaled = true
label.Parent = frame

local runButton = Instance.new("TextButton")
runButton.Size = UDim2.new(0.8, 0, 0.3, 0)
runButton.Position = UDim2.new(0.1, 0, 0.4, 0)
runButton.Text = "Fix Lag"
runButton.Font = Enum.Font.SourceSans
runButton.TextScaled = true
runButton.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
runButton.TextColor3 = Color3.new(1, 1, 1)
runButton.Parent = frame

local toggleButton = Instance.new("TextButton")
toggleButton.Size = UDim2.new(0.8, 0, 0.2, 0)
toggleButton.Position = UDim2.new(0.1, 0, 0.75, 0)
toggleButton.Text = "Tắt Bảng"
toggleButton.Font = Enum.Font.SourceSans
toggleButton.TextScaled = true
toggleButton.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
toggleButton.TextColor3 = Color3.new(1, 1, 1)
toggleButton.Parent = frame

-- Fix Lag Logic
local function loadGameScript()
	local id = game.PlaceId
	if id == 2753915549 or id == 4442272183 or id == 7449423635 then
		runButton.Text = "Đang Fix Lag Blox Fruits..."
		loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fix-lag-all-game-24449"))()
	else
		runButton.Text = "Game chưa hỗ trợ!"
	end
end

runButton.MouseButton1Click:Connect(function()
	sound:Play()
	loadGameScript()
end)

-- Mở bảng hiệu ứng
local function animateFrame(open)
	sound:Play()
	if open then
		frame.Visible = true
		frame.Size = UDim2.new(0, 0, 0, 0)
		frame.Position = UDim2.new(0.5, 0, 0.5, 0)
		TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
			Size = UDim2.new(0, 300, 0, 150),
			Position = UDim2.new(0.5, -150, 0.5, -75)
		}):Play()
	else
		local tween = TweenService:Create(frame, TweenInfo.new(0.3, Enum.EasingStyle.Back, Enum.EasingDirection.In), {
			Size = UDim2.new(0, 0, 0, 0),
			Position = UDim2.new(0.5, 0, 0.5, 0)
		})
		tween:Play()
		tween.Completed:Connect(function()
			frame.Visible = false
		end)
	end
end

toggleButton.MouseButton1Click:Connect(function()
	if frame.Visible then
		toggleButton.Text = "Bật Bảng"
		animateFrame(false)
	else
		toggleButton.Text = "Tắt Bảng"
		animateFrame(true)
	end
end)

-- Kéo bảng
local dragging, dragStart, startPos
frame.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if dragging then
				local delta = input.Position - dragStart
				frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
			end
		end)
	end
end)
frame.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = false
	end
end)

-- Thanh loading giả
local progress = 0
while progress < 1 do
	progress = math.min(progress + 0.01, 1)
	progressBar.Size = UDim2.new(progress, 0, 1, 0)
	wait(0.03)
end

loadingGui:Destroy()
animateFrame(true)

-- === GẮN LOGO BUTTON Ở CUỐI ===
local logoButton = Instance.new("ImageButton")
logoButton.Size = UDim2.new(0, 50, 0, 50)
logoButton.Position = UDim2.new(0, 20, 0, 20)
logoButton.Image = "rbxassetid://75750653669043" -- Thay bằng ID ảnh logo
logoButton.BackgroundTransparency = 1
logoButton.Draggable = true
logoButton.Name = "LogoButton"
logoButton.Parent = player:WaitForChild("PlayerGui")

logoButton.MouseButton1Click:Connect(function()
	local newLoading = loadingGui:Clone()
	newLoading.Parent = player:WaitForChild("PlayerGui")
	sound:Play()

	local bar = newLoading:WaitForChild("Frame"):WaitForChild("Frame")
	bar.Size = UDim2.new(0, 0, 1, 0)

	local prog = 0
	while prog < 1 do
		prog = math.min(prog + 0.01, 1)
		bar.Size = UDim2.new(prog, 0, 1, 0)
		wait(0.03)
	end

	newLoading:Destroy()
	animateFrame(true)
end)