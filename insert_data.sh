#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
  count=0  # Initialize count to 0
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi



# Do not change code above this line. Use the PSQL variable above to query your database.
echo $($PSQL "TRUNCATE games, teams ")
##TEAM
cat games.csv | while IFS="," read -r YEAR ROUND WINNER OPPONENT WIN_G OPP_G
do

if [[ $1 == "test" ]]; then
    ((count++))
    if [[ $count == 6 ]]; then
        break 
    fi
fi

if [[ $YEAR != year ]]
then
##GET WINNER IDs
 WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  #if not found
  if [[ -z $WIN_ID ]]
  then
    echo Adding winning teams
    INSERT_WIN_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    if [[ $INSERT_WIN_TEAM == "INSERT 0 1" ]]
    then
     echo Inserted into teams, $WINNER
    fi
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  fi

  OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  if [[ -z $OPP_ID ]]
  then
   echo adding opponent team
   INSERT_OP_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    if [[ $INSERT_OP_TEAM == "INSERT 0 1" ]]
    then
     echo Inserted into teams, $OPPONENT
    fi
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
 fi

INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_id, winner_goals, opponent_id, opponent_goals) VALUES($YEAR,'$ROUND',$WIN_ID,$WIN_G,$OPP_ID,$OPP_G)")
 if [[ $INSERT_GAMES == "INSERT 0 1" ]]
  then
     echo Inserted into games, $YEAR,$ROUND,$WIN_ID : $WINNER,$WIN_G,$OPP_ID : $OPPONENT,$OPP_G
 fi
fi
done