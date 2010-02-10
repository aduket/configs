PROMPT_COMMAND='history -a'
PROMPT_COMMAND='shopt -s cdspell'
PROMPT_COMMAND='shopt -s histappend'

CDPATH='.:~:..:../..:/mnt/yedek/'

export CDPATH


### Color Bash ### user = Green ### root = Red ###
if [ $(id -u) -eq 0 ];
then 
  PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] $"
else
  PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] $"
fi
[ -z "$PS1" ] && return
### Color Bash End ###

### Alias ###
alias cd..='cd ..'
alias cd-='cd -'
alias rm='rm -i'
alias vi='vim'
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias pacsr='pacman-color -Ss'
alias pacit='sudo pacman-color -S'
alias pacup='sudo pacman-color -Syu'
alias pacrm='sudo pacman-color -Rns'
alias yaosr='yaourt -Ss'
alias yaoit='yaourt -S'
alias yaoup='yaourt -Syu --aur'
alias yaorm='yaourt -Rns'
alias pacclean='cp -n /var/cache/pacman/pkg/* /mnt/yedek/linuxyedek/pkg/ && sudo pacman -Scc && sudo pacman -Rcs $(pacman -Qtdq) '
alias un='tar -zxvf'
alias grep='grep --color=auto'
alias ping='ping -c 4'
alias openports='netstat -nape --inet'
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut -c-6,21-94 | tail -10'
alias du='du -h --max-depth=1'
alias date='date "+%d-%m-%Y %A    %T %Z"'
alias mplayerc='mplayer -vo fbdev2 -zoom -x 1280 -y 1024 -subcp utf-8'
alias sc='screen -r'
alias sens='sensors'
alias todo='echo $1 >> /home/d/.todo'
alias sus='sudo /etc/rc.d/mpd stop'
alias muzik='sudo /etc/rc.d/mpd start && mpc play'
alias cls='clear'
alias vdrv='sudo modprobe vboxdrv'
alias conf='sudo vim /etc/rc.conf'
alias bashrc='vim /home/d/.bashrc'
alias yedek='cd /mnt/yedek'
alias kall='killall'
### Alias End ###

### Functions ###

function psx () {
	ps auxww | grep $1 | grep -v grep
	}

function backup () {
	cp ~/.bashrc ~/Dropbox/linuxconfs/
	cp -r ~/.conky ~/Dropbox/linuxconfs/
	cp ~/.conkyler ~/Dropbox/linuxconfs/
	cp ~/.screenrc ~/Dropbox/linuxconfs/
	cp ~/.rtorrent.rc ~/Dropbox/linuxconfs/
	cp ~/.xinitrc ~/Dropbox/linuxconfs/
	cp ~/.vimrc ~/Dropbox/linuxconfs/
	cp -r ~/.vim ~/Dropbox/linuxconfs/
	cp -r ~/.config ~/Dropbox/linuxconfs/
	sudo cp /etc/rc.conf ~/Dropbox/linuxconfs/
	sudo cp /etc/mpd.conf ~/Dropbox/linuxconfs/
	}


### Functions End ###

