function! RSpecCommand(lines)
  let cmd = "! bundle exec rspec " . expand('%') .":" . a:lines
  echom cmd
  exec cmd
endfunction

command! -nargs=1 RSpec :call RSpecCommand(<args>)
nnoremap <leader>ft :execute "RSpec " . line('.')<cr>
nnoremap <leader>at :! bundle exec rspec %<cr>
