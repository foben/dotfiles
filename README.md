#dotfiles
Contains personal dotfiles and setup scripts.

# other adjustments
Adjustments made to facilitate configuration in dotfiles.

## Pulseaudio

Disable "restore_device" in pulseaudio to prevent known streams to always be played on previous sink
```
# /etc/pulse/default.pa
# adjust existing line:

load-module module-stream-restore restore_device=false
```
Source: https://www.freedesktop.org/wiki/Software/PulseAudio/Documentation/User/DefaultDevice/


