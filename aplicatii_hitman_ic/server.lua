local DISCORD_WEBHOOK = "https://discord.com/api/webhooks/777546611798704178/Cb_IX6sStDK3Hgz52KLXudxX4MVWQUGpJaSve5hrmdTjaHFtNXaTjEEgBSCrZ9D9R9FF"
ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)




RegisterServerEvent('log')
AddEventHandler('log', function(data)



    local connect = {
        {
            ["color"] = "0",
            ["title"] = "Aplicatie Hitman | " ..data.plate.."-"..data.lastname,
            ["description"] = "Nume: \n **"..data.plate.."** \n Prenume: \n **"..data.lastname.."** \n Varsta IC.: \n **"..data.age.."** \n Varsta Reala: \n **"..data.rage.."** \n De ce vrei sa intrii in Hitman: \n**"..data.why.."**\n Sex::\n "..data.gender.. "**\n ID: \n"..data.id.."**\n Discord::\n "..data.dis,
	        ["footer"] = {
            ["text"] = "Aplicatie Hitman",
            },
        }
    }
    PerformHttpRequest(DISCORD_WEBHOOK, function(err, text, headers) end, 'POST', json.encode({username = "Aplicatii Hitman",  avatar_url = "https://cdn.discordapp.com/attachments/778590845804740608/846096515038052442/EGToM5.jpg",embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

