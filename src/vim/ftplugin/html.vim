"           PLANTILLAS
    " HTML
    nnoremap ,html :-1read $HOME/.vim/templates/html/skeleton.html<CR>

    " tabulacion html
    autocmd FileType html set shiftwidth=2 tabstop=2

    " Cierre de etiquetas html
    autocmd FileType html inoremap ;<Tab> <Esc>F<lyt>A</<C-r>"><Esc>2ba
