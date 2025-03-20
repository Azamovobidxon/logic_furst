void main() {
  Humen women =
      Humen(id: 1, name: 'Baby', age: 18, gender: 'women', where: 'London');
  women.humenMove('London');
  print(women);
  Humen men = Humen(id: 2, name: 'Tom', age: 23, gender: 'man');
  men.humenMove('Frankfurt');
  print(men);
}

class Humen {
  final int id;
  final String name;
  final int age;
  final String gender;
  String? where;

  Humen({
    required this.id,
    required this.name,
    required this.age,
    required this.gender,
    String? this.where,
  });

  void humenMove(String where) {
    print('the humen is $where');
  }

  Humen comyWith(
          {int? id, String? name, int? age, String? gender, String? where}) =>
      Humen(
        id: id ?? this.id,
        name: name ?? this.name,
        age: age ?? this.age,
        gender: gender ?? this.gender,
      );

  @override
  String toString() =>
      'name: $name,id: $id,age: $age,gender:$gender where: $where';
}
