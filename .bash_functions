#
# ~/.bash_functions
#

# ex - archive extractor
# usage: ex <file>
ex () {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}


### Count number os files given some expression. eg: .mp3
count() {
	ls -a -1 | grep -i $1 | wc -l | lolcat
}

### Check size in Mb based on argument, works with files and directories
size() {
	du $1 --total --human-readable | grep -i "total" | lolcat
}

### Manual USB formatter
usb_formatter() {
    printf '
    // List devices
    lsblk

    // Dismount (replace <?> to complete `sda` or `sdb`)
    sudo umount /dev/sd<?>

    // Format it
    // if = input file -> of = output device
    sudo dd bs=4M if=path/to/input.iso of=/dev/sd<?> conv=ddatasync status=progess
    '
}

# funny and customized message
# message displayed everytime terminal its open up
# call it in the end of .bashrc
function welcome_message() {
    # output: PM 02:50:13 (-03) | Sun 28 June 2020
    DATE=$(date +'%p %I:%M:%S (%Z) | %a %d %B %Y')
    MSG=$(fortune | cowsay)

    clear
    printf "Date: $DATE \n" | lolcat
    printf "$MSG \n" | lolcat
}
