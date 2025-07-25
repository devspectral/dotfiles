vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- Example keymap (not changing this for now) (ex. below will change i to jk)
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Move current selection up down left right
keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move current selection down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move current selection up" })

-- toggleterm
keymap.set("t", "<esc>", [[<C-\><C-n>]])
keymap.set("t", "jk", [[<C-\><C-n>]])
keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]])
keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]])
keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]])
keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]])
keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])

-- delete single character without copying into register
keymap.set('n', 'x', '"_x')

-- delete highlighted characters without copying into register
keymap.set('v', 'x', '"_d')

-- mapping ; instead of : for command mode
-- keymap.set({"n", "x"}, ";", ":", {noremap = true, desc = "Command mode"})

-- Save
-- keymap.set({"", "!"}, "<C-s>", "<ESC>:w!<CR>", {noremap = true, desc = "Save"})

-- Quit and exit without saving
keymap.set({"", "!"}, "<C-q>q", "<ESC>:qa!<CR>", {noremap = true, desc = "Quit and exit without saving"})

-- vimwiki (disabling for now: conflict with telescope)
-- keymap.set("n", "<C-Space>", "<cmd>VimwikiToggleListItem<CR>", { desc = "Toggle List Item Todo"}) -- Toggle todo list item vimwiki
