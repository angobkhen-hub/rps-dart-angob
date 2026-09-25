# rps-dart-angob

Name:Khen Jay Angob
Section: BSIT3A / ILFV3

## About

This is a Dart program made for the IT 120 lab. It lets two people play
Rock, Paper, Scissors by taking turns on the same keyboard. Each player
types in their name, then picks rock, paper, or scissors. So Player 2 can't
see Player 1's move, the screen scrolls down to hide it before Player 2
types theirs. After each round, the program shows both moves, who won (or
if it was a tie), and the score so far. Players can play as many rounds as
they want, then see the final score once they stop.

The program also follows Dart's null safety rules. It never force-unwraps
user input with `!`. Instead, it checks for missing input and uses safe
defaults. The winner of each round, and the overall winner, are stored as
values that can be empty (`null`), and the program shows a fallback message
using `??` when there's no winner.

## Running the Program

You'll need the [Dart SDK](https://dart.dev/get-dart) installed. Then, from
a terminal (the VS Code terminal or Command Prompt both work), run:

'''
dart run rock_paper_scissors.dart
'''

> Note: this dart code needs a real terminal for keyboard input — DartPad won't work
> since it can't read from `stdin`.

## Playing a Round

1. Type in Player 1's name, or just hit Enter to be called "Player 1."
2. Do the same for Player 2.
3. Player 1 enters their move — rock, paper, or scissors.
4. The screen clears so Player 2 can't see what Player 1 picked.
5. Player 2 enters their move.
6. Both moves, the round result, and the current score get printed.
7. Enter `y` to play another round or `n` to stop and see the final score
   and overall winner.