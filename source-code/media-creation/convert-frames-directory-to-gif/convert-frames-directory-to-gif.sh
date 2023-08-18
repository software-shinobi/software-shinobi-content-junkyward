
reset;clear;

rm *.gif

cd frames

convert -delay 5 -layers Optimize -loop 0 *.jpg ../output-video-5.gif

convert -delay 10 -layers Optimize -loop 0 *.jpg ../output-video-10.gif

convert -delay 15 -layers Optimize -loop 0 *.jpg ../output-video-15.gif

convert -delay 20 -layers Optimize -loop 0 *.jpg ../output-video-20.gif

convert -delay 25 -layers Optimize -loop 0 *.jpg ../output-video-25.gif

cd ..
