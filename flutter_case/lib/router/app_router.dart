import 'package:auto_route/auto_route.dart';
import 'package:flutter_case/screens/bottom_navigation_screen.dart';
import 'package:flutter_case/screens/entry_screen.dart';
import 'package:flutter_case/screens/home_screen.dart';
import 'package:flutter_case/screens/login_screen.dart';
import 'package:flutter_case/screens/media_player_screen.dart';
import 'package:flutter_case/screens/player_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: EntryScreen, initial: true),
    AutoRoute(page: LoginScreen, path: "/login"),
    AutoRoute(page: HomeScreen, path: "/home"),
    AutoRoute(page: PlayerScreen, path: "/player"),
    AutoRoute(page: NavigationScreen, path: "/navigation"),
    AutoRoute(page: MediaPlayerScreen, path: "/media-player")
  ],
)
class $AppRouter {}
