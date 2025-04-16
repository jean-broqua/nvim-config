-- set tab to 3 space when entering a buffer with .lua file
vim.api.nvim_create_autocmd("BufEnter", {
	pattern = { "*.lua" },
	callback = function()
		vim.opt.shiftwidth = 3
		vim.opt.tabstop = 3
		vim.opt.softtabstop = 3
	end,
})

-- Setup format on save using conform
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function(args)
		require("conform").format({ bufnr = args.buf })
	end,
})

-- Remove terminal background
vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.cmd([[
      highlight Normal ctermbg=none guibg=none
      highlight NormalNC ctermbg=none guibg=none
      highlight SignColumn ctermbg=none guibg=none
      highlight VertSplit ctermbg=none guibg=none
    ]])
	end,
})
