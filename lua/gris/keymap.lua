
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move lines up and down with formatting" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move lines up and down with formatting" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "moves next line up to current line at the end with space" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "page down keeping cursor in middle" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "page up keeping cursor in the middle" })
vim.keymap.set("n", "n", "nzzzv", { desc = "goes to the next item in find registry keeping focus in middle" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "goes to the previous item in find registry keeping focus in middle" })
vim.keymap.set("n", "=ap", "ma=ap'a", { desc = "in a code block defined by new lines, mark current place go to start and format that block and return, so format the code block... nice" })
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>", { desc = "restarts the lsp server" })

-- start and stop vimwithme games
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)

-- Work around for how vim handles delete and pastes
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "on paste this will send the currently deleted chars to the black hole register and then resets the past in the buffer" })

-- Yank keybinds that yank in normal or visual mode into the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], { desc = "Yank keybinds that yank in normal or visual mode into the system clipboard" })
vim.keymap.set({"n", "v"}, "<leader>Y", [["+Y]], { desc = "Yank keybinds that yank in normal or visual mode into the system clipboard" })
vim.keymap.set({"n", "v"}, "<leader>d", "\"_d", { desc = "deletes to blackhole register and won't be pastable" })

vim.keymap.set("i", "<C-c>", "<Esc>", { desc = "remaps what Ctrl+c does to Esc to work around some funkiness with Ctrl+c" })

vim.keymap.set("n", "Q", "<nop>", { desc = "Remaps 'Q' to 'no action'" })

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "open up new tmux session" })
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "format current buffer" })

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "find next error and put it in the middle of the screen" })
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "find previous error and put it in the middle of the screen" })
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "find next location an put in middle of screen" })
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "find next location an put in middle of screen" })
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "will replace all occurrences of the literal text c-r c-w with c-r c-w across the entire buffer, ignoring case, and then move the cursor three positions to the left after the substitution is completed" })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "marks current file as executable in the os" })

vim.keymap.set(
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
    , { desc = "writes go err handling if block" }
)

vim.keymap.set(
    "n",
    "<leader>ea",
    "oassert.NoError(err, \"\")<Esc>F\";a"
    , { desc = "writes go err assert check" }
)

vim.keymap.set(
    "n",
    "<leader>ef",
    "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
    , { desc = "writes go log check with fatal" }
)

vim.keymap.set(
    "n",
    "<leader>el",
    "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
    , { desc = "writes go log check with error" }
)

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end,
    { desc = "sources current file" }
)
