void main() {
  List<String> cities = <String>['Istanbul,Anlkara,Izmir,Bursa,Antalya'];
  // cities.forEach((city) => print( city));
  // cities.forEach((print));
  int n = 10000;
 print(cities);
  // divsibleByThree(n, uchgaBoluv);
  bool Function(int) uchgaBoluv = (int son) => son % 3 == 0; 


  int n1 = 10000;

  bool Function(int) mukammalNumber = (int number) {
    int sum = 0;
    for (int i = 1; i <= number ~/ 2; i++) {
      if (number % i == 0) {
        sum += i;
      }
    }
    return sum == number;
  };
  isFindPerfectNumber(n1, mukammalNumber);
  

  bool Function(int) isPerfectNumber1 = (int x) {
    int sum = 0;
    for (int i = 1; i <= x ~/ 2; i++) {
      if (x % i == 0) {
        sum += i;
      }
    }
    return sum == x;
  };
  perfectNumber(n, isPerfectNumber1);
}

void perfectNumber(int n, bool Function(int) action) { //Mukammal son functioni
  for (int i = 1; i <= n; i++) {
    if (action(i)) {
      print(i);
    }
  }
}

void isFindPerfectNumber(int n,bool Function(int)action) {
   for (int i = 1; i <= n;i++) {
    if (action(i)) {
     print(i);
    }
   }
}