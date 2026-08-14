return {
    {
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "debugloop/telescope-undo.nvim"
        },
        keys = {
            { -- lazy style key map
                "<leader>u",
                "<cmd>Telescope undo<cr>",
                desc = "undo history",
            },
            { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "find files" },
            { "<leader>gg", "<cmd>Telescope live_grep<cr>", desc = "live grep" },
        },

        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("undo")
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<C-p>", builtin.find_files, {})
            vim.keymap.set("n", "<leader>gg", builtin.live_grep, {})
        end,
  },
}

