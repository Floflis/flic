currentyear="2023"

lastblockpath=$(find -maxdepth 1 -name 'attempt*' | sort -t_ -nk2,2 | tail -n1)
lastblock="${lastblockpath##*attempt }" # gives '48'. THANK YOU GOOGLE BARD!
#if [ "$lastblock" -ge "2" ]
#   then
#      prevblock="$(($lastblock + 1))"
mkdir "attempt ""$(($lastblock + 1))"
touch "attempt ""$(($lastblock + 1))""/description.txt"
mkdir "attempt ""$(($lastblock + 1))""/Log"
touch "attempt ""$(($lastblock + 1))""/Log/cubic-log.html"
mkdir "attempt ""$(($lastblock + 1))""/Log/Screenshots"
mkdir "attempt ""$(($lastblock + 1))""/Log/Screenshots/1.worked"
mkdir "attempt ""$(($lastblock + 1))""/Log/Screenshots/2.Live ISO"
mkdir "attempt ""$(($lastblock + 1))""/Log/Screenshots/3.Installed"
mkdir "attempt ""$(($lastblock + 1))""/Issues"
touch "attempt ""$(($lastblock + 1))""/Issues/Possible issues.txt"
touch "attempt ""$(($lastblock + 1))""/Issues/Confirmed issues.txt"
#mv "$lastblock""/" "$currentyear""/"
