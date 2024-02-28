-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local discipline = require("lazy.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit<Return>", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Diagnostics
keymap.set("n", "<leader>j", function()
  vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
  require("lazy.utils").replaceHexWithHSL()
end)

keymap.set("n", "<leader>cu", vim.cmd.UndotreeToggle)

keymap.set("n", "sf", function()
  require("oil").toggle_float()
end)

local nvim_tmux_nav = require("nvim-tmux-navigation")

keymap.set("n", "<C-h>", nvim_tmux_nav.NvimTmuxNavigateLeft)
keymap.set("n", "<C-j>", nvim_tmux_nav.NvimTmuxNavigateDown)
keymap.set("n", "<C-k>", nvim_tmux_nav.NvimTmuxNavigateUp)
keymap.set("n", "<C-l>", nvim_tmux_nav.NvimTmuxNavigateRight)

local harpoon_ui = require("harpoon.ui")
local harpoon_mark = require("harpoon.mark")

-- Harpoon keybinds --
-- Open harpoon ui
keymap.set("n", "<leader>ho", function()
  harpoon_ui.toggle_quick_menu()
end)

-- Add current file to harpoon
keymap.set("n", "<leader>ha", function()
  harpoon_mark.add_file()
end)

-- Remove current file from harpoon
keymap.set("n", "<leader>hr", function()
  harpoon_mark.rm_file()
end)

-- Remove all files from harpoon
keymap.set("n", "<leader>hc", function()
  harpoon_mark.clear_all()
end)

-- Quickly jump to harpooned files
keymap.set("n", "<leader>1", function()
  harpoon_ui.nav_file(1)
end)

keymap.set("n", "<leader>2", function()
  harpoon_ui.nav_file(2)
end)

keymap.set("n", "<leader>3", function()
  harpoon_ui.nav_file(3)
end)

keymap.set("n", "<leader>4", function()
  harpoon_ui.nav_file(4)
end)

keymap.set("n", "<leader>5", function()
  harpoon_ui.nav_file(5)
end)

vim.keymap.set({ "n", "i", "s" }, "<c-f>", function()
  if not require("noice.lsp").scroll(4) then
    return "<c-f>"
  end
end, { silent = true, expr = true })

vim.keymap.set({ "n", "i", "s" }, "<c-b>", function()
  if not require("noice.lsp").scroll(-4) then
    return "<c-b>"
  end
end, { silent = true, expr = true })
