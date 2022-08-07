//الطريقه العاديه
//Big(O)=n^2
//بنمشي علي ليست عنصر عنصر و نرتب مكانه فا هتكون مترتبه من الاخر الاول و بعدين نرجه لي اول الليست و نقارن لحد ما ترتتب
List <int> BubbleSort(List <int>list){
  for(int i=0;i<list.length;i++){
    for(int j=0;j<list.length-1;j++){

      if(list[j]>list[j+1]){
        int num =list[j];
        list[j]=list[j+1];
        list[j+1]=num;

      }
    }

  }
  return list;
}

List <int> BubbleSort2(List <int>list){
  for(int i=list.length;i>0;i--){
    for(int j=0;j<i-1;j++){

      if(list[j]>list[j+1]){
        int num =list[j];
        list[j]=list[j+1];
        list[j+1]=num;

      }
    }

  }
  return list;
}




void main(List<String> arguments) {
  List <int> list =[-4,8,7,3,10,-19];
 print( BubbleSort(list));
  print( BubbleSort2(list));

}