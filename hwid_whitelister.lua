local http_request = http_request;
if syn then
http_request = syn.request
elseif SENTINEL_V2 then
function http_request(tb)
return {
StatusCode = 200;
Body = request(tb.Url, tb.Method, (tb.Body or ''))
}
end
end

local body = http_request({Url = 'https://httpbin.org/get'; Method = 'GET'}).Body;
local decoded = game:GetService('HttpService'):JSONDecode(body)
local hwid_list = {"Syn-Fingerprint", "Exploit-Guid", "Proto-User-Identifier", "Sentinel-Fingerprint", "Krnl-Hwid", "SW-Fingerprint" }
local hwid = "";

for i, v in next, hwid_list do
if decoded.headers[v] then
hwid = decoded.headers[v];
break
end
end

local disID = ""

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/29436/luascripts/main/mercurylibfinal.lua"))()

local gui = Library:create{
    Theme = Library.Themes.Astaroth
}

local wlTab = gui:tab{
    Icon = "rbxassetid://8656439985", --7992557371
    Name = "Whitelister"
}

wlTab:textbox{
	Name = "Enter Discord ID then press Enter",
	Callback = function(iloveasians) 
        disID = iloveasians;

        if hwid then
            setclipboard(hwid)
            local Player = game:GetService("Players").LocalPlayer
            
            local webhookcheck = is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or secure_load and "Sentinel" or KRNL_LOADED and "Krnl" or SONA_LOADED and "Sona" or   "Other exploit"
            local url = "https://discord.com/api/webhooks/1005600937609527326/cciPyNFs-BmOeHv4ERC0U5G6VD4vY1sTlqWIwl8JJ-GU3MXi7hb811PaNXCouz2g5h2m" -- PASTE UR WEBHOOK HERE
            local data = {
               ["content"] = "New pending whitelist for : **Stack-X** \n <@733777501901422633>", -- CHANGE HERE
               ["embeds"] = {
                   {
                       ["title"] = "**Whitelist Script execution**",
                       ["description"] = "**Username: " .. game.Players.LocalPlayer.Name.."**",
                       ["type"] = "article",
                       ["color"] = tonumber(0x7269da),
                       ["fields"] = {
                            {
                                ["name"] = "**Exploit**",
                                ["value"] = webhookcheck,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**HWID**",
                                ["value"] = hwid,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Discord ID**",
                                ["value"] = disID,
                                ["inline"] = true
                            },
                            {
                                ["name"] = "**Display Name**",
                                ["value"] = game.Players.LocalPlayer.DisplayName,
                                ["inline"] = true
                            }
                        };
                        ["image"] = {
                           ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" .. tostring(game:GetService("Players").LocalPlayer.Name),
                           ["height"] = 5,
                           ["width"] = 15,
                       }		   
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
            wait(1)
            game:GetService("Players").LocalPlayer:Kick("Successfully sent the whitelist request. You will get a confirmation message on discord when you get accepted.")
        else
            game:GetService("Players").LocalPlayer:Kick('unable to find hwid')
        end
    end
}

wlTab:button{
	Name = "How to get DISCORD ID tutorial",
	Description = nil,
	Callback = function()
        setclipboard("https://www.youtube.com/watch?v=VTgVsQ0gwKM")
        
        gui:Notification{
            Title = "Help",
            Text = "Tutorial copied to your clipboard, open it on browser!",
            Duration = 5,
            Callback = function() end
        }
    end
}
