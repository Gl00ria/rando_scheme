-- defaults
local default_config = {
    keymap = "<F2>",
    random_startup = true,
    startup_schemes = { -- used for startup schemes & in case the user selected 'random_all' from the menu
        -- those are the default colorschemes on Neovim (https://github.com/neovim/neovim/tree/master/runtime/colors)
        "blue",
        "darkblue",
        "default",
        "desert",
        "elflord",
        "evening",
        "habamax",
        "industry",
        "koehler",
        "lunaperche",
        "morning",
        "murphy",
        "pablo",
        "quiet",
        "tetrobox",
        "ron",
    },
    night_schemes = {
        "peachpuff",
        "zellner",
        "shine",
        "delek",
    },
    day_schemes = {
        "blue",
        "darkblue",
        "default",
        "quiet",
    },
}
return { default_config = default_config }
