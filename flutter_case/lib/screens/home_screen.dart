import 'package:flutter/material.dart';
import 'package:flutter_case/screenInputs/home_screen_inputs.dart';
import 'package:flutter_case/screenInputs/play_screen_inputs.dart';
import 'package:flutter_case/service/dio_get_player_data.dart';
import 'package:flutter_case/widgets/home_screen_scrollable_row_widget.dart';
import 'package:flutter_case/widgets/svg_widget.dart';
import 'package:flutter_case/widgets/text_widget.dart';


import '../widgets/home_screen_row_header.dart';

import '../widgets/text_field_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
         
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
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(homeScreenMainImageRadius),
                color: Colors.grey,
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover
                )
              ),
              height: 130,
              width: double.infinity,
             ),
          const SizedBox(
            height: 10,
          ),
          HomeScreenRowHeaderWidget(text: homeScreenContinueListening,),
          const SizedBox(
            height: 10,
          ),
          HomeScreenHorizontalScrollWidget(
            rowType: "continue",
            isProgress: true,
              image: image,
              dataCount: 2,
              imageHeight: homeScreenContinueListeningRowContainerSize,
              imageWidth: homeScreenContinueListeningRowContainerSize,
              progressPercent: 0.2,
              rowHeight: 160.0),
              const SizedBox(
                height: 10,
              ),
              HomeScreenRowHeaderWidget(text: homeScreenTopics,),
              const SizedBox(
                height: 10,
              ),
               HomeScreenHorizontalScrollWidget(
                 isProgress: false,
              image: image,
              dataCount: 5,
              imageHeight: homeScreenTopicsRowContainerHeight,
              imageWidth: homeScreenTopicsRowContainerWidth,
              progressPercent: 0.6,
              rowHeight: 100.0),
               const SizedBox(
                height: 10,
              ),
              HomeScreenRowHeaderWidget(text: homeScreenNewRelease,),
              const SizedBox(
                height: 10,
              ),
               HomeScreenHorizontalScrollWidget(
                 isProgress: false,
              image: image,
              dataCount: 5,
              imageHeight: homeScreenNewReleaseRowContainerHeight,
              imageWidth: homeScreenNewReleaseRowContainerWidth,
              progressPercent: 0.6,
              rowHeight: 240.0),
        ],
      ),
    );
  }
}


