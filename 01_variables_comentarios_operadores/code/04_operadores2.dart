main() {
  // Operadores relacionales
  // Todos retornan un valor booleano

  /**
   * == Igual que
   * != Diferente que
   * 
   * > Mayor que 
   * < Menor que
   * >= Mayor o igual que
   * <= Menor o igual que
   */

  String persona1 = 'Fernando';
  String persona2 = 'Alberto';

  print(persona1 == persona2); // false
  print(persona1 != persona2); // true

  int a = 10;
  int b = 20;

  print(a > b); // false
  print(a < b); // true
  print(a >= b); // false
  print(a <= b); // true

  int c = 10;
  String d = '10';

  // Operador de tipo

  print(c is int); // true
  print(d is int); // false
  print(d is! int); // true
  print(c is! int); // false
}
