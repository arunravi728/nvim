return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "lua",
        "vim",
        "rust",
        "markdown",
        "markdown_inline",
      },

      function()
        return require "nvchad.configs.telescope"
      end,
    },
  },
}
