import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';

import '../screenInputs/login_inputs.dart';

class TextFieldWidget extends StatelessWidget {
  final text;
  final validate;
  final controller;
  final type;
  const TextFieldWidget({
    Key? key, this.text, this.validate, this.controller, this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      
      keyboardType: type,
      style: TextStyle(fontSize: textSizeSmall, color: Theme.of(context).hintColor),
      validator: validate,
      controller: controller,
      autofocus: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(loginTextFormFieldRadius),
          borderSide: BorderSide.none
        ),
        filled: true,
        fillColor: loginTextFormFieldBackGroundColor,
        hintText: text,
      ),
    );
  }
}