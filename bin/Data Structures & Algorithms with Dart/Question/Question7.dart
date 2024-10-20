
/// Question
int myAtoi(String s) {
  s = s.trimLeft();
  if (s.isEmpty) return 0;

  int sign = 1;
  int index = 0;

  if (s[0] == '+' || s[0] == '-') {
    sign = (s[index++] == '-') ? -1 : 1;
  }
  int result = 0;
  RegExp digitRegex = RegExp(r'\d');
  while (index < s.length && digitRegex.hasMatch(s[index])) {
    result = result * 10 + int.parse(s[index++]);


    if (result > 2147483647) {
      return (sign == 1) ? 2147483647 : -2147483648;
    }
  }
  return result * sign;
}
void main(List<String> arguments) {
  print(myAtoi("+-12"));
  // print(myAtoi("+-12"));
  print(myAtoi("-+12"));

  print(myAtoi("741s88"));
  print(myAtoi("word and 55555"));
  print(myAtoi("0-1"));

  print(myAtoi("   -042"));





}
