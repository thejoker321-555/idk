if game.PlaceId ~= 2202352383 then
    return
end

while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or
    not game:GetService("Players").LocalPlayer.PlayerGui do
    wait(5)
end

local function StackGui()
    local Stack = Instance.new("ScreenGui")
    local stackFrame = Instance.new("Frame")
    local UICorner = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    local EnterPlayer = Instance.new("TextBox")
    local UIStroke_2 = Instance.new("UIStroke")
    local UICorner_2 = Instance.new("UICorner")
    local Execute = Instance.new("TextButton")
    local UIStroke_3 = Instance.new("UIStroke")
    local UICorner_3 = Instance.new("UICorner")
    local RemovePlayer = Instance.new("TextButton")
    local UIStroke_4 = Instance.new("UIStroke")
    local UICorner_4 = Instance.new("UICorner")
    local addPlayer = Instance.new("TextButton")
    local UIStroke_5 = Instance.new("UIStroke")
    local UICorner_5 = Instance.new("UICorner")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local Players = Instance.new("Frame")
    local Players_2 = Instance.new("TextLabel")
    local UIStroke_6 = Instance.new("UIStroke")
    local UICorner_6 = Instance.new("UICorner")

    Stack.Name = "Stack"
    Stack.Parent = game:GetService("CoreGui")
    Stack.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Stack.ResetOnSpawn = false

    stackFrame.Name = "stackFrame"
    stackFrame.Parent = Stack
    stackFrame.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
    stackFrame.Position = UDim2.new(0.0160060376, 0, 0.895906448, 0)
    stackFrame.Size = UDim2.new(0.282012194, 0, 0.0865497068, 0)

    UICorner.CornerRadius = UDim.new(0, 10)
    UICorner.Parent = stackFrame

    UIStroke.Thickness = 2.000
    UIStroke.Parent = stackFrame

    EnterPlayer.Name = "EnterPlayer"
    EnterPlayer.Parent = stackFrame
    EnterPlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    EnterPlayer.BackgroundTransparency = 0.500
    EnterPlayer.Position = UDim2.new(0.0270270277, 0, 0.155405402, 0)
    EnterPlayer.Size = UDim2.new(0.424324334, 0, 0.67567569, 0)
    EnterPlayer.ZIndex = 0
    EnterPlayer.Font = Enum.Font.Cartoon
    EnterPlayer.PlaceholderColor3 = Color3.fromRGB(85, 0, 255)
    EnterPlayer.PlaceholderText = "Enter a Player..."
    EnterPlayer.Text = ""
    EnterPlayer.TextColor3 = Color3.fromRGB(0, 0, 0)
    EnterPlayer.TextSize = 20.000
    EnterPlayer.TextWrapped = true

    UIStroke_2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_2.Parent = EnterPlayer

    UICorner_2.CornerRadius = UDim.new(0, 10)
    UICorner_2.Parent = EnterPlayer

    Execute.Name = "Execute"
    Execute.Parent = stackFrame
    Execute.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Execute.BackgroundTransparency = 0.500
    Execute.Position = UDim2.new(0.802702725, 0, 0.155405402, 0)
    Execute.Size = UDim2.new(0.164864868, 0, 0.67567569, 0)
    Execute.ZIndex = 0
    Execute.Font = Enum.Font.Cartoon
    Execute.Text = "switch"
    Execute.TextColor3 = Color3.fromRGB(0, 0, 0)
    Execute.TextScaled = true
    Execute.TextSize = 14.000
    Execute.TextWrapped = true

    UIStroke_3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_3.Parent = Execute

    UICorner_3.CornerRadius = UDim.new(0, 10)
    UICorner_3.Parent = Execute

    RemovePlayer.Name = "RemovePlayer"
    RemovePlayer.Parent = stackFrame
    RemovePlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    RemovePlayer.BackgroundTransparency = 0.500
    RemovePlayer.Position = UDim2.new(0.635135293, 0, 0.155405402, 0)
    RemovePlayer.Size = UDim2.new(0.148648649, 0, 0.67567569, 0)
    RemovePlayer.ZIndex = 0
    RemovePlayer.Font = Enum.Font.Cartoon
    RemovePlayer.Text = "removePlayer"
    RemovePlayer.TextColor3 = Color3.fromRGB(127, 0, 2)
    RemovePlayer.TextScaled = true
    RemovePlayer.TextSize = 14.000
    RemovePlayer.TextWrapped = true

    UIStroke_4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_4.Parent = RemovePlayer

    UICorner_4.CornerRadius = UDim.new(0, 10)
    UICorner_4.Parent = RemovePlayer

    addPlayer.Name = "addPlayer"
    addPlayer.Parent = stackFrame
    addPlayer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    addPlayer.BackgroundTransparency = 0.500
    addPlayer.Position = UDim2.new(0.470270276, 0, 0.155405402, 0)
    addPlayer.Size = UDim2.new(0.143243238, 0, 0.67567569, 0)
    addPlayer.ZIndex = 0
    addPlayer.Font = Enum.Font.Cartoon
    addPlayer.Text = "addPlayer"
    addPlayer.TextColor3 = Color3.fromRGB(0, 0, 255)
    addPlayer.TextScaled = true
    addPlayer.TextSize = 14.000
    addPlayer.TextWrapped = true

    UIStroke_5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke_5.Parent = addPlayer

    UICorner_5.CornerRadius = UDim.new(0, 10)
    UICorner_5.Parent = addPlayer

    UIAspectRatioConstraint.Parent = stackFrame
    UIAspectRatioConstraint.AspectRatio = 5.000

    Players.Name = "Players"
    Players.Parent = stackFrame
    Players.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Players.BackgroundTransparency = 0.500
    Players.Position = UDim2.new(-0.000420302153, 0, -0.968453109, 0)
    Players.Size = UDim2.new(0.490833044, 0, 0.810956001, 0)

    Players_2.Name = "Players"
    Players_2.Parent = Players
    Players_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Players_2.BackgroundTransparency = 1.000
    Players_2.Position = UDim2.new(0.0132256187, 0, -0.0256543569, 0)
    Players_2.Size = UDim2.new(0.967213094, 0, 1.04938269, 0)
    Players_2.ZIndex = 0
    Players_2.Font = Enum.Font.Cartoon
    Players_2.Text = "currently no players in the stack table."
    Players_2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Players_2.TextScaled = true
    Players_2.TextSize = 14.000
    Players_2.TextWrapped = true

    UIStroke_6.Thickness = 2.000
    UIStroke_6.Parent = Players

    UICorner_6.CornerRadius = UDim.new(0, 10)
    UICorner_6.Parent = Players

    -- Scripts:

    local function CVGWWDE_fake_script() -- stackFrame.Handler
        local script = Instance.new("LocalScript", stackFrame)

        local Enterplayer = script.Parent.EnterPlayer
        local Execute = script.Parent.Execute
        local removePlayer = script.Parent.RemovePlayer
        local addplayer = script.Parent.addPlayer
        local info = script.Parent.Players.Players
        local buttons = {
            [false] = "Stack Off",
            [true] = "Stack On"
        }

        players = {}
        local x
        local cmdp = game:GetService("Players")
        local cmdlp = cmdp.LocalPlayer
        local function findplr(args)
            if args == "me" then
                return cmdlp
            elseif args == "random" then
                return cmdp:GetPlayers()[math.random(1, #cmdp:GetPlayers())]
            elseif args == "new" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v.AccountAge < 30 and v ~= cmdlp then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "old" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v.AccountAge > 30 and v ~= cmdlp then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "bacon" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v.Character:FindFirstChild("Pal Hair") or v.Character:FindFirstChild("Kate Hair") and v ~= cmdlp then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "friend" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "notfriend" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if not v:IsFriendsWith(cmdlp.UserId) and v ~= cmdlp then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "ally" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v.Team == cmdlp.Team and v ~= cmdlp then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "enemy" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v.Team ~= cmdlp.Team then
                        vAges[#vAges + 1] = v
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "near" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v ~= cmdlp then
                        local math =
                            (v.Character:FindFirstChild("HumanoidRootPart").Position -
                            cmdlp.Character.HumanoidRootPart.Position).magnitude
                        if math < 30 then
                            vAges[#vAges + 1] = v
                        end
                    end
                end
                return vAges[math.random(1, #vAges)]
            elseif args == "far" then
                local vAges = {}
                for _, v in pairs(cmdp:GetPlayers()) do
                    if v ~= cmdlp then
                        local math =
                            (v.Character:FindFirstChild("HumanoidRootPart").Position -
                            cmdlp.Character.HumanoidRootPart.Position).magnitude
                        if math > 30 then
                            vAges[#vAges + 1] = v
                        end
                    end
                end
                return vAges[math.random(1, #vAges)]
            else
                for _, v in pairs(cmdp:GetPlayers()) do
                    if string.find(string.lower(v.Name), string.lower(args)) then
                        return v
                    end
                end
            end
        end

        Enterplayer.FocusLost:connect(
            function(enterPressed)
                if enterPressed then
                    x = findplr(Enterplayer.Text or cmdlp.Name)
                    Enterplayer.Text = x.Name
                end
            end
        )

        Execute.Text = buttons[false]
        info.Text = "currently no players in the stack table."

        _G.addPlayer = function()
            if not table.find(players, x.Name) then
                table.insert(players, x.Name)
            end
            pcall(
                function()
                    info.Text = "current players in stack table are: " .. table.concat(players, " ")
                end
            )
        end

        _G.RemovePlayer = function()
            if table.find(players, x.Name) then
                table.remove(players, table.find(players, x.Name))
                pcall(
                    function()
                        info.Text = "current players in stack table are: " .. table.concat(players, " ")
                    end
                )
            end
        end

        _G.execute = function()
            getgenv().stack = not getgenv().stack

            Execute.Text = buttons[getgenv().stack]
            repeat_val = 20

            game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})

            if getgenv().stack == true then
                game.Workspace.Town.Parent = game.Players.LocalPlayer
            elseif getgenv().stack == false then
                game.Players.LocalPlayer.Town.Parent = game.Workspace
            end

            game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
            coroutine.wrap(
                function()
                    local pos = Vector3.new(-380406, 380406, 328283)
                    game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
                    removehand = true
                    wait(1)
                    while getgenv().stack == true and task.wait() do
                        pcall(
                            function()
                                for _, hand in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                                    if hand.Name == "RightHand" and removehand == true then
                                        hand:Destroy()
                                    end
                                end
                                local args1 = {
                                    [1] = {
                                        [1] = "Skill_SpherePunch",
                                        [2] = pos
                                    }
                                }
                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args1))

                                local args2 = {
                                    [1] = {
                                        [1] = "Skill_BulletPunch",
                                        [2] = "Right",
                                        [3] = pos
                                    }
                                }

                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args2))

                                local args3 = {
                                    [1] = {
                                        [1] = "Skill_BulletPunch",
                                        [2] = "Left",
                                        [3] = pos
                                    }
                                }

                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args3))

                                local args4 = {
                                    [1] = {
                                        [1] = "Skill_Punch",
                                        [2] = "Right"
                                    }
                                }

                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args4))

                                local args5 = {
                                    [1] = {
                                        [1] = "Skill_Punch",
                                        [2] = "Left"
                                    }
                                }

                                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args5))

                                local hp = game.Players[_G.player].Character.Humanoid.Health

                                if hp == 0 then
                                    print(_G.player)
                                    game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
                                end
                            end
                        )
                    end

                    if getgenv().stack == false then
                        _G.stacko = false
                        _G.respawna = false
                        game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
                        local player = game:GetService("Players").LocalPlayer
                        local hum = player.Character.HumanoidRootPart
                        local storage = game:GetService("Workspace").Storage
                        for i, v in pairs(storage:GetChildren()) do
                            if v.Name == "EnergySphere9" then
                                v:Destroy()
                                wait()
                                v:Destroy()
                            end
                        end
                        wait(1.4)
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    299.014404,
                                    253.378174,
                                    847.031921,
                                    -0.0119165266,
                                    -3.36898722e-08,
                                    -0.999929011,
                                    4.92719865e-09,
                                    1,
                                    -3.37509825e-08,
                                    0.999929011,
                                    -5.32904343e-09,
                                    -0.0119165266
                                )
                            end
                        )
                        wait()
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    299.014404,
                                    253.378174,
                                    847.031921,
                                    -0.0119165266,
                                    -3.36898722e-08,
                                    -0.999929011,
                                    4.92719865e-09,
                                    1,
                                    -3.37509825e-08,
                                    0.999929011,
                                    -5.32904343e-09,
                                    -0.0119165266
                                )
                            end
                        )
                        wait()
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                    CFrame.new(
                                    299.014404,
                                    253.378174,
                                    847.031921,
                                    -0.0119165266,
                                    -3.36898722e-08,
                                    -0.999929011,
                                    4.92719865e-09,
                                    1,
                                    -3.37509825e-08,
                                    0.999929011,
                                    -5.32904343e-09,
                                    -0.0119165266
                                )
                            end
                        )
                    end
                end
            )()

            coroutine.wrap(
                function()
                    pcall(
                        function()
                            local add =
                                game.Players.LocalPlayer.CharacterAdded:Connect(
                                function()
                                    pcall(
                                        function()
                                            if not getgenv().stack then
                                                add:Disconnect()
                                            end
                                            wait()
                                            local hola = Instance.new("BodyVelocity")
                                            hola.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
                                            hola.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                                        end
                                    )
                                end
                            )
                            shared.io =
                                game:GetService("RunService").RenderStepped:Connect(
                                function()
                                    pcall(
                                        function()
                                            if getgenv().stack == false then
                                                shared.io:Disconnect()
                                            end
                                            local num = math.random(500000, 50000000)
                                            task.wait()
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.BodyVelocity.Velocity =
                                                Vector3.new(0, num, 0)
                                        end
                                    )
                                end
                            )
                        end
                    )
                end
            )()
        end

        addplayer.MouseButton1Click:Connect(_G.addPlayer)
        removePlayer.MouseButton1Click:Connect(_G.RemovePlayer)
        Execute.MouseButton1Click:Connect(_G.execute)

        while task.wait() do
            if getgenv().stack == true then
                pcall(
                    function()
                        info.Text = "currently stacking " .. table.concat(players, " ")
                        for i = 1, repeat_val do
                            function getRoot(char)
                                rootPart =
                                    char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or
                                    char:FindFirstChild("UpperTorso")
                                return rootPart
                            end

                            for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                if v:IsA("Beam") then
                                    v:Remove()
                                end
                            end
                            getgenv().coroutineStack = false
                            snowballs = (game:GetService("Workspace")).Storage -- snowbaall storage

                            for i, z in pairs(players) do
                                if game.Players[z] then
                                    repeat
                                        task.wait()
                                    until game.Players[z].Character and getRoot(game.Players[z].Character) and
                                        game.Players[z].Character:FindFirstChildOfClass("Humanoid")

                                    h = getRoot(game.Players[z].Character) -- sets (h) as the player box

                                    for i, v in pairs(snowballs:GetDescendants()) do -- loops through all the snowballs
                                        if v.Name == "TouchInterest" and v.Parent then -- if touch interest and snowball exist
                                            ball = v.Parent
                                            if
                                                game.Players[z].Character:FindFirstChild("ForceField") or
                                                    game.Players[z].Character:FindFirstChild("SafeZoneShield")
                                             then -- if target has ff wait
                                                print("ff or SafeZoneShield detected waiting")
                                            elseif i >= 1 then -- makes sure it stacks only if there are 6 snowballs
                                                if game.Players.LocalPlayer.Character:FindFirstChild("ForceField") then -- if player has ff wait
                                                    print("do nothing")
                                                else
                                                    getgenv().coroutineStack = true

                                                    coroutine.wrap(
                                                        function()
                                                            while getgenv().coroutineStack == true and task.wait() do
                                                                pcall(
                                                                    function()
                                                                        firetouchinterest(h, v.Parent, 0) -- fires stack

                                                                        firetouchinterest(h, v.Parent, 0) -- fires stack

                                                                        firetouchinterest(h, v.Parent, 0) -- fires stack

                                                                        firetouchinterest(h, v.Parent, 0) -- fires stack

                                                                        firetouchinterest(h, v.Parent, 0) -- fires stack

                                                                        firetouchinterest(h, v.Parent, 0) -- fires stack
                                                                    end
                                                                )
                                                            end
                                                        end
                                                    )()

                                                    hp = game.Players[z].Character.Humanoid.Health

                                                    if hp == 0 then
                                                        _G.player = z
                                                        getgenv().coroutineStack = false
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                )
            end
        end
    end
    coroutine.wrap(CVGWWDE_fake_script)()
    local function WBVF_fake_script() -- Players.Dragify
        local script = Instance.new("LocalScript", Players)

        local UserInputService = game:GetService("UserInputService")

        local gui = script.Parent

        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
            local delta = input.Position - dragStart
            gui.Position =
                UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        gui.InputBegan:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseButton1 or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    dragging = true
                    dragStart = input.Position
                    startPos = gui.Position

                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragging = false
                            end
                        end
                    )
                end
            end
        )

        gui.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    dragInput = input
                end
            end
        )

        UserInputService.InputChanged:Connect(
            function(input)
                if input == dragInput and dragging then
                    update(input)
                end
            end
        )
    end
    coroutine.wrap(WBVF_fake_script)()
    local function VPZSEP_fake_script() -- stackFrame.Dragify
        local script = Instance.new("LocalScript", stackFrame)

        local UserInputService = game:GetService("UserInputService")

        local gui = script.Parent

        local dragging
        local dragInput
        local dragStart
        local startPos

        local function update(input)
            local delta = input.Position - dragStart
            gui.Position =
                UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        gui.InputBegan:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseButton1 or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    dragging = true
                    dragStart = input.Position
                    startPos = gui.Position

                    input.Changed:Connect(
                        function()
                            if input.UserInputState == Enum.UserInputState.End then
                                dragging = false
                            end
                        end
                    )
                end
            end
        )

        gui.InputChanged:Connect(
            function(input)
                if
                    input.UserInputType == Enum.UserInputType.MouseMovement or
                        input.UserInputType == Enum.UserInputType.Touch
                 then
                    dragInput = input
                end
            end
        )

        UserInputService.InputChanged:Connect(
            function(input)
                if input == dragInput and dragging then
                    update(input)
                end
            end
        )
    end
    coroutine.wrap(VPZSEP_fake_script)()
end

while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or
    not game:GetService("Players").LocalPlayer.PlayerGui do
    task.wait(1)
end

player = game:GetService("Players").LocalPlayer

StackGui()
