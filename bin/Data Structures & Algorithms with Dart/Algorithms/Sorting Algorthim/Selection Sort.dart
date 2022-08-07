
//نفرض ان اول item هو اضغر قيمه .
//هنقارن اول قيمه بباقي الليست
//لو عندي فيمه اصغؤ =min
//لو اصغر قيمه هي اول عنصر مش هعمل swap
//لو فيه رقم تاني اصغر هعمل swap

List<int> SelectionSort(List<int> list){
  for(int i=0;i<list.length;i++){
    int min=i;
    for(int j=i+1;j<list.length;j++){
      if(list[j]<list[min]){
        min=j;
      }

      if(min!=i){
        int num =list[i];
        list[i]=list[min];
        list[min]=num;

      }
    }

  }
  return list;

}
void main(List<String> arguments) {
  List <int> list =[-4,8,7,3,10,-19];
  print(SelectionSort(list));

}