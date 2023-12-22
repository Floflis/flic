lastblockpath=$(find -maxdepth 1 -name 'attempt*' | sort -t_ -nk2,2 | tail -n1)
tmp="${lastblockpath##*/}" # gives 'attempt 48'
#lastblock="${tmp%*attempt }" # gives '48'?
#lastblock="${tmp%*attempt}" # gives '48'?
lastblock="${tmp##*attempt }"
#if [ "$lastblock" -ge "2" ]
#   then
#      prevblock="$(($lastblock + 1))"
#mkdir "$(($lastblock + 1))"
#echo "Going to make new folder no:""$(($lastblock + 1))"
echo "last block: $lastblock"
