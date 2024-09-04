//Binary Search
//is very faster than linear seacrh
//list must be sorting list
//Depend to Divided and conquer technolgy
//بقسم الlist الي اتنين لو في نص هطبع index لو الرقم اكبر من mid هشتغل علي جزي اليمين وهبدا اقسم تاني

//Big(o)=> at worstcase = O(log n)
//         at bestcase  = O(1) when value at mid of list


String BinarySearch(List list, value){

  int start =0;
  int end =list.length-1;

  if(list.isNotEmpty) {
    while (start <= end) {
      //Floor convert num to int num
      int mid = ((start + end) ~/ 2).floor();
      if (value == list[mid]) {
        return 'Value at index ${mid}';
      }
      else if (value > list[mid]) {
        start = mid + 1;
      }
      else {
        end = mid - 1;
      }
    }
    return 'Not Found';
  }
  return 'List is Empty';


}
void main(List<String> arguments) {
  print(BinarySearch([1,7,14,24,88,99],99));
  print(BinarySearch([],99));

}