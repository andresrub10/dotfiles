return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<leader>tt", "<cmd>TroubleToggle<cr>",desc="Trouble Toggle" },
        { "<leader>tw", "<cmd>Trouble workspace_diagnostics<cr>" ,desc="Trouble  workspace" },
        { "<leader>td", "<cmd>Trouble document_diagnostics<cr>" ,desc="Trouble document" },
        { "<leader>tl", "<cmd>Trouble loclist<cr>" ,desc="Trouble open" },
        { "<leader>tq", "<cmd>Trouble quickfix<cr>" ,desc="Trouble open" },
        { "tR", "<cmd>Trouble lsp_references<cr>" ,desc="Trouble open" },
    },
}
