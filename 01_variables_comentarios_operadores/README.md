# Variables, comentarios y operadores

No existe solo una manera de declarar una variable, sino que hay varias formas, las cuales dependen de la situación, por ejemplo:

```dart
main() {
  var a = 10;
  final b = 10;
  const c = 10;
}
```

¿Cual es la diferiencia entre las tres?, por ejemplo si quiero cambiar el nombre de la variable `a` lo puedo hacer, pero si intento hacer lo mismo con `b` o `c` no podré, ya que `final` y `const` sirven para definir variables que no van a cambiar después de que fueron inicializadas.

La diferencia entre `final` y `const` es que `final` se puede instanciar en tiempo de ejecución, mientras que `const` en tiempo de compilación.

Si quisiera hacer que `b` y `c` sean `doubles`:

```dart
main() {
  var a = 10;
  final double b = 10.0;
  const double c = 10.0;
}
```

Para entender un poco mejor la diferencia entre `final` y `const` podemos verlo en el siguiente ejemplo:

```dart
// declaro dos listas iguales en contenido
final personasFinal = ['Juan', 'Pedro', 'Maria'];
const personasConst = ['Juan', 'Pedro', 'Maria'];
```

A simple vista se ven iguales, pero al declarar una variable con `final` se puede cambiar el contenido de la misma, mientras que con `const` no se puede.

```dart
personasFina.add('Luis');
```

Puedo añadir un nuevo elemento a la lista `personasFinal`, pero no se puede hacer lo mismo con `personasConst`, ya que `const` no se puede modificar.

```dart
personasConst.add('Luis'); // ERROR Cannot add to an unmodifiable list
```

No podemos añadir un elemento a una lista inmodificable. Esta es la principal diferencia entre `final` y `const`.

Si queremos declarar una lista que no va a ser modificada jamas podemos usar `const`, pero si queremos que sea modificable mediante los métodos de la lista, podemos usar `final`.

Tambien podemos declarar las listas de la siguiente manera:

```dart
final List<String> personasFinal = ['Juan', 'Pedro', 'Maria'];
List<String> personasConst = const ['Juan', 'Pedro', 'Maria'];
```

Y funcionarian de la misma manera.

¿Que ventajas tiene declarar algo como `final` si después puedo modificarlo?. La ventaja es que si queremos volver a declarar la variable no nos lo permitirá, ya que `final` no se puede reasignar.

```dart
personasFinal = []; // ERROR
```

Porque basicamente le estoy diciendo que apunte a un nuevo espacio de memoria, lo cual no está permitido.

## Palabra reservada `late`

Desde la versión 2.12 de Dart tenemos una nueva palabra reservada para la creación y utilización de variables, y es el `late`:

Podemos declarar una variable de la siguiente manera:

```dart
late String nombre;
nombre = 'Diego';
```

La palabra reservada `late` sirve para indicar que vamos a declarar una variable pero que esta va a ser inicializada después.

```dart
late final String nombre;
nombre = 'Diego';

nombre = 'Juan'; // ERROR
```

## Comentarios en Dart

En Dart hay varias formas de hacer comentarios:

```dart
// Comentario de una línea
```

Los comentarios se usan para documentar nuestras variables, funciones, clases, etc.

También tenemos los comentarios multilínea:

```dart
/*
Comentario de varias líneas
-
-
-
*/
```

Este tipo de comentario tambien es muy usado para invalidar algún bloque de código que no queremos que se ejecute.

Por ejemplo:

```dart
/*
main() {
  print('Hola mundo');
}
*/
```

Luego si queremos que se ejecute el código que previamente hemos comentado, tan solo debemos los `/*` y `*/`.

Si queremos comentar alguna función lo normal seria pensar que la mejor forma de hacerlo seria algo así.

```dart
// Nombre: El nombre de la persona que quiero saludar
// Mensaje: El mensaje que quiero mostrarle
saludar(String nombre, String mensaje) {
  print('Hola $nombre, $mensaje');
}
```

Pero en Dart tenemos algo llamado `dartdoc`, que es una herramienta que nos permite generar documentación automáticamente de nuestros códigos, el problema es que los comentarios de tipo `//` son completamente ignorados por dartdoc, ya que este usa una sintaxis especial para comentar.

Por ejemplo, si venimos de lenguajes como Java sabremos que podemos generar comentarios del tipo:

```java
/// Funcion para saludar
/// @param: nombre
/// @param: mensaje
saludar(String nombre, String mensaje) {
  System.out.println('Hola $nombre, $mensaje');
}
```

Esta es la forma que tiene Java de generar su documentación, pero en Dart esto se hace de otra manera.

```dart
/// Funcion para saludar
/// Recibe un [nombre] se concatena con un [mensaje]
saludar(String nombre, String mensaje) {
  print('Hola $nombre, $mensaje');
}
```

Notar que esto comentarios tienen triple slash `///`, estos comentarios al igual que los otros son ignorados por el compilador, pero le sirven a dartdoc para generar la documentación. Lo que nosotros pongamos entre `[]` va a ser un marcado especial que podria hacer referencia a una variable, una función, etc.

También podemos documentar de la siguiente manera:

```dart
/**
 * Funcion para saludar
 * Recibe un [nombre] se concatena con un [mensaje]
 */
saludar(String nombre, String mensaje) {
  print('Hola $nombre, $mensaje');
}
```

El triple slash `///` y `/** */` sirven para lo mismo, documentar, solo que `/** */` es multilínea.

Podemos usarlo para por ejemplo poner una introducción a un archivo de código:

```dart
/**
* Este es un archivo de código
* [author] Diego
* [date] hoy
* [version] 1.0
*/
```

Este tipo de comentarios nos ayudan a generar documentación de nuestros códigos, con la ayuda de dartdoc por ejemplo, así nos ahorramos tiempo luego cuando debamos documentar lo que hicimos.

## Operadores aritméticos

Un operador es un simbolo que le dice al compilador qué debe realizar una tarea matemática, relacional o lógica y debe de producir un resultado.

Operadores matemáticos:

```dart
main() {
  int a = 10 + 5; // + 15
  a = 20 - 10; // - 10
  a = 10 * 2; // * 20

  double b = 10 / 2; // / 5.0
  b = 10.0 % 3; // % 1 El sobrante de la división
  b = -b // -expr es usado para cambiar el valor de la expresión
  int c = 10 ~/ 3; // ~/ es un operador de división entera 
}
```

Si quiero hacer una división tengo que usar el tipo de dato `double` porque el resultado podria ser un número con decimales.

El operador `~/` es un operador de división entera, es decir, si quiero hacer una división que me de un resultado entero, debo usar este operador.

Otros operadores:

```dart
main() {
  double a = 10;
  a++; // a = a + 1
  a--; // a = a - 1
  a += 5; // a = a + 5
  a -= 5; // a = a - 5
  a *= 2; // a = a * 2
  a /= 2; // a = a / 2 
  a %= 2; // a = a % 2
}
```

Dart tambien al igual que todos los lenguajes tiene un paquete para trabajar con operaciones matematicas más complejas.

## Operadores de asignación, condicional, relacional y de tipo.

Hay un operadores que hemos estado usando constantemente, el operador `=`, este operador es el de asignación, sirve para asignar un valor a una variable.

```dart
main() {
  int a = 10;
  int? b;

  b ??= 20; // Asignar el valor únicamente si la variable es nula

  print(b); // 20
}
```

Si imprimo la variable `b` en la consola, veremos que el valor es 20, esto es porque la variable `b` tenia el valor `null`, por lo que el operador `??=` lo inicializa con el valor 20.

En el caso de que la variable ya estuviera inicializada, el operador `??=` no hace nada.

### Operadores condicionales

Nos sirven para determinar si una condición es verdadera o falsa, por ejemplo para determinar si algo es mayor que otro, o si algo es menor que otro, para ver si son iguales o distintos, etc.

```dart
main() {
  int c = 23;
  String resp = c > 25 ? 'Es mayor' : 'No es mayor'; // Si c es mayor que 25, entonces resp es 'Es mayor', sino 'No es mayor'. Esto es una condición ternaria.
}
```

Otro ejemplo:

```dart
main() {
  int a = 10;
  int b = 10;

  int d = b ?? a; // Si b es nulo, entonces d es a, sino d es b.
}
```

Tambien puedo puedo poner otra condicion, por ejemplo:

```dart
main() {
  int a = 10;
  int b = 10;

  int d = b ?? a; // Si b es nulo, entonces d es a, sino d es b.
  int e = b ?? a ?? 0; //  Si b es nulo y a es nulo, entonces e es 0.
}
```

Y así sucesivamente podemos poner tantas condiciones como queramos.

## Operadores relacionales y por tipo

Todos los operadores relacionales retornan un booleano, `true` o `false`, el null no es considerado un valor de retorno correcto para un booleano. Si bien un null puede estar asignado a una variable booleana, no es un valor que pueda ser retornado por un operador relacional.

```dart
main() {
  // Operadores relacionales
  // Todos reotornan un valor booleano

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
}
```

Tambien puedo usar los operadores relacionales para comparar si una variable es mayor, menor, mayor o igual que otra.

```dart
main() {
  int a = 20;
  int b = 10;

  print(a > b); // true
  print(a < b); // false
  print(a >= b); // true
  print(a <= b); // false
}
```

Si fuesen dos variables de tipo `String`, estos operadores no funcionarían, porque no se puede comparar de esta manera una variable de ese tipo, solo con números.

Tambien tenemos el operador de tipo, el operador `is`, este operador nos permite saber si una variable es de un tipo especifico.

```dart
main() {
  int a = 20;
  String b = '20';

  print(a is int); // true
  print(b is int); // false
  print(b is String); // true
}
```

Tambien podemos negar el operador `is` con `is!`, por ejemplo:

```dart
main() {
  int a = 20;
  String b = '20';

  print(a is! int); // false a es un int
  print(b is! int); // true b is not int
  print(b is! String); // false b es un String
}
```

De esta manera podemos saber si una variable no es de un tipo especifico y actuar de acuerdo a eso.