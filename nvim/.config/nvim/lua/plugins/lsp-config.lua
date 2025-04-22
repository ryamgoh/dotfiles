return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- Enhanced diagnostic
			vim.diagnostic.config({
				virtual_text = true, -- Show errors inline
				signs = true, -- Show signs in gutter
				underline = true, -- Underline errors
				update_in_insert = false, -- Don't update while typing
				severity_sort = true, -- Sort errors by severity
				float = { -- Configuration for hover windows
					border = "rounded", -- Nice rounded borders
					source = "always", -- Show source of diagnostic
					header = "", -- Remove redundant header
				},
			})

			lspconfig.lua_ls.setup({
				capabilities = capabilities,
			})
			lspconfig.html.setup({
				capabilities = capabilities,
			})
			lspconfig.gopls.setup({
				capabilities = capabilities,
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", ":vsplit | vim.lsp.buf.definition()<CR>", {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
