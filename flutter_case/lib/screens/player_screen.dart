import 'package:flutter/material.dart';
import 'package:flutter_case/widgets/text_widget.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../screenInputs/play_screen_inputs.dart';
import '../service/dio_get_player_data.dart';
import '../widgets/post_widget.dart';
import '../widgets/svg_widget.dart';

class PlayerScreen extends StatefulWidget {
  const PlayerScreen({ Key? key }) : super(key: key);

  @override
  State<PlayerScreen> createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar:  AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: SvgWidget(
            text: backIconText,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: SvgWidget(
              text: threeDotMenuIconText,
              width: threeDotMenuIconWidth,
              height: threeDotMenuIconHeight,
            ),
          ),
        ],
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: generalScreenPadding),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            //ana resim
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(imageRadius)),
                              width: imageSize,
                              height: imageSize,
                              child: Center(
                                child: ClipRRect(
                                    borderRadius:
                                        BorderRadius.circular(imageRadius),
                                    child: Image.network(
                                      snapshot.data.image,
                                      fit: BoxFit.cover,
                                    )),
                              ),
                            ),
    
                            SizedBox(
                              height: 8,
                            ),
                            LinearPercentIndicator(
                              backgroundColor:
                                  Theme.of(context).primaryColorDark,
                              percent: linearProgressPercent,
                              barRadius:
                                  Radius.circular(linearProgressbarRadius),
                              width: linearProgressWith,
                              lineHeight: linearProgressHeight,
                              progressColor: Theme.of(context).primaryColor,
                            ),
                          ],
                        ),
                        CircularPercentIndicator(
                          rotateLinearGradient: true,
                          radius: circularProgressRadius,
                          lineWidth: circularProgressWidth,
                          percent: circularProgressPercent,
                          center: SvgWidget(
                            text: downloadIconText,
                            width: downloadIconWidth,
                            height: downloadIconHeight,
                          ),
                          linearGradient: LinearGradient(colors: [
                            Theme.of(context).primaryColor,
                            Theme.of(context).backgroundColor
                          ]),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextWidget(
                      text: "3 Things you shoud know about NFT",
                      color: Theme.of(context).hintColor,
                      size: textSizeLarge,
                      bold: textWeightLarge,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextWidget(
                          text: "Joe Mama Podcast",
                          color: Theme.of(context).primaryColor,
                          size: textSizeMedium,
                          bold: textWeightMedium,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: TextWidget(
                            text:
                                "Conversations about science. tech, history, philosophu, and nature intellegence",
                            color: detailTextColor,
                            size: textSizeMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
    
                    //play button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: playButtonHeigth,
                          width: playButtonWidth,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(playButtonRadius),
                                  ),
                                  primary: Theme.of(context).primaryColor),
                              onPressed: () {},
                              child: TextWidget(
                                text: playButtonText,
                                size: textSizeMedium,
                              )),
                        ),
                        SvgWidget(
                          text: exportIconText,
                          width: exportIconWidth,
                          height: exportIconHeight,
                        ),
                        SvgWidget(
                          text: favoriteIconText,
                          width: favoriteIconWidth,
                          height: favoriteIconHeight,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: "See all episode",
                          color: Theme.of(context).hintColor,
                          size: textSizeMedium,
                          bold: textWeightMedium,
                        ),
                        SizedBox(width: 20),
                        SvgWidget(
                          text: downArrowIconText,
                          width: downArrowIconWidth,
                          height: downArrowIconHeight,
                        ),
                      ],
                    ),
                    Column(
                      children: List.generate(4, (index) {
                        return PostWidget(
                          //çoklu veri durumunda snapshot.data[index].image yaparak indexe göre gönderim yapabiliriz.
                          image: snapshot.data.image,
                          title: snapshot.data.name,
                          detail: snapshot.data.status,
                        );
                      }),
                    )
                  ],
                ),
              ),
            );
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ));
          }
        },
      ),
    );
  }
}