reset;

clear;

#set -e;

#set -x;

rm *.gif

ffmpeg -i space-shuttle-launch.ogv -r 15 -vf scale=512:-1 \
  -ss 00:00:17 -to 00:00:22 space-shuttle-animated-gif.gif

  pkill -9 vlc

  vlc space-shuttle-animated-gif.gif

  ffmpeg \
    -i space-shuttle-launch.ogv \
    -r 15 \
    -vf scale=512:-1 \
    -ss 00:00:00 -to 00:00:15 \
    space-shuttle-animated-gif2.gif

    pkill -9 vlc

    vlc space-shuttle-animated-gif2.gif
