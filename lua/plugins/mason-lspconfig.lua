return {
	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls", "pylsp" }, -- Add your desired servers here
			automatic_installation = true,
		})

		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Setup installed servers
		require("mason-lspconfig").setup_handlers({
			function(server_name)
				lspconfig[server_name].setup({
					capabilities = capabilities,
				})
			end,
		})
	end,
}
