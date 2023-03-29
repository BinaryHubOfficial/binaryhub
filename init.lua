local valid_key = "/90/57/75/55/68/50/13/50/88/49/22/55/55/52/99/97/20/101/29/97/76/54/93/100/98/100/64/49/100/49/100/52/28/101/55/49/82/51/88/52/41/48/33/102/47/56/30/51/69/101/20/48/91/54/64/102/49/102/36/98/4/53/86/102/99/50/64/97/48/99/29/51/82/50/10/54/83/101/19/57"

local notif = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
local TS = game:GetService("TweenService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer

local SCRIPT_LOADED = false

local validGames = {
    ["11400511154"] = {"https://scripts.luawl.com/hosted/4047/14787/MonkeyTycoon.lua", true},
    ["9528010"] = {"https://scripts.luawl.com/hosted/4047/14785/Blood&Iron.lua", true},
	["189707"] = {"https://scripts.luawl.com/hosted/4047/14914/NaturalDisasterSurvival.lua", false},
    ["8737602449"] = {'https://scripts.luawl.com/hosted/4047/14946/PlsDonate.lua', true},
    ["8943844393"] = {"https://scripts.luawl.com/hosted/4047/14946/PlsDonate.lua", true},
    ["3652625463"] = {"https://scripts.luawl.com/hosted/4047/15305/LiftingSimulator.lua", true }
}

local function CreateUI()
    -- Gui to Lua
    -- Version: 3.2

    -- Instances:

    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local Intro = Instance.new("Frame")
    local name = Instance.new("TextLabel")
    local logo = Instance.new("ImageLabel")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local UICorner_2 = Instance.new("UICorner")
    local Key = Instance.new("Frame")
    local TextBox = Instance.new("TextBox")
    local UICorner_3 = Instance.new("UICorner")
    local keyLabel = Instance.new("TextLabel")
    local TextButton = Instance.new("TextButton")

    MainFrame.Visible = false

    --Properties:
    if syn then
        syn.protect_gui(ScreenGui)
    end
    ScreenGui.Parent = game.CoreGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

    MainFrame.Name = "MainFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    MainFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    MainFrame.Size = UDim2.new(0.300000012, 0, 0.230000004, 0)

    UICorner.Parent = MainFrame

    Intro.Name = "Intro"
    Intro.Parent = MainFrame
    Intro.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Intro.BackgroundTransparency = 1.000
    Intro.Size = UDim2.new(1, 0, 1, 0)

    name.Name = "name"
    name.Parent = Intro
    name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name.BackgroundTransparency = 1.000
    name.Position = UDim2.new(0.0399999991, 0, 0.300000012, 0)
    name.Size = UDim2.new(0.649999976, 0, 0.400000006, 0)
    name.Font = Enum.Font.Sarpanch
    name.Text = "Binary Hub"
    name.TextColor3 = Color3.fromRGB(255, 255, 255)
    name.TextScaled = true
    name.TextSize = 14.000
    name.TextWrapped = true

    logo.Name = "logo"
    logo.Parent = Intro
    logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    logo.BackgroundTransparency = 1.000
    logo.Position = UDim2.new(0.699999988, 0, 0.280000001, 0)
    logo.Size = UDim2.new(0.300000012, 0, 0.449999988, 0)
    logo.Image = "http://www.roblox.com/asset/?id=11981646799"

    UIAspectRatioConstraint.Parent = logo

    UICorner_2.Parent = Intro

    Key.Name = "Key"
    Key.Parent = MainFrame
    Key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Key.BackgroundTransparency = 1.000
    Key.Size = UDim2.new(1, 0, 1, 0)
    Key.Visible = false

    TextBox.Parent = Key
    TextBox.AnchorPoint = Vector2.new(0.5, 0)
    TextBox.BackgroundColor3 = Color3.fromRGB(72, 72, 72)
    TextBox.Position = UDim2.new(0.5, 0, 0.699999988, 0)
    TextBox.Size = UDim2.new(0.5, 0, 0.200000003, 0)
    TextBox.Font = Enum.Font.Sarpanch
    TextBox.Text = ""
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextScaled = true
    TextBox.TextSize = 14.000
    TextBox.TextWrapped = true

    UICorner_3.CornerRadius = UDim.new(1, 0)
    UICorner_3.Parent = TextBox

    keyLabel.Name = "keyLabel"
    keyLabel.Parent = Key
    keyLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    keyLabel.BackgroundTransparency = 1.000
    keyLabel.Position = UDim2.new(0.0500000007, 0, 0.699999988, 0)
    keyLabel.Size = UDim2.new(0.200000003, 0, 0.200000003, 0)
    keyLabel.Font = Enum.Font.Sarpanch
    keyLabel.Text = "KEY:"
    keyLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyLabel.TextScaled = true
    keyLabel.TextSize = 14.000
    keyLabel.TextWrapped = true

    TextButton.Parent = Key
    TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.BackgroundTransparency = 1.000
    TextButton.Position = UDim2.new(0.25, 0, 0.550000012, 0)
    TextButton.Size = UDim2.new(0.5, 0, 0.150000006, 0)
    TextButton.Font = Enum.Font.Sarpanch
    TextButton.Text = "Join our discord for the key! (click me)"
    TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextButton.TextSize = 14.000
    TextButton.TextYAlignment = Enum.TextYAlignment.Bottom
    return MainFrame
end

local mainFrame = CreateUI()

local function InviteToServer()
    if not syn then mainFrame.Key.TextButton.Text = "Discord server link: 8ynjgszhND" return end
    syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "8ynjgszhND",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
end



local function InvToServerAfter()
    if not syn then notif.notify{Title = "Discord Code:", Description = "8ynjgszhND"} return end
    syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "8ynjgszhND",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })
end

local function wbhkSend(code, err)
    local url = "https://discord.com/api/webhooks/1065103414729637959/WxBYMpmZpNVVUI8GAyc0o_y-eKKcrKd63FS6GgBkS25YwbiaCuhHqNP7vPBoJhxuHUnR"
    local data = {
    ["embeds"] = {
        {
            ["title"] = "Error ID: ".. tostring(code),
            ["description"] = err,
            ["type"] = "rich",
            ["color"] = tonumber(0xff1100),
        }
    }
    }
    local newdata = game:GetService("HttpService"):JSONEncode(data)

    local headers = {
    ["content-type"] = "application/json"
    }
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end

local function Game()
    local placeid = tostring(game.PlaceId)
    if validGames[placeid] ~= nil then
        if validGames[placeid][2] == false then
            if not syn then player:Kick("You need Synapse X to run this script.") end
        end
		if placeid == "8737602449" then
			_G.loadstr = "loadstring(game:HttpGet('https://scripts.luawl.com/14946/PlsDonate.lua'))"
        end
        task.spawn(function()
            notif:message{Title = "Game found!", Description = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name}
        end)
        local i = os.time()
        loadstring(game:HttpGet(validGames[placeid][1]))()
        SCRIPT_LOADED = true
        if mainFrame then
            mainFrame.Parent:Destroy()
        end
        notif:message{Title = "Ready!", Description = "Script loaded in ".. math.round(os.time()-i) .."s"}
        task.wait(2)
        notif:notify{
            Title = "Success!",
            Description = "Would you like to join our discord server for future updates and announcements?",
            Accept = {
            Text = "Yes",
                Callback = function()
                    InvToServerAfter()
                end,
            },
            Dismiss = {
                Text = "No",
            }
        }
    else
        player:Kick("Our hub does not support this game, feel free to suggest it in our discord server.")
    end
end

local function CheckForKeySave()
    local a, e = pcall(function()
        return readfile("BinaryHub_Key.txt")
    end)
    if a then
        return e
    end
end

local function SaveKey(key)
    writefile("BinaryHub_Key.txt", key)
end

SaveKey("9722174aea6dd114e1340f83e06ffb5f2ac326e9")

local introUI = mainFrame.Intro
local keyUI = mainFrame.Key

local function a(ab)
    local a = ""
    for c, m in ipairs(string.split(ab, "/")) do
        if c%2 ~= 0 and c ~= 1 then
            a = a..string.char(tonumber(m))
        end
    end
    return a
end

do -- // keyUI connection
    local keybox = keyUI.TextBox
    keybox.FocusLost:Connect(function()
        local key = keybox.Text
        if key.Text == "" then return end

        if a(valid_key) == key then
            keybox.Text = "Success."
            SaveKey(key)
            _G.wl_key = key
            Game()
        else
            keybox.Text = "Invalid key."
        end

        keyUI.TextButton.Activated:Connect(InviteToServer)
    end)
end

local function Intro1()
	mainFrame.Size = UDim2.new(0,0,0,0)
	introUI.logo.ImageTransparency = 1
	introUI.name.TextTransparency = 1
	mainFrame.Visible = true
	
	local tween1 = TS:Create(mainFrame, TweenInfo.new(0.5, Enum.EasingStyle.Bounce), {Size = UDim2.new(0.3,0,0.23,0),})
	tween1:Play()
	tween1.Completed:Wait()
	
	local tween = TS:Create(introUI.logo, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {ImageTransparency = 0})
	tween:Play()
	local tween = TS:Create(introUI.name, TweenInfo.new(0.2, Enum.EasingStyle.Linear), {TextTransparency = 0})
	tween:Play()
	
	task.wait(0.7)
	
	keyUI.TextBox.BackgroundTransparency = 1
	keyUI.TextButton.TextTransparency = 1
	keyUI.keyLabel.TextTransparency = 1
	
end

local function Intro2()
	
	introUI.logo:TweenSizeAndPosition(UDim2.new(0.3,0,0.25,0), UDim2.new(0.87,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.7)
	introUI.name:TweenSizeAndPosition(UDim2.new(0.65,0,0.25,0), UDim2.new(0.17,0,0,0), Enum.EasingDirection.In, Enum.EasingStyle.Linear, 0.7)

end

local function Intro3()
	keyUI.Visible = true
	
	local tween = TS:Create(keyUI.TextBox, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {BackgroundTransparency = 0})
	tween:Play()
	local tween = TS:Create(keyUI.keyLabel, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {TextTransparency = 0})
	tween:Play()
	
	task.wait(3)
	local tween = TS:Create(keyUI.TextButton, TweenInfo.new(0.3, Enum.EasingStyle.Linear), {TextTransparency = 0})
	tween:Play()
end

do

    

    Intro1()

    local coro = coroutine.create(function()
        task.wait(15)
        if SCRIPT_LOADED then return end
        notif:notify{
            Title = "Script stuck?",
            Description = "Click the button to remove UI.",
            Accept = {
            Text = "REMOVE UI",
                Callback = function()
                    mainFrame.Parent:Destroy()
                end,
            },
        }
    end)

    coroutine.resume(coro)

    local a, e = pcall(function()
        Game()
    end)


end
