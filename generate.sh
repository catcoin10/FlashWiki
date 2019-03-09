# save HTML files to computer
cd /tmp
git clone https://github.com/catcoin10/FlashWiki
cd FlashWiki
python -m SimpleHTTPServer 8888 # allow the computer to read files locally
firefox localhost:8888
