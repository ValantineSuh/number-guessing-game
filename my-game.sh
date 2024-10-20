#!/bin/bash

# Initialize variables
high_score=999  # Store high score across sessions
attempts=0  # Count attempts

# Function to display welcome message with colorful text
function welcome_message() {
  tput setaf 2  # Green text
  echo "===================================================="
  echo "   🎮 Welcome to the Number Guessing Game 🎮"
  echo "===================================================="
  tput sgr0  # Reset text color
}

# Function to set the difficulty level and inform the user of the range
function set_difficulty() {
  while true; do  # Loop until valid input is received
    echo "Choose a difficulty level: 
          1. Easy 
          2. Medium 
          3. Hard"
    read -p "Enter 1, 2, or 3: " difficulty

    case $difficulty in
      1) 
        max_number=50; max_attempts=10
        echo "You chose Easy. Guess a number between 1 and 50."
        break 
        ;;  # Easy mode

      2) 
        max_number=100; max_attempts=7
        echo "You chose Medium. Guess a number between 1 and 100."
        break 
        ;;  # Medium mode

      3) 
        max_number=200; max_attempts=5
        echo "You chose Hard. Guess a number between 1 and 200."
        break 
        ;;  # Hard mode

      *) 
        echo "Invalid choice. Please enter 1, 2, or 3."  # Re-prompt
        ;;  
    esac
  done

  target=$((RANDOM % max_number + 1))  # Random target number
}

# Function to provide hints
function provide_hint() {
  if (( target % 2 == 0 )); then
    echo "Hint: The number is even."
  else
    echo "Hint: The number is odd."
  fi
}

# Main game loop
function play_game() {
  attempts=0  # Reset attempts for each game

  while [[ $attempts -lt $max_attempts ]]; do
    read -p "Enter your guess: " guess
    attempts=$((attempts + 1))

    if [[ $guess -lt $target ]]; then
      echo "Too low! Attempts left: $((max_attempts - attempts))"
    elif [[ $guess -gt $target ]]; then
      echo "Too high! Attempts left: $((max_attempts - attempts))"
    else
      echo "🎉 Congratulations! You guessed the number in $attempts attempts."

      # Check and update high score
      if [[ $attempts -lt $high_score ]]; then
        high_score=$attempts
        echo "🏆 New High Score: $attempts attempts!"
      else
        echo "High Score: $high_score attempts."
      fi
      return  # Exit the game loop
    fi

    # Provide a hint after 3 failed attempts
    if [[ $attempts -eq 3 ]]; then
      provide_hint
    fi
  done

  echo "😞 Game over! The correct number was $target."
}

# Main program
welcome_message

while true; do
  set_difficulty  # Set difficulty level and target number
  play_game  # Start the game

  # Ask if the player wants to play again
  read -p "Do you want to play again? (y/n): " choice
  if [[ $choice == "n" ]]; then
    echo "Thanks for playing! Goodbye!"
    break
  fi
done
