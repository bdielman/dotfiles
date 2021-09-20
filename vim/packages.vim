" Minpac stuff
packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})

" Utilities
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('dense-analysis/ale')
" call minpac#add('itchyny/lightline.vim')
call minpac#add('mattn/emmet-vim')
call minpac#add('tpope/vim-commentary')
call minpac#add('tpope/vim-endwise')
call minpac#add('tpope/vim-fugitive')
call minpac#add('tpope/vim-rhubarb')
call minpac#add('tpope/vim-surround')
call minpac#add('vim-airline/vim-airline')

" Syntax highlighting
call minpac#add('HerringtonDarkholme/yats.vim')
call minpac#add('MaxMEllon/vim-jsx-pretty')
call minpac#add('othree/html5.vim')
call minpac#add('pangloss/vim-javascript')
call minpac#add('slim-template/vim-slim')
call minpac#add('tpope/vim-liquid')

" Colorschemes
call minpac#add('dracula/vim')
call minpac#add('gruvbox-community/gruvbox')

" Minpac commands
command! PackUpdate call minpac#update()
command! PackClean call minpac#clean()
command! PackStatus call minpac#status()
