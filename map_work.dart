void main() {
  Map<String, int> emtuMap = {};
  final emtyMap2 = <String, int>{};

  Map<String, int> inventory = {
    'cakes': 20,
    'pies': 14,
    'donuts': 37,
    'cookies': 141,
  };
  print(inventory);
  Map<int, String> digitTwo = {
    1: 'one',
    2: 'two',
    3: 'three',
    4: 'four',
    5: 'four',
    6: 'three',
  };
  print(digitTwo);

  print('keyning valusis ${digitTwo[3]}}');

  final Map<String, String> myMap = {
    'Royal': 'Apple',
    'Oscar': 'banana',
    'Miles': 'Apple',
    'James': 'Mango',
    'Lucy': 'kwi',
  };

  myMap.forEach((key, value) => print('$key-$value'));

  for (final key in myMap.keys) {
    print('$key-${myMap[key]}');
  }

  for (final entry in myMap.entries) {
    print('${entry.key}=>${entry.value}');
  }

  String str = ' aabcccccdwsqqe';

  Map<String, int> charCount = {};

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    if (charCount.containsKey(char)) {
      charCount[char] = charCount[char]! + 1;
    } else {
      charCount[char] = 1;
    }
  }
  print('charcount $charCount');

  Map<String, int> emtyMap = {};

  for (int i = 0; i < str.length; i++) {
    String string1 = str[i];
    if (emtyMap.containsKey(string1)) {
      emtyMap[string1] = emtyMap[string1]! + 1;
    } else {
      emtyMap[string1] = 1;
    }
  }
  String mostFrequentChart = '';
  int maxCount = 0;
  emtyMap.forEach((key, value) {
    if (value > maxCount) {
      mostFrequentChart = key;
      maxCount = value;
    }
  });
  print('eng ko\'p takrorlangan element $mostFrequentChart');
  print('Takrorolanish soni $maxCount');

  Map<String, String> user = {
    'id': '10001',
    'password': 'admin123',
    'name': 'Admin'
  };

  if (!user.containsKey('@')) {
    user['password'] = '@' + user['password']!;
  }
  print(user);
}
