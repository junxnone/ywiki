set -x
echo "Starting clean the older Content.."

function print_help(){
  echo "Usage:"
  echo " source clean.sh  [new/wiki/name]"
}

if [ "$1" == "-h" ]; then
    print_help
    exit 0 
fi
if [ "$1" == "" ]; then
    print_help
    exit 0 
fi




function clean(){
    rm docs/0*.md
    rm -fr docs/bk
    rm docs/*.pdf
    rm docs/_sidebar.md
    echo ""> docs/sidebar.md
    echo ""> docs/hist.md
}

function create_change(){
    echo "## $1"> README.md
    echo "This is a $1 Wiki">> README.md
    sed -i 's/twiki/'"$1"'/g' docs/README.md
    sed -i '/About/d' docs/README.md
    sed -i 's/twiki/'"$1"'/g' docs/index.html
    sed -i 's/Template Wiki/'"$1"'/g' docs/index.html

}

clean
create_change $1

set +x