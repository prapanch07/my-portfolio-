import 'package:cloud_firestore/cloud_firestore.dart';

class ContactModel {
 
  final String name;
  final String email;
  final String phone;
  final String description;
  final DateTime date;

  ContactModel({
   
    required this.name,
    required this.email,
    required this.phone,
    required this.description,
    required this.date,
  });

  Map<String, dynamic> tojson() => {
        "name": name,
        "email": email,
        "phone": phone,
        "description": description,
        "date": date
      };

  static ContactModel fromSnaptoUserm(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return ContactModel(
     
      name: snapshot['name'],
      email: snapshot['email'],
      phone: snapshot['phone'],
      description: snapshot['description'],
      date: snapshot['date'],
    );
  }
}
