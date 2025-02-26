void main() {
  int n = 234;
  int sum = 0;
  while (n > 0) {
    sum += n % 10;
    n = n ~/ 10;
  }
  print('Raqamlar yig\'indisi $sum');

  int n1 = 5;
  int count = 0;
  do {
    count++;
    print(count);
  } while (n1 > count);
  print('');
  int i = 10;

  do {
    print(i);
    i--;
  } while (i > 0);

  int i1 = 1;
  int n2 = 25;
  int s = 0;
  do {
    s += i1;
    i1++;
    print('1 dan 25 gacha raqamlar yig\'indisi  $s');
  } while (n2 > i1);
}
