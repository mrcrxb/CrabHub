local CrabHub = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TopBar = Instance.new("Frame")
local UICorner_1 = Instance.new("UICorner")
local LocalScript = Instance.new("LocalScript")
local TextLabel77 = Instance.new("TextLabel")
local SideBar = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Button1 = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local PlayerMain = Instance.new("Frame")
local Walkspeed = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local UIStroke_1 = Instance.new("UIStroke")
local TextLabelWS = Instance.new("TextLabel")
local Slider = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local slider = Instance.new("LocalScript")
local Fill = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local Trigger = Instance.new("TextButton")
local outputValue = Instance.new("NumberValue")
local output = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Jumppower = Instance.new("Frame")
local UICorner_8 = Instance.new("UICorner")
local UIStroke_2 = Instance.new("UIStroke")
local TextLabel_ = Instance.new("TextLabel")
local JumpSlider = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local JumpSliderScript = Instance.new("LocalScript")
local JumpFill = Instance.new("Frame")
local UICorner_10 = Instance.new("UICorner")
local JumpTrigger = Instance.new("TextButton")
local JumpOut = Instance.new("NumberValue")
local JumpNum = Instance.new("Frame")
local UICorner_11 = Instance.new("UICorner")
local JumpVal = Instance.new("TextLabel")
local open_close = Instance.new("LocalScript")

CrabHub.Name = "CrabHub"
CrabHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
CrabHub.Parent = game:GetService("Players").LocalPlayer.PlayerGui

Main.BorderSizePixel = 0
Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main.Size = UDim2.new(0.25, 0, 0.3, 0)
Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
Main.Name = "Main"
Main.Position = UDim2.new(0.374761, 0, 0.349246, 0)
Main.Parent = CrabHub

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Main

TopBar.BorderSizePixel = 0
TopBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
TopBar.Size = UDim2.new(1, 0, 0.101, 0)
TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
TopBar.Name = "TopBar"
TopBar.ZIndex = 4
TopBar.Parent = Main

UICorner_1.CornerRadius = UDim.new(0, 10)
UICorner_1.Parent = TopBar

LocalScript.Source = [[-- LocalScript inside the element you want to drag (script.Parent)
local dragger = script.Parent      -- This is the element you will drag (the smaller part)
local frame = script.Parent.Parent -- This is the element that will move (the larger container)

local dragging = false
local dragInput, mousePos, framePos

local function update(input)
	if dragging then
		local delta = input.Position - mousePos
		frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
	end
end

dragger.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		dragging = true
		mousePos = input.Position
		framePos = frame.Position

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

dragger.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement then
		dragInput = input
	end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
	if input == dragInput and dragging then
		update(input)
	end
end)
]]
LocalScript.Parent = TopBar

TextLabel77.TextWrapped = true
TextLabel77.BorderSizePixel = 0
TextLabel77.TextScaled = true
TextLabel77.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel77.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel77.Name = "TextLabel77"
TextLabel77.TextSize = 14
TextLabel77.Size = UDim2.new(1, 0, 1, 0)
TextLabel77.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel77.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel77.Text = "CrabHub"
TextLabel77.BackgroundTransparency = 1
TextLabel77.Parent = TopBar

SideBar.BorderSizePixel = 0
SideBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
SideBar.Size = UDim2.new(0.189109, 0, 0.940829, 0)
SideBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
SideBar.Name = "SideBar"
SideBar.Position = UDim2.new(0, 0, 0.0591709, 0)
SideBar.ZIndex = 2
SideBar.Parent = Main

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = SideBar

Button1.TextWrapped = true
Button1.BorderSizePixel = 0
Button1.Position = UDim2.new(0.093, 0, 0.0483676, 0)
Button1.TextScaled = true
Button1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Button1.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Button1.Name = "Button1"
Button1.TextSize = 14
Button1.Size = UDim2.new(0.8, 0, 0.1, 0)
Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Button1.Text = "Player"
Button1.Parent = SideBar

UICorner_3.CornerRadius = UDim.new(0, 10)
UICorner_3.Parent = Button1

UIStroke.Color = Color3.fromRGB(40, 40, 40)
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Parent = Button1

PlayerMain.BorderSizePixel = 0
PlayerMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayerMain.Size = UDim2.new(0.793552, 0, 0.895323, 0)
PlayerMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
PlayerMain.BackgroundTransparency = 1
PlayerMain.Name = "PlayerMain"
PlayerMain.Position = UDim2.new(0.190232, 0, 0.104677, 0)
PlayerMain.ZIndex = 5
PlayerMain.Parent = Main

Walkspeed.BorderSizePixel = 0
Walkspeed.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Walkspeed.Size = UDim2.new(0.98, 0, 0.1, 0)
Walkspeed.BorderColor3 = Color3.fromRGB(45, 45, 45)
Walkspeed.Name = "Walkspeed"
Walkspeed.Position = UDim2.new(0.015, 0, 0.027, 0)
Walkspeed.Parent = PlayerMain

UICorner_4.CornerRadius = UDim.new(0, 10)
UICorner_4.Parent = Walkspeed

UIStroke_1.Color = Color3.fromRGB(40, 40, 40)
UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_1.Parent = Walkspeed

TextLabelWS.TextWrapped = true
TextLabelWS.BorderSizePixel = 0
TextLabelWS.TextScaled = true
TextLabelWS.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabelWS.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabelWS.Name = "TextLabelWS"
TextLabelWS.TextSize = 14
TextLabelWS.Size = UDim2.new(0.3, 0, 1, 0)
TextLabelWS.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabelWS.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabelWS.Text = "Walk Speed"
TextLabelWS.BackgroundTransparency = 1
TextLabelWS.Parent = Walkspeed

Slider.BorderSizePixel = 0
Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Slider.Size = UDim2.new(0.55, 0, 0.5, 0)
Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
Slider.Name = "Slider"
Slider.Position = UDim2.new(0.313, 0, 0.28, 0)
Slider.Parent = Walkspeed

UICorner_5.CornerRadius = UDim.new(0, 10)
UICorner_5.Parent = Slider

slider.Source = [[local Mouse = game.Players.LocalPlayer:GetMouse()
local Slider = script.Parent
local Fill = script.Parent.Fill
local Trigger = script.Parent.Trigger
local OutputValue = script.Parent.outputValue
local OutputLabel = script.Parent.output.TextLabel
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local MIN_VALUE = 16
local MAX_VALUE = 250

OutputValue.Value = MIN_VALUE

Fill.Size = UDim2.fromScale((OutputValue.Value - MIN_VALUE) / (MAX_VALUE - MIN_VALUE), 1)
OutputLabel.Text = tostring(math.round(OutputValue.Value)) 

function UpdateSlider()
	local output = (Mouse.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X
	output = math.clamp(output, 0, 1)

	local sliderValue = MIN_VALUE + output * (MAX_VALUE - MIN_VALUE)

	OutputValue.Value = sliderValue
	OutputLabel.Text = tostring(math.round(sliderValue))
	Fill.Size = UDim2.fromScale(output, 1)

	Humanoid.WalkSpeed = sliderValue -- Corrected WalkSpeed (capital 'S')
end

local sliderActive = false

function ActivateSlider()
	sliderActive = true
	while sliderActive do
		UpdateSlider()
		task.wait()
	end
end

Trigger.MouseButton1Down:Connect(ActivateSlider)

game:GetService("UserInputService").InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		sliderActive = false
	end
end)
]]
slider.Name = "slider"
slider.Parent = Slider

Fill.BorderSizePixel = 0
Fill.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
Fill.Size = UDim2.new(1, 0, 1, 0)
Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fill.Name = "Fill"
Fill.Parent = Slider

UICorner_6.CornerRadius = UDim.new(0, 10)
UICorner_6.Parent = Fill

Trigger.BorderSizePixel = 0
Trigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Trigger.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Trigger.Name = "Trigger"
Trigger.TextSize = 14
Trigger.Size = UDim2.new(1, 0, 1, 0)
Trigger.TextColor3 = Color3.fromRGB(0, 0, 0)
Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
Trigger.Text = ""
Trigger.BackgroundTransparency = 1
Trigger.Parent = Slider

outputValue.Name = "outputValue"
outputValue.Parent = Slider

output.BorderSizePixel = 0
output.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
output.Size = UDim2.new(0.145, 0, 1.96, 0)
output.BorderColor3 = Color3.fromRGB(0, 0, 0)
output.Name = "output"
output.Position = UDim2.new(1.055, 0, -0.52, 0)
output.Parent = Slider

UICorner_7.CornerRadius = UDim.new(0, 10)
UICorner_7.Parent = output

TextLabel.TextWrapped = true
TextLabel.BorderSizePixel = 0
TextLabel.TextScaled = true
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel.Position = UDim2.new(0.1, 0, 0, 0)
TextLabel.TextSize = 14
TextLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.Text = "250"
TextLabel.BackgroundTransparency = 1
TextLabel.Parent = output

Jumppower.BorderSizePixel = 0
Jumppower.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Jumppower.Size = UDim2.new(0.98, 0, 0.1, 0)
Jumppower.BorderColor3 = Color3.fromRGB(45, 45, 45)
Jumppower.Name = "Jumppower"
Jumppower.Position = UDim2.new(0.0148638, 0, 0.168399, 0)
Jumppower.Parent = PlayerMain

UICorner_8.CornerRadius = UDim.new(0, 10)
UICorner_8.Parent = Jumppower

UIStroke_2.Color = Color3.fromRGB(40, 40, 40)
UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke_2.Parent = Jumppower

TextLabel_.TextWrapped = true
TextLabel_.BorderSizePixel = 0
TextLabel_.TextScaled = true
TextLabel_.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
TextLabel_.Name = "TextLabel_"
TextLabel_.TextSize = 14
TextLabel_.Size = UDim2.new(0.3, 0, 1, 0)
TextLabel_.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_.Text = "Jump Power"
TextLabel_.BackgroundTransparency = 1
TextLabel_.Parent = Jumppower

JumpSlider.BorderSizePixel = 0
JumpSlider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JumpSlider.Size = UDim2.new(0.55, 0, 0.5, 0)
JumpSlider.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpSlider.Name = "JumpSlider"
JumpSlider.Position = UDim2.new(0.313319, 0, 0.280105, 0)
JumpSlider.Parent = Jumppower

UICorner_9.CornerRadius = UDim.new(0, 10)
UICorner_9.Parent = JumpSlider

JumpSliderScript.Source = [[local JumpMouse = game.Players.LocalPlayer:GetMouse()
local JumpSliderVar = script.Parent
local JumpFill = script.Parent.JumpFill
local JumpTrigger = script.Parent.JumpTrigger
local JumpOut = script.Parent.JumpOut
local JumpOutput = script.Parent.JumpNum.JumpVal
local JumpPlayer = game.Players.LocalPlayer
local Jumpchar = JumpPlayer.Character or JumpPlayer.CharacterAdded:Wait()
local JumpHum = Jumpchar:WaitForChild("Humanoid")

local MIN_VALUE_1 = 50
local MAX_VALUE_1 = 250

JumpOut.Value = MIN_VALUE_1

JumpFill.Size = UDim2.fromScale((JumpOut.Value - MIN_VALUE_1) / (MAX_VALUE_1 - MIN_VALUE_1), 1)
JumpOutput.Text = tostring(math.round(JumpOut.Value)) 

function UpdateJumpSliderVar()
	local output_1 = (JumpMouse.X - JumpSliderVar.AbsolutePosition.X) / JumpSliderVar.AbsoluteSize.X

	output_1 = math.clamp(output_1, 0, 1)

	local sliderValue_1 = MIN_VALUE_1 + output_1 * (MAX_VALUE_1 - MIN_VALUE_1)

	JumpOut.Value = sliderValue_1
	JumpOutput.Text = tostring(math.round(sliderValue_1))
	JumpFill.Size = UDim2.fromScale(output_1, 1)

	JumpHum.JumpPower = sliderValue_1
	JumpHum.JumpHeight = sliderValue_1 - 42.8

end

local sliderActive_1 = false

function ActivateJumpSliderVar()
	sliderActive_1 = true
	while sliderActive_1 do
		UpdateJumpSliderVar() 
		task.wait() 
	end
end

JumpTrigger.MouseButton1Down:Connect(ActivateJumpSliderVar)

game:GetService("UserInputService").InputEnded:Connect(function(input_1)
	if input_1.UserInputType == Enum.UserInputType.MouseButton1 or input_1.UserInputType == Enum.UserInputType.Touch then
		sliderActive_1 = false
	end
end)
]]
JumpSliderScript.Name = "JumpSliderScript"
JumpSliderScript.Parent = JumpSlider

JumpFill.BorderSizePixel = 0
JumpFill.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
JumpFill.Size = UDim2.new(1, 0, 1, 0)
JumpFill.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpFill.Name = "JumpFill"
JumpFill.Parent = JumpSlider

UICorner_10.CornerRadius = UDim.new(0, 10)
UICorner_10.Parent = JumpFill

JumpTrigger.BorderSizePixel = 0
JumpTrigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpTrigger.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
JumpTrigger.Name = "JumpTrigger"
JumpTrigger.TextSize = 14
JumpTrigger.Size = UDim2.new(1, 0, 1, 0)
JumpTrigger.TextColor3 = Color3.fromRGB(0, 0, 0)
JumpTrigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpTrigger.Text = ""
JumpTrigger.BackgroundTransparency = 1
JumpTrigger.Parent = JumpSlider

JumpOut.Name = "JumpOut"
JumpOut.Parent = JumpSlider

JumpNum.BorderSizePixel = 0
JumpNum.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
JumpNum.Size = UDim2.new(0.145, 0, 1.96, 0)
JumpNum.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpNum.Name = "JumpNum"
JumpNum.Position = UDim2.new(1.05463, 0, -0.520412, 0)
JumpNum.Parent = JumpSlider

UICorner_11.CornerRadius = UDim.new(0, 10)
UICorner_11.Parent = JumpNum

JumpVal.TextWrapped = true
JumpVal.BorderSizePixel = 0
JumpVal.TextScaled = true
JumpVal.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
JumpVal.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
JumpVal.Position = UDim2.new(0.1, 0, 0, 0)
JumpVal.Name = "JumpVal"
JumpVal.TextSize = 14
JumpVal.Size = UDim2.new(0.8, 0, 0.8, 0)
JumpVal.TextColor3 = Color3.fromRGB(255, 255, 255)
JumpVal.BorderColor3 = Color3.fromRGB(0, 0, 0)
JumpVal.Text = "250"
JumpVal.BackgroundTransparency = 1
JumpVal.Parent = JumpNum

open_close.Source = [[local UserInputService = game:GetService("UserInputService")
local Player = game.Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
local CrabHub = PlayerGui:WaitForChild("CrabHub")
local MainFrame = CrabHub:WaitForChild("Main") 

local frameVisible = true 
local cooldown = false 
local cooldownTime = 0.25 


local function toggleFrameVisibility()
	if cooldown then return end
	cooldown = true 
	MainFrame.Visible = not frameVisible
	frameVisible = not frameVisible 

	task.wait(cooldownTime) 
	cooldown = false
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if gameProcessedEvent then return end

	if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.RightShift then
		toggleFrameVisibility() 
	end
end)

MainFrame.Visible = true
]]
open_close.Name = "open/close"
open_close.Parent = Main

task.spawn(function()
	local script = LocalScript

	-- LocalScript inside the element you want to drag (script.Parent)
	local dragger = script.Parent      -- This is the element you will drag (the smaller part)
	local frame = script.Parent.Parent -- This is the element that will move (the larger container)
	
	local dragging = false
	local dragInput, mousePos, framePos
	
	local function update(input)
		if dragging then
			local delta = input.Position - mousePos
			frame.Position = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
		end
	end
	
	dragger.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			dragging = true
			mousePos = input.Position
			framePos = frame.Position
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	dragger.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			dragInput = input
		end
	end)
	
	game:GetService("UserInputService").InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
end)

task.spawn(function()
	local script = slider

	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = script.Parent
	local Fill = script.Parent.Fill
	local Trigger = script.Parent.Trigger
	local OutputValue = script.Parent.outputValue
	local OutputLabel = script.Parent.output.TextLabel
	local Player = game.Players.LocalPlayer
	local Character = Player.Character or Player.CharacterAdded:Wait()
	local Humanoid = Character:WaitForChild("Humanoid")
	
	local MIN_VALUE = 16
	local MAX_VALUE = 250
	
	OutputValue.Value = MIN_VALUE
	
	Fill.Size = UDim2.fromScale((OutputValue.Value - MIN_VALUE) / (MAX_VALUE - MIN_VALUE), 1)
	OutputLabel.Text = tostring(math.round(OutputValue.Value)) 
	
	function UpdateSlider()
		local output = (Mouse.X - Slider.AbsolutePosition.X) / Slider.AbsoluteSize.X
		output = math.clamp(output, 0, 1)
	
		local sliderValue = MIN_VALUE + output * (MAX_VALUE - MIN_VALUE)
	
		OutputValue.Value = sliderValue
		OutputLabel.Text = tostring(math.round(sliderValue))
		Fill.Size = UDim2.fromScale(output, 1)
	
		Humanoid.WalkSpeed = sliderValue -- Corrected WalkSpeed (capital 'S')
	end
	
	local sliderActive = false
	
	function ActivateSlider()
		sliderActive = true
		while sliderActive do
			UpdateSlider()
			task.wait()
		end
	end
	
	Trigger.MouseButton1Down:Connect(ActivateSlider)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			sliderActive = false
		end
	end)
	
end)

task.spawn(function()
	local script = JumpSliderScript

	local JumpMouse = game.Players.LocalPlayer:GetMouse()
	local JumpSliderVar = script.Parent
	local JumpFill = script.Parent.JumpFill
	local JumpTrigger = script.Parent.JumpTrigger
	local JumpOut = script.Parent.JumpOut
	local JumpOutput = script.Parent.JumpNum.JumpVal
	local JumpPlayer = game.Players.LocalPlayer
	local Jumpchar = JumpPlayer.Character or JumpPlayer.CharacterAdded:Wait()
	local JumpHum = Jumpchar:WaitForChild("Humanoid")
	
	local MIN_VALUE_1 = 50
	local MAX_VALUE_1 = 250
	
	JumpOut.Value = MIN_VALUE_1
	
	JumpFill.Size = UDim2.fromScale((JumpOut.Value - MIN_VALUE_1) / (MAX_VALUE_1 - MIN_VALUE_1), 1)
	JumpOutput.Text = tostring(math.round(JumpOut.Value)) 
	
	function UpdateJumpSliderVar()
		local output_1 = (JumpMouse.X - JumpSliderVar.AbsolutePosition.X) / JumpSliderVar.AbsoluteSize.X
	
		output_1 = math.clamp(output_1, 0, 1)
	
		local sliderValue_1 = MIN_VALUE_1 + output_1 * (MAX_VALUE_1 - MIN_VALUE_1)
	
		JumpOut.Value = sliderValue_1
		JumpOutput.Text = tostring(math.round(sliderValue_1))
		JumpFill.Size = UDim2.fromScale(output_1, 1)
	
		JumpHum.JumpPower = sliderValue_1
		JumpHum.JumpHeight = sliderValue_1 - 42.8
	
	end
	
	local sliderActive_1 = false
	
	function ActivateJumpSliderVar()
		sliderActive_1 = true
		while sliderActive_1 do
			UpdateJumpSliderVar() 
			task.wait() 
		end
	end
	
	JumpTrigger.MouseButton1Down:Connect(ActivateJumpSliderVar)
	
	game:GetService("UserInputService").InputEnded:Connect(function(input_1)
		if input_1.UserInputType == Enum.UserInputType.MouseButton1 or input_1.UserInputType == Enum.UserInputType.Touch then
			sliderActive_1 = false
		end
	end)
	
end)

task.spawn(function()
	local script = open_close

	local UserInputService = game:GetService("UserInputService")
	local Player = game.Players.LocalPlayer
	local PlayerGui = Player:WaitForChild("PlayerGui")
	local CrabHub = PlayerGui:WaitForChild("CrabHub")
	local MainFrame = CrabHub:WaitForChild("Main") 
	
	local frameVisible = true 
	local cooldown = false 
	local cooldownTime = 0.25 
	
	
	local function toggleFrameVisibility()
		if cooldown then return end
		cooldown = true 
		MainFrame.Visible = not frameVisible
		frameVisible = not frameVisible 
	
		task.wait(cooldownTime) 
		cooldown = false
	end
	
	UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
		if gameProcessedEvent then return end
	
		if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.RightShift then
			toggleFrameVisibility() 
		end
	end)
	
	MainFrame.Visible = true
	
end)
