import 'package:flutter/material.dart';
import 'package:peddler/database.dart';
import 'package:peddler/userInterfaz/views/contabilidad.dart';
import 'package:peddler/userInterfaz/views/mis_Productos.dart';

class MyMenu extends StatelessWidget {
  final String userName;
  const MyMenu({Key? key, required this.userName}) : super(key: key);
  
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
                    padding: const EdgeInsets.symmetric(horizontal: 16), 
                    decoration: const BoxDecoration(
                      color: Color(0xFF3B6064),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                        child: Center(
                          child: Text(
                            "Bienvenido: $userName" ,
                            style: const TextStyle(
                              fontFamily: 'Inder',
                              decoration: TextDecoration.none,
                              color: Color(0xFFC9E4CA),
                              fontSize: 18.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      //},
                    //),
                  ),
                  const SizedBox(
                    height: 70,
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
                              const mis_Productos()
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Contabilidad()),
                          );
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
                      mostrarBottomSheet(context);
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

  void mostrarBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: const BoxDecoration(
            color: Color(0xFFC9E4CA),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xFF87BBA2),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    child: const Center(
                      child: Text(
                        "Registar Venta",
                        style: TextStyle(
                          fontFamily: 'Inder',
                          decoration: TextDecoration.none,
                          color: Color(0xFF3B6064),
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 225,
                    width: 450,
                    decoration: const BoxDecoration(
                      color: Color(0xFF87BBA2),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                  const SizedBox( height: 15,),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Cantidad',
                      prefixIcon: Icon(Icons.add_shopping_cart),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  ElevatedButton(
                    child: const Text('Registrar'),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
