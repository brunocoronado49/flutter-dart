void main() {
  print(saludarTodos());
  print(addTwoNumbers(10, 20));
  print(addtwoNumbersOptional(10, 15));
  print(greetPerson(name: 'Francisco', message: 'Kiuvoles'));
}

String saludarTodos() => 'Hola a todos';

int addTwoNumbers(int a, int b) => a + b;

int addtwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = 'Hola'}) {
  return '$message, $name';
}
