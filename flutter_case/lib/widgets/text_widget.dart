import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  final text;
  final color;
  final size;
  final bold;
  const TextWidget({
    Key? key,
    this.text,
    this.color,
    this.size,
    this.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      maxLines: 2,
      softWrap: false,
      style: TextStyle(
          color: color,
          fontSize: size as double,
          fontWeight: bold,
          
          overflow: TextOverflow.ellipsis,
        
          ),
    );
  }
}
