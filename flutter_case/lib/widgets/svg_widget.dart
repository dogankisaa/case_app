import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  final text;
  final height;
  final width;
  final color;
  const SvgWidget({
    Key? key,
    this.text,
    this.height,
    this.width,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      
      text,
      height: height,
      
      width: width,
      color: color,
    );
  }
}
