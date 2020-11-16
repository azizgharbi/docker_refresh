PORT="8000"
DIR="build"

build_serve() {
  if netstat -tulpn | grep :$1; then
    echo "$1 IS USED CHOOSE ANOTHER PORT"
    read p
    npm run build && cd $DIR && python -m SimpleHTTPServer $p
  else 
    npm run build && cd $DIR && python -m SimpleHTTPServer $PORT
  fi
}

if [ -d $DIR ]
then
    echo "REMOVING_BUILT_DIRECTORY" && rm -rf build && build_serve
else
   build_serve $PORT
fi