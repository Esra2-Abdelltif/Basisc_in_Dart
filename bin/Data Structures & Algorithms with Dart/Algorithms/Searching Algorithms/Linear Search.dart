//Linear Search
//Big(o)=> at worstcase = O(n)
//         at bestcase  = O(1) when value at index 1
//بتمشي علي ليست رقم رقم لحد ما تلاقي الرقم المطلوب و ترجع index
String LinearScarch(List list, value){
  for(int i=0; i< list.length;i++){
    if(list[i] == value){
      return 'found Num at index ${i+1}';
    }


  }

  return 'not found Num at list';

}
void main(List<String> arguments) {
  print(LinearScarch([1,7,14,4,8,9],9));
}