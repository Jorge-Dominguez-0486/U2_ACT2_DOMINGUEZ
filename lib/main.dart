import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eliminar Libro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PantallaEliminarLibro(),
    );
  }
}

class PantallaEliminarLibro extends StatelessWidget {
  const PantallaEliminarLibro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Fondo con un ligero color para resaltar la tarjeta
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        // Botón de retroceso circular similar al dibujo
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.shade400, width: 1.5),
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_new, 
                size: 18, 
                color: Colors.black87
              ),
              onPressed: () {
                // Acción para regresar
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          // Recuadro central que agrupa los elementos
          child: Container(
            padding: const EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(color: Colors.grey.shade300),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withAlpha(13),
                  blurRadius: 10,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Ajusta el tamaño al contenido
              children: [
                // Texto principal
                const Text(
                  'Seguro que quieres eliminar este libro de tu biblioteca?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 40.0),
                
                // Ícono del bote de basura (con color)
                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.red.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.delete_outline,
                    size: 70.0,
                    color: Colors.red.shade400,
                  ),
                ),
                const SizedBox(height: 40.0),
                
                // Botón de aceptar
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Acción para confirmar la eliminación
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red.shade500, // Color rojo de advertencia
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: const Text(
                      'Aceptar',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}