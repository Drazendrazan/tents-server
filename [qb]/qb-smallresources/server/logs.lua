local QBCore = exports['qb-core']:GetCoreObject()

local Webhooks = {
    ['default'] = 'https://discord.com/api/webhooks/964580448867070032/e1jtMvkOIvsFyCSHRgSsO_Ie-QpwFfwzXoygbDsqoFcDJD0IaQXiFUkqHZ6bwhqoUYKM',
    ['testwebhook'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['playermoney'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['playerinventory'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['robbing'] = 'https://discord.com/api/webhooks/964580448867070032/e1jtMvkOIvsFyCSHRgSsO_Ie-QpwFfwzXoygbDsqoFcDJD0IaQXiFUkqHZ6bwhqoUYKM',
    ['cuffing'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['drop'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['trunk'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['stash'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['glovebox'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['banking'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['vehicleshop'] = 'https://discord.com/api/webhooks/964580684561780736/l98FASN6Nr7MZ6EJbfPR1ytQqaWLokds5kiUnNArLdDoVwVh99pNkg8-dZBmjSebsirL',
    ['vehicleupgrades'] = 'https://discord.com/api/webhooks/964580684561780736/l98FASN6Nr7MZ6EJbfPR1ytQqaWLokds5kiUnNArLdDoVwVh99pNkg8-dZBmjSebsirL',
    ['shops'] = 'https://discord.com/api/webhooks/964580684561780736/l98FASN6Nr7MZ6EJbfPR1ytQqaWLokds5kiUnNArLdDoVwVh99pNkg8-dZBmjSebsirL',
    ['dealers'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['storerobbery'] = 'https://discord.com/api/webhooks/964580448867070032/e1jtMvkOIvsFyCSHRgSsO_Ie-QpwFfwzXoygbDsqoFcDJD0IaQXiFUkqHZ6bwhqoUYKM',
    ['bankrobbery'] = 'https://discord.com/api/webhooks/964580448867070032/e1jtMvkOIvsFyCSHRgSsO_Ie-QpwFfwzXoygbDsqoFcDJD0IaQXiFUkqHZ6bwhqoUYKM',
    ['powerplants'] = 'https://discord.com/api/webhooks/964580448867070032/e1jtMvkOIvsFyCSHRgSsO_Ie-QpwFfwzXoygbDsqoFcDJD0IaQXiFUkqHZ6bwhqoUYKM',
    ['death'] = 'https://discord.com/api/webhooks/964580931493036072/G2O_t4mQX4_aTjvj1CYL4nFtV7XJ36eMLIadt_6MEvTCiuNLjAaoPTD8701Vbjq49JuJ',
    ['joinleave'] = 'https://discord.com/api/webhooks/964580931493036072/G2O_t4mQX4_aTjvj1CYL4nFtV7XJ36eMLIadt_6MEvTCiuNLjAaoPTD8701Vbjq49JuJ',
    ['ooc'] = 'https://discord.com/api/webhooks/964580807001903154/RiJg9JZABsWvrF53rL9_FbjRiQp6UhasJsLrIFAOzT3Kf2VJ9QysGbQuXgGqWsmthLNX',
    ['report'] = 'https://discord.com/api/webhooks/964580807001903154/RiJg9JZABsWvrF53rL9_FbjRiQp6UhasJsLrIFAOzT3Kf2VJ9QysGbQuXgGqWsmthLNX',
    ['me'] = 'https://discord.com/api/webhooks/964580807001903154/RiJg9JZABsWvrF53rL9_FbjRiQp6UhasJsLrIFAOzT3Kf2VJ9QysGbQuXgGqWsmthLNX',
    ['pmelding'] = 'https://discord.com/api/webhooks/964580999600144484/BWMbau7C7CewMAS6SBdqBwYpz5D0ZbTJmW8h1bstYntL0ZVxvBVarY5eoeAaReTgEWWh',
    ['112'] = 'https://discord.com/api/webhooks/964580807001903154/RiJg9JZABsWvrF53rL9_FbjRiQp6UhasJsLrIFAOzT3Kf2VJ9QysGbQuXgGqWsmthLNX',
    ['bans'] = 'https://discord.com/api/webhooks/964580999600144484/BWMbau7C7CewMAS6SBdqBwYpz5D0ZbTJmW8h1bstYntL0ZVxvBVarY5eoeAaReTgEWWh',
    ['anticheat'] = 'https://discord.com/api/webhooks/964580999600144484/BWMbau7C7CewMAS6SBdqBwYpz5D0ZbTJmW8h1bstYntL0ZVxvBVarY5eoeAaReTgEWWh',
    ['weather'] = 'https://discord.com/api/webhooks/964580999600144484/BWMbau7C7CewMAS6SBdqBwYpz5D0ZbTJmW8h1bstYntL0ZVxvBVarY5eoeAaReTgEWWh',
    ['moneysafes'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['bennys'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['bossmenu'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['robbery'] = 'https://discord.com/api/webhooks/964580448867070032/e1jtMvkOIvsFyCSHRgSsO_Ie-QpwFfwzXoygbDsqoFcDJD0IaQXiFUkqHZ6bwhqoUYKM',
    ['casino'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
    ['traphouse'] = '',
    ['911'] = 'https://discord.com/api/webhooks/964580807001903154/RiJg9JZABsWvrF53rL9_FbjRiQp6UhasJsLrIFAOzT3Kf2VJ9QysGbQuXgGqWsmthLNX',
    ['palert'] = 'https://discord.com/api/webhooks/964580807001903154/RiJg9JZABsWvrF53rL9_FbjRiQp6UhasJsLrIFAOzT3Kf2VJ9QysGbQuXgGqWsmthLNX',
    ['house'] = 'https://discord.com/api/webhooks/964580231136551003/QI3nu4Q4RoXSOHROv7XNXIDOrZJ0yr5zO2rpcK1UItYHHkC7IBv7UfYPX4QSfEM_MMeN',
}

local Colors = { -- https://www.spycolor.com/
    ['default'] = 14423100,
    ['blue'] = 255,
    ['red'] = 16711680,
    ['green'] = 65280,
    ['white'] = 16777215,
    ['black'] = 0,
    ['orange'] = 16744192,
    ['yellow'] = 16776960,
    ['pink'] = 16761035,
    ["lightgreen"] = 65309,
}

RegisterNetEvent('qb-log:server:CreateLog', function(name, title, color, message, tagEveryone)        
    local tag = false
    local webHook = Webhooks[name] or Webhooks['default']
    local embedData = {
        {
            ['title'] = title,
            ['color'] = Colors[color] or Colors['default'],
            ['footer'] = {
                ['text'] = os.date('%c'),
            },
            ['description'] = message,
            ['author'] = {
                ['name'] = 'QBCore Logs',
                ['icon_url'] = 'https://media.discordapp.net/attachments/870094209783308299/870104331142189126/Logo_-_Display_Picture_-_Stylized_-_Red.png?width=670&height=670',
            },
        }
    }
    PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', embeds = embedData}), { ['Content-Type'] = 'application/json' })
    Citizen.Wait(100)
    if tag then
        PerformHttpRequest(webHook, function(err, text, headers) end, 'POST', json.encode({ username = 'QB Logs', content = '@everyone'}), { ['Content-Type'] = 'application/json' })
    end
end)

QBCore.Commands.Add('testwebhook', 'Test Your Discord Webhook For Logs (God Only)', {}, false, function(source, args)
    TriggerEvent('qb-log:server:CreateLog', 'testwebhook', 'Test Webhook', 'default', 'Webhook setup successfully')
end, 'god')
