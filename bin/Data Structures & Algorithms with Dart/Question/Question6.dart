import 'dart:math';

/// Question

int reverse(int x) {
  int result = 0;
  int num = x.abs();
  if (x == 0) return x;
  while (num > 0) {
    result = (result * 10) + (num % 10);
    num = num ~/ 10;
  }
// Check Is On Range or No
  if(result<(pow(-2,31))|| result>pow(2,31)-1){
    return 0;
  }
  return x.isNegative ? -result : result;

}
void main(List<String> arguments) {
  print(reverse(1534236469));
}
