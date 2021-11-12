# Tipos de datos en Dart

A partir de la version 2.12 se agregaron a Dart 2 nuevas palabras reservadas importantes:

- `required`: El cual nos servirá para obligar argumentos a funciones y clases.

- `late`: Indica al compilador y editor, que una variable al momento de ser usada, tendrá un valor, pero a la hora de definirla, no la tendrá.

Todo programa en Dart tiene que tener una funcion `main`, la cual es la funcion principal y es la que Dart usa como punto de entrada.

## Tipos de datos: Números

Hay dos tipos principales, los números que pueden tener decimales y los enteros.

Las variables numericas pueden definirse de varias maneras, ya sea con `var`, `int`, `final`, `const`, `late final`, etc.

La palabra reservada `var` define una variable que puede ser cambiada en cualquier momento, de cierta forma `var` es un comodin, ya que Dart va a inferir el tipo de dato de esa variable. No es recomendable usarla mucho ya que puede generar errores de compilación. Es util cuando no sabemos que tipo de dato tendrá la variable.

Si sé que la variable será un número entero, se puede definir con `int`.

Puedo declarar una variable y no inicializarla:

```dart
int c;
```

Pero no podria ser utilizada:

```dart
print(c); // ERROR
```

Daria un error de compilación, porque no se ha inicializado y por defecto es `non-nullable`.

Si quisieramos hacer:

```dart
int c = null; //Error
```

Por defecto las variables son `non-nullable`, es decir, no pueden ser `null`.

Si queremos que la variable sea `nullable` se puede definir con `?`:

```dart
int? c;
```

Esto es indica que la variable puede tener un valor `null`.

```dart
int? c = null;
print(c); // null
```

La variable `c` sigue siendo un entero, pero ahora tambien puede ser `null`.

Para definir variables decimales se usa `double`:

```dart
double d = 3.14;
```

En el momento en el que le pongo un punto `.` Dart asume que es un número decimal. Por lo que no podría hacer esto:

```dart
int i = 3.14; // ERROR
```

## Tipos de datos: Strings

Para declarar una variable de tipo string se usa `String`. Tambien se puede usar `var`.

```dart
var nombre = 'Tony';
```

Pero lo recomendable es siempre declarar el tipo de dato de la variable, ya que así podemos evitar errores de compilación y es mas legible.

```dart
String nombre = 'Tony';
```

Podemos usar `""` o `''` para definir una cadena de texto.

```dart
String nombre = "Tony";
```

Pero hay un caso de uso en el que debemos usar solo `""`:

```dart
String nombre = "O'Connor";
```

En ese caso es mejor usar dobles comillas `""` ya que sino Dart no entendería donde empieza y termina la cadena.

Aunque tambien se puede hacer así:

```dart
String nombre = 'O\'Connor';
```

Con el `\` podemos escapar caracteres.

Tambien podemos definir Strings multilinea:

```dart

String multilinea = '''
Esta es una cadena de texto
que se puede definir
en varias lineas
O'Connor
''';
```

Que pasa si quiero poner el valor de una variable en una cadena de texto?

```dart
String nombre = 'Tony';

String multilinea = '''
Hola $nombre
Como estas?
''';
```

Con `$` podemos poner el valor de una variable en una cadena de texto, no solo en las variables multilinea, sino que en cualquier otra cadena de texto.

Tambien podemos hacer esto:

```dart
main() {
  String nombre = 'Tony';
  String nombre2 = "O'Connor";
  String apellido = 'Stark';

  String nombreCompleto = '$nombre $apellido';

  String multilinea = '''
    Hola $nombreCompleto
    Como estas?
    $nombre2
    ''';

  print(multilinea);
}
```

## Tipos de datos: Booleans

Los Booleanos sirven para almacenar valores de verdadero o falso. Pero tambien depende, ya que podrian llegar a almacenar un `null`.

Si acepta un nulo, tenemos un tercer valor en un booleano.

Los booleanos se definen con `bool`:

```dart
bool esVerdadero = true;
```

Si quiero definir un booleano que puede ser `null`:

```dart
bool? esVerdadero;
```

Es importante dejar en claro si una variable es `null` o no.

Tambien puedo negar un booleano con `!`:

```dart
bool isActive = true;
bool isNotActive = !isActive; // isNotActive = false
```

Hay que tener ojo en donde va el `!` ya segun donde esté puede significar otra cosa.

Por ejemplo:

```dart

bool isActive = true;
bool? isNotActive = !isActive; // false

print(isNotActive!); // <--
```

Eso significa que le estamos asegurando al compilador de Dart que ese valor no es `null`.

## Tipos de datos: Listas

Las listas en otros lenguajes son tambien conocidos como `Arrays` o `Collections`, pero una lista no es mas que un grupo de elementos que tienen que ver algo entre si. Es decir una especie de contenedor que tiene un monton de elementos comunes entre si.

Por ejemplo:

```dart
var villanos = ['Lex', 'Red Skull', 'Joker'];
```

En este caso el compilador la infiere como una lista de strings. Pero ese no va a ser siempre el caso.

```dart
var villanos = ['Lex', 'Red Skull', 'Joker', 1, true, 2.3];
```

En Dart todo es un objeto, por lo que la lista anterior es una lista de objetos. `List<Object>`, de todas formas debemos evitar esto porque hace que el código sea ambiguo.

Como es de costumbre, en Dart los elementos de una lista se empiezan a contar desde el 0.

Puedo cambiar el valor de un elemento de la lista:

```dart
villanos[0] = 'Loki';
```

Si intento cambiar un elemento de la lista que se definio como `List<String>` con un elemento de tipo `int`:

```dart
List<String> villanos = ['Lex', 'Red Skull', 'Joker'];
villanos[0] = 1; // ERROR
```

Me da un error. Dart a fin de cuentas es un lenguaje de tipado estatico, aunque tiene todas las bondades de un lenguaje de tipado dinamico.

Pero siempre es mejor ser claro al momento de definir un tipo de dato.

En versiones anteriores se podia declarar una lista asi:

```dart
List<String> villanosDeprecated = new List();
```

Pero esto esta marcado como obsoleto y se recomienda usar la nueva forma de declarar una lista.

## Tipos de datos: Sets

Otro tipo de dato muy interesante son los sets. Son muy parecidos a las listas, pero tienen una diferencia bien marcada, comparten varios metodos que normalmente se usan en listas, pero que tambien estan en los sets.

Se pueden definir asi:

```dart
var villanos = {'Lex', 'Red Skull', 'Joker'};
```

Es normal pensar de primeras que se trata de un objeto, pero en realidad es una lista de elementos.

Al momento de imprimir un set, devuelve lo siguiente:

```dart
print(villanos); // {Lex, Red Skull, Joker}
```

Un metodo que comparten las listas y los sets es `add`:

```dart
List<String> villanos = ['Lex', 'Red Skull', 'Joker'];
villanos.add('Loki');

Set<String> villanos1 = {'Lex', 'Red Skull', 'Joker'};
villanos1.add('Loki');
```

Con esto agregamos un elemento al final del listado.

La diferencia está en que un set no permite elementos repetidos.

Por ejemplo:

```dart
// Podemos agregar varias veces el mismo elemento en un list
List<String> villanos = ['Lex', 'Red Skull', 'Joker'];
villanos.add('Loki');
villanos.add('Loki');
villanos.add('Loki');
```

Y se agrega 3 veces el mismo elemento a la lista.

Pero si intentamos hacer esto con un set:

```dart
Set<String> villanos = {'Lex', 'Red Skull', 'Joker'};
villanos.add('Loki');
villanos.add('Loki'); // no se agrega
villanos.add('Loki'); // no se agrega
```

Solo se agrega una vez.

¿Que pasa si quiero eliminar todos los elementos repetidos de una lista?, hay una forma de hacerlo en la que transformamos la lista en un set y luego volvemos a convertirla en lista.

```dart
main() {
  List<String> villanos = ['Voldemort', 'Darth Vader', 'Sauron'];

  villanos.add('Magneto');
  villanos.add('Magneto');
  villanos.add('Magneto');

  print(villanos); // [Voldemort, Darth Vader, Sauron, Magneto, Magneto, Magneto]

  var villanosSet = Set.from(villanos);
  print(villanosSet.toList()); // [Voldemort, Darth Vader, Sauron, Magneto]
}
```

## Tipos de datos: Maps

En otros lenguajes son conocidos como diccionarios o Objetos literales, pero el concepto en si es una variable o objeto que internamente tiene pares de valores, una **key** y un **value**.

```dart
var ironman = {
  'nombre': 'Tony Stark',
  'poder': 'Inteligencia y el dinero',
  'edad': 40,
};
```

Si declaro un map de esta forma su tipo de dato es `Map<String, Object>`, de tipo Object porque puede contener cualquier tipo de dato.

Pero usualmente no es tán común que se use un map de esta forma, sino que por lo general el tipo de dato que se usa suele ser `Map<String, dynamic>`. aunque esto tampoco es del todo cierto ya que la **key** no tiene porque ser siempre un string, podria ser de tipo `Map<int, dynamic>`.

```dart
Map<int, dynamic> avengers = {
  1: 'Thor',
  2: 'Ironman',
  3: 'Hulk',
};
```

En el ejemplo anterior la key es de tipo `int`, pero el value puede ser cualquier tipo de dato, usamos solo String porque es mas común.

Si imprimo el map, nos devuelve lo siguiente:

```dart
print(avengers); // {1: Thor, 2: Ironman, 3: Hulk}
```

Puede confundir y parecerse a un set por las llaves, pero la diferencia es que los `maps` tienen pares de valores, una llave y un valor.

Si quiero acceder a un valor de un map, podemos hacerlo de la siguiente forma:

```dart
print(avengers[1]); // Thor
```

Si el map fuera de tipo `Map<String, dynamic>`:

```dart
Map<String, dynamic> ironman = {
  'nombre': 'Tony Stark',
  'poder': 'Inteligencia y el dinero',
  'edad': 40,
};

print(ironman['nombre']); // Tony Stark
```

Siempre es `nombreMapa['llave']` y no `nombreMapa.llave`.

Tambien pueden ser del tipo `Map<double, dynamic>`, no tiene mucho sentido pero se puede hacer.

```dart
Map<double, dynamic> avengers = {
  1.0: 'Thor',
  2.0: 'Ironman',
  3.0: 'Hulk',
};

print(avengers[1.0]); // Thor
```

Un `map` no puede tener una llave repetida.

```dart
Map<String, dynamic> avengers = {
  'nombre': 'Thor',
  'nombre': 'Ironman', // error
  'nombre': 'Hulk', // error
};
```

Hay otra manera de definir los mapas:

```dart
Map<String, dynamic> capitanAmerica = new Map();

capitanAmerica.addAll({
  'nombre': 'Steve Rogers',
  'poder': 'Super fuerza',
});

print(capitanAmerica['nombre']); // Steve Rogers
```

Si quisiera hacer:

```dart
Map<int, dynamic> ironman = {
  1: 'Tony Stark',
  2: 'Inteligencia y el dinero',
  3: 40,
};

Map<String, dynamic> capitanAmerica = new Map();

capitan.addAll( ironman ); // error
```

Me da error ya que el mapa capitanAmerica se define como `Map<String, dynamic>`, pero el mapa ironman es de tipo `Map<int, dynamic>`, lo que los hace incompatibles debido a que los tipos de datos no coinciden. Esto es una característica de Dart, muy util ya que evita errores de tipos.