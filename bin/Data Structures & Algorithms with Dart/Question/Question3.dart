/// Question

//You have been assigned the task of developing a music player
// that not only showcases the user's favourite songs based on the number of times
// each song has been played
//***************

// Sort
//قبل ما احل المشكله لازم احدد شويه حاجات
// 1-inPut => List of song  ,outPut => Ordered list od song
// 2-test ,edge cases

//Step to Solve Problem
// 1-حدد العنصر الاول انه الاكبر عنصر .
// 2- قارن العنصر الاكبر بالعنصر الذي يليه ولو كان اكبر نقون بتحديث العنصر.
// 3- قم باعده الخطوه رقم2  .
// 4- عند تحديد العنصر الاكبر نبدا بالتبديل.
// 5-عيد من خطوه رقم 1.

List<int> SongFavSong(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - 1; j++) {
      if (list[j] > list[j + 1]) {

        int num = list[j];
        list[j] = list[j + 1];
        list[j + 1] = num;
      }
    }
    // print(list);
  }
  return list;
}

void main(List<String> arguments) {
  List<int> numbers=SongFavSong([5, 7, 3, 8, 1]);
  print(numbers.reversed.toList());
}
