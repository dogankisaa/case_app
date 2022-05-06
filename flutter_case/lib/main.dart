import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_case/screens/entry_screen.dart';
import 'package:flutter_case/screens/login_screen.dart';
import 'package:flutter_case/screens/player_screen.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              iconTheme: IconThemeData(color: Colors.white)),
          primaryColor: Color.fromRGBO(20, 220, 148, 1),
          primaryColorDark: Color.fromRGBO(20, 220, 148, 0.2),
          backgroundColor: Color.fromRGBO(4, 4, 4, 1),
          
          hintColor: Colors.white),
      home: const EntryScreen(),
       routes: <String, WidgetBuilder>{
         "/login" : (BuildContext context) => LoginScreen() }
    );
  }
}
