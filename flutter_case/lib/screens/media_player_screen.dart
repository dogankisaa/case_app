import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/media_player_screen_inputs.dart';
import 'package:flutter_case/service/dio_get_player_data.dart';
import 'package:flutter_case/widgets/text_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../screenInputs/entry_screen_inputs.dart';
import '../screenInputs/play_screen_inputs.dart';
import '../widgets/svg_widget.dart';

class MediaPlayerScreen extends StatelessWidget {
  const MediaPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: mediaPlayerPadding),
          child: SvgWidget(
            text: mediaPlayerLeadingIconText,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: mediaPlayerPadding),
            child: SvgWidget(
              text: threeDotMenuIconText,
            ),
          ),
        ],
      ),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: mediaPlayerPadding),
          child: FutureBuilder(
            future: getData(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        text: mediaPlayerOwnerText,
                        color: Theme.of(context).primaryColor,
                        bold: textWeightMedium,
                        size: textSizeMedium,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextWidget(
                        text: mediaPlayerPodcastNameText,
                        color: Theme.of(context).hintColor,
                        bold: textWeightLarge,
                        size: textSizeLarge,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(imageRadius),
                          child: Image.network(
                            snapshot.data.image,
                            width: mediaPlayerImageWidth,
                            height: mediaPlayerImageHeight,
                            fit: BoxFit.cover,
                          )),
                    ),
                   const SizedBox(
                      height: 10,
                    ),
                      Image.asset(
                      mediaPlayerScreenPlayerProgress
                    ),
                  
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgWidget(
                          text: mediaPlayerScreenForwardButton,
                        ),
                        Stack(
                          children: [
                            Image.asset(mediaPlayerScreenPlayButton),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: mediaPlayerScreenPlayIconPaddingTop,
                                  left: mediaPlayerScreenPlayIconPaddingLeft),
                              child: CircleAvatar(
                                radius:
                                    mediaPlayerScreenPlayButtonCenterCircleRadius,
                                backgroundColor: Theme.of(context).primaryColor,
                                child: Center(
                                  child: SvgWidget(
                                    text: mediaPlayerScreenPlayIcon,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SvgWidget(
                          text: mediaPlayerScreenJumpButton,
                        ),
                      
                      ],
                    ),
                  
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircularPercentIndicator(
                                  radius: mediaPlayerScreenHeadphoneIconFirstCircle,
                                  backgroundColor: firstSlideImageFirstCircleColor,
                                  backgroundWidth: firstSlideImageCircleWidth,
                                  center: CircularPercentIndicator(
                                    radius: mediaPlayerScreenHeadphoneIconSecondCircle,
                                    backgroundColor: firstSlideImageSecondCircleColor,
                                    backgroundWidth: firstSlideImageCircleWidth,
                                    center: SvgWidget(
                                      text: mediaPlayerScreenHeadphoneIcon,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                TextWidget(
                                  text: mediaPlayerScreenHeadphoneOwnerText,
                                  color: Theme.of(context).primaryColor,
                                  bold: textWeightMedium,
                                  size: textSizeSmall,
                                ),
                                SvgWidget(
                                  text: downArrowIconText,
                                  color: Theme.of(context).primaryColor,
                                ),
                                ],
                              ),
                                SvgWidget(
                                  text: mediaPlayerScreenBottomRightIcon,
                                 
                                )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 29,
                      )
                  ],
                );
              } else {
                return Center(
                    child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ));
              }
            },
          )),
    );
  }
}
