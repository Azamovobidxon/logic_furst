void main() {
  final list = [
    'pdp',
    4,
    'flutter best',
    10,
    45,
    'online',
    1,
    2,
    4,
    7,
    'android',
    3.14
  ];
  List<int> number = [];
  List<String> str = [];
  List<double> divide = [];

  for (int i = 0; i < list.length; i++) {
    final item = list[i];

    if (item is String) {
      str.add(item);
    } else if (item is int) {
      number.add(item);
    } else if (item is double) {
      divide.add(item);
    }
  }
  print(str);
  for (final item in list) {
    if (item is String) {
      str.add(item);
    } else if (item is double) {
      divide.add(item);
    } else if (item is int) {
      number.add(item);
    }
  }
//  print(list);
//  print(str);
//  print(number);
//  print(divide);

  List<int> massive = [1, 3, 4, 6, 62, 67, 456];

  // eng katta elementni topish
  int maxElemnt = massive[0]; // birinchi elementga tenglab olish

  for (var element in massive) {
    if (maxElemnt < element) {
      maxElemnt = element;
    }
  }
  print('eng katta element bu $maxElemnt');

  // eng kichik elementni topish
  int littleElement = massive[0];

  for (final number in massive) {
    if (littleElement > number) {
      littleElement = number;
    }
  }
  print('enk kichik element bu $littleElement');

  int n = massive.fold(0, (e, element) => e + element);
  print(n);
  print(list1(massive));

   print('6 ning indexsi ${massive.indexOf(6)}');
   
   massive.removeAt(3);
   massive.insert(0, 6);
   print(massive);
   
}

bool list1(List<int> n) {
  for (var element in n) {
    if (element == 6) {
      return true;
    }
  }
  return false;
}
