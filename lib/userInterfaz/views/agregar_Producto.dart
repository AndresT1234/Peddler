import 'package:flutter/material.dart';
import 'package:peddler/userInterfaz/views/mis_Productos.dart';

class AgregarProducto extends StatelessWidget {
  const AgregarProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B6064),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff364958),
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 50.0,
                          vertical: 5.0,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => mis_Productos(),
                                  ),
                                );
                              },
                              icon: Image.asset(
                                'assets/back.png',
                                width: 40,
                                height: 40,
                              ),
                            ),
                            const Text(
                              "MIS PRODUCTOS",
                              style: TextStyle(
                                color: Color(0xffC9E4CA),
                                fontSize: 18,
                                fontWeight: FontWeight
                                    .bold, // Otras personalizaciones de estilo
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50),
                      Container(
                        decoration: BoxDecoration(
                          color: const Color(0xff364958),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(width: 10),
                                Container(
                                  decoration: BoxDecoration(
                                    color: const Color(0xff3B6064),
                                    borderRadius: BorderRadius.circular(20.0),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1.0,
                                    ),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 75.0,
                                    vertical: 20.0,
                                  ),
                                  child: const Expanded(
                                    child: Text(
                                      "NUEVO PRODUCTO",
                                      style: TextStyle(
                                        color: Color(0xffC9E4CA),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const SizedBox(width: 80),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Producto",
                                      hintStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      filled: true,
                                      fillColor: const Color(0XFFC9E4CA),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(
                                          color: Color(0xff481717),
                                          width: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 80),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 80),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Precio de venta",
                                      hintStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      filled: true,
                                      fillColor: const Color(0XFFC9E4CA),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 12, 11, 11),
                                          width: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 80),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 80),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Costo producto",
                                      hintStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                      filled: true,
                                      fillColor: const Color(0XFFC9E4CA),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 13, 13, 13),
                                          width: 10.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 80),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 80),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Función a ejecutar cuando se presiona el botón
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: Colors
                                          .black, backgroundColor: const Color(
                                          0XFFC9E4CA), // Cambia el color del texto del botón
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15.0), // Cambia el radio de los bordes del botón
                                      ),
                                    ),
                                    child: const Text(
                                      'Agregar Imagen',
                                      style: TextStyle(
                                        fontFamily: 'Inder',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 80),
                              ],
                            ),
                            const SizedBox(height: 50),
                            Row(
                              children: [
                                const SizedBox(width: 50),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                mis_Productos()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      foregroundColor: const Color(0xffC9E4CA), backgroundColor: const Color(0xff3B6064),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: const Text('CANCELAR'),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff3B6064),
                                      onPrimary: const Color(0xffC9E4CA),
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 20,
                                        vertical: 20,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                          color: Colors.black,
                                          width: 1.0,
                                        ),
                                      ),
                                    ),
                                    child: const Text('AÑADIR'),
                                  ),
                                ),
                                const SizedBox(width: 50),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
