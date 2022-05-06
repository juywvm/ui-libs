--original loadstring: https://raw.githubusercontent.com/Jxereas/UI-Libraries/main/notification_gui_library.lua
--made by Jxereas




local Notification = {}
Notification.__index = Notification

local ts = game:GetService("TweenService")
local ss = game:GetService("SoundService")
local txtS = game:GetService("TextService")

local openSound = Instance.new("Sound")
local closeSound = Instance.new("Sound")

local notifications = Instance.new("ScreenGui")
local notifsHolderFrame = Instance.new("Frame")
local notifHolderListLayout = Instance.new("UIListLayout")
local errorTemplate = Instance.new("Frame")
local errorTemplateFrame = Instance.new("Frame")
local errorTemplateCorner = Instance.new("UICorner")
local errorSeverityFrame = Instance.new("Frame")
local errorSeverityCorner = Instance.new("UICorner")
local hideErrorSeverityCornerFrame = Instance.new("Frame")
local errorImage = Instance.new("ImageLabel")
local errorInformationFrame = Instance.new("Frame")
local errorHeadingText = Instance.new("TextLabel")
local errorBodyText = Instance.new("TextLabel")
local errorCornerHidingFrame = Instance.new("Frame")
local errorCloseButton = Instance.new("ImageButton")
local infoTemplate = Instance.new("Frame")
local infoTemplateFrame = Instance.new("Frame")
local infoSeverityFrame = Instance.new("Frame")
local infoSeverityCorner = Instance.new("UICorner")
local hideInfoSeverityCornerFrame = Instance.new("Frame")
local infoImage = Instance.new("ImageLabel")
local infoInformationFrame = Instance.new("Frame")
local infoHeadingText = Instance.new("TextLabel")
local infoBodyText = Instance.new("TextLabel")
local infoCornerHidingFrame = Instance.new("Frame")
local infoCloseButton = Instance.new("ImageButton")
local infoTemplateCorner = Instance.new("UICorner")
local messageTemplate = Instance.new("Frame")
local messageTemplateFrame = Instance.new("Frame")
local messageTemplateCorner = Instance.new("UICorner")
local messageSeverityFrame = Instance.new("Frame")
local messageSeverityCorner = Instance.new("UICorner")
local hideMessageSeverityCornerFrame = Instance.new("Frame")
local messageInformationFrame = Instance.new("Frame")
local messageHeadingText = Instance.new("TextLabel")
local messageBodyText = Instance.new("TextLabel")
local messageCornerHidingFrame = Instance.new("Frame")
local messageCloseButton = Instance.new("ImageButton")
local successTemplate = Instance.new("Frame")
local successTemplateFrame = Instance.new("Frame")
local successTemplateCorner = Instance.new("UICorner")
local successSeverityFrame = Instance.new("Frame")
local successSeverityCorner = Instance.new("UICorner")
local hideSuccessSeverityCornerFrame = Instance.new("Frame")
local successImage = Instance.new("ImageLabel")
local successInformationFrame = Instance.new("Frame")
local successHeadingText = Instance.new("TextLabel")
local successBodyText = Instance.new("TextLabel")
local successCornerHidingFrame = Instance.new("Frame")
local successCloseButton = Instance.new("ImageButton")
local warningTemplate = Instance.new("Frame")
local warningTemplateFrame = Instance.new("Frame")
local warningTemplateCorner = Instance.new("UICorner")
local warningSeverityFrame = Instance.new("Frame")
local warningSeverityCorner = Instance.new("UICorner")
local hideWarningSeverityCornerFrame = Instance.new("Frame")
local warningImage = Instance.new("ImageLabel")
local warningInformationFrame = Instance.new("Frame")
local warningHeadingText = Instance.new("TextLabel")
local warningBodyText = Instance.new("TextLabel")
local warningCornerHidingFrame = Instance.new("Frame")
local warningCloseButton = Instance.new("ImageButton")

local previousUiExists = game:GetService("CoreGui"):FindFirstChild("notifications")
if previousUiExists then previousUiExists:Destroy() end

openSound.Name = "OpenNotifSound"
openSound.Volume = 1
openSound.SoundId = "rbxassetid://9128519965"
openSound.Parent = ss

closeSound.Name = "CloseNotifSound"
closeSound.Volume = 1
closeSound.SoundId = "rbxassetid://9128519965"
closeSound.Parent = ss

notifications.Name = "notifications"
notifications.Parent = game:GetService("CoreGui")
notifications.ZIndexBehavior = Enum.ZIndexBehavior.Global
notifications.ResetOnSpawn = false

notifsHolderFrame.Name = "notifsHolderFrame"
notifsHolderFrame.Parent = notifications
notifsHolderFrame.AnchorPoint = Vector2.new(1, 1)
notifsHolderFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
notifsHolderFrame.BackgroundTransparency = 1
notifsHolderFrame.BorderSizePixel = 0
notifsHolderFrame.ClipsDescendants = true
notifsHolderFrame.Position = UDim2.new(1, 0, 1, -10)
notifsHolderFrame.Size = UDim2.fromScale(0.25, 0.3)

notifHolderListLayout.Name = "notifHolderListLayout"
notifHolderListLayout.Parent = notifsHolderFrame
notifHolderListLayout.SortOrder = Enum.SortOrder.LayoutOrder
notifHolderListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
notifHolderListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
notifHolderListLayout.Padding = UDim.new(0, 4)

errorTemplate.Name = "error"
errorTemplate.AnchorPoint = Vector2.new(1, 1)
errorTemplate.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
errorTemplate.BorderSizePixel = 0
errorTemplate.BackgroundTransparency = 1
errorTemplate.Position = UDim2.new(1, 0, 1, -100)
errorTemplate.Size = UDim2.new(1, 0, 0, 40)

errorTemplateFrame.Name = "templateFrame"
errorTemplateFrame.Parent = errorTemplate
errorTemplateFrame.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
errorTemplateFrame.BorderSizePixel = 0
errorTemplateFrame.Size = UDim2.new(1, 0, 1, 0)

errorTemplateCorner.Name = "templateCorner"
errorTemplateCorner.Parent = errorTemplateFrame

errorSeverityFrame.Name = "severityFrame"
errorSeverityFrame.Parent = errorTemplateFrame
errorSeverityFrame.BackgroundColor3 = Color3.fromRGB(236, 88, 76)
errorSeverityFrame.Size = UDim2.new(0, 10, 1, 0)

errorSeverityCorner.Name = "severityCorner"
errorSeverityCorner.Parent = errorSeverityFrame

hideErrorSeverityCornerFrame.Name = "hideSeverityCornerFrame"
hideErrorSeverityCornerFrame.Parent = errorSeverityFrame
hideErrorSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
hideErrorSeverityCornerFrame.BorderSizePixel = 0
hideErrorSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
hideErrorSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)

errorImage.Name = "image"
errorImage.Parent = errorTemplateFrame
errorImage.AnchorPoint = Vector2.new(0, 0.5)
errorImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
errorImage.BackgroundTransparency = 1
errorImage.BorderSizePixel = 0
errorImage.Position = UDim2.new(0, 15, 0.5, 0)
errorImage.Size = UDim2.new(0, 20, 0, 20)
errorImage.Image = "rbxassetid://9072920609"
errorImage.ImageColor3 = Color3.fromRGB(236, 88, 76)

errorInformationFrame.Name = "informationFrame"
errorInformationFrame.Parent = errorTemplateFrame
errorInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
errorInformationFrame.BackgroundTransparency = 1
errorInformationFrame.BorderSizePixel = 0
errorInformationFrame.Position = UDim2.new(0, 45, 0, 0)
errorInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)

errorHeadingText.Name = "headingText"
errorHeadingText.Parent = errorInformationFrame
errorHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
errorHeadingText.BackgroundTransparency = 1
errorHeadingText.BorderSizePixel = 0
errorHeadingText.ClipsDescendants = true
errorHeadingText.Size = UDim2.new(1, 0, 0, 20)
errorHeadingText.Font = Enum.Font.GothamBold
errorHeadingText.Text = "Error"
errorHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
errorHeadingText.TextSize = 14
errorHeadingText.TextXAlignment = Enum.TextXAlignment.Left

errorBodyText.Name = "bodyText"
errorBodyText.Parent = errorInformationFrame
errorBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
errorBodyText.BackgroundTransparency = 1
errorBodyText.BorderSizePixel = 0
errorBodyText.ClipsDescendants = true
errorBodyText.Position = UDim2.new(0, 0, 0, 20)
errorBodyText.Size = UDim2.new(1, 0, 1, -20)
errorBodyText.Font = Enum.Font.GothamSemibold
errorBodyText.Text = "Error message"
errorBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
errorBodyText.TextSize = 14
errorBodyText.TextWrapped = true
errorBodyText.TextXAlignment = Enum.TextXAlignment.Left

errorCornerHidingFrame.Name = "cornerHidingFrame"
errorCornerHidingFrame.Parent = errorTemplateFrame
errorCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
errorCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(255, 207, 203)
errorCornerHidingFrame.BorderSizePixel = 0
errorCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
errorCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
errorCornerHidingFrame.ZIndex = 0

errorCloseButton.Name = "closeButton"
errorCloseButton.Parent = errorTemplateFrame
errorCloseButton.AnchorPoint = Vector2.new(1, 0.5)
errorCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
errorCloseButton.BackgroundTransparency = 1
errorCloseButton.BorderSizePixel = 0
errorCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
errorCloseButton.Size = UDim2.new(0, 15, 0, 15)
errorCloseButton.Image = "rbxassetid://9127564477"
errorCloseButton.ImageColor3 = Color3.fromRGB(236, 88, 76)

infoTemplate.Name = "info"
infoTemplate.AnchorPoint = Vector2.new(1, 1)
infoTemplate.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
infoTemplate.BorderSizePixel = 0
infoTemplate.BackgroundTransparency = 1
infoTemplate.Position = UDim2.new(1, 0, 1, -100)
infoTemplate.Size = UDim2.new(1, 0, 0, 40)

infoTemplateFrame.Name = "templateFrame"
infoTemplateFrame.Parent = infoTemplate
infoTemplateFrame.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
infoTemplateFrame.BorderSizePixel = 0
infoTemplateFrame.Size = UDim2.new(1, 0, 1, 0)

infoSeverityFrame.Name = "severityFrame"
infoSeverityFrame.Parent = infoTemplateFrame
infoSeverityFrame.BackgroundColor3 = Color3.fromRGB(50, 131, 226)
infoSeverityFrame.Size = UDim2.new(0, 10, 1, 0)

infoSeverityCorner.Name = "severityCorner"
infoSeverityCorner.Parent = infoSeverityFrame

hideInfoSeverityCornerFrame.Name = "hideSeverityCornerFrame"
hideInfoSeverityCornerFrame.Parent = infoSeverityFrame
hideInfoSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
hideInfoSeverityCornerFrame.BorderSizePixel = 0
hideInfoSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
hideInfoSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)

infoImage.Name = "image"
infoImage.Parent = infoTemplateFrame
infoImage.AnchorPoint = Vector2.new(0, 0.5)
infoImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoImage.BackgroundTransparency = 1
infoImage.BorderSizePixel = 0
infoImage.Position = UDim2.new(0, 15, 0.5, 0)
infoImage.Size = UDim2.new(0, 20, 0, 20)
infoImage.Image = "rbxassetid://9072944922"
infoImage.ImageColor3 = Color3.fromRGB(50, 131, 226)

infoInformationFrame.Name = "informationFrame"
infoInformationFrame.Parent = infoTemplateFrame
infoInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoInformationFrame.BackgroundTransparency = 1
infoInformationFrame.BorderSizePixel = 0
infoInformationFrame.Position = UDim2.new(0, 45, 0, 0)
infoInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)

infoHeadingText.Name = "headingText"
infoHeadingText.Parent = infoInformationFrame
infoHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoHeadingText.BackgroundTransparency = 1
infoHeadingText.BorderSizePixel = 0
infoHeadingText.ClipsDescendants = true
infoHeadingText.Size = UDim2.new(1, 0, 0, 20)
infoHeadingText.Font = Enum.Font.GothamBold
infoHeadingText.Text = "Information"
infoHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
infoHeadingText.TextSize = 14
infoHeadingText.TextXAlignment = Enum.TextXAlignment.Left

infoBodyText.Name = "bodyText"
infoBodyText.Parent = infoInformationFrame
infoBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoBodyText.BackgroundTransparency = 1
infoBodyText.BorderSizePixel = 0
infoBodyText.ClipsDescendants = true
infoBodyText.Position = UDim2.new(0, 0, 0, 20)
infoBodyText.Size = UDim2.new(1, 0, 1, -20)
infoBodyText.Font = Enum.Font.GothamSemibold
infoBodyText.Text = "Information message"
infoBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
infoBodyText.TextSize = 14
infoBodyText.TextWrapped = true
infoBodyText.TextXAlignment = Enum.TextXAlignment.Left

infoCornerHidingFrame.Name = "cornerHidingFrame"
infoCornerHidingFrame.Parent = infoTemplateFrame
infoCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
infoCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(204, 226, 254)
infoCornerHidingFrame.BorderSizePixel = 0
infoCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
infoCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
infoCornerHidingFrame.ZIndex = 0

infoCloseButton.Name = "closeButton"
infoCloseButton.Parent = infoTemplateFrame
infoCloseButton.AnchorPoint = Vector2.new(1, 0.5)
infoCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
infoCloseButton.BackgroundTransparency = 1
infoCloseButton.BorderSizePixel = 0
infoCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
infoCloseButton.Size = UDim2.new(0, 15, 0, 15)
infoCloseButton.Image = "rbxassetid://9127564477"
infoCloseButton.ImageColor3 = Color3.fromRGB(50, 131, 226)

infoTemplateCorner.Name = "templateCorner"
infoTemplateCorner.Parent = infoTemplateFrame

messageTemplate.Name = "message"
messageTemplate.AnchorPoint = Vector2.new(1, 1)
messageTemplate.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
messageTemplate.BorderSizePixel = 0
messageTemplate.BackgroundTransparency = 1
messageTemplate.Position = UDim2.new(1, 0, 1, -100)
messageTemplate.Size = UDim2.new(1, 0, 0, 40)

messageTemplateFrame.Name = "templateFrame"
messageTemplateFrame.Parent = messageTemplate
messageTemplateFrame.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
messageTemplateFrame.BorderSizePixel = 0
messageTemplateFrame.Size = UDim2.new(1, 0, 1, 0)

messageTemplateCorner.Name = "templateCorner"
messageTemplateCorner.Parent = messageTemplateFrame

messageSeverityFrame.Name = "severityFrame"
messageSeverityFrame.Parent = messageTemplateFrame
messageSeverityFrame.BackgroundColor3 = Color3.fromRGB(112, 118, 130)
messageSeverityFrame.Size = UDim2.new(0, 10, 1, 0)

messageSeverityCorner.Name = "severityCorner"
messageSeverityCorner.Parent = messageSeverityFrame

hideMessageSeverityCornerFrame.Name = "hideSeverityCornerFrame"
hideMessageSeverityCornerFrame.Parent = messageSeverityFrame
hideMessageSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
hideMessageSeverityCornerFrame.BorderSizePixel = 0
hideMessageSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
hideMessageSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)

messageInformationFrame.Name = "informationFrame"
messageInformationFrame.Parent = messageTemplateFrame
messageInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
messageInformationFrame.BackgroundTransparency = 1
messageInformationFrame.BorderSizePixel = 0
messageInformationFrame.Position = UDim2.new(0, 15, 0, 0)
messageInformationFrame.Size = UDim2.new(1, -40, 1, 0)

messageHeadingText.Name = "headingText"
messageHeadingText.Parent = messageInformationFrame
messageHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
messageHeadingText.BackgroundTransparency = 1
messageHeadingText.BorderSizePixel = 0
messageHeadingText.ClipsDescendants = true
messageHeadingText.Size = UDim2.new(1, 0, 0, 20)
messageHeadingText.Font = Enum.Font.GothamBold
messageHeadingText.Text = "Custom message"
messageHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
messageHeadingText.TextSize = 14
messageHeadingText.TextXAlignment = Enum.TextXAlignment.Left

messageBodyText.Name = "bodyText"
messageBodyText.Parent = messageInformationFrame
messageBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
messageBodyText.BackgroundTransparency = 1
messageBodyText.BorderSizePixel = 0
messageBodyText.ClipsDescendants = true
messageBodyText.Position = UDim2.new(0, 0, 0, 20)
messageBodyText.Size = UDim2.new(1, 0, 1, -20)
messageBodyText.Font = Enum.Font.GothamSemibold
messageBodyText.Text = "Custom message"
messageBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
messageBodyText.TextSize = 14
messageBodyText.TextWrapped = true
messageBodyText.TextXAlignment = Enum.TextXAlignment.Left

messageCornerHidingFrame.Name = "cornerHidingFrame"
messageCornerHidingFrame.Parent = messageTemplateFrame
messageCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
messageCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(233, 233, 235)
messageCornerHidingFrame.BorderSizePixel = 0
messageCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
messageCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
messageCornerHidingFrame.ZIndex = 0

messageCloseButton.Name = "closeButton"
messageCloseButton.Parent = messageTemplateFrame
messageCloseButton.AnchorPoint = Vector2.new(1, 0.5)
messageCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
messageCloseButton.BackgroundTransparency = 1
messageCloseButton.BorderSizePixel = 0
messageCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
messageCloseButton.Size = UDim2.new(0, 15, 0, 15)
messageCloseButton.Image = "rbxassetid://9127564477"
messageCloseButton.ImageColor3 = Color3.fromRGB(112, 118, 130)

successTemplate.Name = "success"
successTemplate.AnchorPoint = Vector2.new(1, 1)
successTemplate.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
successTemplate.BorderSizePixel = 0
successTemplate.BackgroundTransparency = 1
successTemplate.Position = UDim2.new(1, 0, 1, -100)
successTemplate.Size = UDim2.new(1, 0, 0, 40)

successTemplateFrame.Name = "templateFrame"
successTemplateFrame.Parent = successTemplate
successTemplateFrame.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
successTemplateFrame.BorderSizePixel = 0
successTemplateFrame.Size = UDim2.new(1, 0, 1, 0)

successTemplateCorner.Name = "templateCorner"
successTemplateCorner.Parent = successTemplateFrame

successSeverityFrame.Name = "severityFrame"
successSeverityFrame.Parent = successTemplateFrame
successSeverityFrame.BackgroundColor3 = Color3.fromRGB(50, 195, 125)
successSeverityFrame.Size = UDim2.new(0, 10, 1, 0)

successSeverityCorner.Name = "severityCorner"
successSeverityCorner.Parent = successSeverityFrame

hideSuccessSeverityCornerFrame.Name = "hideSeverityCornerFrame"
hideSuccessSeverityCornerFrame.Parent = successSeverityFrame
hideSuccessSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
hideSuccessSeverityCornerFrame.BorderSizePixel = 0
hideSuccessSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
hideSuccessSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)

successImage.Name = "image"
successImage.Parent = successTemplateFrame
successImage.AnchorPoint = Vector2.new(0, 0.5)
successImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
successImage.BackgroundTransparency = 1
successImage.BorderSizePixel = 0
successImage.Position = UDim2.new(0, 15, 0.5, 0)
successImage.Size = UDim2.new(0, 20, 0, 20)
successImage.Image = "rbxassetid://9073052584"
successImage.ImageColor3 = Color3.fromRGB(50, 195, 125)

successInformationFrame.Name = "informationFrame"
successInformationFrame.Parent = successTemplateFrame
successInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
successInformationFrame.BackgroundTransparency = 1
successInformationFrame.BorderSizePixel = 0
successInformationFrame.Position = UDim2.new(0, 45, 0, 0)
successInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)

successHeadingText.Name = "headingText"
successHeadingText.Parent = successInformationFrame
successHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
successHeadingText.BackgroundTransparency = 1
successHeadingText.BorderSizePixel = 0
successHeadingText.ClipsDescendants = true
successHeadingText.Size = UDim2.new(1, 0, 0, 20)
successHeadingText.Font = Enum.Font.GothamBold
successHeadingText.Text = "Success"
successHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
successHeadingText.TextSize = 14
successHeadingText.TextXAlignment = Enum.TextXAlignment.Left

successBodyText.Name = "bodyText"
successBodyText.Parent = successInformationFrame
successBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
successBodyText.BackgroundTransparency = 1
successBodyText.BorderSizePixel = 0
successBodyText.ClipsDescendants = true
successBodyText.Position = UDim2.new(0, 0, 0, 20)
successBodyText.Size = UDim2.new(1, 0, 1, -20)
successBodyText.Font = Enum.Font.GothamSemibold
successBodyText.Text = "Success message"
successBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
successBodyText.TextSize = 14
successBodyText.TextWrapped = true
successBodyText.TextXAlignment = Enum.TextXAlignment.Left

successCornerHidingFrame.Name = "cornerHidingFrame"
successCornerHidingFrame.Parent = successTemplateFrame
successCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
successCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(196, 247, 221)
successCornerHidingFrame.BorderSizePixel = 0
successCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
successCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
successCornerHidingFrame.ZIndex = 0

successCloseButton.Name = "closeButton"
successCloseButton.Parent = successTemplateFrame
successCloseButton.AnchorPoint = Vector2.new(1, 0.5)
successCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
successCloseButton.BackgroundTransparency = 1
successCloseButton.BorderSizePixel = 0
successCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
successCloseButton.Size = UDim2.new(0, 15, 0, 15)
successCloseButton.Image = "rbxassetid://9127564477"
successCloseButton.ImageColor3 = Color3.fromRGB(50, 195, 125)

warningTemplate.Name = "warning"
warningTemplate.AnchorPoint = Vector2.new(1, 1)
warningTemplate.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
warningTemplate.BorderSizePixel = 0
warningTemplate.BackgroundTransparency = 1
warningTemplate.Position = UDim2.new(1, 0, 1, -100)
warningTemplate.Size = UDim2.new(1, 0, 0, 40)

warningTemplateFrame.Name = "templateFrame"
warningTemplateFrame.Parent = warningTemplate
warningTemplateFrame.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
warningTemplateFrame.BorderSizePixel = 0
warningTemplateFrame.Size = UDim2.new(1, 0, 1, 0)

warningTemplateCorner.Name = "templateCorner"
warningTemplateCorner.Parent = warningTemplateFrame

warningSeverityFrame.Name = "severityFrame"
warningSeverityFrame.Parent = warningTemplateFrame
warningSeverityFrame.BackgroundColor3 = Color3.fromRGB(234, 159, 53)
warningSeverityFrame.Size = UDim2.new(0, 10, 1, 0)

warningSeverityCorner.Name = "severityCorner"
warningSeverityCorner.Parent = warningSeverityFrame

hideWarningSeverityCornerFrame.Name = "hideSeverityCornerFrame"
hideWarningSeverityCornerFrame.Parent = warningSeverityFrame
hideWarningSeverityCornerFrame.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
hideWarningSeverityCornerFrame.BorderSizePixel = 0
hideWarningSeverityCornerFrame.Position = UDim2.new(0.5, 0, 0, 0)
hideWarningSeverityCornerFrame.Size = UDim2.new(0.5, 0, 1, 0)

warningImage.Name = "image"
warningImage.Parent = warningTemplateFrame
warningImage.AnchorPoint = Vector2.new(0, 0.5)
warningImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
warningImage.BackgroundTransparency = 1
warningImage.BorderSizePixel = 0
warningImage.Position = UDim2.new(0, 15, 0.5, 0)
warningImage.Size = UDim2.new(0, 20, 0, 20)
warningImage.Image = "rbxassetid://9072448788"
warningImage.ImageColor3 = Color3.fromRGB(234, 159, 53)

warningInformationFrame.Name = "informationFrame"
warningInformationFrame.Parent = warningTemplateFrame
warningInformationFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
warningInformationFrame.BackgroundTransparency = 1
warningInformationFrame.BorderSizePixel = 0
warningInformationFrame.Position = UDim2.new(0, 45, 0, 0)
warningInformationFrame.Size = UDim2.new(1, -45 - 25, 1, 0)

warningHeadingText.Name = "headingText"
warningHeadingText.Parent = warningInformationFrame
warningHeadingText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
warningHeadingText.BackgroundTransparency = 1
warningHeadingText.BorderSizePixel = 0
warningHeadingText.ClipsDescendants = true
warningHeadingText.Size = UDim2.new(1, 0, 0, 20)
warningHeadingText.Font = Enum.Font.GothamBold
warningHeadingText.Text = "Warning"
warningHeadingText.TextColor3 = Color3.fromRGB(0, 0, 0)
warningHeadingText.TextSize = 14
warningHeadingText.TextXAlignment = Enum.TextXAlignment.Left

warningBodyText.Name = "bodyText"
warningBodyText.Parent = warningInformationFrame
warningBodyText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
warningBodyText.BackgroundTransparency = 1
warningBodyText.BorderSizePixel = 0
warningBodyText.ClipsDescendants = true
warningBodyText.Position = UDim2.new(0, 0, 0, 20)
warningBodyText.Size = UDim2.new(1, 0, 1, -20)
warningBodyText.Font = Enum.Font.GothamSemibold
warningBodyText.Text = "Warning message"
warningBodyText.TextColor3 = Color3.fromRGB(0, 0, 0)
warningBodyText.TextSize = 14
warningBodyText.TextWrapped = true
warningBodyText.TextXAlignment = Enum.TextXAlignment.Left

warningCornerHidingFrame.Name = "cornerHidingFrame"
warningCornerHidingFrame.Parent = warningTemplateFrame
warningCornerHidingFrame.AnchorPoint = Vector2.new(1, 0)
warningCornerHidingFrame.BackgroundColor3 = Color3.fromRGB(255, 232, 197)
warningCornerHidingFrame.BorderSizePixel = 0
warningCornerHidingFrame.Position = UDim2.new(1, 0, 0, 0)
warningCornerHidingFrame.Size = UDim2.new(.1, 0, 1, 0)
warningCornerHidingFrame.ZIndex = 0

warningCloseButton.Name = "closeButton"
warningCloseButton.Parent = warningTemplateFrame
warningCloseButton.AnchorPoint = Vector2.new(1, 0.5)
warningCloseButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
warningCloseButton.BackgroundTransparency = 1
warningCloseButton.BorderSizePixel = 0
warningCloseButton.Position = UDim2.new(1, -5, 0.5, 0)
warningCloseButton.Size = UDim2.new(0, 15, 0, 15)
warningCloseButton.Image = "rbxassetid://9127564477"
warningCloseButton.ImageColor3 = Color3.fromRGB(234, 159, 53)

local function scaleNotifHolderMaxNotifs(): nil
    local amountOfNotifsInFrame = math.floor(notifsHolderFrame.AbsoluteSize.Y/40)
    local notifsHolderFramePadding = amountOfNotifsInFrame * notifHolderListLayout.Padding.Offset
    notifsHolderFrame.Size = UDim2.new(.25,0,0,amountOfNotifsInFrame * 40 + notifsHolderFramePadding)
end

local function deleteNotifsOutsideFrame(): nil
    if notifHolderListLayout.AbsoluteContentSize.Y < notifsHolderFrame.AbsoluteSize.Y then return end
    for _, notif in pairs(notifsHolderFrame:GetChildren()) do
        if not notif:IsA("Frame") then continue end
        if notif.AbsolutePosition.Y > notifsHolderFrame.AbsolutePosition.Y then continue end
        notif:Destroy()
    end
end

function Notification.new(notifType: string, heading: string, body: string, autoRemove: boolean, autoRemoveTime: number, callback): table
    local notificationTypes = {
        ["error"] = errorTemplate,
        ["info"] = infoTemplate,
        ["message"] = messageTemplate,
        ["success"] = successTemplate,
        ["warning"] = warningTemplate
    }

    local notif = notificationTypes[notifType:lower()]
    assert(notif, "Notification type not valid\nValid Types: {\n\tError\n\tInfo\n\tMessage\n\tSuccess\n\tWarning\n}")
    notif = notif:Clone()
    notif.templateFrame.Position = UDim2.new(1,0,0,0)

    local function checkTextSize()
        local infoFrame = notif.templateFrame.informationFrame
        local requiredHeadingSize = txtS:GetTextSize(infoFrame.headingText.Text, infoFrame.headingText.TextSize, infoFrame.headingText.Font, Vector2.new(10000,10000)).X 
        local requiredBodySize = txtS:GetTextSize(infoFrame.bodyText.Text, infoFrame.bodyText.TextSize, infoFrame.bodyText.Font, Vector2.new(10000,10000)).X   
        assert(requiredHeadingSize + 45 + 25 < notifsHolderFrame.AbsoluteSize.X, "Heading size is too long")
        assert(requiredBodySize + 45 + 25 < notifsHolderFrame.AbsoluteSize.X, "Body size is too long")
    end

    local function openNotif(): nil
        local function playOpenNotifTween(): nil
            ts:Create(notif.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(0,0,0,0)}):Play()
        end

        openSound:Play()
        playOpenNotifTween()
    end

    local function closeNotif(): nil
        coroutine.wrap(function()
            local function playCloseNotifTween(): nil
                local closeTween = ts:Create(notif.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(1,0,0,0)})
                closeTween:Play()
                closeTween.Completed:Wait()
            end
            
            closeSound:Play()
            if callback then callback() end
            playCloseNotifTween()
            notif:Destroy()
        end)()
    end

    notif.templateFrame.closeButton.MouseButton1Click:Connect(closeNotif)
    notif.templateFrame.informationFrame.headingText.Text = heading
    notif.templateFrame.informationFrame.bodyText.Text = body
    notif.Parent = notifsHolderFrame
    checkTextSize()
    openNotif()

    if autoRemove then
        coroutine.wrap(function()
            autoRemoveTime = autoRemoveTime or 5
            task.wait(autoRemoveTime)
            if notif and notif:FindFirstChild("templateFrame") then
                closeNotif()
            end
        end)()
    end

    local newNotif = setmetatable({}, Notification)
    newNotif.Instance = notif
    newNotif.Heading = heading
    newNotif.Body = body
    newNotif.Type = notifType:lower()

    return newNotif
end

function Notification:changeHeading(newHeading: string): nil
    coroutine.wrap(function()
        if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
        self.Instance.templateFrame.informationFrame.headingText.Text = newHeading
    end)()
end

function Notification:changeBody(newBody: string): nil
    coroutine.wrap(function()
        if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
        self.Instance.templateFrame.informationFrame.bodyText.Text = newBody
    end)()
end

function Notification:deleteTimeout(waitTime: number): nil
    coroutine.wrap(function()
        if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
        local closeTween = ts:Create(self.Instance.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(1,0,0,0)})
        waitTime = waitTime or 3
        task.wait(waitTime)
        if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
        closeTween:Play()
        closeTween.Completed:Wait()
        if self.Instance then return end
        self.Instance:Destroy()
    end)()
end

function Notification:delete()
    coroutine.wrap(function()
        if not self.Instance or not self.Instance:FindFirstChild("templateFrame") then return end
        local closeTween = ts:Create(self.Instance.templateFrame, TweenInfo.new(.25), {Position = UDim2.new(1,0,0,0)})
        closeTween:Play()
        closeTween.Completed:Wait()
        if not self.Instance then return end
        self.Instance:Destroy()
    end)()
end

scaleNotifHolderMaxNotifs()
notifHolderListLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(deleteNotifsOutsideFrame)
return Notification
