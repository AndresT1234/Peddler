import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:peddler/userInterfaz/views/mis_Productos.dart';

class InfoProducto extends StatefulWidget {
  const InfoProducto({Key? key}) : super(key: key);

  @override
  _InfoProductoState createState() => _InfoProductoState();
}

class _InfoProductoState extends State<InfoProducto> {
  bool isEditing = false;
  bool changesSaved = false;

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
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: const Color(0xFF364958),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: 350,
              child:  Center(
                child: Row(
                  children: [
                    IconButton(
                              onPressed: (){
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => mis_Productos(),
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
                      'Empanada',
                      style: TextStyle(
                        fontFamily: 'Inder',
                        decoration: TextDecoration.none,
                        color: Color(0xFFC9E4CA),
                        fontSize: 36.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/ejemplo_imagen.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            const SizedBox(height: 20.0),
            _buildInfoRow('Precio Venta:', '______'),
            _buildInfoRow('Precio Compra:', '______'),
            _buildInfoRow('Unidades:', '______'),
            const SizedBox(height: 30.0),
            changesSaved
                ? _buildChangesSavedWidget()
                : isEditing
                    ? _buildEditingButtons()
                    : _buildEditButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      width: 300,
      decoration: BoxDecoration(
        color: const Color(0xFF3B6064),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(
              fontFamily: 'Inder',
              decoration: TextDecoration.none,
              color: Color(0xFFC9E4CA),
              fontSize: 18.0,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontFamily: 'Inder',
              decoration: TextDecoration.none,
              color: Color(0xFFC9E4CA),
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditButton() {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isEditing = true;
        });
      },
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF3B6064)),
        minimumSize: MaterialStateProperty.all<Size>(const Size(150, 50)),
      ),
      child: const Text(
        'Editar',
        style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
      ),
    );
  }

  Widget _buildEditingButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {
            // Acción al presionar el botón "Guardar"
            _startTimer();
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF3B6064)),
            minimumSize: MaterialStateProperty.all<Size>(const Size(150, 50)),
          ),
          child: const Text(
            'Guardar',
            style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            // Acción al presionar el botón "Eliminar"
            _mostrarDialogoEliminar();
          },
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(const Color(0xFF3B6064)),
            minimumSize: MaterialStateProperty.all<Size>(const Size(150, 50)),
          ),
          child: const Text(
            'Eliminar',
            style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
          ),
        ),
      ],
    );
  }

  Widget _buildChangesSavedWidget() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: const Color(0xFF3B6064),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          const Text(
            'Cambios guardados exitosamente',
            style: TextStyle(
              fontFamily: 'Inder',
              decoration: TextDecoration.none,
              color: Color(0xFFC9E4CA),
              fontSize: 18.0,
            ),
          ),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isEditing = false;
                changesSaved = false;
              });
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(const Color(0xFF3B6064)),
              minimumSize: MaterialStateProperty.all<Size>(const Size(150, 50)),
            ),
            child: const Text(
              'OK',
              style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _mostrarDialogoEliminar() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('¿Seguro que quieres eliminar este producto?'),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "Sí" (Eliminar)
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF3B6064)),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(80, 40)),
              ),
              child: const Text(
                'Sí',
                style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 16),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón "No"
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF3B6064)),
                minimumSize:
                    MaterialStateProperty.all<Size>(const Size(80, 40)),
              ),
              child: const Text(
                'No',
                style: TextStyle(color: Color(0xFFC9E4CA), fontSize: 16),
              ),
            ),
          ],
        );
      },
    );
  }

  void _startTimer() {
    // Simulación de la espera antes de mostrar el mensaje
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        changesSaved = true;
      });
      Fluttertoast.showToast(
        msg: "Cambios guardados correctamente",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    });
  }
}