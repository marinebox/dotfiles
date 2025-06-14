-- options.lua
--
-- ======================================================================
-- options
-- ======================================================================
-- visual options =======================================================
vim.opt.title = true                -- show current filename on tab
vim.opt.number = true               -- show line number
vim.opt.showmatch = true            -- enphasize bracket
vim.opt.matchtime = 3               -- emphasize bracket for 0.3 sec
vim.opt.cursorline = true           -- enable highlight current cursor line.

-- search / substitute options ==========================================
vim.opt.ignorecase = true           -- don't distinguish large/small case
vim.opt.smartcase = true            -- distinguish when large case is used
vim.opt.wrapscan = true             -- reached end, return to begin.

-- indent ===============================================================
vim.opt.expandtab=true            -- when tabstep spaces are inserted, not handle them as tab
vim.opt.tabstop=4                 -- four spaces are treated as one tab
vim.opt.softtabstop=4             -- <tab> is treated as four spaces.
vim.opt.shiftwidth=4              -- <<, >> are treated as four spaces.



