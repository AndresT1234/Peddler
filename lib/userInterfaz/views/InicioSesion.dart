import 'package:flutter/material.dart';
import 'package:peddler/userInterfaz/views/MenuPrincipal.dart';
import 'package:peddler/userInterfaz/views/registroNegocio.dart';

class InicioSesion extends StatelessWidget {
  const InicioSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            // Fondo de imagen
            Image.asset('assets/inicio.png', // Ruta de la imagen de fondo
                fit: BoxFit.cover,
                height: MediaQuery.sizeOf(context).height),
            Align(
              alignment: const Alignment(0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Contenedor más externo
                  Container(
                    width: 300,
                    height: 600,
                    padding: const EdgeInsets.only(
                        right: 16, bottom: 20, left: 16, top: 70),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B6064),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(1),
                          blurRadius: 9,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        // Título
                        const Text(
                          'PEDDLER',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFC9E4CA)),
                        ),
                        const SizedBox(height: 20),
                        // Contenedor con la imagen de usuario y campo de entrada
                        Container(
                          width: 250,
                          height: 430,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: const Color(0xFF55828B),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              // Imagen de usuario
                              Image.asset(
                                'assets/usuario.png', // Ruta de la imagen de usuario
                                width: 70,
                                height: 70,
                              ),
                              const SizedBox(height: 30),
                              // Campo de entrada para el nombre de usuario
                              TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Nombre de usuario',
                                  prefixIcon: Icon(Icons.person),
                                ),
                              ),
                              const SizedBox(height: 50),
                              // Botones de "Ingresar" y "Registrarse"
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MyMenu()),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all<Color>(const Color(
                                              0xFF364958)), // Cambiar el color de fondo del botón
                                      minimumSize: MaterialStateProperty
                                          .all<Size>(const Size(200,
                                              50)), // Cambiar el tamaño del botón
                                    ),
                                    child: const Text(
                                      'Ingresar',
                                      style: TextStyle(
                                        color: Color(
                                            0xFFC9E4CA), // Color del texto del botón
                                        fontSize:
                                            18, // Tamaño de la fuente del texto
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 35,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                       Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegistroNegocio()),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty
                                          .all<Color>(const Color(
                                              0xFF364958)), // Cambiar el color de fondo del botón
                                      minimumSize: MaterialStateProperty
                                          .all<Size>(const Size(200,
                                              50)), // Cambiar el tamaño del botón
                                    ),
                                    child: const Text(
                                      'Registarse',
                                      style: TextStyle(
                                        color: Color(
                                            0xFFC9E4CA), // Color del texto del botón
                                        fontSize:
                                            18, // Tamaño de la fuente del texto
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
