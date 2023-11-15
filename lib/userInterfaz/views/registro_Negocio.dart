import 'package:flutter/material.dart';
import 'package:peddler/database.dart';

class RegistroNegocio extends StatelessWidget {
  const RegistroNegocio({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nombreController = TextEditingController();
    final TextEditingController usuarioController = TextEditingController();
    final TextEditingController nombreNegocioController = TextEditingController();
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
                            horizontal: 60.0, 
                            vertical: 20.0,
                            ),
                        child: const Text(
                          "BIENVENIDO",
                          style: TextStyle(
                            color:  Color(0xffC9E4CA), 
                            fontSize: 18,
                            fontWeight: FontWeight
                                .bold, 
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Divider(
                        color: Color.fromARGB(255, 2, 2, 2),
                        height: 40,
                        thickness: 0.6,
                        indent: 0,
                        endIndent: 0,
                      ),
                      const SizedBox(height: 10),
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
                                const SizedBox(width: 60),
                                Expanded(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "REGISTRA TU NEGOCIO",
                                      hintStyle: const TextStyle(
                                        color: Color(0xffC9E4CA) ,
                                      ),
                                      filled: true,
                                      fillColor: const Color(0XFF3B6064),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        borderSide: const BorderSide(
                                          color:
                                              Color.fromARGB(255, 17, 17, 17),
                                          width: 20.0,
                                        ),
                                      ),
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 60),
                              ],
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                const SizedBox(width: 60),
                                Expanded(
                                  child: TextFormField(
                                    controller: nombreController,
                                    decoration: InputDecoration(
                                      hintText: "Escribe tu nombre",
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
                                const SizedBox(width: 60),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 60),
                                Expanded(
                                  child: TextFormField(
                                    controller: usuarioController,
                                    decoration: InputDecoration(
                                      hintText: "Escribe un usuario",
                                      hintStyle: const TextStyle(
                                        color: Colors.black,                                       ),
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
                                const SizedBox(width: 60),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                const SizedBox(width: 60),
                                Expanded(
                                  child: TextFormField(
                                    controller: nombreNegocioController,
                                    decoration: InputDecoration(
                                      hintText: "Nombre del negocio",
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
                                const SizedBox(width: 60),
                              ],
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Divider(
                        color: Color.fromARGB(255, 6, 6, 6),
                        height: 40,
                        thickness: 0.6,
                        indent: 0,
                        endIndent: 0,
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 635,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            
            child: Stack(
              children: <Widget>[
                Container(       
                  padding: const EdgeInsets.all(60),
                  decoration: const BoxDecoration(
                    color: Color(0xff87BBA2),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                ),
                Center(
                  
                  child: ElevatedButton(
                    onPressed: () async {
                      await Database.registrarUsuario(nombreController.text,
                        nombreNegocioController.text, 
                        usuarioController.text
                        ).then((_) {
              
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Usuario añadido correctamente'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        }).catchError((error) {
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Error al añadir usuario: $error'),
                              duration: const Duration(seconds: 2),
                            ),
                          );
                        });
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff364958),
                      onPrimary: const Color(0xffC9E4CA),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 70, 
                        vertical: 20, 
                      ),
                     
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.black,
                          width: 4.0,
                        ),

                      ),
                      
                    ),
                    
                    child: const Text('Registrar'),
                    
                    
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
