import 'dart:math';


//Sliding Window Technique using to improve Big(o)



//write fun take list of n and return the max sum of sublist of lenght k
//بترجع اكبر مجموع لل ساب ليست جواها لينز بتاعها = k
//sublist بتبقي الارقام ورا بعض
//k بتحدد طول sublist


//--------------regular Method----------------
//Big(o)=O(n^2)
double MaxSumOfSubList(List list ,int k){
  if (k> list.length){
    print('Invalid value');
    return -1;
  }
  //مش هينفع اخليه بي 0 عشان ممكن يكون فيه ارقام بالسالب
  double maxSum = -double.infinity;
  for(int i=0;i< list.length - k+1 ;i++){
    double  currentSum =0;
    for(int j=0;j<k ;j++){
      currentSum =currentSum+list[i+j];
    }
    maxSum =max( currentSum,maxSum);

  }

  return maxSum ;

}



//--------------Sliding Window Technique----------------

//همشي علي ليست اول 4 ارقام و هعرف مجموعهم و بعدين هتقدم خطوه و اجمع الرقم و طرح اول رقم من اول الليست لحد ما اوصل للنهايه
//Big(o)=O(n)

double MaxSumOfSubListSlidingWindow(List list ,int k)
{
  double maxSum =0;
  double widowSum=0;
  if (k> list.length){
    print('Invalid value');
    return -1;
  }

  //window
  for(int i =0;i<k;i++){
    maxSum+=list[i];

  }
  widowSum=maxSum;
  for(int i=k; i<list.length;i++){
    widowSum =widowSum  - list[i-k] + list[i];
    maxSum =max( widowSum,maxSum);
  }

  return maxSum;
}

void main(List<String> arguments) {
  List list =[1,4,2,10,2,3,1,0,20];
  print(MaxSumOfSubList(list,4));
  print(MaxSumOfSubListSlidingWindow(list, 4));
}