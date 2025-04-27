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

if time >= 8 and time < 20 then
    vim.o.background = "light"
    vim.cmd[[colorscheme rose-pine-dawn]]
else
    vim.o.background = "dark"
    vim.cmd[[colorscheme rose-pine-moon]]
end

local bg_color = vim.api.nvim_get_hl_by_name('Normal', true).background
