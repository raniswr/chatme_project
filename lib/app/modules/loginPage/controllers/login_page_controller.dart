import 'package:chatme_project/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPageController extends GetxController {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;
  login() async {
    try {
      print('username: ${usernameController.text}');
      print('password: ${passwordController.text}');
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: usernameController.text,
        password: passwordController.text,
      );
      EasyLoading.dismiss();
      print(userCredential.toString());
      if (userCredential.user != null) {
        Get.snackbar(
          "Selamat",
          "Berhasil Login",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );
        print('berhasil login');
        Get.toNamed(Routes.ROOT_PAGE);
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        EasyLoading.dismiss();
        Get.snackbar(
          "Gagal",
          "No user found for that email",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        Get.snackbar(
          "Gagal",
          "Wrong password provided for that user.",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );
        print('Wrong password provided for that user.');
      } else {
        Get.snackbar(
          "Gagal",
          "Gagal login",
          snackPosition: SnackPosition.TOP,
          borderRadius: 10,
        );
      }
    }
  }
}
