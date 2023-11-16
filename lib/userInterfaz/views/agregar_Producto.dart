import 'package:flutter/material.dart';

class AgregarProducto extends StatelessWidget {
  const AgregarProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3B6064),
      body: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: AspectRatio(
                aspectRatio: 3 / 4,
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
                          horizontal: 140.0,
                          vertical: 20.0,
                        ),
                        child: const Text(
                          "MIS PRODUCTOS",
                          style: TextStyle(
                            color: Color(0xffC9E4CA),
                            fontSize: 18,
                            fontWeight: FontWeight
                                .bold, // Otras personalizaciones de estilo
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
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
                                const SizedBox(width: 80),
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
                                      hintText: "ESCRIBE TU NOMBRE",
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
                                      hintText: "PRECIO DEL PRODUCTO",
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
                                      hintText: "COSTO DEL PRODUCTO",
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
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "INGRESE LA IMAGEN",
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
                            const SizedBox(height: 50),
                            Row(
                              children: [
                                const SizedBox(width: 80),
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: const Color(0xff3B6064),
                                      onPrimary: const Color(0xffC9E4CA),
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
                               const SizedBox(width: 20),
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
                                const SizedBox(width: 80),
                              ],

                              
                            ),
                            const SizedBox(height: 20),
                          ],

                        ),
                        
                        
                      ),
                      const SizedBox(height: 20),
                      Positioned(
                      left: 0,
                      right: 0,
                      bottom: 20,
                      
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0XFF364958)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                                    
                          ),
                          

                        ),
                        onPressed: (){
                          //
                        },
                        
                        child: const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text("     AGREGAR PRODUCTO   ",
                            style: TextStyle(
                              fontFamily: 'Inder',
                              fontSize: 20,
                              color: Color(0xFFC9E4CA),
                            ),
                          ),
                        )
                      )
                    )

                    ],
                    
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
