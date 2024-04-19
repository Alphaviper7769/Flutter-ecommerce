import 'package:flutter/material.dart';

class TTextFormFieldTheme {
  TTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    // constraints: const BoxConstraints().expand(height: 14.inputFeildHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.black.withOpacity(0.5)),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.black12, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.orange, width: 2.0),
      borderRadius: BorderRadius.circular(14),
    ),

  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    // constraints: const BoxConstraints().expand(height: 14.inputFeildHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white.withOpacity(0.5)),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(fontSize: 14.0, color: Colors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.grey, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.white, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.red, width: 1.0),
      borderRadius: BorderRadius.circular(14),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderSide: const BorderSide(color: Colors.orange, width: 2.0),
      borderRadius: BorderRadius.circular(14),
    ),
  );
}