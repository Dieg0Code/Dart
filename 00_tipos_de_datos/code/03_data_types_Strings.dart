main() {
  //var nombre = 'Tony';

  String nombre = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "O'conor";
  String nombre4 = 'O\'conor';
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
  Hola $nombreCompleto
  Como estas?
  O'connor
  ''';
  print(multilinea);
  print(nombre);
}
