import 'package:flutter/material.dart';
import 'package:peddler/userInterfaz/views/InicioSesion.dart';
import 'package:peddler/userInterfaz/views/RegistroNegocio.dart';
import 'package:peddler/userInterfaz/views/misProductos.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Peddler',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const  Color(0xff220A05)),
        useMaterial3: true,
      ),
      //carlos sanabria
      //home: const RegistroNegocio(),
      //pipe
      //home: const InicioSesion(),
      
      //Ivan
      //
      home: const misProductos(),
      );
     
  }
}
