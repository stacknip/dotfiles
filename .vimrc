" This document is executed by Vi and Vim on startup.

exec ":source " . expand("<sfile>:h") . "/.vim-settings"
" Sourced het ".vim-settings"-bestand die te vinden is (, of zou moeten zijn,) in de directory van dit bestand
" expand()	:dit retourneert hetgeen wat tussen de haakjes gegeven wordt in zijn volledige vorm, in dit geval:
"	<sfile>	:sourced script file name
"	:h	:head (last path component removed)
" Hetzelfde als:
"	source <sfile>:h/.vim-settings
" De nu gehanteerde manier is gekozen, omdat deze ook laat zien dat er gebruik gemaakt wordt van de expand()-functie; deze wordt enigszins verborgen gehouden wanneer de "directe-source"-methode aangehouden wordt

exec ":source " . expand("<sfile>:h") . "/.vim-functions"
" Sourced het ".vim-functions"-bestand op eenzelfde manier als voorgaande "source"-commando
" Hetzelfde als:
"	source <sfile>:h/.vim-functions

" Remaps in normal mode
nnoremap <C-U> :call SmoothScroll(1)<Enter>
" zie functie in "~/.vim-functions"
nnoremap <C-D> :call SmoothScroll(-1)<Enter>
" zie functie in "~/.vim-functions"

if &term == "linux" || "screen"
	set t_ve+=[?81;0;112c
endif

if &term =~ "xterm"
	let &t_SI = "\<Esc>]12;purple\x7"
	let &t_EI = "\<Esc>]12;blue\x7"
endif
