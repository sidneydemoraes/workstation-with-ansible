# vim:ft=zsh ts=2 sw=2 sts=2

function git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_PREFIX$(current_branch)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

PROMPT='
%{$fg_bold[green]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)
$ '

# Must use Powerline font, for \uE0A0 to render.
ZSH_THEME_GIT_PROMPT_PREFIX=" on \uE0A0 "
ZSH_THEME_GIT_PROMPT_SUFFIX="$reset_color"
ZSH_THEME_GIT_PROMPT_DIRTY="$fg[yellow]?"
ZSH_THEME_GIT_PROMPT_CLEAN="$fg[green]"
