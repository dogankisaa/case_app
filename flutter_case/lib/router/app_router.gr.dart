// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../screens/bottom_navigation_screen.dart' as _i5;
import '../screens/entry_screen.dart' as _i1;
import '../screens/home_screen.dart' as _i3;
import '../screens/login_screen.dart' as _i2;
import '../screens/player_screen.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    EntryScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EntryScreen());
    },
    LoginScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    HomeScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    PlayerScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.PlayerScreen());
    },
    NavigationScreen.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.NavigationScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(EntryScreen.name, path: '/'),
        _i6.RouteConfig(LoginScreen.name, path: '/login'),
        _i6.RouteConfig(HomeScreen.name, path: '/home'),
        _i6.RouteConfig(PlayerScreen.name, path: '/player'),
        _i6.RouteConfig(NavigationScreen.name, path: '/navigation')
      ];
}

/// generated route for
/// [_i1.EntryScreen]
class EntryScreen extends _i6.PageRouteInfo<void> {
  const EntryScreen() : super(EntryScreen.name, path: '/');

  static const String name = 'EntryScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i6.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.HomeScreen]
class HomeScreen extends _i6.PageRouteInfo<void> {
  const HomeScreen() : super(HomeScreen.name, path: '/home');

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i4.PlayerScreen]
class PlayerScreen extends _i6.PageRouteInfo<void> {
  const PlayerScreen() : super(PlayerScreen.name, path: '/player');

  static const String name = 'PlayerScreen';
}

/// generated route for
/// [_i5.NavigationScreen]
class NavigationScreen extends _i6.PageRouteInfo<void> {
  const NavigationScreen() : super(NavigationScreen.name, path: '/navigation');

  static const String name = 'NavigationScreen';
}
