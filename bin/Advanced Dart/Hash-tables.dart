import 'dart:collection';

void main(List<String> arguments) {
  var list = {"key": "value", "esraa": "esraa99"};
  Map<String, String> list1 = {"key": "value", "esraa": "esraa99"};
  Map<int, String> list2 = {1: "value", 2: "esraa99"};
  // Map<dynamic, String>
  Map<Object, String> list3 = {
    "key": "value",
    "esraa": "esraa99",
    2: "esraa99"
  };


  //############
  // HashMap
   HashMap<dynamic, dynamic> hashMapList=HashMap();
  hashMapList["test"]=1;


  print(list1['key']);
  print(list.containsKey('key'));
  print(list.keys);

  
}
