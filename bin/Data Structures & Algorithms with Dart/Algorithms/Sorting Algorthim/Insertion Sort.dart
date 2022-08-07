//هبدا من تاني قيمه في ليست
// عقارن القيم و اعمل Swap
// الليست لي قبلي مترتبه
//هخلص loop الكبيره و ارجع الليست


List <int> InsertionSort(List <int>list){
  for(int i=1;i<list.length;i++){
    int current =list[i];
    int j=i-1;
    while((j>-1) &&(current<list[j])){
      list[j+1] =list[j];
      j--;
    }
    list[j+1]=current;

  }
  return list;
}


void main(List<String> arguments) {
  List <int> list =[-4,8,7,3,10,-19];
  print( InsertionSort(list));

}