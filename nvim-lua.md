---
title: init.vim => init.lua
---
[Back to ToC](index) | [Up one Page](index)

DONE Port init.vim to init.lua

- [X] port to a lua-based package manager ([packer.nvim](https://github.com/wbthomason/packer.nvim))
  - [X] Bootstrap installation
  - [X] Port all current plugins installed
- [X] port 'easy-life' autocmds
- [X] port modular components (config/\*.vimrc)
  - [X] sets.vimrc
  - [X] maps.vimrc
  - [X] plug_sets.vimrc
  - [X] plug_maps.vimrc
- [X] move to a lua-based statusline ([lualine.nvim](https://github.com/nvim-lualine/lualine.nvim))
- [X] configure plugins installed with <plugin-name>.lua files
  - [X] lualine.lua

DONE calculate startup time (CUR:28.362 ms)

- [X] Current time, after porting to Lua = 26.665 ms. Note that this is before
      lazy-loading! So considering it a job well done!
