import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterPageController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  register() async {
    if (usernameController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      try {
        print('username: ${usernameController.text}');
        print('password: ${passwordController.text}');
        UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: usernameController.text,
          password: passwordController.text,
        );
        print("bershasil register");
        Get.snackbar(
          "Selamat",
          "Berhasil Register",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );

        print(userCredential.toString());
        saveUserToFirestore(email: usernameController.text);
      } on FirebaseAuthException catch (e) {
        if (e.code == 'weak-password') {
          print('The password provided is too weak.');
          Get.snackbar(
            "Gagal",
            "The password provided is too weak.",
            snackPosition: SnackPosition.TOP,
            borderRadius: 10,
          );
        } else if (e.code == 'email-already-in-use') {
          Get.snackbar(
            "Gagal",
            "The account already exists for that email.",
            snackPosition: SnackPosition.TOP,
            borderRadius: 10,
          );
          print('The account already exists for that email.');
        }
      } catch (e) {
        Get.snackbar(
          "Gagal",
          " Gagal register",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );
        print(e);
      }
    }
  }

  saveUserToFirestore({required String email}) async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
    try {
      await users.add({
        'email': email, // John Doe
      }).then((value) {
        Get.snackbar(
          "Selamat",
          "Berhasil Register",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );
      });
    } catch (e) {
      print('errors : $e');
    }
  }
}
