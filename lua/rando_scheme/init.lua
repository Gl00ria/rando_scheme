local defaults = require("rando_scheme.config").default_config
local utils = require("rando_scheme.utils")

local rando_scheme = {}

function rando_scheme.setup(opts)
    opts = opts or {}

    if opts.random_startup ~= nil then
        defaults.random_startup = opts.random_startup
    end

    if opts.keymap then
        defaults.keymap = opts.keymap
    end

    if opts.startup_schemes then
        defaults.startup_schemes = opts.startup_schemes
    end

    if opts.night_schemes then
        defaults.night_schemes = opts.night_schemes
    end

    if opts.day_schemes then
        defaults.day_schemes = opts.day_schemes
    end

    local available_schemes = defaults.startup_schemes
    -- force adding 'random_all, random_light, random_night' to the table, as a ( 1st, 2nd, 3rd ) entry
    table.insert(available_schemes, 1, "random_all")
    table.insert(available_schemes, 2, "random_night")
    table.insert(available_schemes, 3, "random_day")

    -- automatically select a random colorscheme during Neovim startup if 'random_startup = true'
    utils.setup_startup(available_schemes)

    -- keymap
    utils.setup_keymap(
        defaults.keymap,
        defaults.startup_schemes,
        defaults.day_schemes,
        defaults.night_schemes
    )
end

return rando_scheme
