/// Question

//Alice has some cards with numbers written on them.
// She arranges the cards in decreasing order, and lays them out face down in a sequence on a table.
// She challenges Bob to pick out the card containing a given number by turning over as few cards as possible.
// Write a function to help Bob locate the card

//***************


//قبل ما احل المشكله لازم احدد شويه حاجات
// 1-inPut => List of num and value ,outPut => index of value
// 2-test ,edge cases

//Step to Solve Problem
// 1-check number in first index.
// 2- compare first element with required element if equal rerun index.
// 3- if not equal move to next element .
// 4- repit move until find required element or reach the end of the list.
// 5-If the list ends return -1.

String findNumberInList(List list, value){
  if(list.isNotEmpty) {
    for (int i = 0; i < list.length; i++) {
      if (list[i] == value) {
        return 'found Num at index ${i + 1}';
      }
    }

    return 'not found Num at list';
  }
  return 'List is Empty';
}

void main(List<String> arguments) {
  print(findNumberInList([1,7,14,4,8,9],9));
  print(findNumberInList([],9));

}
