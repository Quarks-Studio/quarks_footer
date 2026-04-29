# Quarks Footer

Un paquete de Flutter que proporciona un footer estandarizado, elegante y en modo oscuro para los proyectos de Quarks Studio.

## Características

* Diseño responsivo (se adapta a Web, Desktop y Mobile).
* Estética minimalista en modo oscuro con el isotipo de Quarks Studio.
* Enlaces directos (con esquema de URL funcional) a:
  * Correo electrónico.
  * Llamada telefónica (formateado con prefijo internacional).
  * Instagram, LinkedIn y Sitio Web.

## Instalación

Para utilizar este paquete en tus proyectos, agrégalo a tu archivo `pubspec.yaml` apuntando directamente al repositorio de GitHub:

```yaml
dependencies:
  flutter:
    sdk: flutter
  quarks_footer:
    git:
      url: https://github.com/Quarks-Studio/quarks_footer.git
      ref: main
```

## Uso

Importa el paquete y añade el widget `QuarksFooter` en tu `Scaffold`. La forma más sencilla de implementarlo es en la propiedad `bottomNavigationBar`:

```dart
import 'package:flutter/material.dart';
import 'package:quarks_footer/quarks_footer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: const Center(
                child: Text(
                  "Bienvenido a Quarks Studio",
                  style: TextStyle(color: Colors.white, fontSize: 32),
                ),
              ),
            ),

            // Llamada al Footer de la librería
            const QuarksFooter(),
          ],
        ),
      ),
    );
  }
}
```


