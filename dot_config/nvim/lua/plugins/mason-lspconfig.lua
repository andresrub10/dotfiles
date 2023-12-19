return {
    "williamboman/mason-lspconfig.nvim" ,
    config = function()
        require('mason-lspconfig').setup()
        require("lspconfig").lua_ls.setup {}
        require("lspconfig").yamlls.setup {}
        require("lspconfig").jdtls.setup {}
        require("lspconfig").gopls.setup {}
        require("lspconfig").lemminx.setup {}
        require("lspconfig").tsserver.setup {}
        require("lspconfig").jsonls.setup {}

    end,
}
