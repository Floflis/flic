currentyear="2023"

if [ ! -e attempt*/ ];
then
diruse="0"
else
latestbuild=$(find -maxdepth 1 -name 'attempt*' | sort -t_ -nk2,2 | tail -n1)
diruse="${latestbuild##*attempt }"
fi

mkdir "attempt ""$(($diruse + 1))"
touch "attempt ""$(($diruse + 1))""/Description.txt"
mkdir "attempt ""$(($diruse + 1))""/Log"
touch "attempt ""$(($diruse + 1))""/Log/cubic-log.html"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots/1.Worked"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots/2.Live ISO"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots/3.Installed"
mkdir "attempt ""$(($diruse + 1))""/Issues"
touch "attempt ""$(($diruse + 1))""/Issues/Possible issues.txt"
touch "attempt ""$(($diruse + 1))""/Issues/Confirmed issues.txt"

if [ ! -e "$currentyear" ];then mkdir "$currentyear";fi # make a dir for the current year, for the first time.
if [[ "$diruse" != "0" ]];then mv "$latestbuild"/ "$currentyear"/;echo "New build initiated!";echo "Previous build has been archived under the '$currentyear' folder.";fi # move a previous build only if its not the first build
if [[ "$diruse" == "0" ]];then echo "Your first ever build has been initiated!";fi
