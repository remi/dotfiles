#!/bin/bash
# Output the current playing song (or `—`) on Spotify
#
# Usage:
# $ bash spotify.sh
#
# Output:
# ♫  The Gates · Cunninlynguists

osascript -e 'tell application "System Events"
  set processlist to (name of every process)
end tell
if processlist contains "Spotify" then
  tell application "Spotify"
    if player state is stopped or player state is paused then
      set output to "♫  —"
    else
      set trackname to name of current track
      set artistname to artist of current track
      set output to "♫  " & trackname & " · " & artistname
    end if
  end tell
else
  set output to "♫  —"
end if'
