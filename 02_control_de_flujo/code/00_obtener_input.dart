import 'dart:io';

main() {
  // imprimir en terminal
  stdout.writeln('Ingrese su nombre: ');

  // leer entrada
  String nombre = stdin.readLineSync() ?? 'Desconocido';

  print('Hola $nombre');
}
