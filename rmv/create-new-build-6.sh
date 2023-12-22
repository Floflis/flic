currentyear="2023"

if [ ! -e attempt*/ ];
then
diruse="0"
else
latestbuild=$(find -maxdepth 1 -name 'attempt*' | sort -t_ -nk2,2 | tail -n1)
diruse="${latestbuild##*attempt }"
fi

mkdir "attempt ""$(($diruse + 1))"
touch "attempt ""$(($diruse + 1))""/description.txt"
mkdir "attempt ""$(($diruse + 1))""/Log"
touch "attempt ""$(($diruse + 1))""/Log/cubic-log.html"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots/1.worked"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots/2.Live ISO"
mkdir "attempt ""$(($diruse + 1))""/Log/Screenshots/3.Installed"
mkdir "attempt ""$(($diruse + 1))""/Issues"
touch "attempt ""$(($diruse + 1))""/Issues/Possible issues.txt"
touch "attempt ""$(($diruse + 1))""/Issues/Confirmed issues.txt"

if [ ! -e "$currentyear" ];then mkdir "$currentyear";fi && mv "$lastblock"/ "$currentyear"/
