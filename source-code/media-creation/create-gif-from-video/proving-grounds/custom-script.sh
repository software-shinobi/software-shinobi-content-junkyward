
rm *.gif

rm -rf frames;

mkdir frames;

ffmpeg -i space-shuttle-launch.ogv  -r 20 'frames/frame-%03d.jpg'

cd frames

convert -delay 20 -loop 0 *.jpg ../space-shuttle-launch.gif

convert -delay 20 -layers Optimize -loop 0 *.jpg ../space-shuttle-launch-reduced.gif

cd ..

killall -9 vlc

vlc ../space-shuttle-launch-reduced.gif
