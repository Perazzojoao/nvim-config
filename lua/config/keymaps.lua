-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Shorten function name
local keymap = vim.keymap.set

-- Normal --
-- Quit and save
keymap("n", "<leader>w", ":wq<CR>", { desc = "Close and save Window", noremap = true, silent = true })
keymap("n", "<leader>kw", ":wa<CR>:qa<CR>", { desc = "Close and save all Windows", noremap = true, silent = true })
keymap("n", "<leader>q", ":q<CR>", { desc = "Close Window", noremap = true, silent = true })

-- Saving file
keymap("n", "<C-s>", ":w<CR>", { noremap = true, silent = true })

-- Split window
keymap("n", "<leader>l", "<C-w>v:bnext<CR><C-w>l", { desc = "Split Window Right", noremap = true, silent = true })
keymap("n", "<leader>h", "<C-w>v<C-w>l:bnext<CR><C-w>h", { desc = "Split Window Left", noremap = true, silent = true })

-- Tabs
keymap("n", "<leader>tt", ":tabedit<CR>", { desc = "", noremap = true, silent = true })
keymap("n", "<tab>", ":tabnext<CR>", { noremap = true, silent = true })
keymap("n", "<s-tab>", ":tabprev<CR>", { noremap = true, silent = true })

-- Better window navigation
keymap("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
keymap("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
keymap("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
keymap("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- Better navigation
keymap("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true })
keymap("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true })

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", { noremap = true, silent = true })
keymap("n", "<C-Down>", ":resize +2<CR>", { noremap = true, silent = true })
keymap("n", "<C-Left>", ":vertical resize -2<CR>", { noremap = true, silent = true })
keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", { noremap = true, silent = true })
keymap("n", "<A-h>", ":bprevious<CR>", { noremap = true, silent = true })

-- Move text up and down
keymap("n", "<S-j>", ":m .+1<CR>==", { noremap = true, silent = true })
keymap("n", "<S-k>", ":m .-2<CR>==", { noremap = true, silent = true })

-- Duplicate line
keymap("n", "<a-j>", "yyp", { noremap = true, silent = true })
keymap("n", "<A-k>", "yyP", { noremap = true, silent = true })

-- Adding new lines
keymap("n", "<CR>", "o<C-c>", { noremap = true, silent = true })
keymap("n", "<S-CR>", "O<C-c>", { noremap = true, silent = true })

keymap("n", "ç", "%", { noremap = true, silent = true })

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", { noremap = true, silent = true })
keymap("v", ">", ">gv^", { noremap = true, silent = true })

-- Move text up and down
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })
keymap("v", "p", '"_dP', { noremap = true, silent = true })

-- Duplicate text up and down
keymap("v", "<A-j>", ":t'>+1<CR>gv=gv", { noremap = true, silent = true })
keymap("v", "<A-k>", ":t'<-1<CR>gv=gv", { noremap = true, silent = true })

-- Insert Mode
-- Better navigation
keymap("i", "<A-k>", "<Up>", { noremap = true, silent = true })
keymap("i", "<A-j>", "<Down>", { noremap = true, silent = true })
keymap("i", "<A-h>", "<Left>", { noremap = true, silent = true })
keymap("i", "<A-l>", "<Right>", { noremap = true, silent = true })

-- Deleting
keymap("i", "<C-h>", "<Backspace>", { noremap = true, silent = true })
keymap("i", "<C-l>", "<Delete>", { noremap = true, silent = true })
