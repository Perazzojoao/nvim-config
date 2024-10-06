vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.opt.relativenumber = true
vim.opt.number = true

vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = false  -- Desativa linhas relativas
        vim.opt.number = true           -- Ativa linha absoluta
    end,
})

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = true  -- Ativa linhas relativas
        vim.opt.number = true          -- Mantém linha absoluta
    end,
})

local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set

-- Normal --
-- Quit and save
keymap("n", "<leader>w", ":wq<CR>", opts)
keymap("n", "<leader>kw", ":wa<CR>:qa<CR>", opts)
keymap("n", "<leader>q", ":q<CR>", opts)

-- Saving file
keymap("n", "<C-s>", ":w<CR>", opts)

-- Split window
keymap("n", "<leader>l", "<C-w>v:bnext<CR><C-w>l", opts)
keymap("n", "<leader>h", "<C-w>v<C-w>l:bnext<CR><C-w>h", opts)

-- Tabs
keymap("n", "<leader>tt", ":tabedit<CR>", opts)
keymap("n", "<tab>", ":tabnext<CR>", opts)
keymap("n", "<s-tab>", ":tabprev<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", ":wincmd h<CR>", opts)
keymap("n", "<C-j>", ":wincmd j<CR>", opts)
keymap("n", "<C-k>", ":wincmd k<CR>", opts)
keymap("n", "<C-l>", ":wincmd l<CR>", opts)

-- Better navigation
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "<C-d>", "<C-d>zz", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<A-l>", ":bnext<CR>", opts)
keymap("n", "<A-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<S-j>", ":m .+1<CR>==", opts)
keymap("n", "<S-k>", ":m .-2<CR>==", opts)

-- Duplicate line
keymap("n", "<a-j>", "yyp", opts)
keymap("n", "<A-k>", "yyP", opts)

-- Adding new lines
keymap("n", "<CR>", "o<C-c>", opts)
keymap("n", "<S-CR>", "O<C-c>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Duplicate text up and down
keymap("v", "<A-j>", ":t'>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":t'<-1<CR>gv=gv", opts)


-- Insert Mode
-- Better navigation
keymap("i", "<A-k>", "<Up>", opts)
keymap("i", "<A-j>", "<Down>", opts)
keymap("i", "<A-h>", "<Left>", opts)
keymap("i", "<A-l>", "<Right>", opts)

-- Deleting
keymap("i", "<C-h>", "<Backspace>", opts)
keymap("i", "<C-l>", "<Delete>", opts)
