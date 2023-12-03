import 'package:clean_arch/presentation/resources/routes_manager.dart';
import 'package:clean_arch/presentation/resources/theme_manager.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  MyApp._internal();
  static MyApp instance = MyApp._internal();
  factory MyApp() => instance;

  int appState = 0;
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: getApplicationTheme(),
    );
  }
}
