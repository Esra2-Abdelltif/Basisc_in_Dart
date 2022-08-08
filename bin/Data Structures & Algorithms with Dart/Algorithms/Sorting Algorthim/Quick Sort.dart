List QuickSort(List list, [left = 0, right = -5]) {
  if (right == -5) {
    right = list.length - 1;
  }
  if(left < right){
    int pivotindex = Pivot(list, left, right);
    QuickSort(list, left, pivotindex - 1);
    QuickSort(list, pivotindex + 1, right);

  }
  return list;
}

int Pivot(List list, [int start = 0, int end = -1]) {
  if (end == -1) {
    end = list.length - 1;
  }
  var pivot = list[start];
  int swapIndex = start;
  
  for (int i = start + 1; i < list.length; i++) {
    if (pivot > list[i]) {
      swapIndex++;
      swap(list, swapIndex, i);
    }
  }
  swap(list, start, swapIndex);
  return swapIndex;
}

void swap(List lst, i, j) {
  var temp = lst[i];
  lst[i] = lst[j];
  lst[j] = temp;
}

void main(List<String> arguments) {
  List list = [-4,8,7,3,10,-19,15];
  print(QuickSort(list));
}
