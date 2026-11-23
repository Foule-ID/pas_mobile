import 'package:flutter/material.dart';
import 'package:pas_mobile/controllers/login_controller.dart';
import 'package:pas_mobile/component/custom_textfield.dart';
import 'package:pas_mobile/component/custom_button.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("login page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
           CustomTextField(
            myHint: "Masukan  Username", 
            txtcontroller: controller.txtUsername,
          ),
          CustomTextField(
            myHint: "Masukan  Password", 
            txtcontroller: controller.txtPassword,
          ),

           Obx(() => controller.isLoading.value
                  ? const CircularProgressIndicator(color: Color(0xFF0064E0))
                  : SizedBox(
                      width: double.infinity,
                      height: 45,
                      child: CustumeButton(
                        text: "Login",
                        fontSize: 15,
                        textColor: Colors.white,
                        backgroundColor: const Color(0xFF0064E0),
                        width: double.infinity,
                        borderRadius: 25,
                        onPressed: () {
                          controller.login();
                        },
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}