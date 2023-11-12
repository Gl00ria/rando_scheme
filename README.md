# 🌈 rando scheme

You know I know & we know that our eyes will never ever get satisfied with the same
colorscheme every(day/night), so I made this plugin to surprise our eyes by a
random colorscheme either on our favorite editor's startup OR the magic of our
fingers by hitting a keymap.

## 📺 Showcase
![random_pic](https://github.com/Gl00ria/rando_scheme/blob/main/assets/rando_pic.png)

## ⚡️ Features

- **Random colorscheme at startup:** Picks a random colorscheme on every startup.
- **random_night schemes**: Allows the user to pick a random dark colorscheme during night hours. "Manually triggered"
- **random_day schemes:** Allows the user to pick a random light colorscheme during day hours. "Manually triggered"
- **Defined keymap**: Allows the user to use a keymap to trigger the menu.
- **Pick a specific colorscheme**: In case the user wants to pick a specific colorscheme rather than randomly picking.

## ✨ Recommended

- [dressing.nvim](https://github.com/stevearc/dressing.nvim)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)

## 📋 Installation

[lazy](https://github.com/folke/lazy.nvim):

```lua
{
    "Gl00ria/rando_scheme",
    opts = {
    -- your config
    }
}
```

[packer](https://github.com/wbthomason/packer.nvim):

```lua
use {
    "Gl00ria/rando_scheme",
    config = function()
        require('rando_scheme').setup({
            -- your config
        })
    end
}
```

## ⚙️ Default configuration

<details>
<summary>List of options with their defaults</summary>

```lua
{
    keymap = "<F2>",
    random_startup = true,
    -- "startup_schemes" table used for startup schemes & in case the user selected 'random_all' from the menu
    startup_schemes = {
        -- default colorschemes on [Neovim](https://github.com/neovim/neovim/tree/master/runtime/colors):
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
        "tetrobox",
        "ron",
    },
    night_schemes = { -- used when choosing "random_night" from the menu
        "blue",
        "darkblue",
        "default",
        "quiet",
    },
    day_schemes = { -- used when choosing  "random_day" from the menu
        "peachpuff",
        "zellner",
        "shine",
        "delek",
    },
}
```

</details>

## ✅ TODO

- [ ] Add more options
  - [ ] Allow the user to define hours for (day & night)
    - [ ] Trigger "day_scehemes" on startup according to user's specific hours.
    - [ ] Trigger "night_schemes" on startup according to user's specific hours.

## 🤝 Contributing

PRs & issues are always welcome. You know what to do :)
