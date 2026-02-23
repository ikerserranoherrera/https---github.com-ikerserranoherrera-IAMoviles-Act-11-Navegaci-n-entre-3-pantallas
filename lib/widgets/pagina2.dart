import 'package:flutter/material.dart';
import 'package:myapp/widgets/pagina1.dart';
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

// --- SEGUNDA PÁGINA ---
class SegundaPagina extends StatelessWidget {
  const SegundaPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Segunda Página Serrano Iker ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://www.gstatic.com/flutter-onestack-prototype/genui/example_1.jpg',
                height: 200,
                loadingBuilder:
                    (
                      BuildContext context,
                      Widget child,
                      ImageChunkEvent? loadingProgress,
                    ) {
                      if (loadingProgress == null) {
                        return child;
                      }
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[100],
              ),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text(
                'Ir a la Tercera Página',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
