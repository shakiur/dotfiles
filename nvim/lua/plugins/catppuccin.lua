return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",  -- latte / frappe / macchiato / mocha
      integrations = {
        lualine = true,     -- enable Catppuccin colors for lualine
        telescope = true,   -- enable Catppuccin colors for telescope
        cmp = true,         -- completion plugin
        -- add other integrations here if you like
      },
    })
    vim.cmd.colorscheme "catppuccin"
  end
}

