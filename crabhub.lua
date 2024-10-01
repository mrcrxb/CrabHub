--[[
	
	Gui2Lua Winning! ~ Ch0nky Code:tm:
	
	42 instances
	
	-> 10:07:2023 	-	fixed "Http requests can only be executed by game server" error when pressing "Play"
					-	fixed modulescripts's "script" variable not being set properly
					-	plugin will now retry fetching an api dump from the web if it did not fetch it successfully last time
					
					
	-> 26:07:2023 	-	plugin will now cache instance property lists (slight performance improvement)
					-	increased "max string length" threshold, plugin may generate less splits on large selections
					
					
	-> 18:09:2023	- 	full plugin rewrite
					-	splits of long scripts will now be created under a localscript instead of a folder
					-	plugin now has single pass conversion, should be MUCH faster
					-	added attributes
					- 	fixed "allow plugin to acces ?" prompt
					-	you can now disable automatic opening of scripts from the commandline
						>	"shared.gv2.require("settings").data.autoOpenScripts = false" or "shared.gv2.require("settings").data.autoOpenScripts = true"
						> 	"false" stands for disabled and "true" stands for enabled, setting this option WILL save		
					
					
	-> 08:10:2023	-	added icon
					
					
	-> 30:11:2023	-	output will now always be generated as one script (no more output splitting!)
					-	fixed missing comma when generating big outputs
					-	fixed duplicate processing when selecting an instance and its parent
					-	fixed issue with default properties
					-	fixed autoupdating api dump since roblox broke it
					-	you can now change the default script creation type to "ModuleScript", "LocalScript" or "Script" from the commandline, for example:
						>	"shared.gv2.require("settings").data.scriptCreationType = "Script""
						>	you can use "ModuleScript", "LocalScript" or "Script"
					
					
	-> 16:02:2024	-	improved studio version scanning algorithm, no more errors when parsing api dump
					-	fixed properties that defaulted to nil being missed
					
					
	-> 19:02:2024	-	fixed properties of type "Instance" not being converted properly
					
					
	-> 17:03:2024	-	added support for Path2D
					-	improved default variable names for different output types
					-	fixed of properties of type "Instance" not being referenced when using roact or fusion
	
]]--

local 1 =
{
	UICorner = Instance.new("UICorner"),
	UICorner_1 = Instance.new("UICorner"),
	TextLabel = Instance.new("TextLabel"),
	UICorner_2 = Instance.new("UICorner"),
	outputValue = Instance.new("NumberValue"),
	slider = Instance.new("LocalScript"),
	Fill = Instance.new("Frame"),
	output = Instance.new("Frame"),
	Trigger = Instance.new("TextButton"),
	UICorner_3 = Instance.new("UICorner"),
	UIStroke = Instance.new("UIStroke"),
	Slider = Instance.new("Frame"),
	TextLabel_1 = Instance.new("TextLabel"),
	UICorner_4 = Instance.new("UICorner"),
	UICorner_5 = Instance.new("UICorner"),
	TextLabel_2 = Instance.new("TextLabel"),
	UICorner_6 = Instance.new("UICorner"),
	outputValue_1 = Instance.new("NumberValue"),
	slider_1 = Instance.new("LocalScript"),
	Fill_1 = Instance.new("Frame"),
	output_1 = Instance.new("Frame"),
	Trigger_1 = Instance.new("TextButton"),
	UICorner_7 = Instance.new("UICorner"),
	UIStroke_1 = Instance.new("UIStroke"),
	Slider_1 = Instance.new("Frame"),
	TextLabel_3 = Instance.new("TextLabel"),
	Jumppower = Instance.new("Frame"),
	Walkspeed = Instance.new("Frame"),
	UICorner_8 = Instance.new("UICorner"),
	UIStroke_2 = Instance.new("UIStroke"),
	UICorner_9 = Instance.new("UICorner"),
	Button1 = Instance.new("TextButton"),
	UICorner_10 = Instance.new("UICorner"),
	LocalScript = Instance.new("LocalScript"),
	CrabHub = Instance.new("ScreenGui"),
	Main = Instance.new("Frame"),
	UICorner_11 = Instance.new("UICorner"),
	TopBar = Instance.new("Frame"),
	TextLabel_4 = Instance.new("TextLabel"),
	SideBar = Instance.new("Frame"),
	PlayerMain = Instance.new("Frame"),
	open_close = Instance.new("LocalScript")
}

1.UICorner.CornerRadius = UDim.new(0, 10)
1.UICorner.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider.Fill

1.UICorner_1.CornerRadius = UDim.new(0, 10)
1.UICorner_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider.output

1.TextLabel.TextWrapped = true
1.TextLabel.BorderSizePixel = 0
1.TextLabel.TextScaled = true
1.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.TextLabel.TextSize = 14
1.TextLabel.Size = UDim2.new(1, 0, 1, 0)
1.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.TextLabel.Text = "250"
1.TextLabel.BackgroundTransparency = 1
1.TextLabel.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider.output

1.UICorner_2.CornerRadius = UDim.new(0, 10)
1.UICorner_2.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider

1.outputValue.Name = "outputValue"
1.outputValue.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider

1.slider.Source = [[local Mouse = game.Players.LocalPlayer:GetMouse()
local Slider = script.Parent
local Fill = script.Parent.Fill
local Trigger = script.Parent.Trigger
local OutputValue = script.Parent.outputValue
local OutputLabel = script.Parent.output.TextLabel
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")

local MIN_VALUE = 50
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

	Humanoid.JumpPower = sliderValue
	Humanoid.JumpHeight = sliderValue-42.8
	
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
1.slider.Name = "slider"
1.slider.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider

1.Fill.BorderSizePixel = 0
1.Fill.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
1.Fill.Size = UDim2.new(1.00444, 0, 1, 0)
1.Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Fill.Name = "Fill"
1.Fill.Position = UDim2.new(-0.00116846, 0, -0.0333333, 0)
1.Fill.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider

1.output.BorderSizePixel = 0
1.output.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
1.output.Size = UDim2.new(0, 40, 0, 25)
1.output.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.output.Name = "output"
1.output.Position = UDim2.new(1.04428, 0, -0.333333, 0)
1.output.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider

1.Trigger.BorderSizePixel = 0
1.Trigger.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.Trigger.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.Trigger.Name = "Trigger"
1.Trigger.TextSize = 14
1.Trigger.Size = UDim2.new(1, 0, 1, 0)
1.Trigger.TextColor3 = Color3.fromRGB(0, 0, 0)
1.Trigger.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Trigger.Text = ""
1.Trigger.BackgroundTransparency = 1
1.Trigger.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower.Slider

1.UICorner_3.CornerRadius = UDim.new(0, 10)
1.UICorner_3.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower

1.UIStroke.Color = Color3.fromRGB(40, 40, 40)
1.UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
1.UIStroke.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower

1.Slider.BorderSizePixel = 0
1.Slider.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
1.Slider.Size = UDim2.new(0, 237, 0, 15)
1.Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Slider.Name = "Slider"
1.Slider.Position = UDim2.new(0.336858, 0, 0.233333, 0)
1.Slider.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower

1.TextLabel_1.TextWrapped = true
1.TextLabel_1.BorderSizePixel = 0
1.TextLabel_1.TextScaled = true
1.TextLabel_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.TextLabel_1.TextSize = 14
1.TextLabel_1.Size = UDim2.new(0, 147, 0, 30)
1.TextLabel_1.TextColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.TextLabel_1.Text = "Jump Power"
1.TextLabel_1.BackgroundTransparency = 1
1.TextLabel_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Jumppower

1.UICorner_4.CornerRadius = UDim.new(0, 10)
1.UICorner_4.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider.Fill

1.UICorner_5.CornerRadius = UDim.new(0, 10)
1.UICorner_5.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider.output

1.TextLabel_2.TextWrapped = true
1.TextLabel_2.BorderSizePixel = 0
1.TextLabel_2.TextScaled = true
1.TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_2.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.TextLabel_2.TextSize = 14
1.TextLabel_2.Size = UDim2.new(1, 0, 1, 0)
1.TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.TextLabel_2.Text = "250"
1.TextLabel_2.BackgroundTransparency = 1
1.TextLabel_2.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider.output

1.UICorner_6.CornerRadius = UDim.new(0, 10)
1.UICorner_6.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider

1.outputValue_1.Name = "outputValue"
1.outputValue_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider

1.slider_1.Source = [[local Mouse = game.Players.LocalPlayer:GetMouse()
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

	Humanoid.WalkSpeed = sliderValue
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
1.slider_1.Name = "slider"
1.slider_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider

1.Fill_1.BorderSizePixel = 0
1.Fill_1.BackgroundColor3 = Color3.fromRGB(127, 127, 127)
1.Fill_1.Size = UDim2.new(1, 0, 1, 0)
1.Fill_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Fill_1.Name = "Fill"
1.Fill_1.Position = UDim2.new(-0.00116821, 0, -0.0333333, 0)
1.Fill_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider

1.output_1.BorderSizePixel = 0
1.output_1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
1.output_1.Size = UDim2.new(0, 40, 0, 25)
1.output_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.output_1.Name = "output"
1.output_1.Position = UDim2.new(1.04428, 0, -0.333333, 0)
1.output_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider

1.Trigger_1.BorderSizePixel = 0
1.Trigger_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.Trigger_1.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.Trigger_1.Name = "Trigger"
1.Trigger_1.TextSize = 14
1.Trigger_1.Size = UDim2.new(1, 0, 1, 0)
1.Trigger_1.TextColor3 = Color3.fromRGB(0, 0, 0)
1.Trigger_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Trigger_1.Text = ""
1.Trigger_1.BackgroundTransparency = 1
1.Trigger_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed.Slider

1.UICorner_7.CornerRadius = UDim.new(0, 10)
1.UICorner_7.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed

1.UIStroke_1.Color = Color3.fromRGB(40, 40, 40)
1.UIStroke_1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
1.UIStroke_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed

1.Slider_1.BorderSizePixel = 0
1.Slider_1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
1.Slider_1.Size = UDim2.new(0, 237, 0, 15)
1.Slider_1.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Slider_1.Name = "Slider"
1.Slider_1.Position = UDim2.new(0.337, 0, 0.233, 0)
1.Slider_1.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed

1.TextLabel_3.TextWrapped = true
1.TextLabel_3.BorderSizePixel = 0
1.TextLabel_3.TextScaled = true
1.TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_3.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.TextLabel_3.Position = UDim2.new(-0.00230385, 0, 0.0341297, 0)
1.TextLabel_3.TextSize = 14
1.TextLabel_3.Size = UDim2.new(0, 147, 0, 30)
1.TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.TextLabel_3.Text = "Walk Speed"
1.TextLabel_3.BackgroundTransparency = 1
1.TextLabel_3.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain.Walkspeed

1.Jumppower.BorderSizePixel = 0
1.Jumppower.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
1.Jumppower.Size = UDim2.new(0.909853, 0, 0.1, 0)
1.Jumppower.BorderColor3 = Color3.fromRGB(45, 45, 45)
1.Jumppower.Name = "Jumppower"
1.Jumppower.Position = UDim2.new(0.018, 0, 0.159044, 0)
1.Jumppower.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain

1.Walkspeed.BorderSizePixel = 0
1.Walkspeed.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
1.Walkspeed.Size = UDim2.new(0.91, 0, 0.1, 0)
1.Walkspeed.BorderColor3 = Color3.fromRGB(45, 45, 45)
1.Walkspeed.Name = "Walkspeed"
1.Walkspeed.Position = UDim2.new(0.0180505, 0, 0.0273038, 0)
1.Walkspeed.Parent = game:GetService("StarterGui").CrabHub.Main.PlayerMain

1.UICorner_8.CornerRadius = UDim.new(0, 10)
1.UICorner_8.Parent = game:GetService("StarterGui").CrabHub.Main.SideBar.Button1

1.UIStroke_2.Color = Color3.fromRGB(40, 40, 40)
1.UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
1.UIStroke_2.Parent = game:GetService("StarterGui").CrabHub.Main.SideBar.Button1

1.UICorner_9.CornerRadius = UDim.new(0, 10)
1.UICorner_9.Parent = game:GetService("StarterGui").CrabHub.Main.SideBar

1.Button1.TextWrapped = true
1.Button1.BorderSizePixel = 0
1.Button1.Position = UDim2.new(0.093, 0, 0.0483676, 0)
1.Button1.TextScaled = true
1.Button1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
1.Button1.FontFace = Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.Button1.Name = "Button1"
1.Button1.TextSize = 14
1.Button1.Size = UDim2.new(0.8, 0, 0.1, 0)
1.Button1.TextColor3 = Color3.fromRGB(255, 255, 255)
1.Button1.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Button1.Text = "Player"
1.Button1.Parent = game:GetService("StarterGui").CrabHub.Main.SideBar

1.UICorner_10.CornerRadius = UDim.new(0, 10)
1.UICorner_10.Parent = game:GetService("StarterGui").CrabHub.Main.TopBar

1.LocalScript.Source = [[-- LocalScript inside the element you want to drag (script.Parent)
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
1.LocalScript.Parent = game:GetService("StarterGui").CrabHub.Main.TopBar

1.CrabHub.Name = "CrabHub"
1.CrabHub.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
1.CrabHub.Parent = game:GetService("StarterGui")

1.Main.BorderSizePixel = 0
1.Main.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
1.Main.Size = UDim2.new(0.5, 0, 0.4, 0)
1.Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.Main.Name = "Main"
1.Main.Position = UDim2.new(0.249842, 0, 0.298995, 0)
1.Main.Parent = 1.CrabHub

1.UICorner_11.CornerRadius = UDim.new(0, 10)
1.UICorner_11.Parent = 1.Main

1.TopBar.BorderSizePixel = 0
1.TopBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
1.TopBar.Size = UDim2.new(1, 0, 0.0811558, 0)
1.TopBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.TopBar.Name = "TopBar"
1.TopBar.ZIndex = 4
1.TopBar.Parent = 1.Main

1.TextLabel_4.TextWrapped = true
1.TextLabel_4.BorderSizePixel = 0
1.TextLabel_4.TextScaled = true
1.TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_4.FontFace = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
1.TextLabel_4.TextSize = 14
1.TextLabel_4.Size = UDim2.new(1, 0, 1, 0)
1.TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
1.TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.TextLabel_4.Text = "CrabHub"
1.TextLabel_4.BackgroundTransparency = 1
1.TextLabel_4.Parent = 1.TopBar

1.SideBar.BorderSizePixel = 0
1.SideBar.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
1.SideBar.Size = UDim2.new(0.189109, 0, 0.940829, 0)
1.SideBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.SideBar.Name = "SideBar"
1.SideBar.Position = UDim2.new(0, 0, 0.0591709, 0)
1.SideBar.ZIndex = 2
1.SideBar.Parent = 1.Main

1.PlayerMain.BorderSizePixel = 0
1.PlayerMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
1.PlayerMain.Size = UDim2.new(0, 477, 0, 293)
1.PlayerMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
1.PlayerMain.BackgroundTransparency = 1
1.PlayerMain.Name = "PlayerMain"
1.PlayerMain.Position = UDim2.new(0.187683, 0, 0.0785175, 0)
1.PlayerMain.ZIndex = 5
1.PlayerMain.Parent = 1.Main

1.open_close.Source = [[local UserInputService = game:GetService("UserInputService")
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
1.open_close.Name = "open/close"
1.open_close.Parent = 1.Main

task.spawn(function()
	local script = 1.slider

	local Mouse = game.Players.LocalPlayer:GetMouse()
	local Slider = script.Parent
	local Fill = script.Parent.Fill
	local Trigger = script.Parent.Trigger
	local OutputValue = script.Parent.outputValue
	local OutputLabel = script.Parent.output.TextLabel
	local Player = game.Players.LocalPlayer
	local Character = Player.Character or Player.CharacterAdded:Wait()
	local Humanoid = Character:WaitForChild("Humanoid")
	
	local MIN_VALUE = 50
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
	
		Humanoid.JumpPower = sliderValue
		Humanoid.JumpHeight = sliderValue-42.8
		
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
	local script = 1.slider_1

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
	
		Humanoid.WalkSpeed = sliderValue
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
	local script = 1.LocalScript

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
	local script = 1.open_close

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
