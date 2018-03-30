"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35

" ColorFul NERDTree Settings
let g:NERDTreeRespectWildIgnore=1
let g:NERDTreeDirArrows=0
let g:NERDTreeDirArrowExpandable = '▷'
let g:NERDTreeDirArrowCollapsible = '▼'
let g:NERDTreeIndicatorMapCustom = {
    	\ "Modified"  : "o",
    	\ "Staged"    : "*",
    	\ "Untracked" : "+",
    	\ "Renamed"   : ">",
    	\ "Unmerged"  : "=",
    	\ "Deleted"   : "-",
    	\ "Dirty"     : "×",
    	\ "Clean"     : "@",
    	\ 'Ignored'   : '☒',
    	\ "Unknown"   : "?"
    	\ }

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
