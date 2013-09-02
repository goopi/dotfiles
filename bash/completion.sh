if [ -f ~/.bin/git_completion ]; then
  source ~/.bin/git_completion
fi

if [ -f ~/.bin/project_completion ]; then
  complete -C ~/.bin/project_completion -o default pj
fi
