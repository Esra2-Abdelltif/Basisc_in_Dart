String BinarySeacrh(List <int> list,int num ){
  int start =0;
  int end =list.length-1;

  while(start <= end ){
    int mid=((start+end)~/2).floor();
    if(num == list[mid]){
      return 'found Num at index ${mid+1}';
    }
    else if (num>list[mid] ){
      start = mid+1;
    }
    else {
      end =mid-1;
    }

  }

return 'Not Found';

}


void main(List<String> arguments) {
  List <int> list =[0,2,5,8,10,12,15];
  print(BinarySeacrh([0,2,5,8,10,12,15], 10));

}
