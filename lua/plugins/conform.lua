return {
    'stevearc/conform.nvim',
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                -- Conform will run multiple formatters sequentially
                python = { "black" },
                -- Use a sub-list to run only the first available formatter
                javascript = { { "prettierd", "prettier" } },
                typescript = { { "prettierd", "prettier" } },
                javascriptreact = { { "prettierd", "prettier" } },
                typescriptreact = { { "prettierd", "prettier" } },
                css = { { "prettierd", "prettier" } },
                html = { { "prettierd", "prettier" } },
                json = { { "prettierd", "prettier" } },
                markdown = { { "prettierd", "prettier" } },
                graphql = { { "prettierd", "prettier" } },
            },
            format_on_save = {
                timeout_ms = 5000,
                lsp_fallback = true
            }
        })
        vim.keymap.set('x', "<leader>f", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end
}
