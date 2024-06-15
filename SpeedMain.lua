local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local Update = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Speed = Instance.new("TextBox")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.340186924, 0, 0.294849008, 0)
Frame.Size = UDim2.new(0, 342, 0, 230)

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = Frame

Title.Name = "Title"
Title.Parent = Frame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 342, 0, 50)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Speed GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 14.000
Title.TextWrapped = true

Update.Name = "Update"
Update.Parent = Frame
Update.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Update.BorderColor3 = Color3.fromRGB(0, 0, 0)
Update.BorderSizePixel = 0
Update.Position = UDim2.new(0.207602337, 0, 0.739130437, 0)
Update.Size = UDim2.new(0, 200, 0, 50)
Update.Font = Enum.Font.SourceSansBold
Update.Text = "Update"
Update.TextColor3 = Color3.fromRGB(255, 255, 255)
Update.TextScaled = true
Update.TextSize = 14.000
Update.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = Update

Speed.Name = "Speed"
Speed.Parent = Frame
Speed.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Speed.BorderColor3 = Color3.fromRGB(0, 0, 0)
Speed.BorderSizePixel = 0
Speed.Position = UDim2.new(0.0350877196, 0, 0.273913056, 0)
Speed.Size = UDim2.new(0, 318, 0, 104)
Speed.Font = Enum.Font.SourceSansBold
Speed.PlaceholderText = "Speed Here"
Speed.Text = ""
Speed.TextColor3 = Color3.fromRGB(255, 255, 255)
Speed.TextScaled = true
Speed.TextSize = 14.000
Speed.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = Speed

-- Scripts:

local function ZKYMB_fake_script() -- Update.LocalScript 
	local script = Instance.new('LocalScript', Update)

	local Hum:Humanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
	local TextBox = Speed
	
	Update.MouseButton1Click:Connect(function()
		Hum.WalkSpeed = TextBox.ContentText
	end)
end
coroutine.wrap(ZKYMB_fake_script)()
