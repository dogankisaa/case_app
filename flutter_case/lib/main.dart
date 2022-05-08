import 'package:flutter/material.dart';

import 'package:flutter_case/router/app_router.gr.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final _appRouter = AppRouter();
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.white)),
          primaryColor: const Color.fromRGBO(20, 220, 148, 1),
          primaryColorDark: const Color.fromRGBO(20, 220, 148, 0.2),
          backgroundColor: const Color.fromRGBO(4, 4, 4, 1),
          hintColor: Colors.white),
    );
  }
}
