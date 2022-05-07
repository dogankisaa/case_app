import 'package:auto_route/auto_route.dart';
import 'package:flutter_case/screens/entry_screen.dart';
import 'package:flutter_case/screens/login_screen.dart';
import 'package:flutter_case/screens/player_screen.dart';

@MaterialAutoRouter(        
  replaceInRouteName: 'Page,Route',        
  routes: <AutoRoute>[        
    AutoRoute(page: EntryScreen, initial: true),        
    AutoRoute(page: LoginScreen, path: "/login"),        
  ],        
)        
class $AppRouter {}        