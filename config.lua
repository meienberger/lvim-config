-- vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.relativenumber = true

-- general
lvim.log.level = "info"
lvim.format_on_save = {
  enabled = true,
  timeout = 5000
}
-- to disable icons and use a minimalist setup, uncomment the following
-- lvim.use_icons = false

-- keymappings <https://www.lunarvim.org/docs/configuration/keybindings>
lvim.leader = "space"
lvim.keys.normal_mode["∆"] = ":m .-2<CR>=="
lvim.keys.normal_mode["º"] = ":m .+1<CR>=="

lvim.keys.visual_mode["∆"] = ":m '<-2<CR>gv=gv"
lvim.keys.visual_mode["º"] = ":m '>+1<CR>gv=gv"

lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"

lvim.builtin.which_key.mappings["u"] = {
  name = "+various",
  c = { ":%bd|e#|bd#<cr>", "Close all tabs" }
}
lvim.builtin.which_key.mappings['s']['r'] = { "<cmd>Telescope resume<cr>", "Resume search" }
lvim.builtin.dap.active = true

local cmp_mapping = require("cmp.config.mapping")
lvim.builtin.cmp.mapping["¬"] = cmp_mapping.complete()

vim.filetype.add({
  extension = {
    mdx = 'mdx'
  }
})

-- General configs
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- Automatically install missing parsers when entering buffer
lvim.builtin.treesitter.auto_install = true

-- LSP settings
local lsp_settings = {
  exe = { "intelephense", "--stdio" },
  filetypes = { "php" },
  settings = {
    intelephense = {
      environment = {
        phpVersion = "8.0", -- Adjust to your PHP version
      },
    },
  },
}

require("lvim.lsp.manager").setup("intelephense", lsp_settings)

-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  {
    exe = "prettier",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "css",
      "scss",
      "json",
      "yaml",
      "markdown",
      "mdx"
    },
  },
  {
    exe = "pg_format",
    filetypes = {
      "sql",
    },
  },
  {
    exe = "terraform_fmt",
    filetypes = {
      "terraform",
      "tf"
    },
  },
}

-- Linters
local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    exe = "eslint_d",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
    },
  },
}

-- Code actions
local code_actions = require "lvim.lsp.null-ls.code_actions"
code_actions.setup {
  {
    exe = "eslint",
    filetypes = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "json",
    },
  },
}

-- Additional Plugins
reload "user.plugins"
reload "user.dap"
reload "user.copilot"
reload "user.image"
