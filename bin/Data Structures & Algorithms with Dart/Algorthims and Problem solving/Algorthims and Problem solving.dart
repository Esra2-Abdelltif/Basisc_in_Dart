//Function add two number
int Addtion(int num1 ,int num2){
  return num1+num2;
}
//---------------------------------------------
//هfunction هتاخد string و ترجع عدد تكرار كل حرف فيه
void CountCharletters(String input){
  int count=0;
  var Text =input.toUpperCase().split('');
  for(int i=0; i<Text.length ;i++){
    count=0;
    for(int j=0;j<Text.length ;j++){
      if(Text[i]==Text[j]){
        count++;
      }
    }

    print(Text[i] + ":" +count.toString());

  }

}
//ديه طريقه اصح اكتر
Map CharCount(String Text){
  Map result={};
  String UpperCaseText =Text.toUpperCase();
  for(int i=0; i<UpperCaseText.length ;i++){
    String Char =UpperCaseText[i];
    //by3ml chech lw char mawgod fe map
    if(result.containsKey(Char)){
      result[Char] +=1;
    }
    else{
      result[Char] =1;
    }

  }

  return result ;
}

//---------------------------------------------


void main(List<String> arguments) {
  print(Addtion(5, 10));
  print( CharCount("Esraa AbdellATIF"));
  CountCharletters('Teyxyt');

}
