return {

	"nvim-pack/nvim-spectre",
	keys = {

		{"<leader>fsr",'<cmd>lua require("spectre").open()<cr>',desc = "Spectre open"},
		{"<leader>fsr",'<cmd>lua require("spectre").open_visual({select_word=true})<cr>',mode = "v",desc = "Spectre open visual selected"},
	}
}
