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