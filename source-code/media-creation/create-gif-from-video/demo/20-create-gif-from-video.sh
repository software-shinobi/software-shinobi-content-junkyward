reset;

clear;

set -e;

set -x;

function foo(){
tgtd="target-video"
tgtf="space-shuttle-launch.gif"

rm -rf    $tgtd
mkdir     $tgtd
cd        $tgtd
}
ffmpeg -i space-shuttle-launch.ogv -r 15 -vf scale=512:-1 \
  -ss 00:00:17 -to 00:00:22 space-shuttle-launch.gif
