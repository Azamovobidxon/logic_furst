void main() {
  Set<int> setA = {8, 2, 3, 1, 4};
  Set<int> setB = {1, 3};

  final newUnionSet = setA.union(setB);
  print(newUnionSet);
  final newInterSec = setA.intersection(setB);
  print(newInterSec);
  // difenrence setA dan setB ga yo'qini oladi
  final difernce = setA.difference(setB);
  print(difernce);

  String uniqui = "qwertyuiopasdfghjklzxcvbnmqscwdvefbrgn";

  Set<String> uiniqChar = {};
  var s = uniqui.split('').toSet();

  print(s.length);
  print("un ${s}");

  for (int i = 0; i < uniqui.length; i++) {
    uiniqChar.add(uniqui[i]);
  }
  print(uiniqChar.length);
  print('Satrdagi uniq elementlar soni ${uiniqChar.length}');

  // satr berilgan
  String str1 = "aabs";
  // satr berilgan
  String str2 = "abdc";

  //str1 satrni split qilib yoyiv olamiz Set ga o'tkazish
  Set<String> set1 = str1.split('').toSet();
  //str2 satrni split qilib yoyiv olamiz Set ga o'tkazish
  Set<String> set2 = str2.split('').toSet();
  //set1 cosolga chiqarish
  print(set1);
  //set2 cosolga chiqarish
  print(set2);

  // dif1 Set yaratib olamiz
  Set<String> dif1 = set1.difference(set2);
  Set<String> dif2 = set2.difference(set1);
  print(set1);
  print(set2);

  Set<String> setAll = {}
    ..addAll(dif1)
    ..addAll(dif2);
  print(setAll);
}
