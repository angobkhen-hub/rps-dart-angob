import 'dart:io';

final List<String> saktongLihok = ['rock', 'paper', 'scissors'];

///ask for player name using player number 
String getManuwaayNgan(int number) {
  stdout.write('Enter Player $number name: ');
  String? input = stdin.readLineSync()?.trim();
  if (input == null || input.isEmpty) {
    print('(No name entered. Using "Player $number".)');
    return 'Player $number';
  }
  return input;
}

///return the move into lover case
String? checkMove(String? input) {
  String move = input?.trim().toLowerCase() ?? '';
  return saktongLihok.contains(move) ? move : null;
}

/// keep asking for the player to move until it gets the valid move
String getMove(String name) {
  String? move;
  do {
    stdout.write('$name, enter your move (rock/paper/scissors): ');
    move = checkMove(stdin.readLineSync());
    if (move == null) print('Invalid move. Please type rock, paper, or scissors.');
  } while (move == null);
  return move;
}

///return 1 if the player one wins
int kinsayDaog(String first, String second) {
  if (first == second) return 0;
  switch (first) {
    case 'rock':
      return second == 'scissors' ? 1 : 2;
    case 'paper':
      return second == 'rock' ? 1 : 2;
    default:
      return second == 'paper' ? 1 : 2;
  }
}

void main() {
  print('ROCK, PAPER, SCISSORS');
  String playerOne = getManuwaayNgan(1);
  String playerTwo = getManuwaayNgan(2);
  int playerOneScore = 0, playerTwoScore = 0, round = 0;
  String? again;

  do {
    print('\n--- Round ${++round} ---');
    String unangLihok = getMove(playerOne);
    for (int i = 0; i < 30; i++) print('');
    String pangkaduhangLihok = getMove(playerTwo);

    int result =kinsayDaog(unangLihok, pangkaduhangLihok);
    String? winner;
    if (result == 1) {
      winner = '$playerOne wins the round!';
      playerOneScore++;
    } else if (result == 2) {
      winner = '$playerTwo wins the round!';
      playerTwoScore++;
    }

    print('$playerOne chose $unangLihok. $playerTwo chose $pangkaduhangLihok.');
    print('Result: ${winner ?? "It's a draw!"}');
    print('Score -> $playerOne: $playerOneScore | $playerTwo: $playerTwoScore');
    stdout.write('Play again? (y/n): ');
    again = stdin.readLineSync();
  } while (again?.trim().toLowerCase() != 'n');

  String? overall = playerOneScore > playerTwoScore
      ? playerOne
      : playerTwoScore > playerOneScore ? playerTwo : null;
  print('\nFINAL SCORE');
  print('$playerOne: $playerOneScore | $playerTwo: $playerTwoScore');
  print('Overall winner: ${overall ?? "It's a draw!"}');
}