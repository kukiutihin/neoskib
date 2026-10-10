local k = vim.keymap.set

-- Disable Space moving cursor
k({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Clear search highlights
k("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Clear search highlight" })

-- Window navigation
k("n", "<leader>h", "<C-w>h", { desc = "Focus left window" })
k("n", "<leader>l", "<C-w>l", { desc = "Focus right window" })
k("n", "<leader>j", "<C-w>j", { desc = "Focus bottom window" })
k("n", "<leader>K", "<C-w>k", { desc = "Focus top window" })

-- Delete / paste without polluting the default register
k({ "n", "v" }, "d", '"_d', { desc = "Delete without yanking" })
k("x", "p", '"_dP', { desc = "Paste without yanking replaced text" })
k("x", "P", '"_dP', { desc = "Paste without yanking replaced text" })

-- Commenting
k("n", "<leader>/", "gcc", { remap = true, desc = "Comment line" })
k("v", "<leader>/", "gc", { remap = true, desc = "Comment block" })
