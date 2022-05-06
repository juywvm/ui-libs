offical docs: https://github.com/deeeity/mercury-lib/blob/master/README.md

Documentation
Get the Library

local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

Create the GUI

local GUI = Mercury:Create{
    Name = "Mercury",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://github.com/deeeity/mercury-lib"
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

Tabs

local Tab = GUI:Tab{
	Name = "New Tab",
	Icon = "rbxassetid://8569322835"
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

Buttons
Tab:Button{
	Name = "Button",
	Description = nil,
	Callback = function() end
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████


Toggles
Tab:Toggle{
	Name = "Toggle",
	StartingState = false,
	Description = nil,
	Callback = function(state) end
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████


Textboxes
Tab:Textbox{
	Name = "Textbox",
	Callback = function(text) end
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████



Dropdowns
local MyDropdown = Tab:Dropdown{
	Name = "Dropdown",
	StartingText = "Select...",
	Description = nil,
	Items = {
		{"Hello", 1}, 		-- {name, value}
		12,			-- or just value, which is also automatically taken as name
		{"Test", "bump the thread pls"}
	},
	Callback = function(item) return end
}

MyDropdown:AddItems({
	{"NewItem", 12},		-- {name, value}
	400				-- or just value, which is also automatically taken as name
})

MyDropdown:RemoveItems({
	"NewItem", "Hello"		-- just the names to get removed (upper/lower case ignored)
})

MyDropdown:Clear()

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████



Sliders
Tab:Slider{
	Name = "Slider",
	Default = 50,
	Min = 0,
	Max = 100,
	Callback = function() end
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

Keybinds
Tab:Keybind{
	Name = "Keybind",
	Keybind = nil,
	Description = nil
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████


Prompt

GUI:Prompt{
	Followup = false,
	Title = "Prompt",
	Text = "Prompts are cool",
	Buttons = {
		ok = function()
			return true
		end
		no = function()
			return false
		end
	}
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

Notification



GUI:Notification{
	Title = "Alert",
	Text = "You shall bump the thread on V3rmillion!",
	Duration = 3,
	Callback = function() end
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████


Color Picker
Tab:ColorPicker{
	Style = Mercury.ColorPickerStyles.Legacy,
	Callback = function(color) end
}

██████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████████

Credit


GUI:Credit{
	Name = "Creditor's name",
	Description = "Helped with the script",
	V3rm = "link/name",
	Discord = "helo#1234"
}
