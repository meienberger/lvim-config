lvim.plugins = {
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "wuelnerdotexe/vim-astro"
  },
  {
    "pantharshit00/vim-prisma",
    ft = { "prisma" },
  },
  {
    "iamcco/markdown-preview.nvim",
    build = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" }
  },
  {
    "microsoft/vscode-js-debug",
    build = "npm i && npm run compile vsDebugServerBundle && mv dist out"
  },
  {
    -- Image Preview
    "samodostal/image.nvim",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    -- Text Colorizer
    "m00qek/baleia.nvim",
    version = "v1.3.0"
  }
}
