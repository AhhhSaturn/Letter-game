# region Game setup
var=$((RANDOM%24))'q;d'
letter=$(sed $var ./Assets/Alphabet.md)
question1num=$((RANDOM%7))'q;d'
question2num=$((RANDOM%7))'q;d'
question3num=$((RANDOM%7))'q;d'
question1=$(sed $question1num ./Assets/Questions.md)
question2=$(sed $question2num ./Assets/Questions.md)
question3=$(sed $question3num ./Assets/Questions.md)
sleep 3 | zenity --progress --pulsate --title="Letter Game" --text="Setting up your game" --auto-close
# endregion
aplay ./Assets/Audio_files/Game_sounds/Print_letter.wav
aplay $letter
zenity --info --title="Letter Game" --text="$question1"
zenity --info --title="Letter Game" --text="$question2"
zenity --info --title="Letter Game" --text="$question3"
