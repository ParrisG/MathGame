# 1. Extract Nouns for Classes:
- Player
- Question
- Game

# 2. Roles for Each Class:

Player Class: The player class will track the individual statistics for each player. Remaining lives and their current score.
Question Class: Provides the logic for creating a new question, and for checking if the provided answer is correct or not.
Turn Class: Provides a mechanism to 

Player Class: 
- contains the player name (player 1 or 2)
- tracks the remaining lives
- tracks the score (maybe not needed here)
-- to be initialized it will need the number of lives set
-- will need to be able to get and set the score variable (number of wins and number of games?) -- public method (question or turn will call?)

Question class:
- creates the question to be answered
--- will need to be able to create a random question (based on the criteria) -- public method (turn will call)
- Will provide the answer to the question


Game
- manages the game loop
- manages the current_player
- provides a new question to be anwered if there are still lives left
- checks to see if the answer is correct
- adjusts the player's score if the wrong answer (lives)
- announces the results if the game is over
--- will have user I/O

