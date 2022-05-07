// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../screens/entry_screen.dart' as _i1;
import '../screens/login_screen.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    EntryScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.EntryScreen());
    },
    LoginScreen.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(EntryScreen.name, path: '/'),
        _i3.RouteConfig(LoginScreen.name, path: '/login')
      ];
}

/// generated route for
/// [_i1.EntryScreen]
class EntryScreen extends _i3.PageRouteInfo<void> {
  const EntryScreen() : super(EntryScreen.name, path: '/');

  static const String name = 'EntryScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i3.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: '/login');

  static const String name = 'LoginScreen';
}
