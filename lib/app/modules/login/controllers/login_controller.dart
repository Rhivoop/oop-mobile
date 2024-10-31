import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
 final cEmail = TextEditingController();
 final cPassword = TextEditingController();

@override
  void onClose() {
    cEmail.dispose();
    cPassword.dispose();
    super.onClose();
  }
 
}
