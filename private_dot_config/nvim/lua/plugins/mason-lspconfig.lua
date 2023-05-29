return {
    "williamboman/mason-lspconfig.nvim" ,
    config = function()
        require('mason-lspconfig').setup()
        require("lspconfig").lua_ls.setup {}
        require("lspconfig").yamlls.setup {}
    end,
}
