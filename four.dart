void main() {
  int number = 10;
  int count = 0;

  while (number > count) {
    count++;
    // print(count);
  }

  while (number >= 1) {
    // print(number);
    number--;
  }
  int l = 1;
  int yigindi = 0;

  while (l < 25) {
    yigindi += l;
    l++;
  }
  // print('1 dan 25 gacha sonlar yig\'indisi $yigindi');
  int raqam = 20;
  int sumYigndi = 0;
  while (raqam >= 1) {
    if (raqam % 2 == 0) {
      // print('juft sonlar $raqam');
      sumYigndi += raqam;
    }
    raqam--;
    // print('juft sonlar yig\indisi $sumYigndi');
  }

  int n = 100;
  int i = 1;
  while (i <= i) {
    if (n % i == 0) {
      // print('i ning natural bo\'luvchilari $i');
    }
    i++;
  }

 
 int sum = 0;
  while(n > 0) {
    sum += n % 10;
    sum = n ~/ 10;
   print('Raqamlar yig\'indisi $sum');
  }
}
