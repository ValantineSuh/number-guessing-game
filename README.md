# Number-guessing-game

A **simple and fun number guessing game** written in **Bash**. In this game, players guess a randomly generated number within a specific range, depending on the chosen difficulty. Players will receive **hints** along the way, and the game tracks high scores to make things more exciting.

---

## 🚀 How to Run the Game
Follow these steps to clone the repository, run the game, and start playing:

### 1. Clone the Repository:
- For **https**:
```bash
git clone https://github.com/ValantineSuh/number-guessing-game.git 

cd number-guessing-game
```
- For **ssh**:
```bash
git clone git@github.com:ValantineSuh/number-guessing-game.git

cd number-guessing-game
```

### 2. Make the Script Executable:
```bash
chmod +x my-game.sh
```

### 3. Run the Game: 
```bash
./my-game.sh
```

## 🔥 Features
- **Multiple Difficulty Levels**:
    - Easy: Guess a number between 1 and 50 with 10 attempts.
    - Medium: Guess a number between 1 and 100 with 7 attempts.
    - Hard: Guess a number between 1 and 200 with 5 attempts.
- **Hint System**:
    - After 3 incorrect guesses, the game provides a hint (even or odd).
- **High Score Tracking**:
    - Your best score is saved during each session.
- **User-Friendly Prompts**:
    - Clear instructions guide you through the game, ensuring a smooth experience.


## 🎯 Example Game Flow
```yml
====================================================
   🎮 Welcome to the Number Guessing Game 🎮
====================================================
Choose a difficulty level: 
      1. Easy 
      2. Medium 
      3. Hard
Enter 1, 2, or 3: 2
You chose Medium. Guess a number between 1 and 100.
Enter your guess: 50
Too low! Attempts left: 6
Enter your guess: 75
Too high! Attempts left: 5
Hint: The number is odd.
Enter your guess: 67
🎉 Congratulations! You guessed the number in 4 attempts.
🏆 New High Score: 4 attempts!
```

## 📋 How to play 
### 1) Select a difficulty level:
- **Easy**: Guess a number between 1 and 50 with 10 attempts.
- **Medium**: Guess a number between 1 and 100 with 7 attempts.
- **Hard**: Guess a number between 1 and 200 with 5 attempts.

### 2) Enter your guesses:
- The game will tell you if your guess is **too low** or **too high**.
- You have a **limited number of attempts**, so guess wisely.

### 3) Hints:
- After 3 incorrect guesses, the game provides a **hint**: whether the number is **even or odd**.

### 4) High Score Tracking:
- If you guess the number in fewer attempts than the previous high score, your new score becomes the **High Score**.

### 5) Play Again:
- After each game, you can choose to **play again** or **exit**.


## 🌟 Future Improvements (Ideas)
- Add a **leaderboard** to store scores across multiple sessions.
- Implement **multiplayer mode**.
- Use **colorful text output** for hints and feedback.
- Add sound effects for correct guesses and game-over events.

## 📜 License
This project is licensed under the **MIT License** feel free to fork, modify, and enjoy!

