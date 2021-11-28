# Control de flujo

Antes de comenzar con las estructuras de control de flujo, debemos saber como recibir datos de un usuario desde la terminal.

```dart
import 'dart:io';

main() {
  stdout.write('Ingrese su nombre: ');
  String? nombre = stdin.readLineSync();
  print('Hola $nombre');
}
```

El valor que se recibe siempre será un String.