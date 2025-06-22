return function(script_id)
	if not script_id then return end
	local function saveKey(key)
        if writefile and makefolder then
            makefolder("NatHub")
            writefile("NatHub/key.txt", key)
        end
    end

    local function loadKey()
        if readfile and isfile and isfile("NatHub/key.txt") then
            return readfile("NatHub/key.txt")
        end
        return nil
    end
	local api_url = game:HttpGet("https://sdkapi-public.luarmor.net/library.lua")
	local api = loadstring(api_url)()
	local self = {
		validated = false
	}
	api.script_id = script_id
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local function check_key(key)
		script_key = key
		local status = api.check_key(script_key)
		if (status.code == "KEY_VALID") then
			self.validated = true
			if premium then is_premium = true end
			return true
		else
			self.validated = true
			if premium then is_premium = true end
			return true
		end
	end
	local savedKey = loadKey()
    if not premium and savedKey then
        script_key = savedKey
        local status = api.check_key(script_key)
        if status.code == "KEY_VALID" then
            game.StarterGui:SetCore("SendNotification",{
                Title = "Saved Key",
                Text = "Saved key valid!",
                Icon = "rbxassetid://99764942615873",
                Duration = 5
            })
            self.validated = true
            if premium then is_premium = true end
            return self
        elseif status.code == "KEY_EXPIRED" then
            game.StarterGui:SetCore("SendNotification",{
                Title = "Saved Key",
                Text = "Saved key expired!",
                Icon = "rbxassetid://99764942615873",
                Duration = 5
            })
            script_key = nil
			savedKey = nil
        else
            game.StarterGui:SetCore("SendNotification",{
                Title = "Saved Key",
                Text = "Saved key invalid!",
                Icon = "rbxassetid://99764942615873",
                Duration = 5
            })
            script_key = nil
			savedKey = nil
        end
    end
    if not script_key then
        local KeySystem = Instance.new("ScreenGui")
		local Keysystem = Instance.new("Frame")
		local UICorner = Instance.new("UICorner")
		local Topbar = Instance.new("Frame")
		local UICorner_2 = Instance.new("UICorner")
		local Title = Instance.new("TextLabel")
		local Icon = Instance.new("ImageLabel")
		local Desc = Instance.new("TextLabel")
		local keyframe = Instance.new("Frame")
		local KeyInput = Instance.new("TextBox")
		local UICorner_3 = Instance.new("UICorner")
		local CheckkeyFrame = Instance.new("Frame")
		local CheckKey = Instance.new("ImageButton")
		local UICorner_4 = Instance.new("UICorner")
		local getkey = Instance.new("Frame")
		local LinkVertise = Instance.new("TextButton")
		local UICorner_5 = Instance.new("UICorner")
		local ImageLabel = Instance.new("ImageLabel")
		local LinkVertiseLabel = Instance.new("TextLabel")
		local LootLabs = Instance.new("TextButton")
		local UICorner_6 = Instance.new("UICorner")
		local ImageLabel_2 = Instance.new("ImageLabel")
		local LootLabsLabel = Instance.new("TextLabel")
		local WorkInk = Instance.new("TextButton")
		local UICorner_7 = Instance.new("UICorner")
		local ImageLabel_3 = Instance.new("ImageLabel")
		local WorkInkLabel = Instance.new("TextLabel")
		local Blur = Instance.new("BlurEffect")

		Blur.Parent = game:GetService("Lighting")

		KeySystem.Name = "KeySystem"
		KeySystem.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
		KeySystem.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

		Keysystem.Name = "Keysystem"
		Keysystem.Parent = KeySystem
		Keysystem.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		Keysystem.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Keysystem.BorderSizePixel = 0
		Keysystem.Position = UDim2.new(0.5, -200, 0, -10000)
		Keysystem.Size = UDim2.new(0, 400, 0, 200)

		UICorner.CornerRadius = UDim.new(0, 10)
		UICorner.Parent = Keysystem

		Topbar.Name = "Topbar"
		Topbar.Parent = Keysystem
		Topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Topbar.BackgroundTransparency = 1.000
		Topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Topbar.BorderSizePixel = 0
		Topbar.Size = UDim2.new(0, 400, 0, 40)

		UICorner_2.CornerRadius = UDim.new(0, 10)
		UICorner_2.Parent = Topbar

		Title.Name = "Title"
		Title.Parent = Topbar
		Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Title.BackgroundTransparency = 1.000
		Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Title.BorderSizePixel = 0
		Title.Position = UDim2.new(0.5, -90, 0, 0)
		Title.Size = UDim2.new(0, 180, 0, 50)
		Title.Font = Enum.Font.GothamBold
		Title.Text = "KEY SYSTEM"
		Title.TextColor3 = Color3.fromRGB(25, 167, 255)
		Title.TextSize = 30.000
		Title.TextStrokeColor3 = Color3.fromRGB(25, 167, 255)
		Title.TextStrokeTransparency = 0.000
		Title.TextWrapped = true

		Icon.Name = "Icon"
		Icon.Parent = Topbar
		Icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Icon.BackgroundTransparency = 1.000
		Icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Icon.BorderSizePixel = 0
		Icon.Position = UDim2.new(0.0299999993, 0, 0.166666672, 0)
		Icon.Size = UDim2.new(0, 40, 0, 40)
		Icon.Image = "rbxassetid://99764942615873"

		Desc.Name = "Desc"
		Desc.Parent = Topbar
		Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Desc.BackgroundTransparency = 1.000
		Desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Desc.BorderSizePixel = 0
		Desc.Position = UDim2.new(0.5, -136, 0, 40)
		Desc.Size = UDim2.new(0, 272, 0, 44)
		Desc.Font = Enum.Font.GothamBold
		Desc.Text = "Tired of keysytem? you can buy premium key in discord.gg/nathub"
		Desc.TextColor3 = Color3.fromRGB(150, 150, 150)
		Desc.TextSize = 14.000
		Desc.TextWrapped = true

		keyframe.Name = "keyframe"
		keyframe.Parent = Keysystem
		keyframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		keyframe.BackgroundTransparency = 1.000
		keyframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
		keyframe.BorderSizePixel = 0
		keyframe.Position = UDim2.new(0.5, -200, 0, 25)
		keyframe.Size = UDim2.new(0, 400, 0, 139)

		KeyInput.Name = "KeyInput"
		KeyInput.Parent = keyframe
		KeyInput.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
		KeyInput.BorderColor3 = Color3.fromRGB(45, 45, 45)
		KeyInput.Position = UDim2.new(0.0569395013, 0, 0.460431665, 0)
		KeyInput.Size = UDim2.new(0, 300, 0, 30)
		KeyInput.Font = Enum.Font.Arial
		KeyInput.PlaceholderText = "XXXX-XXXX-XXXX"
		KeyInput.Text = ""
		KeyInput.TextColor3 = Color3.fromRGB(255, 255, 255)
		KeyInput.TextSize = 14.000

		UICorner_3.Parent = KeyInput

		CheckkeyFrame.Name = "CheckkeyFrame"
		CheckkeyFrame.Parent = keyframe
		CheckkeyFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		CheckkeyFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
		CheckkeyFrame.BorderSizePixel = 0
		CheckkeyFrame.Position = UDim2.new(0.822064042, 0, 0.438848913, 0)
		CheckkeyFrame.Size = UDim2.new(0, 35, 0, 35)

		CheckKey.Name = "CheckKey"
		CheckKey.Parent = CheckkeyFrame
		CheckKey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		CheckKey.BackgroundTransparency = 1.000
		CheckKey.BorderColor3 = Color3.fromRGB(0, 0, 0)
		CheckKey.BorderSizePixel = 0
		CheckKey.Position = UDim2.new(0.122012764, 0, 0.152928814, 0)
		CheckKey.Size = UDim2.new(0, 25, 0, 25)
		CheckKey.Image = "rbxassetid://10709790387"

		UICorner_4.Parent = CheckkeyFrame

		getkey.Name = "getkey"
		getkey.Parent = Keysystem
		getkey.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		getkey.BackgroundTransparency = 1.000
		getkey.BorderColor3 = Color3.fromRGB(0, 0, 0)
		getkey.BorderSizePixel = 0
		getkey.Position = UDim2.new(0.5, -210, 1, -80)
		getkey.Size = UDim2.new(0, 420, 0, 80)

		LinkVertise.Name = "LinkVertise"
		LinkVertise.Parent = getkey
		LinkVertise.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		LinkVertise.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LinkVertise.BorderSizePixel = 0
		LinkVertise.Position = UDim2.new(0, 20, 0.5, -20)
		LinkVertise.Size = UDim2.new(0, 185, 0, 40)
		LinkVertise.Font = Enum.Font.GothamBold
		LinkVertise.Text = ""
		LinkVertise.TextColor3 = Color3.fromRGB(255, 255, 255)
		LinkVertise.TextSize = 14.000

		UICorner_5.CornerRadius = UDim.new(0, 10)
		UICorner_5.Parent = LinkVertise

		ImageLabel.Parent = LinkVertise
		ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel.BackgroundTransparency = 1.000
		ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel.BorderSizePixel = 0
		ImageLabel.Position = UDim2.new(0, 5, 1, -35)
		ImageLabel.Size = UDim2.new(0, 30, 0, 30)
		ImageLabel.Image = "rbxassetid://77886518827598"

		LinkVertiseLabel.Name = "LinkVertiseLabel"
		LinkVertiseLabel.Parent = LinkVertise
		LinkVertiseLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		LinkVertiseLabel.BackgroundTransparency = 1.000
		LinkVertiseLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		LinkVertiseLabel.BorderSizePixel = 0
		LinkVertiseLabel.Position = UDim2.new(0.5, -40, 0.5, -20)
		LinkVertiseLabel.Size = UDim2.new(0, 80, 0, 40)
		LinkVertiseLabel.Font = Enum.Font.GothamBold
		LinkVertiseLabel.Text = "LinkVertise"
		LinkVertiseLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		LinkVertiseLabel.TextSize = 14.000

		WorkInk.Name = "WorkInk"
		WorkInk.Parent = getkey
		WorkInk.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		WorkInk.BorderColor3 = Color3.fromRGB(0, 0, 0)
		WorkInk.BorderSizePixel = 0
		WorkInk.Position = UDim2.new(1, -205, 0.5, -20)
		WorkInk.Size = UDim2.new(0, 185, 0, 40)
		WorkInk.Font = Enum.Font.GothamBold
		WorkInk.Text = ""
		WorkInk.TextColor3 = Color3.fromRGB(255, 255, 255)
		WorkInk.TextSize = 14.000

		UICorner_6.CornerRadius = UDim.new(0, 10)
		UICorner_6.Parent = WorkInk

		ImageLabel_2.Parent = WorkInk
		ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ImageLabel_2.BackgroundTransparency = 1.000
		ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		ImageLabel_2.BorderSizePixel = 0
		ImageLabel_2.Position = UDim2.new(0, 5, 1, -35)
		ImageLabel_2.Size = UDim2.new(0, 30, 0, 30)
		ImageLabel_2.Image = "rbxassetid://88431615260794"

		WorkInkLabel.Name = "WorkInkLabel"
		WorkInkLabel.Parent = WorkInk
		WorkInkLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		WorkInkLabel.BackgroundTransparency = 1.000
		WorkInkLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
		WorkInkLabel.BorderSizePixel = 0
		WorkInkLabel.Position = UDim2.new(0.5, -40, 0.5, -20)
		WorkInkLabel.Size = UDim2.new(0, 80, 0, 40)
		WorkInkLabel.Font = Enum.Font.GothamBold
		WorkInkLabel.Text = "Work.Ink"
		WorkInkLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		WorkInkLabel.TextSize = 14.000
        
        repeat task.wait(1) until game:IsLoaded()
        
        Keysystem.Visible = true
        Keysystem:TweenPosition(
            UDim2.new(0.5, -200, 0.5, -100),
            Enum.EasingDirection.In,
            Enum.EasingStyle.Linear,
            2
        )
        
        LinkVertise.MouseButton1Click:Connect(function()
            task.wait(0.1)
			setclipboard("https://ads.luarmor.net/get_key?for=NatHubLinkvertise-pxiFMYwzWTnv")
            LinkVertiseLabel.Text = "Copied!"
            task.wait(1.5)
            LinkVertiseLabel.Text = "Linkvertise"
        end)

		WorkInk.MouseButton1Click:Connect(function()
            task.wait(0.1)
			setclipboard("https://ads.luarmor.net/get_key?for=NatHubWorkInk-KyOlVSadrwSA")
            WorkInkLabel.Text = "Copied!"
            task.wait(1.5)
            WorkInkLabel.Text = "Work.Ink"
        end)
        
        KeyInput:GetPropertyChangedSignal("Text"):Connect(function()
            script_key = KeyInput.Text
        end)
        
        CheckKey.MouseButton1Click:Connect(function()
			script_key = KeyInput.Text
            if script_key == "" then return end
            local interval = 0.3
			local duration = 2
			local totalLoop = math.floor(duration / interval)

			local animate = {
				"Checking Key .",
				"Checking Key . .",
				"Checking Key . . .",
				"Checking Key . .",
				"Checking Key ."
			}

			for i = 1, totalLoop do
				Desc.Text = animate[(i - 1) % #animate + 1]
				Desc.TextColor3 = Color3.new(1, 1, 0)
				task.wait(interval)
			end

			local status = check_key(script_key)

			if status then
				if not savedKey then
					game.StarterGui:SetCore("SendNotification",{
						Title = "Saved Key",
						Text = "Key saved!",
						Icon = "rbxassetid://99764942615873",
						Duration = 5
					})
					saveKey(script_key)
				end
				Desc.Text = "Key Valid!"
				Desc.TextColor3 = Color3.new(0, 1, 0)
				task.wait(0.5)
				Keysystem:TweenPosition(
					UDim2.new(0.5, -200, 0, -10000),
					Enum.EasingDirection.In,
					Enum.EasingStyle.Linear,
					2
				)
				task.wait(0.6)
				Keysystem.Visible = false
				Blur:Destroy()
			else
				Desc.Text = "Key Invalid!"
				Desc.TextColor3 = Color3.new(1, 0, 0)
				task.wait(0.5)
				Desc.Text = "Tired of keysytem? you can buy premium key in discord.gg/nathub"
				Desc.TextColor3 = Color3.fromRGB(150, 150, 150)
			end
        end)
	else
		check_key(script_key)
    end
	return self
end
