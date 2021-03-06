"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/home/flat/.local/share/dein/repos/github.com/Shougo/dein.vim

  " Required:
  if dein#load_state('/home/flat/.local/share/dein')
    call dein#begin('/home/flat/.local/share/dein')

      " Let dein manage dein
      " Required:
      call dein#add('/home/flat/.local/share/dein/repos/github.com/Shougo/dein.vim')

     	" Add or remove your plugins here like this:
	call dein#add('wsdjeg/dein-ui.vim')
	call dein#add('airblade/vim-gitgutter')
	call dein#add('chiel92/vim-autoformat')

       " Required:
       call dein#end()
       call dein#save_state()
   endif

   " Required:
   filetype plugin indent on
   syntax enable

   " If you want to install not installed plugins on startup.
   if dein#check_install()
   	call dein#install()
   endif

"End dein Scripts-------------------------
