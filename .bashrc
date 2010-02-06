
# Check for an interactive session
# Define a few Color's
BLACK='\e[0;30m'
BLUE='\e[0;34m'
GREEN='\e[0;32m'
CYAN='\e[0;36m'
RED='\e[0;31m'
PURPLE='\e[0;35m'
BROWN='\e[0;33m'
LIGHTGRAY='\e[0;37m'
DARKGRAY='\e[1;30m'
LIGHTBLUE='\e[1;34m'
LIGHTGREEN='\e[1;32m'
LIGHTCYAN='\e[1;36m'
LIGHTRED='\e[1;31m'
LIGHTPURPLE='\e[1;35m'
YELLOW='\e[1;33m'
WHITE='\e[1;37m'
NC='\e[0m'             


if [ $(id -u) -eq 0 ];
then 
  PS1="\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] $"
else
  PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] $"
fi

[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias cd..='cd ..'
alias vi='vim'
alias ll='ls -l --color=auto'
alias la='ls -al --color=auto'
alias ls='ls --color=auto'
alias pacsr='pacman-color -Ss'
alias pacit='sudo pacman-color -S'
alias pacup='sudo pacman-color -Syu'
alias pacrm='sudo pacman-color -Rns'
alias yaosr='yaourt -Ss'
alias yaoit='yaourt -S'
alias yaoup='yaourt -Syu --aur'
alias yaorm='yaourt -Rns'
netinfo ()
{
echo "--------------- Network Information ---------------"
/sbin/ifconfig | awk /'inet addr/ {print $2}'
echo ""
/sbin/ifconfig | awk /'Bcast/ {print $3}'
echo ""
/sbin/ifconfig | awk /'inet addr/ {print $4}'

# /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
echo "---------------------------------------------------"
}

spin ()
{
echo -ne "${RED}-"
echo -ne "${WHITE}\b|"
echo -ne "${BLUE}\bx"
sleep .001
echo -ne "${RED}\b+${NC}"
}
# Alias's to modified commands
alias ps='ps auxf'
alias home='cd ~'
alias psx='ps aux | grep'
alias un='tar -zxvf'
alias mountedinfo='df -hT'
alias ping='ping -c 10'
alias openports='netstat -nape --inet'
alias ns='netstat -alnp --protocol=inet | grep -v CLOSE_WAIT | cut
-c-6,21-94 | tail +2'
alias du1='du -h --max-depth=1'
alias da='date "+%Y-%m-%d %A    %T %Z"'



#for i in `seq 1 135` ; do spin; done ;echo "";
#echo -ne "${YELLOW}Hello $USER today is "; date
#echo -ne "${GREEN}Uptime:  ";uptime | awk /'up/'
#for i in `seq 1 135` ; do spin; done ;echo "";
#echo ""; echo ""















######## Kendi aliaslarım  ##############
alias mplayerconsole='mplayer -vo fbdev2 -zoom -x 1280 -y 1024 -subcp utf-8'
alias sc='screen -r'
alias sens='sensors'
alias pacclean='sudo pacman -Scc && sudo pacman -Rcs '
alias todo='echo $1 >> /home/d/.todo'
alias sus='sudo /etc/rc.d/mpd stop'
alias muzik='sudo /etc/rc.d/mpd start && mpc play'
alias cls='clear'
alias vdrv='sudo modprobe vboxdrv'
