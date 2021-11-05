# Tipos de datos en Dart

A partir de la version 2.12 se agregaron a Dart 2 nuevas palabras reservadas importantes:

- `required`: El cual nos servirá para obligar argumentos a funciones y clases.

- `late`: Indica al compilador y editor, que una variable al momento de ser usada, tendrá un valor, pero a la hora de definirla, no la tendrá.

## Tipos de datos: Números

Hay dos tipos principales, los números que pueden tener decimales y los enteros.

Las variables numericas pueden definirse de varias maneras, ya sea con `var`, `int`, `final`, `const`, `late final`, etc.

La palabra reservada `var` define una variable que puede ser cambiada en cualquier momento. No es recomendable usarla mucho ya que puede generar errores de compilación. Es util cuando no sabemos que tipo de dato tendrá la variable.

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