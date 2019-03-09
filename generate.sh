# save HTML files to computer
# usage:
# $0: run normal
# $0 killhttp: stop web server
[ $1 = killhttp ] && kill $(cat /tmp/flash.pid) && rm /tmp/flash.pid && exit
cd /tmp
git clone https://github.com/catcoin10/FlashWiki
cd FlashWiki
python -m SimpleHTTPServer 8888>/dev/null 2>&1 & # allow the computer to read files locally
echo $!>/tmp/flash.pid
firefox localhost:8888 2>/dev/null 1>&2 &
