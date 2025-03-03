import 'dart:math';

typedef JustdiIt = num Function(int num1, int num2);
typedef ManyOeration = void Function(int firstNo, int secondNo);
typedef DarajaAndIldiz = double Function(double x);
typedef SinusCosinus = double Function(double a);
int butunQisim(var num1, var num2) {
  return num1 ~/ num2;
}

num qoldiqQisim(dynamic num1, dynamic num2) {
  return num1 % num2;
}

void add(int firstNo, int second) {
  print('add result is ${firstNo + second}');
}

void subtrauct(int firstNo, int second) {
  print('subtruct result is ${firstNo - second}');
}

void multtply(int firstNo, int second) {
  print('multiply result is ${firstNo * second}');
}

void divide(int firstNo, int secondNo) {
  print('divide result is ${firstNo ~/ secondNo}');
}

void calculator(int a, int b, ManyOeration oper) {
  print('Inside Calculator');
  oper(a, b);
}

double daraja(double x) {
  return pow(e, x).toDouble();
}

double ildiz(double x) {
  return sqrt(x);
}

double sinus(double a,) {
  return sin(a);
}

double cosinus(double a,) {
    return cos(a);
}

void main() {
  JustdiIt diIt;
  diIt = butunQisim;
  print('butun qisim ${diIt(34, 21)}');
  diIt = qoldiqQisim;
  print('qoldiq qisimi ${diIt(34, 43)}');

  calculator(4, 5, add);
  calculator(5, 3, subtrauct);
  calculator(6, 1, multtply);
  calculator(6, 17, divide);

  DarajaAndIldiz d = daraja;
  print('daraja ${d(2)}');
  d = ildiz;
  print('ildiz qismi ${d(5)}');

  SinusCosinus s = cosinus;
  print('cosinus ${s(23)}');
  s = sinus;
  print('sinus ${s(87)}');


}
