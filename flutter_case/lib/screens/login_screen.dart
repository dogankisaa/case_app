import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/entry_screen_inputs.dart';
import 'package:flutter_case/screenInputs/login_inputs.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/widgets/text_widget.dart';
import 'package:email_validator/email_validator.dart';
import '../widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  final _key = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(backgroundColor: loginAppBarBackGroundColor),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: loginScreenPadding),
        child: Form(
          key: _key,
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              //login header
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: loginHeaderLoginText,
                  bold: textWeightLarge,
                  size: textSizeLarge,
                  color: loginHeaderLoginColor,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              //email input
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: loginEmailTextFieldHeaderText,
                  bold: textWeightMedium,
                  size: textSizeSmall,
                  color: loginHeaderLoginColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFieldWidget(
                controller: loginEmailController,
                validate: (email) {
                  bool isEmailValid = EmailValidator.validate(email);
                  if (email.isEmpty || email == null) {
                    return loginScreenEmailEmptyErrorText;
                  } else if (!isEmailValid) {
                    return loginScreenEmailInvalidErrorText;
                  }
                  return null;
                },
                type: TextInputType.emailAddress,
                text: loginEmailFieldText,
              ),
              const SizedBox(
                height: 8,
              ),
              //password input
              Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(
                  text: loginPasswordTextFieldHeaderText,
                  bold: textWeightMedium,
                  size: textSizeSmall,
                  color: loginHeaderLoginColor,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFieldWidget(
                validate: (password) {
                  if (password.isEmpty || password == null) {
                    return loginScreenPasswordEmptyErrorText;
                  }else if(password.length < 6){
                    //*****************************************************************
                    //RegExp ile büyük küçük, karakter gibi özelleştirmeler de yapılabilir
                    return loginScreenPasswordLengthErrorText;
                  }
                  return null;
                },
                controller: loginPasswordController,
                type: TextInputType.visiblePassword,
                text: loginPasswordFieldText,
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: loginBottomText,
                        bold: textWeightSmall,
                        size: textSizeMedium,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        height: loginScreenLoginButtonHeight,
                        width: loginScreenLoginButtonWidth,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      loginScreenLoginButtonRadius),
                                ),
                                primary: Theme.of(context).primaryColor),
                            onPressed: () {
                              login();
                            },
                            child: TextWidget(
                              text: loginScreenLoginButtonText,
                              size: textSizeMedium,
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 65,
              )
            ],
          ),
        ),
      ),
    );
  }



  login() {
    if (_key.currentState!.validate()) {
      print("object");
    }
  }
}
