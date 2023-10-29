import 'package:flutter/material.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF3B6064),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 44.0),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 64.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF364958),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Text(
              'MENU PRINCIPAL',
              style: TextStyle(
                fontFamily: 'Inder',
                decoration: TextDecoration.none,
                color: Color(0xFFC9E4CA),
                fontSize: 36.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 36.0),
          Container(
            height: 450,
            width: 600,
            margin: const EdgeInsets.symmetric(horizontal: 64.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: const Color(0xFF364958),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: 300,
                  padding: const EdgeInsets.all(16.0),
                  decoration: const BoxDecoration(
                    color: Color(0xFF3B6064),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: const Text(
                    'Nombre de la persona',
                    style: TextStyle(
                      fontFamily: 'Inder',
                      decoration: TextDecoration.none,
                      color: Color(0xFFC9E4CA),
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 110,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Cambiar el tamaño del texto
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF3B6064)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 60))),
                      child: const Text(
                        'Mis Productos',
                        style:
                            TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        // Cambiar el tamaño del texto
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color(0xFF3B6064)),
                          minimumSize: MaterialStateProperty.all<Size>(
                              const Size(150, 60))),
                      child: const Text(
                        'Contabilidad',
                        style:
                            TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Cambiar el tamaño del texto
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF3B6064)),
                      minimumSize:
                          MaterialStateProperty.all<Size>(const Size(150, 60))),
                  child: const Text(
                    'Registrar Venta',
                    style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
