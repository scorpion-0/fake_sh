#!/bin/zsh
function jumpto
{
    label=$1
    cmd=$(sed -n "/$label:/{:a;n;p;ba};" $0 | grep -v ':$')
    eval "$cmd"
    exit
}
sudo cp dafuq.sh ~/dafuq.sh
alias strangesh="bash ~/dafuq.sh"
sudo /bin
sudo echo "bash ~/dafuq.sh" > strangesh
BLUE='\033[0;34m'
NC='\033[0m'
start=${1:-"start"}

jumpto $start

start:
printf "┌──(${BLUE}strange㉿terminal${NC})-[$PWD]"
echo
read -p  "└─$ " command
$command
jumpto $start
