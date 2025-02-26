void main() {
  int n = 234;
  int sum = 0;
  while(n > 0) {
   sum += n % 10;
   n = n ~/ 10;
  }
  print('Raqamlar yig\'indisi $sum');
}