table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    vim.defer_fn(function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = true,
          keymap = {
            accept = "<C-f>"
          }
        },
        filetypes = {
          markdown = true,
          sql = true,
          yaml = true,
          typescript = true,
          mdx = true,
        }
      })
      require("copilot_cmp").setup()
    end, 100)
  end,
})
