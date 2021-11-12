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