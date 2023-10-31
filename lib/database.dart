import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('notes');
final CollectionReference _userCollection = _firestore.collection('user');

class Database {
  static String? userUid;

  static Future<void> addUser({
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
  }
}
