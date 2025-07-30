require("globals")
require("options")
require("config.lazy")
require("mappings")
vim.cmd("source ~/.config/nvim/suda.vim")
local time = tonumber( os.date "%H" )

vim.filetype.add({
    pattern = {
        [".*/hypr/.*%.conf"] = "hyprlang",
        [".*/uwsm/env.*"] = "zsh",
    }
})

vim.cmd[[colorscheme catppuccin]]
local bg_color = vim.api.nvim_get_hl_by_name('Normal', true).background
