import 'dart:math';

typedef JustdiIt = num Function(int num1, int num2);
typedef ManyOeration = void Function(int firstNo, int secondNo);
typedef DarajaAndIldiz = double Function(double x);
typedef SinusCosinus = double Function(double a);
typedef EkukVaEkub = int Function(int a, int b);

//butun qisim
int butunQisim(var num1, var num2) {
  return num1 ~/ num2;
}

//qoldiq qisim
num qoldiqQisim(dynamic num1, dynamic num2) {
  return num1 % num2;
}

// add funktion
void add(int firstNo, int second) {
  print('add result is ${firstNo + second}');
}

// subtract function
void subtrauct(int firstNo, int second) {
  print('subtruct result is ${firstNo - second}');
}

// multiply function
void multtply(int firstNo, int second) {
  print('multiply result is ${firstNo * second}');
}

// divide function
void divide(int firstNo, int secondNo) {
  print('divide result is ${firstNo ~/ secondNo}');
}

// calculator function
void calculator(int a, int b, ManyOeration oper) {
  print('Inside Calculator');
  oper(a, b);
}

// daraja function
double daraja(double x) {
  return pow(e, x).toDouble();
}

// ildiz function
double ildiz(double x) {
  return sqrt(x);
}

//sinus function
double sinus(
  double a,
) {
  return sin(a);
}

//cosinus function
double cosinus(
  double a,
) {
  return cos(a);
}

// ekuk function
// ekub Function
int ekubFunction(int a, int b) {
  while (b != 0) {
    int temp = b;
    a = temp;
  }
  return a;
}

int ekukFunction(int a, int b) {
  return (a * b).abs();
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

  EkukVaEkub e = ekubFunction;

  print('ekub result is ${e(2, 3)}');
  e = ekukFunction;
  print('ekuk result is ${e(5, 3)}');
}
