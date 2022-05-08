import 'package:flutter/material.dart';

Color loginAppBarBackGroundColor = const Color.fromRGBO(4, 4, 4, 1);

double loginScreenPadding = 24;

Color loginTextFormFieldBackGroundColor = const Color.fromRGBO(255, 255, 255, 0.1);
double loginTextFormFieldRadius = 16;

String loginEmailFieldText = "Your Email";
String loginPasswordFieldText = "Your Password";

String loginHeaderLoginText = "Login";
Color loginHeaderLoginColor = Colors.white;

String loginEmailTextFieldHeaderText = "Email";
String loginPasswordTextFieldHeaderText = "Password";

String loginBottomText = "Don’t have the\naccount?";
String loginScreenLoginButtonText = "Login";
double loginScreenLoginButtonWidth = 125;
double loginScreenLoginButtonHeight = 50;
double loginScreenLoginButtonRadius = 88;

TextEditingController loginEmailController = TextEditingController();
TextEditingController loginPasswordController = TextEditingController();

String loginScreenEmailEmptyErrorText = "Please enter your email.";
String loginScreenEmailInvalidErrorText = "Please enter a valid email.";

String loginScreenPasswordEmptyErrorText = "Please enter your password.";
String loginScreenPasswordLengthErrorText = "Please enter longer than 6 character.";