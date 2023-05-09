void main() async {
  print('Inicio del programa');

  try {
     final value = await httpGet('http://fernando-herrera.com/cursos/api');
     print('Exito: $value');
  } on Exception catch(err) {
    print('Tenemos una Exception: $err'); // error controlado
  } catch(err) {
    print('Error: $err'); // error no controlado
  } finally {
    print('Fin del try/catch');
  }
 
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 3));
  // throw Exception('No hay un parametro url!');
  throw 'No hay un parametro url!';
  // return 'Valor de request';
}
