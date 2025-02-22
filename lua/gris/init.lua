require('gris.global')
require('gris.lazy_init')
require('gris.keymap')
require('gris.opt')
require('gris.autocmds')

-- comment out the rest to not add debugging for lsp
--
--function restart_htmx_lsp()
--	require("lsp-debug-tools").restart({ expected {}, name = "htmx-lsp", "--level", "DEBUG" }, root_dir = vim.loop.cwd(), })
--end

