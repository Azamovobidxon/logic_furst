void main() {
  declareFunction('Hello everyone');
  int firstA = 34;
  int firsB = 34;

  int result = add(firstA, firsB);
  print(result);

  print(add(34, 34));

  isOdd(6);
  sonYigindi(1, 25);
  print('');
  print('sumRange, a dan b gacha nonlar yig\'indisi  ${sumRange(1, 25)}');
  print('');
  print('ucht soning o\'rta arfimetigi ${middleArfmetig(34, 1, 34)}');

  print('katta son ${maxNumber(1000, 101, 500)}');
}

void declareFunction(String msg) {
  print('Massage: $msg');
}

int add(int a, int b) {
  return a + b;
}

void isOdd(int n) {
  if (n < 0) {
    print('0 dan katta son kriting');
  } else if (n.isEven) {
    print(true);
  } else {
    print(false);
  }
}

void sonYigindi(int a, int b) {
  int sum = 0;
  while (a <= b) {
    sum += a;
    a++;
  }
  print('a dan b gacha sonlar yig\'indsi $sum');
}

int sumRange(int a, int b) {
  int sum = 0;
  for (int i = a; i <= b; i++) {
    sum += i;
  }
  return sum;
}

int middleArfmetig(int a, int b, int c) {
  return (a + b + c) ~/ 3;
}

int maxNumber(int a, int b, int c) {
  int sum = 0;
  if (a > b) {
    sum = a;
  } else if (b > c) {
    sum = b;
  } else if (c > a) {
    sum = c;
  } else {
    print('nimadir xato');
  }
  return sum;
}
