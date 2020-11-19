answer=$(ls -1 | wc -l)

echo "Please guess the number of files in the current directory."
read guess

if [[ $guess -eq $answer ]]
 then
  echo "Correct!"
 else
  while [[ $guess -ne $answer ]]
    do
    if [[ $guess -lt $answer ]]
      then
      echo "You guessed $guess, this is too low. Please try again."
    else
      echo "You guessed $guess, this is too high. Please try again."
    fi
    read guess
  done
  echo "Correct!"
fi
