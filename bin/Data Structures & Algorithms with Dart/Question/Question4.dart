/// Question

//
//   لو عاوزه اخد  string و ارجع عدد تكرار كل حرف
//***************


Map charCount(String inputText) {
  Map result={};
  String text=inputText.toUpperCase().replaceAll(" ", "");
  for (int i = 0; i < text.length; i++) {
    if(result.containsKey(text[i])) {
      result[text[i]] += 1;
    }else{
      result[text[i]] = 1;
    }
  }
  return result;
}

void main(List<String> arguments) {
  print(charCount("input Text"));
}
