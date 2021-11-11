main() {
  Map<String, dynamic> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    'nivel': 9000,
  };

  print(ironman['nombre']); // Tony Stark

  Map<String, dynamic> capitanAmerica = new Map();

  capitanAmerica.addAll({
    'nombre': 'Steve Rogers',
    'poder': 'Super fuerza',
  });

  print(capitanAmerica['nombre']); // Steve Rogers
}
