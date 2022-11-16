#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo "$($PSQL "TRUNCATE TABLE games, teams")"

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNERGOALS OPPONENTGOALS
do
  if [[ $WINNER != "winner" ]]
  then
    # get winner names team id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")

    # if winner name team id not found
    if [[ -z $WINNER_ID ]]
    then

      # insert winner as team
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES ('$WINNER')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams winner $WINNER
      fi

      # get new team id
      WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER'")
    fi
  fi

  if [[ $OPPONENT != "opponent" ]]
  then

    # get opponent names team id
    OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # if opponent name team id not found
    if [[ -z $OPPONENT_ID ]]
    then

      # insert opponent as team
      INSERT_TEAM_RESULT=$($PSQL "INSERT INTO teams(name) VALUES ('$OPPONENT')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into teams opponent $OPPONENT
      fi
      # get new team id
      OPPONENT_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
    fi
  fi

  
  if [[ $ROUND != "round" ]]
  then

    # Get winner and opponent ids from games
    WINNER_OPPONENT_ID=$($PSQL "SELECT winner_id, opponent_id FROM games WHERE winner_id=$WINNER_ID AND opponent_id=$OPPONENT_ID")

    # Check if this combo is in the table or not
    if [[ -z $WINNER_OPPONENT_ID ]]
    then
      INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNERGOALS, $OPPONENTGOALS)")
      if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
      then
        echo Inserted into games $YEAR $ROUND $WINNER_ID $OPPONENT_ID $WINNER_GOALS $OPPONENT_GOALS
      fi

    fi
  fi
done