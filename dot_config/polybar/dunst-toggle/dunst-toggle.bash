END_COLOR="%{F-}"
MUTED_COLOR="%{F#f92672}"  # Color when the audio is muted

if [ "$1" = "toggle" ];then
  dunstctl set-paused toggle
fi
status=`dunstctl is-paused`
if [ "$status" = "true" ];then
  echo -n "${MUTED_COLOR} OFF${END_COLOR}"
else
  echo -n "  ON"
fi
