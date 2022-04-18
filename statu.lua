-- Lualine
require('lualine').setup {
options = {
  icons_enabled = true,
  theme = 'auto',
  component_separators = { left = '', right = ''},
  section_separators = { left = '', right = ''},
  disabled_filetypes = {},
  always_divide_middle = true,
  globalstatus = false,
},
sections = {
  lualine_a = {'mode'},
  lualine_b = {'branch', 'diff', 'diagnostics'},
  lualine_c = {'filename'},
  lualine_x = {'encoding', 'fileformat', 'filetype'},
  lualine_y = {'progress'},
  lualine_z = {'location'}
},
inactive_sections = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {'filename'},
  lualine_x = {'location'},
  lualine_y = {},
  lualine_z = {}
},
tabline = {},
extensions = {}
}
-- Barbar
vim.cmd([[
nnoremap <silent>    <A-,> :BufferPrevious<CR>
nnoremap <silent>    <A-.> :BufferNext<CR>
nnoremap <silent>    <A-c> :BufferClose<CR>
]])
vim.g.bufferline = {
animation = true,
auto_hide = false,
tabpages = true,
closable = true,
clickable = true,
icons = true,
icon_close_tab = '',
icon_separator_active = '▎',
icon_separator_inactive = '▎',
icon_close_tab_modified = '●',
icon_pinned = '車',
}

--comment
require('nvim_comment').setup
{
marker_padding = true,
comment_empty = true,
create_mappings = true,
line_mapping = "gcc",
operator_mapping = "gc",
hook = nil
}
