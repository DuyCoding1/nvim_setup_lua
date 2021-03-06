require'nvim-tree'.setup {
auto_close = true,
auto_reload_on_write = true,
disable_netrw = false,
hide_root_folder = false,
hijack_cursor = false,
hijack_netrw = true,
hijack_unnamed_buffer_when_opening = false,
ignore_buffer_on_setup = false,
open_on_setup = false,
open_on_tab = false,
sort_by = "name",
update_cwd = false,
view = {
  width = 30,
  height = 30,
  side = "left",
  preserve_window_proportions = false,
  number = false,
  relativenumber = false,
  signcolumn = "yes",
},
hijack_directories = {
  enable = true,
  auto_open = true,
},
update_focused_file = {
  enable = false,
  update_cwd = false,
  ignore_list = {},
},
ignore_ft_on_setup = {},
system_open = {
  cmd = nil,
  args = {},
},
diagnostics = {
  enable = false,
  show_on_dirs = false,
  icons = {
    hint = "",
    info = "",
    warning = "",
    error = "",
  },
},
filters = {
  dotfiles = false,
  custom = {},
  exclude = {},
},
git = {
  enable = true,
  ignore = true,
  timeout = 400,
},
actions = {
  change_dir = {
    enable = true,
    global = false,
  },
  open_file = {
    quit_on_open = false,
    resize_window = false,
    window_picker = {
      enable = true,
      chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
      exclude = {
        filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
        buftype = { "nofile", "terminal", "help" },
      },
    },
  },
},
trash = {
  cmd = "trash",
  require_confirm = true,
},
log = {
  enable = false,
  truncate = false,
  types = {
    all = false,
    config = false,
    git = false,
  },
},
}
vim.cmd ([[
nnoremap <C-z> :NvimTreeToggle<CR>
nnoremap <C-m> :NvimTreeRefresh<CR>
nnoremap <A-m> :NvimTreeFindFile<CR>
]])

-- Treesitter
require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "cpp", "lua"},
-- Ở đây thì do mình code python, c++ với lua nên mình mới để vậy, còn nếu các bạn code ngôn ngữ khác thì có thể thay đổi khác đi
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = true,
    max_file_lines = nil,
  },
}
require('nvim-autopairs').setup{}
