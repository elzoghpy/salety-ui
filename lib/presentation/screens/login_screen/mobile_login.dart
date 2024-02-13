// ignore_for_file: must_be_immutable, unused_label

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class MobileLoginScreen extends StatelessWidget {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  IconData suffix = Icons.visibility_off_outlined;
  var formkey = GlobalKey<FormState>();
  bool ispassword = true;
  MobileLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightgrey,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pushNamed(context, askScreen);
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_applications_outlined),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.lightgrey,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        key: formkey,
        child: Column(
          children: [
            const Image(image: AssetImage(ImageAssets.askImage)),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  defaultFormFaild(
                    controller: emailcontroller,
                    type: TextInputType.emailAddress,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return AppStrings.validateemail;
                      }
                      suffix:
                      Icons.done_sharp;
                      return null;
                    },
                    suffix: Icons.done_sharp,
                    Label: AppStrings.email,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormFaild(
                    controller: passwordcontroller,
                    type: TextInputType.visiblePassword,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return AppStrings.validatepassword;
                      }
                      return null;
                    },
                    Label: AppStrings.password,
                    onsubmet: (value) {
                      if (formkey.currentState!.validate()) {
                        (
                          email: emailcontroller.text,
                          password: passwordcontroller.text
                        );
                      }
                    },
                    suffix: suffix,
                    isPassword: ispassword,
                    sufixpressed: () {
                      changePasswordVisibility();
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultTextButton(
                      text: AppStrings.forgotPasswordNumber,
                      function: () {
                        Navigator.pushNamed(context, verifyPhoneNumberScreen);
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      text: AppStrings.login,
                      function: () {
                        Navigator.pushNamed(context, homeScreen);
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        AppStrings.donthaveanaccount,
                      ),
                      const Spacer(),
                      defaultTextButton(
                          function: (() {
                            Navigator.pushNamed(context, registerScreen);
                          }),
                          text: AppStrings.register)
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changePasswordVisibility() {
    ispassword = !ispassword;

    suffix =
        ispassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
  }
}
