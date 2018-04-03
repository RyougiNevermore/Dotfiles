""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
  let MRU_Exclude_Files = '^/tmp/.*\|^/var/tmp/.*'  " For Unix
map <leader>f :MRU<CR>
