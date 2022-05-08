import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/home_screen_inputs.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/widgets/text_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreenHorizontalScrollWidget extends StatefulWidget {
  final rowHeight;
  final image;
  final dataCount;
  final progressPercent;
  final imageHeight;
  final imageWidth;
  final bool isProgress;
  final rowType;
  const HomeScreenHorizontalScrollWidget({
    Key? key,
    required this.image,
    this.rowHeight,
    this.dataCount,
    this.progressPercent,
    this.imageHeight,
    this.imageWidth,
    required this.isProgress,
    this.rowType,
  }) : super(key: key);

  @override
  State<HomeScreenHorizontalScrollWidget> createState() =>
      _HomeScreenHorizontalScrollWidgetState();
}

class _HomeScreenHorizontalScrollWidgetState
    extends State<HomeScreenHorizontalScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: widget.rowHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.dataCount,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (widget.rowType == "continue") {
                mediaPlayer();
              }
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: widget.imageWidth,
                    height: widget.imageHeight,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            homeScreenContinueListeningRowContainerRadius),
                        child: Image.network(
                          widget.image,
                          fit: BoxFit.cover,
                        )),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  widget.isProgress
                      ? LinearPercentIndicator(
                          backgroundColor: Theme.of(context).primaryColorDark,
                          percent: widget.progressPercent,
                          barRadius: Radius.circular(linearProgressbarRadius),
                          padding: EdgeInsets.zero,
                          width: homeScreenContinueListeningRowContainerSize,
                          lineHeight: linearProgressHeight,
                          progressColor: Theme.of(context).primaryColor,
                        )
                      : const SizedBox(),
                  widget.isProgress
                      ? const SizedBox(
                          height: 8,
                        )
                      : const SizedBox(),
                  widget.isProgress
                      ? SizedBox(
                          width: homeScreenContinueListeningRowContainerSize,
                          child: TextWidget(
                            text: homeScreenContinueListeningRowContainerText,
                            bold: textWeightMedium,
                            size: textSizeSmall,
                            color: Theme.of(context).hintColor,
                          ),
                        )
                      : const SizedBox()
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  mediaPlayer() {
    context.router.replaceNamed("/media-player");
  }
}
