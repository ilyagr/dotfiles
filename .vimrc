function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim  " Will error and proceed if fails

set expandtab
set shiftwidth=0
set tabstop=4

set wildmenu
"set wildmode=list:longest   " make cmdline tab completion similar to bash
set wildmode=list:longest,full " better

set pastetoggle=<F2>
" Another suggestion is :r! cat

" ==== My own little Spacemacs ====
" Perhaps change `set timeout`?
noremap <Space>wd <C-W>c
noremap <Space>wm <C-W>o
" noremap <Space>fed :edit ~/.vimrc<CR>

noremap <Space>ws <C-W>s
noremap <Space>wv <C-W>v
noremap <Space>wh <C-W>h
noremap <Space>wj <C-W>j
noremap <Space>wk <C-W>k
noremap <Space>wl <C-W>l

" If I want to use , as mapleader
" noremap <unique> _ ,
" noremap <unique> - ;
" "https://github.com/chrisbra/vim_faq

" ==== Whitespace ===
set listchars=tab:▷\ ,eol:¬,extends:»,precedes:«  " Use `set list` to use
noremap <leader>l :set list!<CR>
" "Tabs and trailing whitespace (or just use `set list` and keep end:$ in
" "listchars?
" https://vimawesome.com/plugin/better-whitespace
" set list
" set list listchars=tab:»\ ,trail:°
" set listchars=tab:<\ >,trail:\ 
" highlight SpecialKey guibg=green ctermbg=red

" ==== This starts SpaceVim if it's installed =====
call SourceIfExists("~/.vim/vimrc")

set wrap

" if &diff
"   syntax off
" endif
