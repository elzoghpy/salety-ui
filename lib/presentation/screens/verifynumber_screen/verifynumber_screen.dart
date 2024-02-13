// ignore_for_file: must_be_immutable, unused_label

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:selaty/app/app_constants.dart';
import 'package:selaty/constants/resources/mycolors.dart';
import 'package:selaty/constants/resources/strings.dart';
import 'package:selaty/presentation/widgets/widgets.dart';

class VerifyPhoneNumberScreen extends StatelessWidget {
  var mobilenumbercontroller = TextEditingController();
  VerifyPhoneNumberScreen({super.key});

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
                Navigator.pushNamed(context, loginScreen);
              },
            );
          },
        ),
        title: const Text(AppStrings.verifythephonenumber),
        backgroundColor: MyColors.lightgrey,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: MyColors.lightgrey,
            statusBarBrightness: Brightness.dark),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 0, right: 20, top: 50),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(AppStrings.messagetonumber),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: CountryCodePicker(
                        onChanged: (country) {
                          // update view model with code
                          country.dialCode ?? Constants.token;
                        },
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: '+20',
                        favorite: const ['+39', 'FR', '+966'],
                        // optional. Shows only country name and flag
                        showCountryOnly: false,
                        // optional. Shows only country name and flag when popup is closed.
                        showOnlyCountryWhenClosed: false,
                        // optional. aligns the flag and the Text left
                        alignLeft: false,

                        showFlag: true,
                        hideMainText: false,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: TextFormField(
                        controller: mobilenumbercontroller,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: MyColors.lightgrey, width: 1.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: MyColors.lightgrey, width: 1.5),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            suffix: Icon(
                              Icons.close,
                              color: MyColors.red,
                            )),
                        validator: (String? value) {
                          if (value!.isEmpty) {
                            return AppStrings.validatenumber;
                          }

                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: defaultButton(
                      text: AppStrings.confirmation,
                      function: () {
                        Navigator.pushNamed(context, codeNumber);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
