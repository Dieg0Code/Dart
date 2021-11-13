main() {
  // operadores de asignación
  int a = 10;
  int? b;

  b ??= 20; // Asigna el solo si la variable es nula

  //print(b); // 20

  // Operadores condicionales
  int c = 23;
  String resp = c > 25 ? 'C es mayor que 25' : 'C es menor que 25';

//  print(resp); // C es menor que 25

  int d = b ?? a; // Si b es nulo, entonces asigna a, sino b

  print(d); // 10 En este caso, b es nulo, por lo tanto se asigna a

  int e = b ?? a ?? 0; // Si b y a son nulos, entonces asigna 0
}
