import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';
import 'package:myapp/widgets/pagina3.dart';

void main() {
  runApp(const MiAppNavegacion());
}

class MiAppNavegacion extends StatelessWidget {
  const MiAppNavegacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Navegación',
      // Definimos la ruta inicial
      initialRoute: '/',
      // Mapa de rutas: aquí asociamos un nombre a cada pantalla
      routes: {
        '/': (context) => const PaginaInicio(),
        '/segunda': (context) => const SegundaPagina(),
        '/tercera': (context) => const TerceraPagina(),
      },
    );
  }
}
