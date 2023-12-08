import 'package:chatme_project/app/modules/loginPage/controllers/login_page_controller.dart';
import 'package:chatme_project/app/routes/app_pages.dart';
import 'package:chatme_project/core/constant/colors.dart';
import 'package:chatme_project/core/constant/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPageView extends StatefulWidget {
  const LoginPageView({super.key});

  @override
  State<LoginPageView> createState() => _LoginPageViewState();
}

class _LoginPageViewState extends State<LoginPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              // const AppImage(asset: Assets.appLogo, width: 200).marginOnly(top: 150, bottom: 20),
              GetBuilder<LoginPageController>(builder: (controller) {
                return Form(
                  child: Column(
                    children: [
                      TextField(
                              controller: controller.usernameController,
                              decoration: AppStyles.inputDecorationFloating("", "Enter your email / username"),
                              style: AppStyles.styleTextBody14(),
                              keyboardType: TextInputType.emailAddress,
                              onChanged: (value) {})
                          .marginSymmetric(vertical: 15),
                      TextField(
                        controller: controller.passwordController,
                        decoration: AppStyles.inputDecorationFloating("", "Enter your password"),
                        style: AppStyles.styleTextBody14(),
                        obscureText: true,
                        onChanged: (value) {},
                      ).marginOnly(top: 15),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: TextButton(
                              onPressed: () {
                                Get.toNamed(Routes.REGISTER_PAGE);
                              },
                              child: Text(
                                "Sign-Up",
                                style: AppStyles.styleTextBody16(colorText: AppColors.purple),
                              ),
                            ),
                          ).marginOnly(right: 120),
                          Align(
                            child: TextButton(
                              onPressed: () {
                                // Get.toNamed(Routes.FORGOR_PASSWORD_PAGE);
                              },
                              child: Text(
                                "Forgot Password?",
                                style: AppStyles.styleTextBody16(colorText: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {
                            controller.login();
                          },
                          style: ButtonStyle(textStyle: MaterialStateProperty.all(AppStyles.styleTextBody18())),
                          child: const Text("LOGIN"),
                        ),
                      ).marginOnly(top: 20),
                    ],
                  ),
                ).marginOnly(top: 100);
              }),
            ],
          ),
        ),
      ),
    );
  }
}
