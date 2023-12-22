#!/bin/bash
. ./boot.sh

. "$current_distro"/./FLIC.sh
. "$current_distro"/./FLIC-local.sh
. "$current_distro"/./config

cd "$buildlog_dir"

if [[ ! -e '$buildprefix*' ]]; then  # Enclose in single quotes. This prevents Bash from interpreting any special characters or spaces within the variable's value.
then
diruse="0"
else
latestbuild=$(find -maxdepth 1 -name "$buildprefix*" | sort -t_ -nk2,2 | tail -n1)
diruse="${latestbuild##*$buildprefix}"
fi

mkdir "$buildprefix""$(($diruse + 1))"

cat > "$buildprefix""$(($diruse + 1))""/Description.txt" << ENDOFFILE
- Meaning: ✅ = implemented, sure to work ; ➡️ = check/ensure its working or not, in the next boot/login ; 🔵 = still working on it ; ❌ checked and it didn't worked as expected

-✅ sample surely implemented feature
-➡️ sample... ...dunno, let's try
-✅ Another sample sure to work feature
-🔵 still unfinished, but logged anyway (as there's a commit done, although the feature isn't complete)
-❌ commited, but didn't work


- A task to be done/commited so logged
- Another pending task annotated
- Another of ToDo
ENDOFFILE

mkdir "$buildprefix""$(($diruse + 1))""/Log"
touch "$buildprefix""$(($diruse + 1))""/Log/cubic-log.html"
mkdir "$buildprefix""$(($diruse + 1))""/Log/Screenshots"
mkdir "$buildprefix""$(($diruse + 1))""/Log/Screenshots/1.Worked"
mkdir "$buildprefix""$(($diruse + 1))""/Log/Screenshots/2.Live ISO"
mkdir "$buildprefix""$(($diruse + 1))""/Log/Screenshots/3.Installed"
mkdir "$buildprefix""$(($diruse + 1))""/Issues"
touch "$buildprefix""$(($diruse + 1))""/Issues/Possible issues.txt"
touch "$buildprefix""$(($diruse + 1))""/Issues/Confirmed issues.txt"

if [ ! -e "$year" ];then mkdir "$year";fi # make a dir for the current year, for the first time.
if [[ "$diruse" != "0" ]];then
#mv "$latestbuild"/ "$year"/;
echo "New build initiated!"; #echo "Previous build has been archived under the '$year' folder.";
fi # move a previous build only if its not the first build
if [[ "$diruse" == "0" ]];then echo "Your first ever build has been initiated!";fi
#if [ -e "$buildprefix""$(($diruse + 1))" ];then exit 0;else exit 1;fi
