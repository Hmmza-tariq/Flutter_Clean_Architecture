import 'package:clean_arch/app/app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  void updateAppState() {
    MyApp.instance.appState = 10;
  }

  void getAppState() {
    if (kDebugMode) {
      print(MyApp.instance.appState);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
