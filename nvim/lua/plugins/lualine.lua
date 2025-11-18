return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'catppuccin',
        icons_enabled = true,
        section_separators = '',
        component_separators = '',
        globalstatus = false,
      },
      sections = {
        lualine_a = { 'filename' },  
        lualine_b = {},
        lualine_c = {},      
        lualine_x = {},     
        lualine_y = { 'diff' },                   
        lualine_z = {}                 
      },  
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = { 'diff' },
        lualine_z = {}
      },
      tabline = {},
      extensions = {}
    })
    vim.schedule(function()
      vim.opt.laststatus = 2
    end)
  end
}

