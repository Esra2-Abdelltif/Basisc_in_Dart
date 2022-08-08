import 'dart:math' as math;

//fun بترجع عدد digits
int digitCount(int num) {
  if (num == 0) return 1;
  int log10(x) => math.log(x) ~/ math.ln10;
  int count = log10(num.abs()) + 1;
  return count;
}

int mostDigits(List numbers) {
  int maxDigits = 0;
  for (int i = 0; i < numbers.length; i++) {
// math.max let you have the bigger number
    maxDigits = math.max(maxDigits, digitCount(numbers[i]));
  }
  return maxDigits;
}

int getNumAtDigit(int num, int indexFromRight) {
// for removing the negative sign use absolute fun abs()
// math.pow(10,2) => 10*10, math.pow(10,3) => 10*10*18
// floor() => return the integer number <= the real number
  int number =(num.abs() / math.pow(10, indexFromRight)).floor() % 10;
  return number;
}

List RadixSort(List numbers) {
  int maxDigitsCount=mostDigits(numbers);
  for(int k=0;k<maxDigitsCount;k++){
    final digitsBuckets=List.generate(10, (_) => <int>[]);

    for(int i=0;i<numbers.length;i++){
      int NumAtDigit=getNumAtDigit(numbers[i], k);
      digitsBuckets[NumAtDigit].add(numbers[i]);
    }
    numbers=[...digitsBuckets].expand((element) => element).toList();
  }
  return numbers;
}

void main(List<String> arguments) {
  List list = [6,4, 8, 7, 3, 10, 19, 15];
  print(RadixSort(list));
}
