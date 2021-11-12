main() {
  var a = 10;
  final double b = 10.0;
  const double c = 10.0;

  final personasFinal = ['Juan', 'Pedro', 'Maria'];
  const personasConst = ['Juan', 'Pedro', 'Maria'];

  personasFinal.add('Luis');
  personasConst.add('Luis');

  print(personasConst);
}
