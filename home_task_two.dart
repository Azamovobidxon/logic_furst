void main() {
  List<int> list = [1, 2, 4, 5, 6];
  nList(list, 4);
  final list1 = [3, 6, 4, 5, 8, 9];
  final list2 = [3, 4, 5, 6, 6, 3, 1, 1];
  List<int> myList = [1, 1, 1, 2, 3, 5];
  // a ning indexsi
  int a = 2; // index
  // b ning qiymati
  int b = 99;
  // a indexi b ga o'zgardi
  myList[a] = b;
  // result natija
  print(myList);
  // 2 index olib tashlanishi
  myList.removeAt(2);
  // natija
  print(myList);
  // bo'sh list yaratib olish
  List<int> newList = [];
  // lisni qiymatini sortlab
  myList.sort((a, b) => b.compareTo(a));
  // yangi bo'sh listga qayra qiymat berish
  newList = myList;
  // natija chiqarish
  print("my new list $newList");
  // listning nsoni necha marta qatnashganini aniqlash consolga chiqishi
  print(countElement(myList, 1));
  // listning nsoni necha marta qatnashganini aniqlash consolga chiqishi
  print('listdagi elementlar soni ${countElementIndexOf(list1, 3)}');
  print('list one two ${likeElement1(list1, list2)}');
  print(list2);
  print('whole number ${wholeNumber(list2)}');
  Set s = list2.toSet();
  print('set $s');
  print(sortListHiger(list2));
  print(sortListLow(list2));
}

void nList(List<int> list, int n) {
  list.insert(0, n);
  print(list);
}

// listning n Element soni necha marta qatnashganini aniqlash
int countElement(List<int> list, int n) {
  int count = 0;
  for (var e in list) {
    if (e == n) {
      count++;
    }
  }
  return count;
}

// listning n Element soni necha marta qatnashganini aniqlash indexOf orqali topish
int countElementIndexOf(List<int> list, int nElement) {
  int index = 0;
  int count = 0;
  while (index <= list.length) {
    index = list.indexOf(nElement, index);
    if (index == -1) {
      break;
    }
    index++;
    count++;
  }
  return count;
}

int counNElement(List<int> list, int n) {
  for (var element in list) {
    if (element == element) {
      n++;
    }
  }
  return n;
}

List<int> likeElement1(List<int> list1, List<int> list2) {
  List<int> comonElement = [];
  for (final item in list1) {
    for (final element in list2) {
      if (item == element) {
        comonElement.add(item);
      }
    }
  }
  return comonElement;
}

// List<int> likeElement(List<int> list1, List<int> list2) {
//   List<int> comonElement = [];
//   for (final element in list1) {
//    for (final item in list2) {
//       if (element == item) {
//          bool alreadyExist = false;
//          for (final existingItem in comonElement) {
//           if (existingItem == item) {
//             alreadyExist = true;
//             break;
//           }
//          }
//        if (!alreadyExist) {
//           comonElement.add(item);
//        }
//       }
//    }
//   }
//    return comonElement;
// }

// butun sonlarni bir xilini olib tashlash
List<int> wholeNumber(List<int> list) {
  List<int> newList = [];
  for (final element in list) {
    if (!newList.contains(element)) {
      newList.add(element);
    }
  }
  return newList;
}

//sord list ko'payish tartibida
List<int> sortListHiger(List<int> slist) {
  List<int> sordList = [];
  int maxElemnt = slist[0];

  for (final e in slist) {
    if (e > maxElemnt) {
      maxElemnt = e;
    }
    sordList.add(maxElemnt);
  }
  return sordList;
}

// sort list kamayish tartibida
List<int> sortListLow(List<int> list) {
  List<int> sortListLow = [];
  int minelement = list[0];
  for (var element in list) {
    if (element < minelement) {
      minelement = element;
    }
    sortListLow.add(minelement);
  }
  return sortListLow;
}

List<int> lowSorList(List<int> list) {
  List<int> str = [];
  int minelement = list[0];
  for (final e in list) {
    if (e < minelement) {
      minelement = e;
    }
    str.add(e);
  }
  return str;
}
