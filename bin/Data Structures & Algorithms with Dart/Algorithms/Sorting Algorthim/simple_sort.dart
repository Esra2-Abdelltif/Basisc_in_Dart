/// Question

 SortRangedList(){
  final list=[4,3,6,5,2,1];
  final listIndex=List.filled(list.length,0);
    for (int i = 0; i < list.length; i++) {
      int index=list[i];
      listIndex[index-1]=index;

  }
     print(listIndex);
}

void main(List<String> arguments) {
  SortRangedList();


}
