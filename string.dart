void main() {
  String str = 'Flautter 🍌 ';

  for (int i = 0; i < str.length; i++) {
    print('${str[i]} = ${str.codeUnitAt(i)}');
  }

  //Ism familiyangizni unicodelarini toping. UnicodeAt orqali qilish tavsiya etiladi.
  String myname = 'A\'zamov Obid';

  for (int i = 0; i < myname.length; i++) {
    print('${myname[i]} = ${myname.codeUnitAt(i)} => ${myname[i]} ');
  }

  //Kodlar jadvalida kiritilgan belgidan oldin va keyin turuvchi belgilarni
  //chigaruvchi dastur tuzilsin

  String text = 'Salom';
  String targetChart = 'a';

  int index = text.indexOf(targetChart);

  if (index != -1) {
    String before = index > 0 ? text[index - 1] : '';
    String after = index < text.length - 1 ? text[index + 1] : '';
    print('');
    print('index $index');
    print('Target chart (Stuvdagi) $targetChart');
    print('Before (Oldingisi) $before');
    print('After (Keyingisi) $after');
  }

  //97,98,99...121,122 unicodelar berilgan bo'Isa bu ketma ketlikni aslini toping
  List<int> uniuqValue = List.generate(122 - 97 + 1, (index) => 97 + index);

  String result =
      uniuqValue.map((codePoint) => String.fromCharCode(codePoint)).join();

  print(result);

  String textLatin = 'Heart - 🫀, Brain - 🧠, Lungs - 🫁, Leaf - 🍀';
  String latinText = '';

  for (int i = 0; i < textLatin.length; i++) {
    if (textLatin[i].codeUnitAt(0) >= 65 && textLatin[i].codeUnitAt(0) <= 90 ||
        textLatin[i].codeUnitAt(0) >= 97 && textLatin[i].codeUnitAt(0) <= 122) {
      latinText += textLatin[i];
    }
  }

  for (int i = 0; i < latinText.length; i++) {
    print('Letters: ${latinText[i]} - ${latinText.codeUnitAt(i)}');
  }

  Runes runes = Runes('\u{1f605}');
  print(String.fromCharCodes(runes));

  //n butun soni berilgan (1 <= n <= 26). Lotin alfavitidagi dastlabki n ta katta
  //harflarni chigaruvchi programma tuzilsin.
  int n = 26;
  String sum = '';

  for (int i = 0; i < n; i++) {
    sum += String.fromCharCode(65 + i);
  }
  print('Hight letter: $sum');

  //n butun soni berilgan (1 <= n <= 26). Lotin alfavitidagi n ta kichik harflarni
  //teskari tartibda chiqaruvchi programma tuzilsin. Ya'ni z da a gacha chiqarilsin.
  //
  int nlittle = 26;
  String sumLittle = '';

  for (int i = nlittle; i > 0; i--) {
    sumLittle += String.fromCharCode(97 + i);
  }
  print('Little letters: $sumLittle');

  String text1 = 'Salom';

  int indexFirs = text1.codeUnitAt(0);
  int indexLast = text1.codeUnitAt(text1.length - 1);

  print('First sign (Birinchi belgi) : $indexFirs');
  print('Last sign (Oxirgi belgi) : $indexLast');

  print(sybleSign('Hello%%', '%'));

  Duration time = Duration(hours: 1, minutes: 2, seconds: 10);
  int hours = time.inHours;
  print('hourse: $hours');

  String minuts = '${time.inMinutes % 60}'.padLeft(2, '0');
  print(minuts);
  String seconds = '${time.inSeconds % 60}'.padLeft(2, '0');
  String timeString = '$hours: $minuts $seconds';
  print(timeString);

  int number = 10;
  String textString = 'oh';
  print('=> ${numberString(textString, number)}');

  String csvFileLine = 'Martin,Emma,12,Paris,France';

  final fields = csvFileLine.split(',');
  print(fields);

  final joined = fields.join('-');
  print(joined);

  //https://semrush.com/blog/what-is-a-url-slug/
  print(covertSlug('HTTPS://SEMRUSH.COM/BLOG/What IS A URL SLUG/'));
  print(strSlug('HTTPS://SEMRUSH.COM/BLOG/What IS A URL SLUG/'));

  StringBuffer message = StringBuffer();
  message.write('Hello ');
  message.write('My name is ');
  message.write('Ray ');
  print(message);

  StringBuffer bufer = StringBuffer();
  for (int i = 2; i <= 1024; i *= 2) {
    bufer.write(i);
    bufer.write(' ');
  }
  print(bufer);

  String pasword = 'Password1234';

  RegExp lowerCase = RegExp(r'[a-z]');
  RegExp upperCase = RegExp(r'[A-Z]');
  RegExp number1 = RegExp(r'[0-9]');

  if (!pasword.contains(lowerCase)) {
    print('Your password is must have lower case letter');
  } else if (!pasword.contains(upperCase)) {
    print('Your password is must have Upper case letter');
  } else if (!pasword.contains(number1)) {
    print('Your password is must have number');
  } else {
    print('Your password is ok');
  }
}

int sybleSign(String str, String sign) {
  int count = 0;
  int index = 0;
  for (int i = 0; i < str.length; i++) {
    index = str.indexOf(sign, index);
    if (index == -1) {
      break;
    } else {
      count++;
      index++;
    }
  }
  return count;
}

//Foydalanuvchi tomonidan kiritilgan matnni boshida va oxirida ortiqcha
//probellarni olib tashlovchi va matndagi hamma harflarni kichik registrli
//harflarga o’tkazuvchi sendText nomli funksiya tuzing!

String senText(String str) {
  String s = str.trim();
  String loverCase = s.toLowerCase();
  return loverCase;
}

//N natural soni va satr berilgan. Uzunligi N ga teng bo'lgan satri shunday hosil
//qilingki, agar kiritilgan satrning uzunligi N dan katta bo'lsa, satrni o’zgarishsiz
//qoldiring. Agar kiritilgan satrning uzunligi N dan kichik bo'lsa, yangi satr
//boshiga nuqtalarni “.” qo’shing

String numberString(String str, int n) {
  if (str.isEmpty) print('str is is not must emty');
  if (n > str.length) {
    str = '.' * (n - str.length) + str;
  } else {
    str;
  }
  return str;
}

//Slug- kiritilgan nomni yoki matnni web site url sifatida ishlatish uchun hamma
//harflar kichik harflarga o’tkaziladi va oraliqdagi probellar o’rniga “-“ qo’yildi.
//convertSlug nomli funksiya tuzing.

String strSlug(String str) {
  String lowerCase = str.toLowerCase();
  final proble = lowerCase.split(' ');
  final join = proble.join('-');
  return join;
}

// Slug- kiritilgan nomni yoki matnni web site url sifatida ishlatish uchun hamma
//harflar kichik harflarga o’tkaziladi va oraliqdagi probellar o’rniga “-“ qo’yildi.
//convertSlug nomli funksiya tuzing.
String covertSlug(String slug) {
  String input = slug.toLowerCase().replaceAll(' ', '-');

  return input;
}
