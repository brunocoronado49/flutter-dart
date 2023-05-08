void main() {
  final List<int> numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers');
  print('List length: ${numbers.length}');
  print('List index 0: ${numbers[0]}');
  print('List first element: ${numbers.first}');
  print('List last element: ${numbers.last}');
  print('List reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('Iterable: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}'); // no repite valores

  final numberGreaterThanFive = numbers.where((int number) {
    return number > 5;
  });
  print('Number Greater than five iterable: $numberGreaterThanFive');
  print('Number Greater than five set: ${numberGreaterThanFive.toSet()}');

}
