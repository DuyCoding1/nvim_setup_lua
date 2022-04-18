-- Toggleterm
require("toggleterm").setup{
open_mapping = [[<C-x>]],
hide_numbers= true,
shade_terminals = true,
start_in_insert = true,
direction = 'float', -- Có thể sửa thành 'float','vertical','tab' để mở terminal ở các vị trí khác nhau.
close_on_exit = true,
float_opts = {
  border = 'curved',
}
}

vim.g.vista_icon_indent = '["╰─▸ ", "├─▸ "]'
vim.g.vista_default_executive = 'ctags'
vim.cmd [[let g:vista#renderer#enable_icon = 1]]
vim.cmd ([[
let g:vista#renderer#icons = {
\   "function": "\u0192",
\   "variable": "\uf00d",
\   "prototype": "\uf013",
\   "macro": "\uf00b",
\ }
function! NearestMethodOrFunction() abort
return get(b:, 'vista_nearest_method_or_function', '')
endfunction
set statusline+=%{NearestMethodOrFunction()}
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()
]])
