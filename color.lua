require('onedark').setup  {
  style = 'dark', 
  transparent = true,  -- Đây là lựa chọn transparent 
  toggle_style_key = '<leader>ts', -- Các bạn có thể chuyển giữa các color của One dark bằng cách gõ '\ts' 
  toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer'},     
  code_style = {
      comments = 'italic',
      keywords = 'none',
      functions = 'bold',
      strings = 'none',
      variables = 'bold'
  },
  diagnostics = {
      darker = true, 
      undercurl = true,  
      background = true,    
  },
}
require('onedark').load()
