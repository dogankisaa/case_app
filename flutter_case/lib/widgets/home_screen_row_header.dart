import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/home_screen_inputs.dart';
import 'package:flutter_case/widgets/svg_widget.dart';
import 'package:flutter_case/widgets/text_widget.dart';

import '../screenInputs/play_screen_inputs.dart';

class HomeScreenRowHeaderWidget extends StatelessWidget {
  final text;
  const HomeScreenRowHeaderWidget({
    Key? key, this.text,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextWidget(
          text: text,
          color: Theme.of(context).hintColor,
          size: textSizeSmall,
          bold: textWeightMedium,
        ),
        SvgWidget(
          text: homeScreenContinueListeningRightIconText,
        )
      ],
    );
  }
}