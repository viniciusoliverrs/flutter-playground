import 'package:flutter/material.dart';

class FieldModel {
  final Key? key;
  final String type;
  final String label;
  String? initialValue;
  final String placeholder;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;

  FieldModel({
    this.key,
    this.controller,
    required this.type,
    required this.label,
    required this.placeholder,
    required this.validator,
  });

  TextInputType getKeyboard() {
    switch(this.type) {
      case 'text':
        return TextInputType.text;
      case 'email':
        return TextInputType.emailAddress;
      case 'number':
        return TextInputType.number;
      case 'password':
        return TextInputType.text;
      default:
        return TextInputType.text;
    }
  }
}
