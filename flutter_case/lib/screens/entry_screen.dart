import 'package:flutter/material.dart';
import 'package:flutter_case/router/app_router.gr.dart';
import 'package:flutter_case/screenInputs/entry_screen_inputs.dart';
import 'package:flutter_case/screens/login_screen.dart';
import 'package:flutter_case/widgets/svg_widget.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:auto_route/auto_route.dart';
import '../screenInputs/play_screen_inputs.dart';
import '../widgets/text_widget.dart';
import 'package:flutter_case/screens/login_screen.dart';
import "package:flutter_case/router/app_router.gr.dart";

class EntryScreen extends StatefulWidget {
  const EntryScreen({Key? key}) : super(key: key);

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  List<Slide> slides = [];
  @override
  void initState() {
    addSliderItem();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroSlider(
        colorActiveDot: activeDotColor,
        colorDot: inactiveDotColor,
        slides: slides,
        hideStatusBar: true,
        showSkipBtn: false,
        showPrevBtn: false,
        onNextPress: routeToLogin,
        renderDoneBtn: renderDoneButton(),
        renderNextBtn: renderNextButton(),
        doneButtonStyle: nextButton(),
        nextButtonStyle: nextButton(),
      ),
    );
  }

  addSliderItem() {
    slides.add(
      Slide(
          backgroundColor: entryScreenBackGroundColor,
          maxLineTitle: 2,
          styleTitle: TextStyle(),
          title: firstSlideHeadTitle,
          widgetTitle: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  TextWidget(
                    size: textSizeLarge,
                    text: firstSlideHeadTitle,
                    color: Colors.white,
                    bold: textWeightLarge,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextWidget(
                    text: firstSlideHeadSubTitle,
                    color: detailTextColor,
                    size: textSizeSmall,
                  ),
                ],
              ),
            ),
          ),

          //center icon

          centerWidget: Padding(
            padding: EdgeInsets.symmetric(horizontal: entryScreenPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: firstSlideImageFirstCircleRadius,
                  backgroundColor: firstSlideImageFirstCircleColor,
                  backgroundWidth: firstSlideImageCircleWidth,
                  center: CircularPercentIndicator(
                    radius: firstSlideImageSecondCircleRadius,
                    backgroundColor: firstSlideImageSecondCircleColor,
                    backgroundWidth: firstSlideImageCircleWidth,
                    center: CircularPercentIndicator(
                      backgroundWidth: firstSlideImageCircleWidth,
                      backgroundColor: firstSlideImageThirdCircleColor,
                      radius: firstSlideImageThirdCircleRadius,
                      center: Container(
                        height: firstSlideCenterAreaSize,
                        width: firstSlideCenterAreaSize,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                firstSlideCenterAreaRadius),
                            gradient: LinearGradient(
                                colors: [
                                  entryScreenBackGroundColor,
                                  firstSlideCenterBottomColor
                                ],
                                stops: [
                                  0,
                                  1
                                ],
                                begin: FractionalOffset.topCenter,
                                end: FractionalOffset.bottomCenter,
                                tileMode: TileMode.repeated)),
                        child: Padding(
                          padding: EdgeInsets.all(firstSlideIconPadding),
                          child: ShaderMask(
                            shaderCallback: (bounds) {
                              return RadialGradient(
                                center: Alignment.topLeft,
                                radius: 1.5,
                                colors: [
                                  firstSlideLeftIconColor,
                                  firstSlideRightIconColor
                                ],
                              ).createShader(bounds);
                            },
                            child: SvgWidget(
                              text: firstSlideIcontext,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
    slides.add(
      Slide(backgroundColor: entryScreenBackGroundColor),
    );
    slides.add(
      Slide(backgroundColor: entryScreenBackGroundColor),
    );
  }

  nextButton() {
    return ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: textSizeMedium),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(entryScreenNextButtonRadius),
        ),
        primary: Theme.of(context).primaryColor);
  }

  routeToLogin() {
    context.router.pushNamed("/navigation");
    }
}

renderDoneButton() {
  return SizedBox(
    height: entryScreenNextButtonHeight,
    width: entryScreenNextButtonWidth,
    child: Center(
      child: TextWidget(
        text: entryScreenNextButtonText,
        color: Colors.white,
        size: textSizeMedium,
      ),
    ),
  );
}

renderNextButton() {
  return SizedBox(
    height: entryScreenNextButtonHeight,
    width: entryScreenNextButtonWidth,
    child: Center(
      child: TextWidget(
        text: entryScreenNextButtonText,
        color: Colors.white,
        size: textSizeMedium,
      ),
    ),
  );
}
