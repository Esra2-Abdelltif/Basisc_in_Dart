//بتعكس الكلمه
String reverseText(String Text){
  return Text.split('').reversed.join('');
}
String reverseText2(String Text){
  String reversed='';
  for ( int i=0; i<Text.length ;i++)
    {
      reversed = Text[i]+ reversed;

    }
  return reversed;
}

//بتجمع الارقام الي بين الرقمين الي هدخلهم
int AddUpTo(int StratNum ,int EndNum){
  int sum=0;
  for (int i=StratNum;i <= EndNum;i++){
    sum += i;
  }
return sum;
}
double AddUpTo2(EndNum){
//شرط انها تبدا من الواحد
  return (EndNum * (EndNum+1) / 2 );
}


// بتجمع كل الارقام الي في list
int sum(List<int> numbers ){
  int sum=0;
  for (int i=0;i <numbers.length;i++){
    sum += numbers[i];
  }
  return sum;
}

//نقل الارقام الي في List ليList جديده
void ListItem(List<int> numbers ){
  List NewList=[];
  for (int i=0;i <numbers.length;i++){
    NewList.add(numbers[i]);
  }
  print('list $numbers');
  print('newlist  $NewList');

}

// بتطبع الارقام تنازليا و تصاعديا
void CountUpToDown(n){
  print('Going Up !');
  for (int i=0;i <= n;i++){
    print(i);
  }
  print('At The Top !');
  for (int j = n ;j >=0 ;j--){
    print(j);
  }
  print('Back Down');
  //return null ;
}

//بتطبع كل الازواج من الارقام بالترتيب
void printallpairs(n){
  for (int i=0;i <= n;i++){
    for (int j = 0 ;j <=n ;j++){
      print('$i ,$j');
    }
  }
}

void main(List<String> arguments) {
  //تحسب الوقت الي بتاخده كله فانكشن لحت التنفيذ
  //Stopwatch stopwatch =Stopwatch()..start();
   //print(reverseText('Esraa'));
   //print(reverseText2('Text'));
   //print(AddUpTo2(4));
   //print(AddUpTo(1,4));
   //CountUpToDown(10);
   //printallpairs(5);
   //print(sum([1,8,7,6]));
  ListItem([4,7,6,7]);

  //print(stopwatch.elapsed);

}
