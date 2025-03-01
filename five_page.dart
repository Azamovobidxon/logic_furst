void main() {
  myInfo('Da  rt', age: 15);
  String numberString1 = '123';
  String numberString2 = 'abc';
  int number = int.parse(numberString1);
  print(number);
  int? number2 = int.tryParse(numberString2);
  print(number2);
  
}

void myInfo(String name, {required int age}) {
  print('$name $age');
}

void myInfo2({String? name, int? age}) {
  print('$name $age');
}

int myTryParse(String source, {int? radix = 10}) {
  return int.parse(source, radix: radix);
}
