import 'package:flutter/material.dart';

String mediaPlayerLeadingIconText = "assets/media_player_screen_down_arrow_icon.svg";
String mediaPlayerOwnerText = "Joe Mama Podcast";
String mediaPlayerPodcastNameText = "3 Things you should know about NFT";
double mediaPlayerPadding = 24;


MediaQueryData mediaQuery = MediaQueryData.fromWindow(WidgetsBinding.instance!.window);
double mediaPlayerImageWidth =  mediaQuery.size.width;
double mediaPlayerImageHeight = mediaQuery.size.width;

String mediaPlayerScreenPlayButton = "assets/media_player_screen_play_button.png";
String mediaPlayerScreenForwardButton = "assets/media_player_screen_forward_button.svg";
String mediaPlayerScreenJumpButton = "assets/media_player_screen_jump_icon.svg";
String mediaPlayerScreenPlayIcon = "assets/media_player_screen_play_icon.svg";
String mediaPlayerScreenHeadphoneIcon = "assets/media_player_screen_headphone_icon.svg";
String mediaPlayerScreenBottomRightIcon = "assets/media_player_screen_bottom_right_icon.svg";
String mediaPlayerScreenPlayerProgress = "assets/media_player_screen_player_progress.png";
String mediaPlayerScreenHeadphoneOwnerText = "Ryu’s Airpods";
double mediaPlayerScreenHeadphoneIconFirstCircle = 20;
double mediaPlayerScreenHeadphoneIconSecondCircle = 15;
double mediaPlayerScreenPlayButtonCenterCircleRadius = 30;

double mediaPlayerScreenPlayIconPaddingLeft = 47;
double mediaPlayerScreenPlayIconPaddingTop = 43;