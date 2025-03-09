void main() {
  String str = 'Flautter 🍌 ';

  for (int i = 0; i < str.length; i++) {
    print('${str[i]} = ${str.codeUnitAt(i)}');
  }

  String myname = 'A\'zamov Obid';

  for (int i = 0; i < myname.length; i++) {
    print('${myname[i]} = ${myname.codeUnitAt(i)} => ${myname[i]} ');
  }

 
}
