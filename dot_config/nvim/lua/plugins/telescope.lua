return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{ "<leader>fb", "<cmd>lua require'telescope'.extensions.file_browser.file_browser({path = vim.fn.expand('%:p:h')})<cr>",desc = "Telescope file browser" },
			-- { "<leader>fg", "<cmd>Telescope grep_string<cr>",mode = {"n","v"},desc = "Telescope grep string" },
			{ "<leader>fw", "<cmd>Telescope live_grep<cr>",mode = {"n","v"},desc = "Telescope live string" },
			{ "<leader>fo", "<cmd>lua require'telescope.builtin'.oldfiles({only_cwd = true})<cr>",desc = "Telescope old files" },
			{ "<leader>ff", "<cmd>lua require'telescope.builtin'.find_files({only_cwd = true})<cr>",desc = "Telescope find files" },
			{ "<leader>fc", "<cmd>Telescope commands<cr>",desc = "Telescope Commands" },
			{ "<leader>fch", "<cmd>Telescope command_history<cr>",desc = "Telescope Commands History" },
			{ "<leader>fsh", "<cmd>Telescope search_history<cr>",desc = "Telescope Search History" },
			{ "<leader>fmp", "<cmd>Telescope man_pages<cr>",desc = "Telescope Man Pages" },
			{ "<leader>fr", "<cmd>Telescope registers<cr>",desc = "Telescope Registers" },
			{ "<leader>fac", "<cmd>Telescope autocommands<cr>",desc = "Telescope Autocommands" },
			{ "<leader>fkm", "<cmd>Telescope keymaps<cr>",desc = "Telescope Key Maps" },
			{ "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<cr>",desc = "Telescope Current Buffer Fuzzy Find" },
		},
	opts = {
			defaults = {
                initial_mode = "normal",
                hidden = true,
                sorting_strategy = "ascending",
                path_display = {
                    "smart",
                },
                pickers = {
                   only_cwd = true,
                },

                layout_strategy = "horizontal",

				layout_config = {
                    horizontal = {
                        preview_width = 0.6,
                        prompt_position = "top",
                    },
				},

			},
			extensions = {
				file_browser = {
                    hidden = true,
					hijack_netrw = true,
					cwd_to_path =true

				}

			}
		},
		init= function(plugin)
			require("telescope").load_extension "file_browser";
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
	}
}
