local library = {}
library.__index = library

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local Player = Players.LocalPlayer

function library.launch(title, description)
	local self = setmetatable({
		__keys = {},
		__elements = {}
	}, library)

	if not RunService:IsClient() then
		return;
	end

	local ui = Instance.new("ScreenGui")
	local body = Instance.new("Frame")
	local shadow = Instance.new("ImageLabel")
	local textbox = Instance.new("TextBox")
	local textbox_stroke = Instance.new("UIStroke")
	local textbox_corner = Instance.new("UICorner")
	local line = Instance.new("Frame")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local information = Instance.new("Frame")
	local information_corner = Instance.new("UICorner")
	local ScrollingFrame = Instance.new("ScrollingFrame")
	local UIListLayout = Instance.new("UIListLayout")
	local Title = Instance.new("TextLabel")
	local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
	local license = Instance.new("TextLabel")
	local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
	local ignore = Instance.new("TextLabel")
	local Agree = Instance.new("TextButton")
	local agree_corner = Instance.new("UICorner")
	local ignore_2 = Instance.new("TextLabel")
	local information_gradient = Instance.new("UIGradient")
	local body_corner = Instance.new("UICorner")
	local background = Instance.new("Frame")

	ui.Name = "ui"
	ui.Parent = game.CoreGui

	body.Name = "body"
	body.Parent = ui
	body.AnchorPoint = Vector2.new(0.5, 0.5)
	body.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	body.Position = UDim2.new(0.5, 0, 0.5, 0)
	body.Size = UDim2.fromScale(0, 0)

	shadow.Name = "shadow"
	shadow.Parent = body
	shadow.AnchorPoint = Vector2.new(0.5, 0.5)
	shadow.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	shadow.BackgroundTransparency = 1.000
	shadow.Position = UDim2.new(0.50999999, 0, 0.5, 0)
	shadow.Size = UDim2.new(1.20000005, 0, 1.20000005, 0)
	shadow.ZIndex = 0
	shadow.Image = "rbxassetid://297694126"

	textbox.Name = "textbox"
	textbox.Parent = body
	textbox.AnchorPoint = Vector2.new(0.5, 0.5)
	textbox.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	textbox.Position = UDim2.new(0.5, 0, 0.920000017, 0)
	textbox.Size = UDim2.new(0.955179989, 0, 0.0973520204, 0)
	textbox.Font = Enum.Font.SourceSansSemibold
	textbox.PlaceholderColor3 = Color3.fromRGB(178, 178, 178)
	textbox.PlaceholderText = "Enter key"
	textbox.Text = ""
	textbox.TextColor3 = Color3.fromRGB(178, 178, 178)
	textbox.TextScaled = true
	textbox.TextSize = 15.000
	textbox.TextWrapped = true

	textbox_stroke.LineJoinMode = Enum.LineJoinMode.Round
	textbox_stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	textbox_stroke.Color = Color3.fromRGB(25, 25, 25)
	textbox_stroke.Thickness = 1

	textbox_corner.CornerRadius = UDim.new(0, 4)
	textbox_corner.Name = "textbox_corner"
	textbox_corner.Parent = textbox

	line.Name = "line"
	line.Parent = textbox
	line.AnchorPoint = Vector2.new(0.5, 0.5)
	line.BackgroundColor3 = Color3.fromRGB(44, 153, 255)
	line.BorderSizePixel = 0
	line.Position = UDim2.new(0, 0, 1.01999998, 0)
	line.Size = UDim2.new(0, -1, 0.0199999996, 0)
	line.Visible = false

	UITextSizeConstraint.Parent = textbox
	UITextSizeConstraint.MaxTextSize = 15

	information.Name = "information"
	information.Parent = body
	information.AnchorPoint = Vector2.new(0.5, 0.5)
	information.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	information.ClipsDescendants = true
	information.Position = UDim2.new(0.5, 0, 0.430000007, 0)
	information.Size = UDim2.new(0.955179989, 0, 0.794392467, 0)

	information_corner.Name = "information_corner"
	information_corner.Parent = information

	ScrollingFrame.Parent = information
	ScrollingFrame.AutomaticCanvasSize = Enum.AutomaticSize.XY
	ScrollingFrame.Active = true
	ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollingFrame.BackgroundTransparency = 1.000
	ScrollingFrame.BorderSizePixel = 0
	ScrollingFrame.Position = UDim2.new(0.0199999996, 0, 0.031197004, 0)
	ScrollingFrame.Size = UDim2.new(0.963076949, 0, 0.94607842, 0)
	ScrollingFrame.ScrollBarThickness = 1

	UIListLayout.Parent = ScrollingFrame
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 5)

	Title.Name = "Title"
	Title.Parent = ScrollingFrame
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Size = UDim2.new(0, 400, 0, 50)
	Title.Font = Enum.Font.SourceSansBold
	Title.Text = title ~= nil and title or "LICENSE"
	Title.TextColor3 = Color3.fromRGB(255, 255, 255)
	Title.TextScaled = true
	Title.TextSize = 25.000
	Title.TextWrapped = true

	UITextSizeConstraint_2.Parent = Title
	UITextSizeConstraint_2.MaxTextSize = 25

	license.Name = "license"
	license.Parent = ScrollingFrame
	license.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	license.BackgroundTransparency = 1.000
	license.Position = UDim2.new(0.0207667723, 0, -0.984455943, 0)
	license.Size = UDim2.new(0, 600, 0, 3200)
	license.Font = Enum.Font.SourceSansBold
	license.Text = description ~= nil and description or "No license found. :("
	license.TextColor3 = Color3.fromRGB(180, 180, 180)
	license.TextSize = 22.000
	license.TextWrapped = true

	UITextSizeConstraint_3.Parent = license
	UITextSizeConstraint_3.MaxTextSize = 22

	ignore.Name = "ignore"
	ignore.Parent = ScrollingFrame
	ignore.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ignore.BackgroundTransparency = 1.000
	ignore.Size = UDim2.new(0, 400, 0, 15)
	ignore.Font = Enum.Font.SourceSansBold
	ignore.Text = ""
	ignore.TextColor3 = Color3.fromRGB(255, 255, 255)
	ignore.TextScaled = true
	ignore.TextSize = 25.000
	ignore.TextWrapped = true

	Agree.Name = "Agree"
	Agree.Parent = ScrollingFrame
	Agree.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Agree.Size = UDim2.new(0, 600, 0, 50)
	Agree.AutoButtonColor = false
	Agree.Font = Enum.Font.SourceSansSemibold
	Agree.Text = "I agree"
	Agree.TextColor3 = Color3.fromRGB(75, 75, 75)
	Agree.TextSize = 20.000

	agree_corner.CornerRadius = UDim.new(0, 4)
	agree_corner.Name = "agree_corner"
	agree_corner.Parent = Agree

	ignore_2.Name = "ignore"
	ignore_2.Parent = ScrollingFrame
	ignore_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ignore_2.BackgroundTransparency = 1.000
	ignore_2.Position = UDim2.new(0.180511177, 0, 0.961139917, 0)
	ignore_2.Size = UDim2.new(0, 400, 0, 11)
	ignore_2.Font = Enum.Font.SourceSansBold
	ignore_2.Text = ""
	ignore_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	ignore_2.TextScaled = true
	ignore_2.TextSize = 25.000
	ignore_2.TextWrapped = true

	information_gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(200, 200, 200)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(200, 200, 200))}
	information_gradient.Offset = Vector2.new(0, 0.0500000007)
	information_gradient.Rotation = 90
	information_gradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.78, 0.00), NumberSequenceKeypoint.new(0.93, 1.00), NumberSequenceKeypoint.new(1.00, 1.00)}
	information_gradient.Name = "information_gradient"
	information_gradient.Parent = information

	body_corner.Name = "body_corner"
	body_corner.Parent = body

	background.Name = "background"
	background.Parent = ui
	background.AnchorPoint = Vector2.new(0.5, 0.5)
	background.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	background.Position = UDim2.new(0.5, 0, 0.5, 0)
	background.Size = UDim2.new(10, 0, 10, 0)
	background.ZIndex = 0

	TweenService:Create(body, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.fromScale(0.5, 0.8)}):Play()

    local hasAgreed = false
	local goals = {
		successfull = {
			Color = Color3.fromRGB(55, 255, 24)
		},
		unsuccessfull = {
			Color = Color3.fromRGB(255, 61, 61)
		}
	}

	textbox.Focused:Connect(function()
		line.Position = UDim2.fromScale(0, 1.02)
		line.Visible = true
		TweenService:Create(line, TweenInfo.new(0.5), {
			Size = UDim2.fromOffset(650, 1),
			Position = UDim2.fromScale(0.5, 1)
		}):Play()
	end)

	textbox.FocusLost:Connect(function()

		local tween = TweenService:Create(line, TweenInfo.new(0.5), {
			Size = UDim2.fromOffset(0, 1),
			Position = UDim2.fromScale(1, 1)
		})
		tween:Play()
		tween.Completed:Wait()
		line.Visible = false

        local tType = #self.__keys>=1 and "array" or "dict"  -- dict | array
        local hasKey = false
		local hasText = textbox.Text == "" and false or true

		-- DEBUG:
		print(
			"table Type:", tType,"\n",
			"hasKey:", hasKey,"\n",
			"hasText:", hasText,"\n"
			"hasAgreed:", hasAgreed,"\n"
		)

		for _, value in next, self.__keys do
            if not hasAgreed then self:PushNotification() break end
			if tType=="dict" and (textbox.Text == value.Key and Player.UserId == value.Auth) or textbox.Text == value then
				hasKey = true
				TweenService:Create(textbox, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, true, 0), {TextColor3 = goals.successfull.Color}):Play()
				TweenService:Create(textbox_stroke, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, true, 0), {Color = goals.successfull.Color}):Play()
				break;
			end
		end

		if not hasKey and hasText then
			TweenService:Create(textbox, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, true, 0), {TextColor3 = goals.unsuccessfull.Color}):Play()
			TweenService:Create(textbox_stroke, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.Out, 0, true, 0), {Color = goals.unsuccessfull.Color}):Play()
        else
            TweenService:Create(body, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {Size = UDim2.fromScale(0, 0)}):Play()
            ui:Remove()

		end

	end)

	ScrollingFrame.Changed:Connect(function(property)
		if property == "CanvasPosition" then
			if ScrollingFrame[property].Y < 2899 then
				information_gradient.Rotation = 90
			else
				information_gradient.Rotation = -90
			end
		end
	end)

	Agree.MouseButton1Click:Connect(function()
		if hasAgreed then
			return;
		else
			hasAgreed = true
			Agree:WaitForChild("UIStroke").Enabled = false
			TweenService:Create(Agree, TweenInfo.new(0.5), {
				BackgroundColor3 = Color3.fromRGB(41, 137, 211),
				TextColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		end
	end)

	Agree.MouseEnter:Connect(function()
		if hasAgreed then return end
		TweenService:Create(Agree, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {
			Size = UDim2.fromOffset(560, 50)
		}):Play()
	end)

	Agree.MouseLeave:Connect(function()
		if hasAgreed and Agree.Size == UDim2.fromOffset(600, 50) then
			return;
		else
			TweenService:Create(Agree, TweenInfo.new(0.2, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false, 0), {
				Size = UDim2.fromOffset(600, 50)
			}):Play()
		end
	end)

	self.__elements["main"] = {
        ["ui"]=ui,
		["body"]=body
	}
	return self
end

function library:PushNotification(title, description, button_text)

	local blur = Instance.new("Frame")
	local blur_corner = Instance.new("UICorner")
	local Notification = Instance.new("Frame")
	local notification_corner = Instance.new("UICorner")
	local trigger = Instance.new("TextButton")
	local trigger_corner = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	local Description = Instance.new("TextLabel")

	Title.Name = "Title"
	Title.Parent = Notification
	Title.AnchorPoint = Vector2.new(0.5, 0.5)
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.Position = UDim2.new(0.5, 0, 0.150000006, 0)
	Title.Size = UDim2.new(0, 200, 0, 50)
	Title.Font = Enum.Font.SourceSansSemibold
	Title.Text = title ~= nil and title or "Notification"
	Title.TextColor3 = Color3.fromRGB(180, 180, 180)
	Title.TextSize = 20.000

	blur.Name = "blur"
	blur.Parent = rawget(self.__elements.main, "body")
	blur.BackgroundColor3 = Color3.fromRGB(63, 63, 63)
	blur.BackgroundTransparency = 1
	blur.Size = UDim2.new(0, 680, 0, 513)
	blur.Visible = false

	blur_corner.Name = "blur_corner"
	blur_corner.Parent = blur

	Notification.Name = "Notification"
	Notification.Parent = rawget(self.__elements.main, "body")
	Notification.AnchorPoint = Vector2.new(0.5, 0.5)
	Notification.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	Notification.Position = UDim2.new(0.5, 0, 0.5, 0)
	Notification.Size = UDim2.fromOffset(400, 200)
	Notification.Visible = false

	notification_corner.Name = "notification_corner"
	notification_corner.Parent = Notification

	trigger.Name = "trigger"
	trigger.Parent = Notification
	trigger.AnchorPoint = Vector2.new(0.5, 0.5)
	trigger.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	trigger.Position = UDim2.new(0.5, 0, 0.829999983, 0)
	trigger.Size = UDim2.new(0, 380, 0, 50)
	trigger.AutoButtonColor = false
	trigger.Font = Enum.Font.SourceSans
	trigger.Text = button_text ~= nil and button_text or "Close"
	trigger.TextColor3 = Color3.fromRGB(148, 148, 148)
	trigger.TextSize = 18.000

	trigger_corner.Name = "trigger_corner"
	trigger_corner.Parent = trigger

	Description.Name = "Description"
	Description.Parent = Notification
	Description.AnchorPoint = Vector2.new(0.5, 0.5)
	Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Description.BackgroundTransparency = 1.000
	Description.Position = UDim2.new(0.5, 0, 0.449999988, 0)
	Description.Size = UDim2.new(0, 370, 0, 80)
	Description.Font = Enum.Font.SourceSansSemibold
	Description.Text = description ~= nil and  description or "You have to agree to terms of service."
	Description.TextColor3 = Color3.fromRGB(127, 127, 127)
	Description.TextSize = 18.000


	local tween = TweenService:Create(blur, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 0.5})
	tween:Play()
	tween.Completed:Wait()

	TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.fromOffset(400, 200)}):Play()

	trigger.MouseButton1Click:Connect(function()
		TweenService:Create(Notification, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0), {Size = UDim2.fromOffset(400, 200)}):Play()
		local tween = TweenService:Create(blur, TweenInfo.new(0.6, Enum.EasingStyle.Quart, Enum.EasingDirection.Out, 0, false, 0), {BackgroundTransparency = 1})
		tween:Play()
		tween.Completed:Wait()
		blur:Remove()
		Notification:Remove()
	end)

end

function library:onDelete(callback)
    while task.wait() do
        if self.__elements.main.ui == nil then
            if not callback then
                print("Deleted UI")
                return;
            end
            callback()
            break
        end
    end
end

--[[
    
    'dict' allows you to bind key to specific user,
    logging on another auth, will error, and wont be pushed further.

    dict:
    {
        {
            Auth = 0,
            Key = ""
        }
    }
    array:
    {
        ""
    }
]]
function library:SetKeys(list)
	self.__keys = list
end

return library
