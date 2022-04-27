import 'package:flutter/material.dart';
import 'package:flutter_case/widgets/svg_widget.dart';
import 'package:flutter_case/widgets/text_widget.dart';

import '../screenInputs/play_screen_inputs.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8)),
          ),
          SizedBox(
            width: 10,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: "Did Opensea make a huge mistake?",
                  color: Theme.of(context).hintColor,
                  size: textSizeMedium,
                ),
                SizedBox(
                  height: 5,
                ),
                TextWidget(
                  text: "Joe Mama Podcast",
                  color: detailTextColor,
                  size: textSizeSmall,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 36,
            width: 36,
            child: SvgWidget(
              text: postDownloadIconText,
            ),
          ),
        ],
      ),
    );
  }
}
