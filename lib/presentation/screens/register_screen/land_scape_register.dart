// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, unused_label, duplicate_ignore
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/asset_manegar.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class LandScapeRegisterScreen extends StatelessWidget {
  var namecontroller = TextEditingController();
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();
  IconData suffix = Icons.visibility_off_outlined;
  var formkey = GlobalKey<FormState>();
  bool ispassword = true;

  LandScapeRegisterScreen({
    Key? key,
  }) : super(key: key);

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
            icon: const Icon(Icons.settings_applications),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        backgroundColor: MyColors.lightgrey,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.lightgrey,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 60, left: 60, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.createANewAccount,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(AppStrings.createANewAccountLabel,
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: Colors.grey)),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defaultFormFaild(
                    controller: namecontroller,
                    type: TextInputType.name,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return AppStrings.validatename;
                      }
                      suffix:
                      Icons.done_outlined;
                      return null;
                    },
                    Label: AppStrings.name,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  defaultFormFaild(
                    controller: emailcontroller,
                    type: TextInputType.emailAddress,
                    validate: (String? value) {
                      if (value!.isEmpty) {
                        return AppStrings.validateemail;
                      } else {
                        suffix:
                        Icons.done_outlined;
                        return null;
                      }
                    },
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
                    decoration: const InputDecoration(),
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
                    height: 40,
                  ),
                  defaultButton(
                      text: AppStrings.subscription,
                      function: () {
                        Navigator.pushNamed(context, mainView);
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.orsubscriptionwith,
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, right: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage(ImageAssets.googleImage),
                            height: 60,
                            width: 180,
                          ),
                        ),
                        const SizedBox(
                          width: 160,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Image(
                            image: AssetImage(ImageAssets.facebookImage),
                            height: 60,
                            width: 180,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'have an account?',
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      defaultTextButton(
                          function: (() {
                            Navigator.pushNamed(context, loginScreen);
                          }),
                          text: AppStrings.login)
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
        ispassword ? Icons.visibility_off_outlined : Icons.visibility_outlined;
  }
}
