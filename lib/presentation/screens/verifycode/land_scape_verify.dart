// ignore_for_file: unused_local_variable, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class LandScapeVerifyCodeNumber extends StatefulWidget {
  const LandScapeVerifyCodeNumber({super.key});

  @override
  State<LandScapeVerifyCodeNumber> createState() =>
      _LandScapeVerifyCodeNumberState();
}

class _LandScapeVerifyCodeNumberState extends State<LandScapeVerifyCodeNumber> {
  Color buttonColor = Colors.transparent;
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  TextEditingController controller4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.ofwhite,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  border: const Border(
                    top: BorderSide(
                        width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                    left: BorderSide(
                        width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                    right: BorderSide(
                        width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                    bottom: BorderSide(
                        width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                  ),
                ),
                child: const Icon(Icons.settings_applications)),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                    border: const Border(
                      top: BorderSide(
                          width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                      left: BorderSide(
                          width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                      right: BorderSide(
                          width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                      bottom: BorderSide(
                          width: 2, color: Color.fromARGB(129, 168, 168, 168)),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Icon(Icons.arrow_back_ios),
                  )),
              onPressed: () {
                Navigator.pushNamed(context, verifyPhoneNumberScreen);
              },
            );
          },
        ),
        title: const Text(AppStrings.phoneverification),
        backgroundColor: MyColors.ofwhite,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.ofwhite,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(AppStrings.enteryourcodehere),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: const Border(
                        top: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        left: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        right: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                      ),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorHeight: 60,
                      cursorColor: Colors.grey,
                      style: const TextStyle(fontSize: 50),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(
                            1), // Limit length to 1 digit
                      ],
                      controller: controller1,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: -6,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: const Border(
                        top: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        left: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        right: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                      ),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorHeight: 60,
                      cursorColor: Colors.grey,
                      style: const TextStyle(fontSize: 50),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(
                            1), // Limit length to 1 digit
                      ],
                      controller: controller2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: -6,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: const Border(
                        top: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        left: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        right: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                      ),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorHeight: 60,
                      cursorColor: Colors.grey,
                      style: const TextStyle(fontSize: 50),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(
                            1), // Limit length to 1 digit
                      ],
                      controller: controller3,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: -6,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      border: const Border(
                        top: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        left: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        right: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                        bottom: BorderSide(
                            width: 1,
                            color: Color.fromARGB(129, 168, 168, 168)),
                      ),
                    ),
                    margin: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      cursorHeight: 60,
                      cursorColor: Colors.grey,
                      style: const TextStyle(fontSize: 50),
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(
                            1), // Limit length to 1 digit
                      ],
                      controller: controller4,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.only(
                          bottom: -6,
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.white, width: 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              AppStrings.thecodedidnotarrive,
              style: TextStyle(fontSize: 16),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: buttonColor,
                padding: const EdgeInsets.only(left: -3),
              ),
              onPressed: () {
                buttonColor = buttonColor == Colors.transparent
                    ? MyColors.lightgrey // Change to the desired color
                    : Colors.transparent;
              },
              child: const Text(
                AppStrings.resendanewcode,
                style: TextStyle(color: MyColors.red, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Spacer(),
            defaultButton(
                hight: 60,
                width: double.infinity,
                text: AppStrings.done,
                function: () {
                  String number1 = controller1.text;
                  String number2 = controller2.text;
                  String number3 = controller3.text;
                  String number4 = controller4.text;
                  print(
                      'Entered numbers: $number1, $number2, $number3, $number4');

                  Navigator.pushNamed(
                    context,
                    forgotPasswordScreen,
                  );
                }),
          ]),
        ),
      ),
    );
  }
}
