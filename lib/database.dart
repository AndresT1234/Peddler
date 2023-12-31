import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:peddler/userInterfaz/views/menu_Principal.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
CollectionReference users = _firestore.collection("User");
CollectionReference _userCollection = FirebaseFirestore.instance.collection("User");
class Database {
  static String? userid;
  static String userName="";
  static Future<void> autenticacionUsuario(String usuario, BuildContext context)async {
    CollectionReference users = FirebaseFirestore.instance.collection("User");
    
    try{
      QuerySnapshot userQuery = await users.where("usuario", isEqualTo: usuario).get();
      if(userQuery.docs.isNotEmpty){
        userid=userQuery.docs[0].id;
        userName = await getUserName(userid!);
        // ignore: use_build_context_synchronously
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
            MyMenu(userName: userName,)
          ),
        );
      
      }else{
        Fluttertoast.showToast(
          msg: "Usuario incorrecto",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 3,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 30.0,
      );
      }
    }catch(e, stackTrace){
      
      //print("Error en la consulta a Firebase: $e");
      //print("Stack trace: $stackTrace");
    }
    
  }
  
  static Future<String> getUserName(String userId) async {
    try {
      DocumentSnapshot userSnapshot = await _userCollection.doc(userId).get();
      if (userSnapshot.exists) {
        return (userSnapshot.data() as Map<String, dynamic>?)?['Nombre']
                as String? ??
            '';
      }
    } catch (e) {
      print("Error al obtener el nombre del usuario: $e");
    }
    return '';
  }
  static Stream<QuerySnapshot> traerProductos() {
    CollectionReference userCollection = FirebaseFirestore.instance.collection("User");
    CollectionReference productsCollection =
        userCollection.doc(userid).collection('Product');

    return productsCollection.snapshots();
  }

  
  static Future<String> obtenerUrlDeImagen(String nombreDeArchivo) async {
    Reference ref = FirebaseStorage.instance.ref().child(nombreDeArchivo);
    return await ref.getDownloadURL();
  }

  static Future<String> getNombreUser() async {
   
    DocumentSnapshot userReference = await users.doc(userid).get();
    var data = userReference.data() as Map<String, dynamic>?; // Puedes especificar el tipo exacto aquí
    String nombreUsuario="";
    if(userReference.exists) nombreUsuario = data?['nombreUsuario'];

    return nombreUsuario;
  }

  static Future<void> registrarUsuario(String nombre, String nombreNegocio, String usuario) async {
    DocumentReference nuevoUsuario =  await users.add({
      'Nombre': nombre,
      'Negocio': nombreNegocio,
      'usuario': usuario,
      
    });
    await nuevoUsuario.collection('Product').doc('documentoVacio').set({});
  }
  /*static Future<void> addUser({
    //Pedimos un objeto de tipo CustomUser para meterlo en la DB
    required CustomUser user,
  }) async {
    //Hacemos una DocumentReference pues queremos crear un documento, y le pasamos el ID (ese ID se metió antes en el user auto desde FirebaseAuth)
    DocumentReference documentReferencer = _userCollection.doc(user.uid);

    //Mapeamos los datos para que Firebase los entienda
    Map<String, dynamic> data = <String, dynamic>{
      'email': user.email,
      'uid': user.uid,
      'userName': user.userName,
      'age': user.age,
      'name': user.name,
    };

    //Mandamos la función .set que es la que envía los datos
    await documentReferencer
        .set(data)
        .whenComplete(() => log("User agregado correctamente a la DB"))
        .catchError((e) => log(e));
  }

  static Future getUser({required String id}) async {
    //En esta solo necesitamos el ID para ir a buscarlo a la db
    //Nuevamente hacemos un DocumentReference y le decimos q busque el doc con el id
    DocumentReference documentReference = _userCollection.doc(id);
    //Creamos una nueva instancia de CustomUser que es la que devolveremos
    CustomUser customUser = CustomUser(uid: id);
    await documentReference.get().then(
      //Ya sabemos que con .then() podemos hacer algo después de que la función termine
      //En este caso nos devuelve una DocumentSnapshot
      (DocumentSnapshot doc) {
        //Mapeamos esa data del snapshot para que sea más fácil sacarle los campos específicos
        final data = doc.data() as Map<String, dynamic>;
        customUser.age = data['age'];
        customUser.name = data['name'];
        customUser.userName = data['userName'];
        customUser.email = data['email'];
      },
    );
    //Devolvemos un objeto User full instanciado
    return customUser;
  }

  static Future<void> addItem(
      {required String title, required String note}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "note": note,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => log("Note item added to the database"))
        .catchError((e) => log(e));
  }


  static Future<void> updateItem(
      {required String title,
      required String note,
      required String docId,}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "title": title,
      "note": note,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => log("Note item updated in the database"))
        .catchError((e) => log(e));
  }

  static Stream<QuerySnapshot> readItems() {
    CollectionReference notesItemCollection =
        _mainCollection.doc(userUid).collection('items');

    return notesItemCollection.snapshots();
  }

  static Future<void> deleteItem({required String docId}) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('items').doc(docId);

    await documentReferencer
        .delete()
        .whenComplete(() => log('Note item deleted from the database'))
        .catchError((e) => log(e));
  }*/

}
