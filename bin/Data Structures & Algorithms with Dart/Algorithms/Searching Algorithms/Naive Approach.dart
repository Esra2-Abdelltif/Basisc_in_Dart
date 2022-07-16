// seacrh pattern of text in Long Sentence

void NaiveSearch(String text ,String pattern){
  int textlenght = text.length;
  int patternlenght=pattern.length;
  for (int i=0;i<=textlenght-patternlenght ;i++){
    int j;
    for (j=0;j < patternlenght ;j++){
     // print(text[i+j] +' '+ pattern[j]);
      if(text[i+j] != pattern[j]){

        break;
      }
    }
    if(j ==patternlenght){
      print('pattern found at index ${i}');
    }

  }
}
void main(List<String> arguments) {
  NaiveSearch('This is a dummy Text','dummy');
}