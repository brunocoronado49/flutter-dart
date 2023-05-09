main() {
  print('Inicio del programa');

  httpGet('http://fernando-herrera.com/cursos/api')
    .then((value) {
      print(value);
    }).catchError((err) {
      print('Error: $err');
    });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 3), () {
    throw 'Error en la request http';
    // return 'Soy una respuesta de una request Http';
  });
}
