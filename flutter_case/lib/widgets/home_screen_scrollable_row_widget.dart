import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/home_screen_inputs.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/widgets/text_widget.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class HomeScreenHorizontalScrollWidget extends StatelessWidget {
   final rowHeight;
  final  image;
  final dataCount;
  final progressPercent;
  final imageHeight;
  final imageWidth;
  final bool isProgress;
  const HomeScreenHorizontalScrollWidget({
    Key? key,
    required this.image, this.rowHeight, this.dataCount, this.progressPercent, this.imageHeight, this.imageWidth, required this.isProgress,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: double.infinity,
      height: rowHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
         itemCount: dataCount,
         itemBuilder: (context, index) {
             return Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: imageWidth,
                    height: imageHeight,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                            homeScreenContinueListeningRowContainerRadius),
                        child: Image.network(
                          image,
                          fit: BoxFit.cover,
                        )),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  isProgress ? LinearPercentIndicator(
                    backgroundColor: Theme.of(context).primaryColorDark,
                    percent: progressPercent,
                    barRadius: Radius.circular(linearProgressbarRadius),
                    padding: EdgeInsets.zero,
                    width: homeScreenContinueListeningRowContainerSize,
                    lineHeight: linearProgressHeight,
                    progressColor: Theme.of(context).primaryColor,
                  ) : SizedBox(),
                  isProgress ? SizedBox(
                    height: 8,
                  ) : SizedBox(),
                  isProgress ? SizedBox(
                    width: homeScreenContinueListeningRowContainerSize,
                    child: TextWidget(
                      text: homeScreenContinueListeningRowContainerText,
                      bold: textWeightMedium,
                      size: textSizeSmall,
                      color: Theme.of(context).hintColor,
                    ),
                  ) : SizedBox()
                ],
              ),
            );
         },
        ),
    );
  }
}