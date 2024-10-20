

void main(List<String> arguments) {
  // Find common element from two sets
  Set footballTeam = {'Gloria', 'Phil', 'Claire'};
  Set playCast = {'Claire', 'Haley', 'Luke'};
  print(footballTeam.intersection(playCast));

  // Task 9: Give examples of pre increment and post increment
  int alpha = 0;
  int beta = 0;

  // EXAMPLE ONE
  ++alpha;
  print('Alpha is: $alpha');

  beta++;
  print('Beta is $beta');

  //  EXAMPLE TWO
  //  Now what happens if we're doing a reassignment?
  //  Increment alpha BEFORE beta gets its value with ++ BEFORE the var
  beta = ++alpha;
  print('Alpha0 is: $alpha');
  print('Beta0 is $beta');


}
