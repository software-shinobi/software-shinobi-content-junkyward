

reset;clear;

set -x;

pp=`pwd`



pwd

#ls -lha
pickupDirectory="/tmp/uber-suggest-files"
outputFile=$pickupDirectory"/combined-files.dat"
archive="archives"
filter="*.csv"
percentage="21"



cd
cd $pickupDirectory


rm -rf $archive
mkdir $archive

cp $filter $archive

cd $archive
chmod -R 444 *
chown -R nobody:nobody *
cd ..

#good find . -iname "$filter" -type f -exec echo "Processing: "{} \; > $outputFile
      find . -iname "$filter" -type f -exec convert -resize $percentage% {} {}"-$percentage-percent-reduction.png" \;
#find . -iname "$filter" -type f -exec convert -resize $percentage% {} {}"-$percentage-percent-reduction.png"\; > $outputFile

#cat $outputFile

# convert  -resize 20% source.png dest.jpg
# convert -resize 1024X768  source.png dest.jpg
