return {
    {
        "jackMort/ChatGPT.nvim",
        event = "VeryLazy",
        dependencies = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        },
        config = function()
            require("chatgpt").setup({
                api_key_cmd = "security find-generic-password -s openai-token -w",
            })
        end,
        vim.keymap.set({'n'}, '<leader>t',[[<Cmd>ChatGPT<CR>]], opts)

    }
}
