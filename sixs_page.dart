void main() {
  int number = 100000;
  //anonimous function  mukkamal son 
  bool Function(int) isPerfectNumber = (int x) {
    int sum = 0;
    for (int i = 1; i <= x ~/ 2; i++) {
      if (x % i  == 0) {
        sum += i;
      }
    }
    return sum == x;
  };

 findPerfectNumber(number, isPerfectNumber);
}

//mukammal son function mad my own
void findPerfectNumber(int n, bool Function(int) action) {
  for (int i = 1; i <= n; i++) {
    if (action(i)) {
      print(i);
    }
  }
}
