void main() {
  List<String> fruits = [
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
  print(countElement(fruits, 'peach'));
  print(countElement1(fruits, 'peach'));
  print('listdagi elemnt ${countElement(fruits, 'peach')}');
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

int countElement3(List<String> list,String element) {
  int count = 0;
  int index = 0;
  while(index <= list.length) {
    index = list.indexOf(element,index);
     if (index == -1) {
      break;
     }
    count++;
    index++;
  }
 return count;
}