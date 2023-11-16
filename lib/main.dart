import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:peddler/userInterfaz/views/inicio_Sesion.dart';
import 'package:peddler/userInterfaz/views/registro_Negocio.dart';
import 'firebase_options.dart';

void main() async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

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
      
      home: InicioSesion(),
      //carlos sanabria
      //home:  const RegistroNegocio(),

      //pipe 
      //home: const InicioSesion(),
      
      //Ivan
      //home: const MisProductos(),

    );
     
  }
}
