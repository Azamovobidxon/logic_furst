import 'dart:math';

void main() {
  Point a = Point(2, 2);
  Point b = Point(4, 4);
  double distance = Point.staticBeetwen(a, b);
  print(distance);

  Vector vector = Vector(2, 3);
  Vector vector1 = Vector(2, 2);

  print(vector + vector1);

  print('vector 1 ${vector + vector1 == Vector(4, 5)}');
  print('vector 2 ${vector - vector1 == Vector(0, 1)}');

  Product product = Product('sd', 'apple', 'red');
  print(product);
  Product s = product.copyWith('sd', 'banana', 'white');
  print(' ${s}');
}

class Point {
  double x, y;

  Point(this.x, this.y);

  static double staticBeetwen(Point a, Point b) {
    double dx = a.x - b.x;
    double dy = a.y - b.y;

    return sqrt(dx * dx + dy * dy);
  }
}

class Vector {
  final int x;
  final int y;
  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  @override
  bool operator ==(Object other) =>
      other is Vector && x == other.x && y == other.y;

  @override
  int get hashCode => Object.hashAll([x, y]);

  @override
  String toString() => 'Vector(x: $x, y: $y)';
}

class Product {
  final String id;
  final String name;
  final String color;

  Product(this.id, this.name, this.color);

  Product copyWith(
    String? id,
    String? name,
    String? color,
  ) =>
      Product(id ?? this.id, name ?? this.name, color ?? this.color);

  @override
  String toString() => 'Product(id: $id, name: $name, color: $color)';
}
