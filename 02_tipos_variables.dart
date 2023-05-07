void main() {
  final String pokemon = 'Charmander';
  final int hp = 100;
  bool? isAlive = true;
  final List<String> abilidades = ['Fuego'];
  final sprites = <String>['charmander/front.png'];

  // dynamic == null
  dynamic? errorMessage = 'Hola';

  print("""
    $pokemon
    $hp
    $isAlive
    $abilidades
    $sprites
  """);
}
