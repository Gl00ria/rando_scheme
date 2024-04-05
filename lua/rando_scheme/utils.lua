local defaults = require("rando_scheme.config").default_config
local utils = {}

-- in case of a proceeding scheme is set
local function clear_and_shine()
    vim.api.nvim_command("hi clear")
    if vim.fn.exists("syntax_on") then
        vim.api.nvim_command("syntax reset")
    end
end

function utils.select_random_day_scheme(day_schemes)
    local random_scheme = day_schemes[math.random(1, #day_schemes)]
    clear_and_shine()
    vim.cmd("colorscheme " .. random_scheme)
end

function utils.select_random_night_scheme(night_schemes)
    local random_scheme = night_schemes[math.random(1, #night_schemes)]
    clear_and_shine()
    vim.cmd("colorscheme " .. random_scheme)
end

function utils.select_random_colorscheme(available_schemes)
    local random_scheme = available_schemes[math.random(4, #available_schemes)]
    clear_and_shine()
    vim.cmd("colorscheme " .. random_scheme)
end

function utils.switch_colorscheme(selected, available_schemes)
    if not selected then
        return
    end
    if selected == "Random All" then
        utils.select_random_colorscheme(available_schemes)
    else
        clear_and_shine()
        vim.cmd("colorscheme " .. selected)
    end
end

-- automatically select a random colorscheme during Neovim startup if 'random_startup = true'
function utils.setup_startup(available_schemes)
    if defaults.random_startup then
        -- ensure a new colorscheme on every startup
        math.randomseed(os.time())

        utils.select_random_colorscheme(available_schemes)
    end
end

-- keymap
function utils.setup_keymap(default_keymap, startup_schemes, day_schemes, night_schemes)
    vim.keymap.set("n", default_keymap, function()
        vim.ui.select(startup_schemes, {
            prompt = "Select a colorscheme OR random",
        }, function(selected)
            if selected == "Random All" then
                utils.select_random_colorscheme(startup_schemes)
            elseif selected == "Random Day" then
                utils.select_random_day_scheme(day_schemes)
            elseif selected == "Random Night" then
                utils.select_random_night_scheme(night_schemes)
            else
                utils.switch_colorscheme(selected, startup_schemes)
            end
        end)
    end)
end

return utils
