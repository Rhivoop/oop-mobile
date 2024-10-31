import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/controllers/auth_controller.dart';
import 'package:myapp/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final cAuth = Get.find<
      AuthController>(); // Keep this if AuthController is not injected via GetView.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const SizedBox(height: 80),
            Image.network(
              "https://static-00.iconduck.com/assets.00/android-plain-wordmark-icon-256x256-ppoejbtc.png",
              height: 100,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: controller.cEmail,
              decoration: const InputDecoration(
                labelText: "Email",
              ),
            ),
            TextField(
              controller: controller.cPassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                cAuth.login(
                  controller.cEmail.text,
                  controller.cPassword.text,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 105, 150, 34),
                foregroundColor: Colors.white,
              ),
              child: const Text("Login"),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                child: const Text("Reset Password"),
                onPressed: () {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:210855547.
                  Get.offAllNamed(Routes.RESET_PASSWORD);
                  TextButton(
                    onPressed: () {
                      Get.toNamed(Routes.RESET_PASSWORD);
                    },
                    child: const Text("Reset Password"),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Belum Punya Akun?"),
                TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.SIGNUP);
                  },
                  child: const Text("Daftar Disini"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
