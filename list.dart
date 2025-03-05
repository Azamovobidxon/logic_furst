void main() {
  const fruits = <String>[
    'apple',
    'pear',
    'lemon',
    'grapes',
    'peach',
    'peach',
    'coconunt',
    'coconunt',
    'coconunt',
    'coconunt',
    'cherries',
    'cherries',
    'cherries',
  ];

  final List<int> myList = [1];
  print(myList);

  final Iterable<int> odds = myList.where((element) => element.isOdd);
  print(odds);
  final total = myList.reduce((value, element) => value + element);
  print(total);

  final List<int> emtyList = <int>[];
  final int result = emtyList.fold<int>(0, (int sum, int e) => sum + e);
   print('fold $result');

  List<String> month = <String>[];
  print(month);
  month.addAll([
    'janvary',
    'february',
    'March',
    'April',
    'May',
    'Juny',
    'July',
    'Avgust',
    'September',
    'Octember',
    'November',
    'Deceber'
  ]);
  print(month);
  int index = month.indexOf('March');
  print(index);
  month.removeAt(2);
  print(month);
  month.insert(2, 'March');
  print(month);

  // List<String?>? list = ['milky', 'water', null];
  // print(list);
  // for (String? drink in list) {
  //   print(drink);
  //   int letter = drink?.length ?? 0;
  //   print(letter);
  // }

  // print(countElement(fruits, 'peach'));

  // print('listdagi elemnt ${countElement(fruits, 'peach')}');
}

int countElement(List list, String element) {
  int count = 0;
  list.forEach((item) {
    if (item == element) {
      count++;
    }
  });
  return count;
}

int countElement2(List list, dynamic element) {
  int count = 0;
  list.forEach((element) {
    if (element == element) {
      count++;
    }
  });
  return count;
}

int countElement1(List<String> list, String element) {
  int count = 0;
  int index = 0;

  for (int i = 0; i < list.length; i++) {
    index = list.indexOf(element, index);
    if (index == -1) {
      break;
    }
    count++;
    index++;
  }
  return count;
}

int countElement3(List<String> list, String element) {
  int count = 0;
  int index = 0;
  while (index <= list.length) {
    index = list.indexOf(element, index);
    if (index == -1) {
      break;
    }
    count++;
    index++;
  }
  return count;
}
