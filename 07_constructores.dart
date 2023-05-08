void main() {
  final Map<String, dynamic> rawJson = {
    'name': 'Guts',
    'power': 'Berserk armor',
    'isAlive': true
  };

  final Hero batman = Hero.fromJson(rawJson);

  print(batman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? 'No alive';

  @override
  String toString() {
    return '$name, $power ${isAlive ? "YES" : "NO"}';
  }
}
