packadd minpac
call minpac#init()

call minpac#add('kien/ctrlp.vim')
call minpac#add('mattn/emmet-vim')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-surround')
call minpac#add('w0rp/ale')
call minpac#add('vim-airline/vim-airline')

" Syntax highlighting
call minpac#add('lumiliet/vim-twig')
call minpac#add('mxw/vim-jsx')
call minpac#add('othree/html5.vim')
call minpac#add('pangloss/vim-javascript')
call minpac#add('slim-template/vim-slim')
call minpac#add('tpope/vim-liquid')
call minpac#add('tpope/vim-haml')
call minpac#add('tpope/vim-markdown')

" Colorschemes
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('dracula/vim')
call minpac#add('morhetz/gruvbox')

" Minpac commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
