void main(List<String> arguments) {
  //----------List Sort ------------------------

  //---int or double
  List <double> ListNum =[-4,8,7,3,10,-19];
  //method Gahzaa in dart
  ListNum.sort();
  // print( ListNum..sort());

  //Ascending order
  print(ListNum);

  //Descending Order
  print(ListNum.reversed);



  //---String
  List <String> ListName =[
    'Esraa',//a
    'Radwaa',//b
    'Ali',//a
    'Alaa',//b
    'AbdElrahuman'//a
  ];

  //بيقارن من حيث العدد حروف
  ListName.sort((a,b)=>a.length.compareTo(b.length));
  print(ListName);

  print(ListName.reversed);


  //-----------Map Sort ---------
  List <Map<String,dynamic>> Product= [
    {'name':'shose','price':100},
    {'name':'pants','price':50},
    {'name':'book','price':10},
    {'name':'lamp','price':40},
    {'name':'fan','price':150},


  ];
  Product.sort((a,b)=>a['price'].compareTo(b['price']));
  print(Product);


}