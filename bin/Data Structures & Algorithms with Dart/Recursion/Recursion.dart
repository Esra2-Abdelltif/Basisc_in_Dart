

void countDown(int num){
  if(num <=0)
    {
      print( 'all Done');
      return;
    }
  print(num);
  num--;
  countDown(num);

}

//----------------Factorial--------------


//Recusrsion Solution
int factorial(int num){
  //Fac 5=5*4*3*2*1
  if(num== 0){return 0;}
   if (num == 1){return 1;}

 return num * factorial(--num);

}
//iterative Solution
int fact(int num){
  int total=1;
  for(int i=num;i>=1;i--){
    total*=i;
  }
  return total;
}

//----------------------write fun dividable odd num from list----------------------
//--------Using Help Method Recusrsion------
//Hia btb2a non-Recusrsion fun (outerfunction) gwaha Recusrsion fun(insidefun)
List collectOddvalues(List list){
  List result=[];
  void helper(List helperInput){
    // print(helperInput);
    if(helperInput.isEmpty){
      return ;
    }
    if(helperInput[0] %2 !=0){
      result.add(helperInput[0]);
    }
    helperInput=helperInput.sublist(1,helperInput.length);
    helper(helperInput);
  }
  helper(list);
  return result;
}

//-----Using Pure Recusrsion

List collectOddvalue(List list){
  List newlist=[];

    if(list.isEmpty){
      return  newlist;
    }
    if(list[0] %2 !=0){
      newlist.add(list[0]);
    }
  list=list.sublist(1,list.length);
  newlist =List.from(newlist)..addAll(collectOddvalue(list));

   return newlist;


}


void main(List<String> arguments) {
countDown(5);
print(fact(5));
print(factorial(5));
print('Help Recusrsion ${collectOddvalues([5,8,12,15,7,8])}');
print('Pure Recusrsion ${collectOddvalue([5,8,12,15,7,8])}');



}
