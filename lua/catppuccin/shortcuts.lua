local opts = {noremap=true, silent=true}
local term_opts = {silent=true}

local map = vim.api.nvim_set_keymap

-- Completion Shortcuts these are configured in completion.lua
--    Ctrl+Up/Down scroll suggestions
--    Ctrl+Shift+Up/Down scroll trough documentation
--    Ctrl+e close suggestion window
--    Ctrl+r open suggestion window manually
--    Ctrl+Space apply code snipped
--    Ctrl+Tab move trough suggestions and apply them, except snippets

-- Code Inspection in normal mode
--    D - Jump to Declaration
--    d - Jump to definition
--    h - Hover
--    I - Jump to implemantations
--    s - Signatures
--    r - references


-- Window Navigation Alt+ArrowKeys to change focus
map("n", "<C-Left>", "<C-w>h", opts)
map("n", "<C-Down>", "<C-w>j", opts)
map("n", "<C-Up>", "<C-w>k", opts)
map("n", "<C-Right>", "<C-w>l", opts)


-- Window Arrangement Shift+Alt+ArrowKeys to resize focused window
map("n", "<S-C-Up>", ":resize -2<CR>", opts)
map("n", "<S-C-Down>", ":resize +2<CR>", opts)
map("n", "<S-C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<S-C-Right>", ":vertical resize +2<CR>", opts)


-- Add window on the right Alt+h
map("n", "<A-h>", ":vsplit<CR>", opts)

-- Add Window below Alt+v
map("n", "<A-v>", ":split<CR>", opts)

-- Close Window Alt+w
map("n", "<S-A-w>", ":BufferClose<CR><C-w>q", opts)
map("n", "<A-w>", "<C-w>q", opts)
map("i", "<A-w>", "<ESC><C-w>q", opts)

-- Toggle explorer with Alt+f
map("n", "<A-f>", ":SidebarNvimToggle<CR>", opts)
map("i", "<A-f>", "<ESC>:SidebarNvimToggle<CR>i", opts)

-- Switch buffer Ctrl+Alt+Left/Right
map("n", "<A-Left>", "bnext<CR>", opts)
map("n", "<A-Left>", "bprevious<CR>", opts)

-- Cut/Copy/Duplicate Line Ctrl+x/c/d
map("i", "<C-x>", "<ESC>ddi", opts)
map("i", "<C-c>", "<ESC>yyi", opts)
map("i", "<C-d>", "<ESC>yypi", opts)

-- Cut/Copy/Duplicate Selection Ctrl+x/c/d
map("v", "<C-x>", "di", opts)
map("v", "<C-c>", "yi", opts)
map("v", "<C-d>", "ypi", opts)

-- Paste Ctrl+v
map("i", "<C-v>", "<ESC>pi", opts)

-- Save Ctrl+s
map("n", "<C-s>", ":wall<CR>", opts)
map("i", "<C-s>", "<ESC>:wall<CR>i<Right>", opts)

-- Undo/Redo Ctrl+u/Ctlr+r
map("i", "<C-u>", "<ESC>:undo<CR>i", opts)
map("i", "<C-r>", "<ESC>:redo<CR>i", opts)

-- Finder Ctrl+f
map("n", "<C-f>", ":Telescope find_files<CR>", opts)
map("n", "<C-g>", ":Telescope live_grep<CR>", opts)
map("n", "<C-h>", ":Telescope man_pages<CR>", opts)

-- Toogle Terminal
map("n", "<C-t>", ":ToggleTerm<CR>", opts)
map("i", "<C-t>", "<ESC>:ToggleTerm<CR>i", opts)
map("t", "<C-t>", "<ESC>:ToggleTerm<CR>i", opts)

-- Open file Ctrl+o
map("n", "<C-o>", ":e ", opts)

