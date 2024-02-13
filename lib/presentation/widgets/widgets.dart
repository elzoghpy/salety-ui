// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:selaty/constants/resources/mycolors.dart';

typedef Validator = String? Function(String?)?;

Widget defaultButton({
  double hight = 60,
  double width = double.infinity,
  Color background = MyColors.green,
  bool isUpperCase = true,
  Function()? function,
  required String text,
  TextStyle? style,
  String? TextField,
}) =>
    Container(
      height: 60,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 16.0,
            color: MyColors.lightgrey,
          ),
        ),
      ),
    );

defaultFormFaild({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onsubmet,
  Function(String)? onchange,
  Function()? onTap,
  required Validator validate,
  InputDecoration? decoration,
  Color? cursorColor,
  String? Label,
  IconData? prefix,
  bool isPassword = false,
  bool isClikable = true,
  IconData? suffix,
  Function()? sufixpressed,
  Function(String?)? onsaved,
}) =>
    TextFormField(
      cursorColor: cursorColor,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      enabled: isClikable,
      onFieldSubmitted: onsubmet,
      onChanged: onchange,
      validator: validate,
      onTap: onTap,
      onSaved: onsaved,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.green, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: MyColors.red, width: 1),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.green, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        fillColor: Colors.white,
        focusColor: Colors.white,
        hoverColor: Colors.white,
        labelText: Label,
        labelStyle: TextStyle(color: Colors.white),
        prefixIcon: Icon(
          prefix,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: sufixpressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
      ),
    );

Widget defaultTextButton({
  Function()? function,
  required String text,
}) =>
    TextButton(
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(color: Colors.black),
        ));

Widget defaultButton0({
  double hight = 60,
  double width = double.infinity,
  Color background = MyColors.green,
  bool isUpperCase = true,
  Function()? function,
  required String text,
  TextStyle? style,
  String? TextField,
}) =>
    Container(
      height: 60,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          5.0,
        ),
        color: background,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(
            fontSize: 20,
            color: MyColors.red,
          ),
        ),
      ),
    );
