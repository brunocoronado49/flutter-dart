void main() {
  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
}

// flujo de datos por un periodo de tiempo
Stream<int> emitNumbers() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    // print('Desde periodic $value');
    return value;
  }).take(5);
}
