local map = vim.keymap.set

-- general mappings
map("n", "<C-s>", "<cmd> w <CR>")
map("i", "jk", "<ESC>")
map("n", "<C-c>", "<cmd> %y+ <CR>") -- copy whole filecontent
map("n", "bv", "<C-v>")
map("v", "bv", "<C-v>")
map("i", "bv", "<C-v>")
map("t", "jk", "<C-\\><C-n>")
map("n", "q", "<nop>")
map("n", "Q", "<nop>")
map("n", "j", "gj") -- visual line moves are the same
map("n", "k", "gk")

-- nvimtree
map("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
map("n", "<C-h>", "<cmd> NvimTreeFocus <CR>")

-- telescope
map("n", "<leader>ff", "<cmd> Telescope find_files <CR>")
map("n", "<leader>fo", "<cmd> Telescope oldfiles <CR>")
map("n", "<leader>fw", "<cmd> Telescope live_grep <CR>")
map("n", "<leader>gt", "<cmd> Telescope git_status <CR>")

-- bufferline, cycle buffers
map("n", "<Tab>", "<cmd> BufferLineCycleNext <CR>")
map("n", "<S-Tab>", "<cmd> BufferLineCyclePrev <CR>")
map("n", "<C-q>", "<cmd> bd <CR>")

-- comment.nvim
map("n", "<leader>/", "gcc", { remap = true })
map("v", "<leader>/", "gc", { remap = true })

-- vim.api.nvim_set_keymap('n', 'q', '<nop>', opts)
-- vim.api.nvim_set_keymap('n', 'Q', '<nop>', opts)
--vim.cmd "tnoremap <Esc> <C-\><C-n>"
map("n", "q", "<nop>")
map("n", "Q", "<nop>")

-- format
map("n", "<leader>fm", function()
  require("conform").format()
end)

