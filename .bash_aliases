### Random aliases (will eventually be sorted into categories)
alias h="history"
alias type=cat
alias grep="grep -i"
alias search=grep
alias wget="wget -c"
# confirm before overwriting something
alias cp="cp -i"
# human-readable sizes
alias df='df -h'
# show sizes in MB
alias free='free -m'
alias np='nano -w PKGBUILD'
alias more=less
alias python='python3'
alias py=python
alias pip='pip3'

### Default applications
export EDITOR=nano
alias open-pdf="qpdfview"
alias calc="gnome-calculator"
alias terminal="gnome-terminal"
alias term="gnome-terminal"

### System
alias super-update="clear && sudo pacman -Syu --noconfirm && notify-send 'System update completed !!!' --urgency=normal"
alias discord-update="pacman -U https://www.archlinux.org/packages/community/x86_64/discord/download/"
alias poff="shutdown -h 0"
alias bye=poff
alias poweroff="shutdown -h 0"
alias reboot="shutdown -r 0"

### Docker
alias docker-start='sudo systemctl start docker.service'
alias docker-stop='sudo systemctl stop docker.service'

### Git
alias gc='git clone'
alias gs='clear && git status | lolcat'
alias ga='git add'
alias gaa='git add -A'
alias gtm="git commit -m"
alias gco="git checkout"
alias pll="git pull origin"
alias psh="git push origin"

### File/Directories
alias count_files="ls -1 | wc -l | lolcat"
alias count_hidden_files="ls -a -1 | wc -l | lolcat"
alias open="xdg-open"
alias op=open

### Navigation
alias dirs="ls -al | grep '^d'"
alias l="clear && ls"
alias la="clear && ls -a"
alias ..="cd .."
alias cd..="cd .."
alias cd....="cd ../.."

### Tree
alias t="tree -L 1 | lolcat"
alias ta="tree -a -L 1 | lolcat"
alias td="tree -d -L 1 | lolcat"

### Postgres SQL (I keep forgeting how to login no matter what, so this is handy)
alias psql-start="sudo systemctl enable --now postgresql.service"
alias psql-enter="psql --dbname=postgres --host=localhost --username=postgres"
