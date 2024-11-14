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
<<<<<<< HEAD
local package_path_str = "/home/solomon-fosuhene/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?.lua;/home/solomon-fosuhene/.cache/nvim/packer_hererocks/2.1.1703358377/share/lua/5.1/?/init.lua;/home/solomon-fosuhene/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?.lua;/home/solomon-fosuhene/.cache/nvim/packer_hererocks/2.1.1703358377/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/solomon-fosuhene/.cache/nvim/packer_hererocks/2.1.1703358377/lib/lua/5.1/?.so"
=======
local package_path_str = "/home/solomon/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?.lua;/home/solomon/.cache/nvim/packer_hererocks/2.1.1725453128/share/lua/5.1/?/init.lua;/home/solomon/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?.lua;/home/solomon/.cache/nvim/packer_hererocks/2.1.1725453128/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/solomon/.cache/nvim/packer_hererocks/2.1.1725453128/lib/lua/5.1/?.so"
>>>>>>> 70ae760 (Added more plugins)
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
  ["cmp-buffer"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/cmp-buffer",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/cmp-buffer",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/cmp-path",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/cmp-path",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  harpoon = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["monokai.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme monokai\bcmd\bvim\0" },
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/monokai.nvim",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["codeium.vim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/codeium.vim",
    url = "https://github.com/Exafunction/codeium.vim"
  },
  harpoon = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["monokai.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme monokai\bcmd\bvim\0" },
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/monokai.nvim",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/tanvirtin/monokai.nvim"
  },
  nerdtree = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/nerdtree",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/nerdtree",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-autopairs"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/nvim-cmp",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/nvim-cmp",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/packer.nvim",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/packer.nvim",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/playground",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/playground",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/telescope.nvim",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["startup.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\14dashboard\nsetup\fstartup\frequire\0" },
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/startup.nvim",
    url = "https://github.com/startup-nvim/startup.nvim"
  },
  tagbar = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/tagbar",
    url = "https://github.com/preservim/tagbar"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/telescope.nvim",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/vim-airline",
    url = "https://github.com/vim-airline/vim-airline"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/vim-fugitive",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["venn.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/venn.nvim",
    url = "https://github.com/jbyuki/venn.nvim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-dadbod"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-dadbod",
    url = "https://github.com/tpope/vim-dadbod"
  },
  ["vim-dadbod-completion"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-dadbod-completion",
    url = "https://github.com/kristijanhusak/vim-dadbod-completion"
  },
  ["vim-dadbod-ui"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-dadbod-ui",
    url = "https://github.com/kristijanhusak/vim-dadbod-ui"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-fugitive",
>>>>>>> 70ae760 (Added more plugins)
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-surround"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/vim-surround",
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-surround",
>>>>>>> 70ae760 (Added more plugins)
    url = "http://github.com/tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/home/solomon-fosuhene/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
=======
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["web-tools.nvim"] = {
    loaded = true,
    path = "/home/solomon/.local/share/nvim/site/pack/packer/start/web-tools.nvim",
    url = "https://github.com/ray-x/web-tools.nvim"
>>>>>>> 70ae760 (Added more plugins)
  }
}

time([[Defining packer_plugins]], false)
-- Config for: monokai.nvim
time([[Config for monokai.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme monokai\bcmd\bvim\0", "config", "monokai.nvim")
time([[Config for monokai.nvim]], false)
<<<<<<< HEAD
=======
-- Config for: startup.nvim
time([[Config for startup.nvim]], true)
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\ntheme\14dashboard\nsetup\fstartup\frequire\0", "config", "startup.nvim")
time([[Config for startup.nvim]], false)
>>>>>>> 70ae760 (Added more plugins)

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
