return {
    'aserowy/tmux.nvim',
    config = function()
        require("tmux").setup()
    end,
    keys = {
        { "<C-h>", "<cmd>lua require('tmux').move_left()<cr>",desc = "Tmux move left" },
        { "<C-j>", "<cmd>lua require('tmux').move_bottom()<cr>",desc = "Tmux move bottom" },
        { "<C-k>", "<cmd>lua require('tmux').move_top()<cr>",desc = "Tmux move top" },
        { "<C-l>", "<cmd>lua require('tmux').move_right()<cr>",desc = "Tmux move right" },

        { "<A-h>", "<cmd>lua require('tmux').resize_left()<cr>",desc = "Tmux resize left" },
        { "<A-j>", "<cmd>lua require('tmux').resize_bottom()<cr>",desc = "Tmux resize bottom" },
        { "<A-k>", "<cmd>lua require('tmux').resize_top()<cr>",desc = "Tmux resize top" },
        { "<A-l>", "<cmd>lua require('tmux').resize_right()<cr>",desc = "Tmux resize right" },
    },
}
