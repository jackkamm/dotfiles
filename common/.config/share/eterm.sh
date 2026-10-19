# configuration for terminals in emacs

# track remote directory
# https://www.emacswiki.org/emacs/AnsiTermHints#toc5

set_eterm_dir() {
    echo -e "\033AnSiTu" "$LOGNAME"
    echo -e "\033AnSiTh" "$(hostname)"
    echo -e "\033AnSiTc" "$(pwd)"
}

#if [ -n "$INSIDE_EMACS" ]; then
if [ "$TERM" = "eterm-color" ]; then
    # bash
    PROMPT_COMMAND=set_eterm_dir
    # zsh
    precmd_functions=($precmd_functions set_eterm_dir)
fi

## another way to track remote directory:
## https://stackoverflow.com/a/4101997/3718509
#if [ -n "$INSIDE_EMACS" ]; then
#   chpwd() { print -P "\033AnSiTc %d" }
#   print -P "\033AnSiTu %n"
#   print -P "\033AnSiTc %d"
#fi

## fixes broken term-send-backspace in emacs term in OSX
## FIXME outdated?
#if [[ -n $INSIDE_EMACS && $(uname) == 'Darwin' ]]; then
#    stty ek
#    ## alternate solution:
#    #stty erase 
#fi
