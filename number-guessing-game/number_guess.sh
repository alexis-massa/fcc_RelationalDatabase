#!/bin/bash
PSQL="psql -x --username=freecodecamp --dbname=number_guess --tuples-only -c"

MAIN(){

  # error message
  if [[ $1 ]]
    then
      echo -e "\n$1"
  fi

  echo Enter your username:
  read USERNAME

  #If username too long
  if [[ ${#USERNAME} -ge 22 ]];then
    MAIN "Username should have less than 22 characters"
  fi

  # Check if user exist
  USER=$($PSQL "select username, games_played, best_game from users where username='$USERNAME';")
  if [[ -z $USER ]]; then
    echo Welcome, $USERNAME! It looks like this is your first time here.
    INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO users(username) VALUES ('$USERNAME')")
  else
    echo $USER | while read COL BAR USERNAME COL BAR GAMES_PLAYED COL BAR BEST_GAME
    do
      echo Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses.
    done
  fi
  echo Guess the secret number between 1 and 1000:
  TARGET=$(( RANDOM % 1000 + 1 ))
  GUESSES=0
  GUESS=-1
  until [[ $GUESS == $TARGET ]]; do
    read GUESS
    if [[ $GUESS =~ ^[0-9]+$ ]]; then
      (( GUESSES++ ))
      if [[ $GUESS == $TARGET ]]; then
        echo You guessed it in $GUESSES tries. The secret number was $TARGET. Nice job!
      elif [[ $GUESS -gt $TARGET ]]; then
        echo "It's lower than that, guess again:"
      else
        echo "It's higher than that, guess again:"
      fi
    else
      echo That is not an integer, guess again:
    fi
  done
  NEW_GAMES_PLAYED=$(( GAMES_PLAYED + 1 ))
  NEW_BEST_GAME=$(( BEST_GAMES > GUESSES ? BEST_GAME : GUESSES ))
  INSERT_GAME_RESULT=$($PSQL "update users set games_played=$NEW_GAMES_PLAYED, best_game=$NEW_BEST_GAME where username='$USERNAME'")
}

MAIN