import 'package:flutter/material.dart';
import 'package:peddler/database.dart';

import 'menu_Principal.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Contabilidad();
  }
}

class Contabilidad extends StatelessWidget {
  const Contabilidad({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3B6064),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(children: [
                SizedBox(height: 15,),
                //Titulo
                Container(
                  width: 300,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xFF364958),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child:  Center(
                    child: Row(
                      children: [
                         IconButton(
                              onPressed: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => MyMenu(userName: Database.userName),
                                ),
                              );
                              }, 
                              icon: Image.asset(
                                'assets/back.png',
                                width: 70,
                                height: 70,
                              ),
                            ),
                        Text(
                          "Contabilidad",
                          style: TextStyle(
                            fontFamily: 'Inder',
                            decoration: TextDecoration.none,
                            color: Color(0xFFC9E4CA),
                            fontSize: 36.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Circulo vetas
                Container(
                  width: 300,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Color(0xFF364958),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Center(
                    //Circulo mas externo
                    child: Container(
                      width: 270,
                      height: 270,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 118, 118, 118), // Color del círculo externo
                      ),
                      child: Center(
                        //Circulo mas interno
                        child: Container(
                          width: 230,
                          height: 230,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                Color(0xFF364958), // color del circulo interno
                          ),
                          child: const Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Ventas: 00.00",
                                    style: TextStyle(
                                        color: Color(0xFF55828B),
                                        fontSize: 20)),
                                Text("Ganancias: 00.00",
                                    style: TextStyle(
                                        color: Color(0xFF87BBA2),
                                        fontSize: 20)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                //Productos
                Container(
                  width: 300,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color(0xFF364958),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment
                        .center, // Alinea el contenido verticalmente
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceAround, // Alinea los textos horizontalmente
                        children: [
                          Text("Empanada",
                              style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 22.0)),
                          Text("Papa",
                              style: TextStyle(color: Color(0xFF87BBA2), fontSize: 22.0)),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceAround, // Alinea los textos horizontalmente
                        children: [
                          Text("Buñuelo",
                              style: TextStyle(color: Color(0xFF55828B), fontSize: 22.0,)),
                          Text("Arepa",
                              style: TextStyle(color: Color(0xFF18826F), fontSize: 22.0)),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ));
  }
}