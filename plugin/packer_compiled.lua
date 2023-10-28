-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  catppuccin = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/catppuccin",
    url = "https://github.com/catppuccin/nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  harpoon = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["symbols-outline.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n�\4\0\0\a\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0005\3\26\0005\4\6\0005\5\3\0005\6\4\0=\6\5\5=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0005\6\r\0=\6\5\5=\5\14\0045\5\15\0005\6\16\0=\6\5\5=\5\17\0045\5\18\0005\6\19\0=\6\5\5=\5\20\0045\5\21\0005\6\22\0=\6\5\5=\5\23\0045\5\24\0=\5\25\4=\4\27\3>\3\1\2B\0\2\1K\0\1\0\rkeywords\1\0\0\fGOODJOB\1\0\2\ncolor\thint\ticon\b\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\2\ticon\t󰙨\ncolor\ttest\tNOTE\1\2\0\0\tINFO\1\0\2\ticon\t󰎚\ncolor\thint\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\2\ticon\t󰓅\ncolor\tinfo\tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ticon\t \ncolor\fwarning\tHACK\1\0\2\ncolor\fwarning\ticon\t \tTODO\1\0\2\ncolor\tinfo\ticon\t \bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ticon\t \ncolor\nerror\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vs-tasks.nvim"] = {
    loaded = true,
    path = "/home/.local/share/nvim/site/pack/packer/start/vs-tasks.nvim",
    url = "https://github.com/EthanJWright/vs-tasks.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n�\4\0\0\a\0\28\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\3\0005\3\26\0005\4\6\0005\5\3\0005\6\4\0=\6\5\5=\5\a\0045\5\b\0=\5\t\0045\5\n\0=\5\v\0045\5\f\0005\6\r\0=\6\5\5=\5\14\0045\5\15\0005\6\16\0=\6\5\5=\5\17\0045\5\18\0005\6\19\0=\6\5\5=\5\20\0045\5\21\0005\6\22\0=\6\5\5=\5\23\0045\5\24\0=\5\25\4=\4\27\3>\3\1\2B\0\2\1K\0\1\0\rkeywords\1\0\0\fGOODJOB\1\0\2\ncolor\thint\ticon\b\tTEST\1\4\0\0\fTESTING\vPASSED\vFAILED\1\0\2\ticon\t󰙨\ncolor\ttest\tNOTE\1\2\0\0\tINFO\1\0\2\ticon\t󰎚\ncolor\thint\tPERF\1\4\0\0\nOPTIM\16PERFORMANCE\rOPTIMIZE\1\0\2\ticon\t󰓅\ncolor\tinfo\tWARN\1\3\0\0\fWARNING\bXXX\1\0\2\ticon\t \ncolor\fwarning\tHACK\1\0\2\ncolor\fwarning\ticon\t \tTODO\1\0\2\ncolor\tinfo\ticon\t \bFIX\1\0\0\balt\1\5\0\0\nFIXME\bBUG\nFIXIT\nISSUE\1\0\2\ticon\t \ncolor\nerror\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
