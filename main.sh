# Color variables
unicode="▅▅▅"

black=$(tput setaf 0)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
magenta=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)
bright=$(tput bold)
normal=$(tput sgr0)

echo $blue"$(whoami)"$normal"@"$red"$(hostname)"
echo $normal"┌────────────"
echo $normal"│  username            - "$red"$(whoami)"
echo $normal"│  hostname            - "$green"$(hostname)"
echo $normal"│  distro              - $yellow$(sed -n 's/^PRETTY_NAME="//p' /etc/os-release | cut -f1 -d'"')${normal}"
echo $normal"│  kernel              - $blue$(uname -r)"
echo $normal"│  desktop environment - $magenta$XDG_CURRENT_DESKTOP"
echo $normal"│  shell               - $cyan${SHELL##*/}"
echo $normal"│  uptime              - $white$(uptime -p | sed "s/up //")"
echo $normal"│  colors              - ${red}$unicode${normal}${yellow}$unicode${normal}${green}$unicode${normal}${cyan}$unicode${normal}${blue}$unicode${normal}${magenta}$unicode${normal}"
