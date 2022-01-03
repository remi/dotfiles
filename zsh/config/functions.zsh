# Functions
# --------------------------------------

# Kill via grep
function grepkill() {
  ps aux | grep -e $1 | grep -v grep | awk '{print $2}' | xargs -p kill
}

# Kill -9 via grep
function grepkill9() {
  ps aux | grep -e $1 | grep -v grep | awk '{print $2}' | xargs -p kill -9
}

function lab() {
  case $1 in
    bro)
        url=$(git remote -vv | grep "githost" | head -n1 | sed 's/:/\//' | sed 's/.*git@\([^ ]*\).*/https:\/\/\1/')
        open "$url"
  esac
}
