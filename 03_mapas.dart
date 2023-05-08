void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Charmander',
    'hp': 100,
    'isalive': true,
    'abilidade': <String>['fuego'],
    'sprites': <int, String>{
      1: 'charmander/front.png',
      2: 'charmander/back.png'
    }
  };

  print('Name: ${pokemon["name"]}');
  print('Sprites: ${pokemon["sprites"]}');

  print('Back: ${pokemon["sprites"][2]}');
  print('Front: ${pokemon["sprites"][1]}');
}
