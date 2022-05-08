// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../screens/bottom_navigation_screen.dart' as _i5;
import '../screens/entry_screen.dart' as _i1;
import '../screens/home_screen.dart' as _i3;
import '../screens/login_screen.dart' as _i2;
import '../screens/media_player_screen.dart' as _i6;
import '../screens/player_screen.dart' as _i4;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    EntryScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EntryScreen());
    },
    LoginScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    HomeScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    PlayerScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PlayerScreen());
    },
    NavigationScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NavigationScreen());
    },
    MediaPlayerScreen.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.MediaPlayerScreen());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(EntryScreen.name, path: '/'),
        _i7.RouteConfig(LoginScreen.name, path: '/login'),
        _i7.RouteConfig(HomeScreen.name, path: '/home'),
        _i7.RouteConfig(PlayerScreen.name, path: '/player'),
        _i7.RouteConfig(NavigationScreen.name, path: '/navigation'),
        _i7.RouteConfig(MediaPlayerScreen.name, path: '/media-player')
      ];
}

/// generated route for
/// [_i1.EntryScreen]
class EntryScreen extends _i7.PageRouteInfo<void> {
  const EntryScreen() : super(EntryScreen.name, path: '/');

  static const String name = 'EntryScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i7.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i7.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.PlayerScreen]
class PlayerScreen extends _i7.PageRouteInfo<void> {
  const PlayerScreen() : super(PlayerScreen.name, path: '/player');

  static const String name = 'PlayerScreen';
}

/// generated route for
/// [_i5.NavigationScreen]
class NavigationScreen extends _i7.PageRouteInfo<void> {
  const NavigationScreen() : super(NavigationScreen.name, path: '/navigation');

  static const String name = 'NavigationScreen';
}

/// generated route for
/// [_i6.MediaPlayerScreen]
class MediaPlayerScreen extends _i7.PageRouteInfo<void> {
  const MediaPlayerScreen()
      : super(MediaPlayerScreen.name, path: '/media-player');

  static const String name = 'MediaPlayerScreen';
}
