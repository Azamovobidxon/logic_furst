import 'dart:math';

void main() {
  Circule circule = Circule(23, 3.14);
  print(circule);

  Computer computer = Computer(
    name: 'hp',
    cpu: 'ert',
    gpu: '23',
    ram: 'corai 8',
    storage: '256',
  );
  print(computer);

  Line short = Line(1);
  Line middle = Line(1);
  Line long = Line(3);

  print(short.compareTo(long) < 0);
  print(middle.compareTo(middle) == 0);
  print(long.compareTo(long) < 0);

  Point pointa = Point(1, 2);
  Point pointb = Point(4, 4);

  double point = Point.distanceBeetween(pointa, pointb);
  print(point);
}

class MyClass {
  // fields maydonlar
  String myField = 'Hello, Dart';

  //Function
  MyClass();

  //methd yoki Function
  void myMethod() {
    //property
    print('myProperty');
  }
}

class User {
  String name = 'Obid';
  int age = 23;
  String where = 'Samarkand';

  //Constructor short form
  //User(this.name, this.age, this.where);

  // Constructor Long-Form
  User(String name, int age, String where) {
    name = name;
    age = age;
    where;
  }

  //constuctor defoult value
  // User(String name, int age, String where);

  //constructor with named parametr
  // User({required String name,required int age,required String where})
}

class Circule {
  double _radious;
  double pi;
  Circule(this._radious, this.pi);

  double get area => pi * _radious * _radious;

  @override
  String toString() => '$area';
}

class Password {
  String? _plainText;

  String? get plainText => _plainText;

  set palinText(String text) {
    if (text.length < 6 || text.isEmpty) {
      print('code 6 ta bolish kerak va bosh bo\'lmasligi kerak');
      return;
    }
    _plainText = text;
  }
}

class Person {
  int _age = 0;

  int get yourAge => _age;

  set yourAge(int ageyou) {
    if (ageyou <= -1) {
      print('your age must be possitive ');
    } else {
      print('your age is ok');
    }
    _age = ageyou;
  }
}

class Computer {
  String name;
  late String createdAt;
  String cpu;
  String gpu;
  String storage;
  String ram;

  Computer({
    required this.name,
    required this.cpu,
    required this.gpu,
    required this.ram,
    required this.storage,
  }) {
    createdAt = DateTime.now().toString();
  }
  @override
  String toString() =>
      'name: $name,cpu: $cpu, gpu: $gpu, ram: $ram,storage: $storage,dateOfTime: $createdAt';
}

class Line implements Comparable<Line> {
  final int length;

  const Line(this.length);

  @override
  int compareTo(Line other) => length - other.length;

  @override
  String toString() => 'Line $length';
}

class Point {
  double x, y;
  Point(this.x, this.y);

  static double distanceBeetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}
