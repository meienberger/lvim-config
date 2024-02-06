lvim.plugins = {
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  {
    "pantharshit00/vim-prisma",
    ft = { "prisma" },
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
  },
  {
    "davidmh/mdx.nvim",
    config = true,
  }
}
