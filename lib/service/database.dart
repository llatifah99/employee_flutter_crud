import 'package:cloud_firestore/cloud_firestore.dart';

// simpan data ke firebase
class DatabaseMethods {
  Future addEmployeeDetails(
    Map<String, dynamic> employeeInfoMap,
    String id,
  ) async {
    return await FirebaseFirestore.instance
        // buat folder Employee di firebase
        .collection("Employee")
        // buat file baru dengan Id random
        .doc(id)
        // isi file
        .set(employeeInfoMap);
  }
}
