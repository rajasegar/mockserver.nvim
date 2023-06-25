if exists("g:loaded_mockserver")
  finish
endif

let g:loaded_mockserver = 1

" let s:lua_rocks_deps_loc = expand("<sfile>:h:r") . "/../lua/mockserver/deps"
" exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

" Exposes the plugin's functions for use as commands in Neovim
command! -nargs=0 MockServerStart lua require("mockserver").start_server()
command! -nargs=0 MockServerStop lua require("mockserver").stop_server()



