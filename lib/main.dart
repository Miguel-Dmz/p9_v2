import 'package:flutter/material.dart';

void main() => runApp(MisIconos());

class MisIconos extends StatelessWidget {
  const MisIconos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Miguel Dominguez'),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
            centerTitle: true,
            backgroundColor: Color(0xff71d3ff),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // Centra las filas verticalmente
              children: <Widget>[
                Text("Miguel angel dominguez lopez \n 22308051281173",
                    style: TextStyle(
                        fontSize: 25,
                        fontStyle: FontStyle.italic,
                        color: Colors.black)),
                // Primera fila
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centra los iconos en la fila
                  children: <Widget>[
                    IconWithLabel(
                        icon: Icons.supervised_user_circle_sharp,
                        label: 'Usuario',
                        color: Colors.blue), // Cambia el color aquí
                    SizedBox(width: 20), // Espacio entre los iconos
                    IconWithLabel(
                        icon: Icons.access_alarm,
                        label: 'Alarma',
                        color: Colors.green), // Cambia el color aquí
                    SizedBox(width: 20), // Espacio entre los iconos
                    IconWithLabel(
                        icon: Icons.access_time_filled_sharp,
                        label: 'Reloj',
                        color: Colors.orange), // Cambia el color aquí
                  ],
                ),
                SizedBox(height: 20), // Espacio entre las filas
                // Segunda fila
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centra los iconos en la fila
                  children: <Widget>[
                    IconWithLabel(
                        icon: Icons.accessibility_new_outlined,
                        label: 'Persona',
                        color: Colors.purple), // Cambia el color aquí
                    SizedBox(width: 20), // Espacio entre los iconos
                    IconWithLabel(
                        icon: Icons.maximize_rounded,
                        label: 'Linea',
                        color: Colors.red), // Cambia el color aquí
                    SizedBox(width: 20), // Espacio entre los iconos
                    IconWithLabel(
                        icon: Icons.fullscreen_rounded,
                        label: 'Cuadrado',
                        color: Colors.teal), // Cambia el color aquí
                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class IconWithLabel extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color; // Nuevo parámetro para el color

  IconWithLabel(
      {required this.icon,
      required this.label,
      this.color = Colors.black}); // Color predeterminado

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon,
            size: 50.0, color: color), // Usa el color pasado como parámetro
        SizedBox(height: 8), // Espacio entre el icono y el texto
        Text(label, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}
