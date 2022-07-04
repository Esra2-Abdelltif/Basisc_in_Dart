

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






void main(List<String> arguments) {
countDown(5);
}
