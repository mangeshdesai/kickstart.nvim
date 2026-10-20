-- Use the local dev clone when present; otherwise install from GitHub.
local dir = vim.fn.expand '~/code/personal/vim-assist'
local spec = {
  name = 'vim-assist',
  main = 'vim_assist',
  event = 'VeryLazy',
  opts = { api_key_cmd = 'cat ~/.config/anthropic/api_key' },
}
if vim.uv.fs_stat(dir) then
  spec.dir = dir
else
  -- SSH URL so lazy can clone the private repo with your key
  spec.url = 'git@github.com:mangeshdesai/vim-assist.git'
end
return spec
