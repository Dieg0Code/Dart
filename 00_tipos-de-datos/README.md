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
villanos[0] = 1; // ERROR
```

Me da un error. Dart a fin de cuentas es un lenguaje de tipado estatico, aunque tiene todas las bondades de un lenguaje de tipado dinamico.

Pero siempre es mejor ser claro al momento de definir un tipo de dato.

En versiones anteriores se podia declarar una lista asi:

```dart
List<String> villanosDeprecated = new List();
```

Pero esto esta marcado como obsoleto y se recomienda usar la nueva forma de declarar una lista.