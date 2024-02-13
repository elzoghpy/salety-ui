// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({super.key});

  var passwordcontroller = TextEditingController();
  IconData suffix = Icons.visibility_off_outlined;
  var formkey = GlobalKey<FormState>();
  bool ispassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.lightgrey,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_applications),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pushNamed(context, codeNumber);
              },
            );
          },
        ),
        title: const Text(AppStrings.changepasswordnumber),
        backgroundColor: MyColors.lightgrey,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.lightgrey,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        key: formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(AppStrings.enterthenewpassword,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(
                    height: 40.0,
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
                    decoration: const InputDecoration(),
                    onsubmet: (value) {
                      if (formkey.currentState!.validate()) {
                        (password: passwordcontroller.text);
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
                  defaultFormFaild(
                    controller: passwordcontroller,
                    type: TextInputType.visiblePassword,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return AppStrings.validatepassword;
                      }
                      return null;
                    },
                    Label: AppStrings.confirmPassword,
                    decoration: const InputDecoration(),
                    onsubmet: (value) {
                      if (formkey.currentState!.validate()) {
                        (password: passwordcontroller.text);
                      }
                    },
                    suffix: suffix,
                    isPassword: ispassword,
                    sufixpressed: () {
                      changePasswordVisibility();
                    },
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  defaultButton(
                      text: AppStrings.change,
                      function: () {
                        Navigator.pushNamed(context, doneScreen);
                      }),
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
        ispassword ? Icons.visibility_off_outlined : Icons.visibility_outlined;
  }
}
