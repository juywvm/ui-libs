local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/juywvm/ui-libs/main/Elerium_UI_Library_V2_%5BIMGUI%5D/Eleriumv2_Ui_Library"))()

local Window = library:AddWindow("Preview", {
		main_color = Color3.fromRGB(41, 74, 122),
		min_size = Vector2.new(500, 600),
		toggle_key = Enum.KeyCode.RightShift,
		can_resize = true,
	})
	local Tab = Window:AddTab("Tab 1")

	do -- Elements
		Tab:AddLabel("Hello World!")

		Tab:AddButton("Button", function()
			print("Button clicked.")
		end)

		Tab:AddTextBox("TextBox", function(text)
			print(text)
		end, {
			["clear"] = false, -- Default: true (options are optional)
		})

		local Switch = Tab:AddSwitch("Switch", function(bool)
			print(bool)
		end)
		Switch:Set(true)

		local Slider = Tab:AddSlider("Slider", function(x)
			print(x)
		end, { -- (options are optional)
			["min"] = 0, -- Default: 0
			["max"] = 100, -- Default: 100
			["readonly"] = false, -- Default: false
		})
		Slider:Set(50)

		Tab:AddKeybind("Keybind", function(key)
			print(key)
		end, { -- (options are optional)
			["standard"] = Enum.KeyCode.RightShift -- Default: RightShift
		})

		local Dropdown = Tab:AddDropdown("Dropdown", function(object)
			print(object)
		end)
		for i = 1, 9 do
			Dropdown:Add(tostring(i))
		end
		local obj = Dropdown:Add("10")
		obj:Remove()

		local CP = Tab:AddColorPicker(function(color)
			print(color)
		end)
		CP:Set(Color3.new(1, 0, 0))

		local Console = Tab:AddConsole({
			["y"] = 100,
			["source"] = "Lua",
		})
		Console:Set("-- Gamer time!\nfor i = 1, 9 do \n    print(i)\nend")
		print(Console:Get())

		local HA = Tab:AddHorizontalAlignment()
		HA:AddButton("Execute", function()
			loadstring(Console:Get())()
		end)
		HA:AddButton("Clear", function()
			Console:Set("")
		end)

		local Folder = Tab:AddFolder("Folder") -- This can contain exactly the same as a Tab. You can have as many folders as you'd like to.
		Folder:AddLabel("Hello")
		local Folder2 = Folder:AddFolder("?")
		Folder2:AddLabel("Woo!")

	end

	Tab:Show()
	library:FormatWindows()
