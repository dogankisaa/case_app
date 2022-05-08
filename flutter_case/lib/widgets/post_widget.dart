import 'package:flutter/material.dart';
import 'package:flutter_case/widgets/svg_widget.dart';
import 'package:flutter_case/widgets/text_widget.dart';

import '../screenInputs/play_screen_inputs.dart';

class PostWidget extends StatelessWidget {
  final image;
  final title;
  final detail;
  const PostWidget({
    Key? key,
    this.image,
    this.title,
    this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
              height: 80,
              width: 80,
              child: Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(imageRadius),
                      child: Image.network(
                        image,
                        fit: BoxFit.cover,
                      )))),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: title,
                  color: Theme.of(context).hintColor,
                  size: textSizeMedium,
                ),
                const SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: detail,
                  color: detailTextColor,
                  size: textSizeSmall,
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 36,
                width: 36,
                child: SvgWidget(
                  text: postDownloadIconText,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
