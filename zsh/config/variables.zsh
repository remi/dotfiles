# Easy-to-use terminal colours variables
# --------------------------------------
autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
  colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE BLACK; do
  eval PR_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
  eval export XPR_$color='$terminfo[bold]$fg[${(L)color}]'
  eval PR_LIGHT_$color='%{$fg[${(L)color}]%}'
  eval export XPR_LIGHT_$color='$fg[${(L)color}]'
  (( count = $count + 1 ))
done

# Global variables
# --------------------------------------
export PATH="$HOME/.zsh/bin:$PATH"
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:$HOME/Library/Python/2.7/bin"
export PATH="$PATH:$HOME/.dotnet"
export PATH="$PATH:$HOME/.dotnet/tools"

# Terminal config
export DISPLAY
export WORDCHARS='*?_[]~=&;!#$%^(){}'
export TERM="xterm-color"

# Timezone
export TZ="America/Montreal"

# History limits
export HISTFILE=$HOME/.zhistory
export HISTSIZE=1000000
export SAVEHIST=1000000

# Utilities
export PAGER='less'
export EDITOR='nvim'
export GIT_EDITOR='nvim'
export BROWSER='open'
export LESS="-+e -+f -R -+c -X -M -S -r"

# Colors
export LS_COLORS_BOLD='no=00:fi=00:di=01;34:ln=01;95:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.mp4=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:*.tex=01;33:*.sxw=01;33:*.sxc=01;33:*.lyx=01;33:*.pdf=0;35:*.ps=00;36:*.asm=1;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=1;30:*.am=1;33:*.py=0;34:*.rb=0;35:*.md=0;34:*.haml=0;34:*.scss=0;34:*.coffee=0;34:*.js=0;34:*.css=0;34'
export LS_COLORS_NORM='no=00:fi=00:di=01;34:ln=00;36:pi=40;33:so=00;35:do=00;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=00;32:*.tar=00;31:*.tgz=00;31:*.arj=00;31:*.taz=00;31:*.lzh=00;31:*.zip=00;31:*.z=00;31:*.Z=00;31:*.gz=00;31:*.bz2=00;31:*.deb=00;31:*.rpm=00;31:*.jar=00;31:*.jpg=00;35:*.jpeg=00;35:*.gif=00;35:*.bmp=00;35:*.pbm=00;35:*.pgm=00;35:*.ppm=00;35:*.tga=00;35:*.xbm=00;35:*.xpm=00;35:*.tif=00;35:*.tiff=00;35:*.png=00;35:*.mpg=00;35:*.mpeg=00;35:*.mp4=00;35:*.avi=00;35:*.fli=00;35:*.gl=00;35:*.dl=00;35:*.xcf=00;35:*.xwd=00;35:*.ogg=00;35:*.mp3=00;35:*.wav=00;35:*.tex=00;33:*.sxw=00;33:*.sxc=00;33:*.lyx=00;33:*.pdf=0;35:*.ps=00;36:*.asm=0;33:*.S=0;33:*.s=0;33:*.h=0;31:*.c=0;35:*.cxx=0;35:*.cc=0;35:*.C=0;35:*.o=0;30:*.am=0;33:*.py=0;34:*.rb=0;35:*.md=0;34:*.haml=0;34:*.scss=0;34:*.coffee=0;34:*.js=0;34:*.css=0;34'
export MY_LS_COLORS="${MY_LS_COLORS:-LS_COLORS_BOLD}"
eval export LS_COLORS=\${$MY_LS_COLORS}
eval export LSCOLORS=\${$LS_COLORS}

# Locales
export LANG="en_US.UTF-8"
export LC_ALL=$LANG

# Prompt
export PR_NO_COLOR="%{$terminfo[sgr0]%}"
export XPR_NO_COLOR="$terminfo[sgr0]"
export PROMPT='$(generate_prompt)'
export RPROMPT=''

export ERL_AFLAGS="-kernel shell_history enabled"

export RIPGREP_CONFIG_PATH=$HOME/.ripgreprc

export GOPATH="/usr/local/share/go"
export PATH="$PATH:$GOPATH/bin"
