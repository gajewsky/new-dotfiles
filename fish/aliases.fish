alias ls 'exa -a'
alias cat 'bat'
alias vim 'nvim'
alias reload! 'source ~/.config/fish/config.fish'
alias gapan 'git add --intent-to-add . && git add --patch'
alias git-branch-fzf "git branch -vv --color=always | fzf-tmux -d 15 --ansi | cut -c3- | cut -d' ' -f1"
alias gcob 'git checkout (git-branch-fzf)'
alias gcmsg 'git commit -m'
alias gundo='git reset HEAD~'
alias vue='/home/gajewsky/.asdf/installs/nodejs/13.5.0/.npm/bin/vue'


alias dco 'docker-compose'
alias dce 'docker-compose exec'
alias dl 'docker ps -l -q'
alias dbe 'docker-compose run rails env bundle exec'