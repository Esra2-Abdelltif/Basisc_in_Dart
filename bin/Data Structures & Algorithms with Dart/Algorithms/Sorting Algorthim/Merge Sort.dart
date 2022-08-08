
List Merge(List list1, List list2) {

List mergedList = [];
int i = 0;
int j=0;

while (i<list1.length && j<list2.length) {
  if (list2[j]> list1[i]) {
    mergedList.add(list1[i]);
    i++;
  }
  else {
    mergedList.add(list2[j]);
    j++;
  }
}
while (i<list1.length) {
  mergedList.add(list1[i]);
  i++;
}

  while (j<list2.length) {
    mergedList.add(list2[j]);
    j++;
  }
  return mergedList;
  }

  List MergeSort(List list){
    if(list.length<= 1) return list;
    int middleIndex=(list.length/2).floor();
    List leftList=MergeSort(list.sublist(0,middleIndex));
    List rightList =MergeSort(list.sublist(middleIndex));
    return Merge(leftList,rightList);

  }




  void main(List<String> arguments) {
    List <int> list =[-4,8,7,3,10,-19,15];
    print(MergeSort(list));

  }
