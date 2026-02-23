import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
import 'package:myapp/widgets/pagina2.dart';

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

class TerceraPagina extends StatelessWidget {
  const TerceraPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tercera Página Serrano Iker',
          style: TextStyle(color: Colors.white),
        ), // Corrected for better contrast
        backgroundColor: const Color(0xFF000080), // Azul Marino
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(15),
                boxShadow: const <BoxShadow>[
                  BoxShadow(
                    color: Color.fromARGB(66, 255, 255, 255),
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: const Center(child: Text('Cuadrado Azul Claro')),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Volver atrás'),
            ),
          ],
        ),
      ),
    );
  }
}
