-- Sets relative and current line numbers for easier navigation
vim.opt.number = true
vim.opt.relativenumber = true

-- Default to 4 spaces per tab, should be moved to ftplugin for more granualarity per file type
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Let undotree hold onto changes for long times and make undos for days afterwards
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Let search incrementally highlight when using tricky regex matches
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Keep a couple of lines visible at the edges of the screen as we scroll up and down
vim.opt.scrolloff = 8

-- Add copy paste functionality when in wsl
local in_wsl = os.getenv('WSL_DISTRO_NAME') ~= nil

if in_wsl then
    vim.g.clipboard = {
        name = "wsl clipboard",
        copy = {
            ["+"] = { "clip.exe" },
            ["*"] = { "clip.exe" },
        },
        paste = {
            ["+"] = { "nvim_paste" },
            ["*"] = { "nvim_paste" },
        },
        cache_enabled = true,
    }
end
