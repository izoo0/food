// // ignore_for_file: empty_catches

// import 'package:cloud_firestore/cloud_firestore.dart';

// class Database {
//   late FirebaseFirestore firestore;
//   initialise() {
//     firestore = FirebaseFirestore.instance;
//   }

//   Future<List<dynamic>> read() async {
//     QuerySnapshot querySnapshot;
//     List docs = [];
//     try {
//       querySnapshot = await firestore.collection('product_list').get();
//       if (querySnapshot.docs.isNotEmpty) {
//         for (var doc in querySnapshot.docs.toList()) {
//           Map a = {"id": doc.id, "product_name": doc['product_name']};
//           docs.add(a);
//         }
//         return docs;
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
// }
