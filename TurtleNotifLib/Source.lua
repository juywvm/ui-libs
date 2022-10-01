
function Parent(GUI)
    if syn and syn.protect_gui then
        syn.protect_gui(GUI)
        GUI.Parent = game:GetService("CoreGui")
    else
        GUI.Parent = game:GetService("CoreGui")
    end
end

function CreateGuis()
    -- Gui to lua stuff thingy stuff thing

    local TurtleNotifications = Instance.new("ScreenGui")
    local Notification = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Data = Instance.new("TextLabel")
    local Continue = Instance.new("TextButton")
    local Cancel = Instance.new("TextButton")
    local Ok = Instance.new("TextButton")
    local Popup = Instance.new("Frame")
    local PopupScroll = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local PopupButtonTemplate = Instance.new("TextButton")

    --Properties:

    TurtleNotifications.Name = "TurtleNotifications"
    TurtleNotifications.ZIndexBehavior = Enum.ZIndexBehavior.Global

    Notification.Name = "Notification"
    Notification.Parent = TurtleNotifications
    Notification.BackgroundColor3 = Color3.fromRGB(28, 41, 49)
    Notification.BorderSizePixel = 0
    Notification.Position = UDim2.new(0.751914263, 0, 0.782919824, 0)
    Notification.Size = UDim2.new(0, 290, 0, 104)
    Notification.Visible = false
    Notification.ZIndex = 10000

    Title.Name = "Title"
    Title.Parent = Notification
    Title.BackgroundColor3 = Color3.fromRGB(0, 151, 230)
    Title.BorderSizePixel = 0
    Title.Size = UDim2.new(0, 290, 0, 33)
    Title.Font = Enum.Font.Gotham
    Title.Text = "Title"
    Title.TextColor3 = Color3.fromRGB(0, 0, 0)
    Title.TextSize = 14.000

    Data.Name = "Data"
    Data.Parent = Notification
    Data.BackgroundColor3 = Color3.fromRGB(28, 41, 49)
    Data.BorderSizePixel = 0
    Data.Position = UDim2.new(0.068965517, 0, 0.317307681, 0)
    Data.Size = UDim2.new(0, 251, 0, 42)
    Data.Font = Enum.Font.Gotham
    Data.Text = "Example Data Here, Lorem ipsum dolor sit amet."
    Data.TextColor3 = Color3.fromRGB(255, 255, 255)
    Data.TextSize = 12.000
    Data.TextWrapped = true

    Continue.Name = "Continue"
    Continue.Parent = Notification
    Continue.BackgroundColor3 = Color3.fromRGB(251, 140, 0)
    Continue.BorderSizePixel = 0
    Continue.Position = UDim2.new(0.103448279, 0, 0.71153903, 0)
    Continue.Size = UDim2.new(0, 96, 0, 20)
    Continue.Font = Enum.Font.Gotham
    Continue.Text = "CONTINUE"
    Continue.TextColor3 = Color3.fromRGB(0, 0, 0)
    Continue.TextSize = 14.000

    Cancel.Name = "Cancel"
    Cancel.Parent = Notification
    Cancel.BackgroundColor3 = Color3.fromRGB(251, 140, 0)
    Cancel.BorderSizePixel = 0
    Cancel.Position = UDim2.new(0.565517247, 0, 0.71153903, 0)
    Cancel.Size = UDim2.new(0, 96, 0, 20)
    Cancel.Font = Enum.Font.Gotham
    Cancel.Text = "CANCEL"
    Cancel.TextColor3 = Color3.fromRGB(0, 0, 0)
    Cancel.TextSize = 14.000

    Ok.Name = "Ok"
    Ok.Parent = Notification
    Ok.BackgroundColor3 = Color3.fromRGB(251, 140, 0)
    Ok.BorderSizePixel = 0
    Ok.Position = UDim2.new(0.334482759, 0, 0.71153903, 0)
    Ok.Size = UDim2.new(0, 96, 0, 20)
    Ok.Visible = false
    Ok.Font = Enum.Font.Gotham
    Ok.Text = "OK"
    Ok.TextColor3 = Color3.fromRGB(0, 0, 0)
    Ok.TextSize = 14.000

    Popup.Name = "Popup"
    Popup.Parent = TurtleNotifications
    Popup.BackgroundColor3 = Color3.fromRGB(28, 41, 49)
    Popup.Position = UDim2.new(0.910413504, 0, 0.582019806, 0)
    Popup.Size = UDim2.new(0, 83, 0, 92)
    Popup.Visible = false
    Popup.ZIndex = 10000

    PopupScroll.Name = "PopupScroll"
    PopupScroll.Parent = Popup
    PopupScroll.BackgroundColor3 = Color3.fromRGB(28, 41, 49)
    PopupScroll.BorderSizePixel = 0
    PopupScroll.Position = UDim2.new(0, 0, 0.0345989726, 0)
    PopupScroll.Selectable = false
    PopupScroll.Size = UDim2.new(0, 82, 0, 85)
    PopupScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    PopupScroll.ScrollBarThickness = 4
    PopupScroll.ScrollBarImageTransparency = 0.13
    PopupScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    PopupScroll.ZIndex = 10000

    UIListLayout.Parent = PopupScroll
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
    UIListLayout.Padding = UDim.new(0, 2)

    PopupButtonTemplate.Name = "PopupButtonTemplate"
    PopupButtonTemplate.Parent = PopupScroll
    PopupButtonTemplate.BackgroundColor3 = Color3.fromRGB(251, 140, 0)
    PopupButtonTemplate.BorderSizePixel = 0
    PopupButtonTemplate.Position = UDim2.new(0, 0, 0.357142866, 0)
    PopupButtonTemplate.Size = UDim2.new(0, 70, 0, 25)
    PopupButtonTemplate.Visible = false
    PopupButtonTemplate.Font = Enum.Font.Gotham
    PopupButtonTemplate.TextColor3 = Color3.fromRGB(0, 0, 0)
    PopupButtonTemplate.TextSize = 14.000
    PopupButtonTemplate.TextWrapped = true
    PopupButtonTemplate.ZIndex = 10000

    Parent(TurtleNotifications)
    return TurtleNotifications
end

local TurtleNotifications = {}
TurtleNotifications.__index = TurtleNotifications

function TurtleNotifications.new(DeleteOld, DelayBetweenNotifications)
    -- Wont load if already loaded.

    if _G.TurtleNotificationsLoaded and not DeleteOld then return _G.TurtleNotificationsInstance end

    if DeleteOld and _G.TurtleNotificationsLoaded then
        game:GetService("CoreGui").TurtleNotifications:Destroy()
    end

    local nt = setmetatable({}, TurtleNotifications)

    nt.DelayBetweenNotifications = DelayBetweenNotifications
    nt.Notifications = {}
    nt:Init()

    _G.TurtleNotificationsLoaded = true
    _G.TurtleNotificationsInstance = nt

    return nt
end

function TurtleNotifications:Init()
    self.Gui = CreateGuis()
    self.Notification = self.Gui.Notification
    self.PopupFrame = self.Gui.Popup

    self:StartNotificationLoop()

    game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
        if input.KeyCode == Enum.KeyCode.LeftAlt then
            if self.PopupFrame.Visible then
                self.PopupFrame.Visible = false
            end
        end
    end)
end

function TurtleNotifications:SetNotificationDelay(delay)
    self.DelayBetweenNotifications = delay
end

-- The _ Is intentional. This should not be accessed by a normal script unless its a plugin of sorts
function TurtleNotifications:_Notification(data)
    self.Notification.Position = data.Positions.Start
    self.Notification.Title.Text = data.TitleText
    self.Notification.Data.Text = data.Description

    self.Notification.Visible = true

    local Done = false

    function DoEndTween()
        self.Notification:TweenPosition(
            data.Positions.Start,
            "In",
            "Quad",
            0.5,
            true
        )
        wait(0.5)
        self.Notification.Visible = false
    end

    function DoStartTween()
        self.Notification:TweenPosition(
            data.Positions.End,
            "Out",
            "Quad",
            0.4,
            true
        )
        wait(0.4)
    end

    if data.Type == "Ok" then
        self.Notification.Continue.Visible = false
        self.Notification.Cancel.Visible = false

        self.Notification.Ok.Visible = true
        local connection; connection = self.Notification.Ok.MouseButton1Click:Connect(function()
            data.Callbacks.Ok()

            DoEndTween()

            connection:Disconnect()

            Done = true
        end)

        spawn(function()
            if data.WaitTime ~= 0 then
                wait(data.WaitTime)
                if not Done then
                    connection:Disconnect()

                    DoEndTween()

                    Done = true
                end
            end
        end)
    end

    if data.Type == "Cancel-Continue" then
        self.Notification.Ok.Visible = false

        self.Notification.Continue.Visible = true
        self.Notification.Cancel.Visible = true

        
        local connection1; connection1 = self.Notification.Cancel.MouseButton1Click:Connect(function()
            data.Callbacks.Cancel()

            DoEndTween()

            connection1:Disconnect()

            Done = true
        end)

        local connection2; connection2 = self.Notification.Continue.MouseButton1Click:Connect(function()
            data.Callbacks.Continue()

            DoEndTween()

            connection2:Disconnect()

            Done = true
        end)

        spawn(function()
            if data.WaitTime ~= 0 then
                wait(data.WaitTime)
                if not Done then
                    connection2:Disconnect()
                    connection1:Disconnect()

                    DoEndTween()

                    Done = true
                end
            end
        end)
    end

    DoStartTween()

    repeat
        wait()
    until Done
end

function TurtleNotifications:StartNotificationLoop()
    spawn(function()
        while wait() do
            if #self.Notifications > 0 then
                self:_Notification(self.Notifications[1])
                table.remove(self.Notifications, 1)
                wait(self.DelayBetweenNotifications)
            end
        end
    end)
end

-- Data Example

--local dataex = {
--  WaitTime = int, (if zero will be ignored)
--  TitleText = string,
--  Description = string,
--  Type = "Continue-Cancel" or "Ok",
--  Callbacks = {
--      Continue = function()
--      Cancel = function()
--  } or {
--      Ok = function()
--  },
--  ?Positions = {
--      Start = UDim.new(0.75, 0, 1.1, 0),
--      End = UDim2.new(0.75, 0, 0.78, 0)
--  },
--}

-- if waittime is 0 then it will be ignored
function TurtleNotifications:QueueNotification(WaitTime, TitleText, Description, Type, Callbacks, ...)
    local optional = {...}

    local Positions = {
        Start = UDim2.new(0.75, 0, 1.1, 0),
        End = UDim2.new(0.75, 0, 0.78, 0)
    }

    table.insert(self.Notifications, {
        WaitTime = WaitTime,
        TitleText = TitleText,
        Description = Description,
        Type = Type,
        Callbacks = Callbacks,
        Positions = optional[1] or Positions,
    })
end

--Buttons = {{
--  Text = "Btn Text",
--  Callback = function(),
--}}

function TurtleNotifications:Popup(Position, Buttons)
    local frame = self.PopupFrame.PopupScroll

    for _,button in ipairs(frame:GetChildren()) do
        if button.Name ~= "PopupButtonTemplate" and button.Name ~= "UIListLayout" then
            button:Destroy()
        end
    end

    local buttons = {}

    self.PopupFrame.Position = Position

    for i,v in ipairs(Buttons) do
        local new = frame.PopupButtonTemplate:Clone()
        new.Name = v.Text
        new.Text = v.Text
        new.Parent = frame
        new.Visible = true

        table.insert(buttons, new)

        new.MouseButton1Click:Connect(function()
            v.Callback()

            self.PopupFrame.Visible = false

            for _,button in ipairs(buttons) do
                button:Destroy()
            end
        end)
    end

    self.PopupFrame.Visible = true
end

function TurtleNotifications:PopupAtMouse(Buttons)
    local m = game.Players.LocalPlayer:GetMouse()
    self:Popup(UDim2.new(0,m.X, 0, m.Y), Buttons)
end

return TurtleNotifications
