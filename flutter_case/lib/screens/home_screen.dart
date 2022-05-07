import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/home_screen_inputs.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/service/dio_get_player_data.dart';
import 'package:flutter_case/widgets/svg_widget.dart';
import 'package:flutter_case/widgets/text_widget.dart';

import '../widgets/text_field_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          print(snapshot.data.image);
          return DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                toolbarHeight: homeScreenAppBarHeight,
                automaticallyImplyLeading: false,
                title: TextFieldWidget(
                  type: TextInputType.emailAddress,
                  text: homeScreenSearchText,
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: homeScreenAppBarPadding),
                    child: SvgWidget(
                      text: homeScreenNotificationIconText,
                    ),
                  )
                ],
                bottom: tabBar(context),
              ),
              backgroundColor: Theme.of(context).backgroundColor,
              body: WillPopScope(
                  onWillPop: () async => false,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: homeScreenPadding),
                    child: TabBarView(children: [
                      TabBarForYouTab(
                        image: snapshot.data.image,
                      ),
                      TabBarForYouTab(
                        image: snapshot.data.image,
                      ),
                      TabBarForYouTab(
                        image: snapshot.data.image,
                      ),
                      TabBarForYouTab(
                        image: snapshot.data.image,
                      )
                    ]),
                  )),
            ),
          );
        } else {
          return Center(
              child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ));
        }
      },
    );
  }

  TabBar tabBar(BuildContext context) {
    return TabBar(
      indicatorColor: Theme.of(context).primaryColor,
      isScrollable: true,
      padding: EdgeInsets.symmetric(horizontal: homeScreenPadding),
      unselectedLabelStyle: TextStyle(fontWeight: textWeightSmall),
      labelStyle: TextStyle(fontWeight: textWeightMedium),
      tabs: [
        Tab(
            child: TextWidget(
          text: homeScreenAppBarTabText1,
          color: Theme.of(context).hintColor,
          size: textSizeSmall,
        )),
        Tab(
            child: TextWidget(
          text: homeScreenAppBarTabText2,
          color: Theme.of(context).hintColor,
          size: textSizeSmall,
        )),
        Tab(
            child: TextWidget(
          text: homeScreenAppBarTabText3,
          color: Theme.of(context).hintColor,
          size: textSizeSmall,
        )),
        Tab(
            child: TextWidget(
          text: homeScreenAppBarTabText4,
          color: Theme.of(context).hintColor,
          size: textSizeSmall,
        )),
      ],
    );
  }
}

class TabBarForYouTab extends StatelessWidget {
  final image;
  const TabBarForYouTab({
    Key? key,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(homeScreenMainImageRadius),
                color: Colors.grey,
              ),
              height: 130,
              width: double.infinity,
              child: Image.network(image)),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextWidget(
                text: homeScreenContinueListening,
                color: Theme.of(context).hintColor,
                size: textSizeSmall,
                bold: textWeightMedium,
              ),
              SvgWidget(
                text: homeScreenContinueListeningRightIconText,
              )
            ],
          )
        ],
      ),
    );
  }
}
