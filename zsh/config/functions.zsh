# Functions
# --------------------------------------

# Print a pretty `pwd` to use in the prompt
function collapse_pwd() {
  echo $(pwd | sed -e "s,^$HOME,~,")
}

# Print the prompt
# `rbenv-prompt` and `git-prompt` are in ../bin/
function generate_prompt() {
  echo "$PR_NO_COLOR$PR_LIGHT_YELLOW$(collapse_pwd)$PR_NO_COLOR$PR_LIGHT_WHITE$(rbenv-prompt)$(git-prompt)$PR_NO_COLOR\n$PR_GREEN%%$PR_NO_COLOR "
}

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
