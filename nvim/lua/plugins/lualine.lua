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
        globalstatus = true,
      },
      sections = {
        lualine_a = { 'mode' },  
        lualine_b = {},
        lualine_c = { 'filename' },      
        lualine_x = {},     
        lualine_y = { 'diff' },                   
        lualine_z = { 'branch' }                 
      }
    })
  end
}

