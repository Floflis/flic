currentyear="2023"

lastblockpath=$(find -maxdepth 1 -name 'attempt*' | sort -t_ -nk2,2 | tail -n1)
lastblock="${lastblockpath##*attempt }" # gives '48'. THANK YOU GOOGLE BARD!
#if [ "$lastblock" -ge "2" ]
#   then
#      prevblock="$(($lastblock + 1))"
mkdir "attempt ""$(($lastblock + 1))"
mkdir "attempt ""$(($lastblock + 1))""/Screenshots/1.worked"
mkdir "attempt ""$(($lastblock + 1))""/Screenshots/2.Live ISO"
mkdir "attempt ""$(($lastblock + 1))""/Screenshots/3.Installed"
touch "attempt ""$(($lastblock + 1))""/Confirmed issues.txt"
touch "attempt ""$(($lastblock + 1))""/cubic-log.html"
touch "attempt ""$(($lastblock + 1))""/description.txt"
touch "attempt ""$(($lastblock + 1))""/Possible issues.txt"
#mv "$lastblock""/" "$currentyear""/"
