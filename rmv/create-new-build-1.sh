currentyear="2023"

lastblockpath=$(find -maxdepth 1 -name 'attempt*' | sort -t_ -nk2,2 | tail -n1)
$lastblock="${lastblockpath##*/}" # gives 'attempt 48'
lastblock="${tmp##*attempt }" # gives '48'. THANK YOU GOOGLE BARD!
#if [ "$lastblock" -ge "2" ]
#   then
#      prevblock="$(($lastblock + 1))"
mkdir "attempt ""$(($lastblock + 1))"
#mv "$lastblock""/" "$currentyear""/"
