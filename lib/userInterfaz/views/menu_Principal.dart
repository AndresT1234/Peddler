import 'package:flutter/material.dart';
import 'package:peddler/userInterfaz/views/misProductos.dart';

class MyMenu extends StatelessWidget {
  const MyMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF3B6064),
        ),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 44.0),
            Container(
              //margin: const EdgeInsets.symmetric(horizontal: 64.0),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF364958),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 350,
              child: const Center(
                child: Text(
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
            ),
            const SizedBox(height: 36.0),
            Container(
              height: 550,
              width: 360,
              //margin: const EdgeInsets.symmetric(horizontal: 64.0),
              padding: const EdgeInsets.only(bottom: 16, top: 20, left: 16, right: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF364958),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  Container(
                    height: 80,
                    width: 300,
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Color(0xFF3B6064),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Center(
                      child: Text(
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
                  ),
                  const SizedBox(
                    height: 110,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const misProductos()
                            ),
                          );
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF3B6064)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(150, 80))),
                        child: const Text(
                          'Mis Productos',
                          style:
                              TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Cambiar el tamaño del texto
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF3B6064)),
                            minimumSize: MaterialStateProperty.all<Size>(
                                const Size(150, 80))),
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

                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xFF3B6064)),
                        minimumSize: MaterialStateProperty.all<Size>(
                            const Size(250, 80)),
                        ),
                    child: const Text(
                      'Registrar Venta',
                      style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
