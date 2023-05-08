void main() {
  final Square mySquare = Square(side: -10);
  print('My area: ${mySquare.area}');
  // print(mySquare.calculAtearea());

  // mySquare.side = -5;
  // mySquare.side = 5;
  // print('My new area: ${mySquare.area}');
}

class Square {
  double _side;

  Square({required double side})
    : assert(side >= 0, 'Side most be >= 0!'),
      _side = side;

  double get area {
    return _side * _side;
  }
  
  set side(double value) {
    print('Setting new value $value');
    if (value < 0) throw 'Value most be > 0';

    _side = value;
  }

  String calculAtearea() {
    return 'My area inside method: $area';
  }
}
