QBConfig = {}

QBConfig.MaxPlayers = GetConvarInt('sv_maxclients', 100) -- Gets max players from config file, default 48
QBConfig.DefaultSpawn = vector4(-1035.71, -2731.87, 12.86, 0.0)
QBConfig.UpdateInterval = 5 -- how often to update player data in minutes
QBConfig.StatusInterval = 5000 -- how often to check hunger/thirst status in milliseconds

QBConfig.Money = {}
QBConfig.Money.MoneyTypes = { cash = 250, bank = 5000, crypto = 0 } -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
QBConfig.Money.DontAllowMinus = { 'cash', 'crypto' } -- Money that is not allowed going in minus
QBConfig.Money.PayCheckTimeOut = 30 -- The time in minutes that it will give the paycheck
QBConfig.Money.PayCheckSociety = false -- If true paycheck will come from the society account that the player is employed at, requires qb-management

QBConfig.Player = {}
QBConfig.Player.HungerRate = 3.2 -- Rate at which hunger goes down.
QBConfig.Player.ThirstRate = 2.8 -- Rate at which thirst goes down.
QBConfig.Player.Bloodtypes = {
    "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-",
}

QBConfig.Server = {} -- General server config
QBConfig.Server.Closed = false -- Set server closed (no one can join except people with ace permission 'qbadmin.join')
QBConfig.Server.ClosedReason = "Server Closed" -- Reason message to display when people can't join the server
QBConfig.Server.Uptime = 0 -- Time the server has been up.
QBConfig.Server.Whitelist = false -- Enable or disable whitelist on the server
QBConfig.Server.WhitelistPermission = 'admin' -- Permission that's able to enter the server when the whitelist is on
QBConfig.Server.PVP = true -- Enable or disable pvp on the server (Ability to shoot other players)
QBConfig.Server.Discord = "" -- Discord invite link
QBConfig.Server.CheckDuplicateLicense = true -- Check for duplicate rockstar license on join
QBConfig.Server.Permissions = { 'god', 'admin', 'mod', 'support' } -- Add as many groups as you want here after creating them in your server.cfg

QBConfig.Notify = {}

QBConfig.Notify.NotificationStyling = {
    group = true, -- Allow notifications to stack with a badge instead of repeating
    position = "right", -- top-left | top-right | bottom-left | bottom-right | top | bottom | left | right | center
    progress = true -- Display Progress Bar
}

-- These are how you define different notification variants
-- The "color" key is background of the notification
-- The "icon" key is the css-icon code, this project uses `Material Icons` & `Font Awesome`
QBConfig.Notify.VariantDefinitions = {
    success = {
        classes = 'success',
        icon = 'done'
    },
    primary = {
        classes = 'primary',
        icon = 'info'
    },
    error = {
        classes = 'error',
        icon = 'dangerous'
    },
    warning = {
        classes = 'warning',
        icon = 'warning'
    },
    police = {
        classes = 'police',
        icon = 'local_police'
    },
    ambulance = {
        classes = 'ambulance',
        icon = 'fas fa-ambulance'
    }
}

QBConfig.AdaptiveCard = {
    Enabled = true,
    Server_Name = 'Maple Leaf',
    Wait = 12, -- How many seconds should splash page be shown for? (Max is 12)
    Banner = 'https://i.imgur.com/KTtiRuC.gif',
    Heading = 'Maple Leaf RP!',
    ---------------- Left Button
    Button_1 = 'Website',
    Icon_1 = '',
    Link_1 = 'https://maplehearts.net/index.php',
    ---------------- Right Button
    Button_2 = 'Discord',
    Icon_2 = '',
    Link_2 = 'https://discord.gg/maplehearts',
    ---------------- Middle Button
    Button_3 = 'Tebex',
    Icon_3 = '',
    Link_3 = 'https://maplehearts.tebex.io/',
    ---------------- Bottom Banner
    Icon_4 = '',
    Link_4 = '',
}