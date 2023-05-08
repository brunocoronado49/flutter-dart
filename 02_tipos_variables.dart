void main() {
  final String pokemon = 'Charmander';
  final int hp = 100;
  bool? isAlive = true;
  final List<String> abilidades = ['Fuego'];
  final sprites = <String>['charmander/front.png'];

  // dynamic == null
  dynamic errorMessage = 'Hola';
  errorMessage = 30;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;
  print(errorMessage);

  print("""
    $pokemon
    $hp
    $isAlive
    $abilidades
    $sprites
  """);
}
