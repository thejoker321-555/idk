local players, repeat_val = game.Players:GetPlayers(), 2

coroutine.wrap(
    function()
        local Users =
            loadstring(
            game:HttpGet("https://raw.githubusercontent.com/thejoker321-555/idk/main/stack_all_whitelist.lua")
        )()

        function PlayersInGame(text)
            game:GetService("StarterGui"):SetCore(
                "ChatMakeSystemMessage",
                {
                    Text = text,
                    Color = Color3.fromRGB(126, 44, 219),
                    Font = Enum.Font.Ubuntu,
                    TextSize = 22
                }
            )
        end

        for i, v in ipairs(Users) do
            if game.Players:FindFirstChild(v) then
                PlayersInGame(v)
            end
        end
    end
)()

getgenv().pingg = true
getgenv().stack = not getgenv().stack
coroutine.wrap(
    function()
        while getgenv().pingg == true and task.wait() do
            getgenv().Current_Ping =
                string.split(game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(), " ")[1] ..
                ""
            getgenv().Current_Ping2 = getgenv().Current_Ping / 1000 - 0.015
            --print(getgenv().Current_Ping2)
        end
    end
)()

local Users =
    loadstring(game:HttpGet("https://raw.githubusercontent.com/thejoker321-555/idk/main/stack_all_whitelist.lua"))()

while task.wait(getgenv().Current_Ping2) do
    if getgenv().stack == true then
        function getRoot(char)
            rootPart =
                char:FindFirstChild("HumanoidRootPart") or char:FindFirstChild("Torso") or
                char:FindFirstChild("UpperTorso")
            return rootPart
        end

        print("Stacking")
        pcall(
            function()
                for i = 1, repeat_val do
                    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                        if v:IsA("Beam") then
                            v:Remove()
                        end
                    end
                    getgenv().coroutineStack = false
                    snowballs = (game:GetService("Workspace")).Storage -- snowbaall storage

                    for i, z in pairs(players) do
                        if z and not table.find(Users, z.Name) then
                            repeat
                                task.wait()
                            until z.Character and getRoot(z.Character) and z.Character:FindFirstChildOfClass("Humanoid")

                            h = getRoot(z.Character) -- sets (h) as the player box

                            for i, v in pairs(snowballs:GetDescendants()) do -- loops through all the snowballs
                                if v.Name == "TouchInterest" and v.Parent then -- if touch interest and snowball exist
                                    ball = v.Parent
                                    if
                                        z.Character:FindFirstChild("ForceField") or
                                            z.Character:FindFirstChild("SafeZoneShield")
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
                                            if currenthealth == 0 then
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
