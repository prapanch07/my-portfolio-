import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:portfolio/models/contact_model.dart';
import 'package:uuid/uuid.dart';

class firestore {
  final _firestore = FirebaseFirestore.instance;

  Future<String> uploadmessage({
    required String name,
    required String email,
    required String phone,
    required String description,
  }) async {
    String res = 'error occured';
    String ID = Uuid().v1();
    try {
      ContactModel contact = ContactModel(
        name: name,
        email: email,
        phone: phone,
        description: description,
        date: DateTime.now(),
      );
      _firestore.collection('MESSAGES').doc(ID).set(
            contact.tojson(),
          );
      res = 'success';
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}
