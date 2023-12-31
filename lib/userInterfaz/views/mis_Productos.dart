import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:peddler/database.dart';
import 'package:peddler/userInterfaz/views/agregar_Producto.dart';
import 'package:peddler/userInterfaz/views/info_Productos.dart';
import 'package:peddler/userInterfaz/views/inicio_Sesion.dart';
import 'package:peddler/userInterfaz/views/menu_Principal.dart';

// ignore: camel_case_types
class mis_Productos extends StatelessWidget {
  const mis_Productos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3B6064),
        body: Stack(
          children: [
            Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Container(
                      width: 380,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 54, 73, 88),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(children: [
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                      MyMenu(userName: Database.userName),
                                ),
                              );
                            },
                            icon: Image.asset(
                              'assets/back.png',
                              width: 70,
                              height: 70,
                            ),
                          ),
                          const Text(
                            "MIS PRODUCTOS",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Inder',
                              fontSize: 30,
                              color: Color(0xFFC9E4CA),
                            ),
                          ),
                        ]),
                      )),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  width: 40,
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 65.0),
                    child: mostrarProductos(Database.traerProductos()),
                  ),
                )

                //producto("https://elmachetico.co/cdn/shop/products/Empanadas_El_Machetico_Empanada_de_arroz_y_carne_x_10_unidades_2.jpg?v=1634313453",
                //4, "Empanada"),
              ],
            ),
            Positioned(
                left: 70,
                right: 70,
                bottom: 40,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 54, 73, 88)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AgregarProducto()),
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        "Agregar Producto",
                        style: TextStyle(
                          fontFamily: 'Inder',
                          fontSize: 26,
                          color: Color(0xFFC9E4CA),
                        ),
                      ),
                    )))
          ],
        ));
  }

  Widget mostrarProductos(Stream<QuerySnapshot> productos) {
    return StreamBuilder<QuerySnapshot>(
        stream: Database.traerProductos(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text('Cargando...');
          }
          final List<QueryDocumentSnapshot> documentos = snapshot.data!.docs;

          return SizedBox(
            height: 180,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: documentos.length,
              itemBuilder: (BuildContext context, int index) {
                QueryDocumentSnapshot doc = documentos[index];

                //return FutureBuilder<String>(
                //future: Database.obtenerUrlDeImagen(doc['imagen']),
                //builder: (BuildContext context, AsyncSnapshot<String> urlSnapshot) {
                /*if (urlSnapshot.connectionState == ConnectionState.waiting) {
                      return const CircularProgressIndicator(); // Puedes mostrar un indicador de carga mientras se obtiene la URL.
                    }

                    if (urlSnapshot.hasError) {
                      return Text('Error al cargar la imagen: ${urlSnapshot.error}');
                    }*/

                //String urlDeImagen = urlSnapshot.data ?? '';
                return producto(doc['imagen'], doc['Unidades'],
                    doc['NombreProducto'], context);
                //},
                //);
              },
            ),
          );
        });
  }

  Widget producto(
      String ruta, int cantidad, String nombreProducto, BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => InfoProducto()),
        );
      },
      child: Container(
          margin: const EdgeInsets.only(right: 30),
          width: 120,
          height: 170,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 54, 73, 88),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      ruta,
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 54, 73, 88),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(0)),
                      ),
                      child: Center(
                        child: Text(
                          cantidad.toString(),
                          style: const TextStyle(
                            fontFamily: 'Inder',
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                nombreProducto,
                style: const TextStyle(
                  fontFamily: 'Inder',
                  fontSize: 20,
                ),
              ),
            ],
          )),
    );
  }
}
