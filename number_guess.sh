#!/bin/bash
PSQL="psql -X --username=****** --dbname=number_guess -t --tuples-only -c"

echo -e "\nEnter your username:"
read NAME

NAME_DATA=$($PSQL "SELECT user_id from users where username='$NAME'")

if [[ -z $NAME_DATA ]]
then
  INSERT_DATA_USER=$($PSQL "INSERT INTO users(username) VALUES('$NAME')")
  NAME_DATA=$($PSQL "SELECT user_id from users where username='$NAME'")
  echo -e "\nWelcome, $NAME! It looks like this is your first time here."
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) from games where user_id='$NAME_DATA'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) from games where user_id='$NAME_DATA'")
  GAMES_PLAYED=$(echo $GAMES_PLAYED | xargs)
  BEST_GAME=$(echo $BEST_GAME | xargs)  
  echo -e "\nWelcome back, $NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi

GAME() { 

RANDOM_NUMBER=$(( RANDOM % 1000 + 1))
GUESSES=0  

echo -e "\nGuess the secret number between 1 and 1000:"
read SECRET_NUMBER

while [[ $SECRET_NUMBER != $RANDOM_NUMBER ]]
do
  if ! [[ $SECRET_NUMBER =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  else
    ((GUESSES++))

    if [[ $SECRET_NUMBER -gt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's lower than that, guess again:" 

    elif [[ $SECRET_NUMBER -lt $RANDOM_NUMBER ]]
    then
      echo -e "\nIt's higher than that, guess again:"
    fi     
  fi
  read SECRET_NUMBER
done

  ((GUESSES++))
  GUESSES=$(echo $GUESSES | xargs)
  RANDOM_NUMBER=$(echo $RANDOM_NUMBER | xargs)        
  echo -e "\nYou guessed it in $GUESSES tries. The secret number was $RANDOM_NUMBER. Nice job!"

  INSERT_DATA_GAMES=$($PSQL "INSERT INTO games(user_id, guesses) VALUES($NAME_DATA, $GUESSES)")
}

GAME
