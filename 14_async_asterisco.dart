void main() {
  emitNumber()
    .listen((event) {
      print('Stream value: $event');
    });
}

// retorna un stream
Stream emitNumber() async* {
  final List<int> valuesToEmit = [1, 2, 3, 4, 5];

  for(int i in valuesToEmit) {
    await Future.delayed(Duration(seconds: 1));

    // en vez de return se usa yield
    yield i;
  }
}

