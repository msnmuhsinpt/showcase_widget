import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:showcase/view/screen/main/main_screen.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ShowCaseWidget(
              onStart: (index, key) {
                log('onStart: $index, $key');
              },
              onComplete: (index, key) {
                log('onComplete: $index, $key');
                if (index == 4) {
                  SystemChrome.setSystemUIOverlayStyle(
                    SystemUiOverlayStyle.light.copyWith(
                      statusBarIconBrightness: Brightness.dark,
                      statusBarColor: Colors.white,
                    ),
                  );
                }
              },
              blurValue: 1,
              builder: Builder(builder: (context) => const MainScreen()),
              autoPlayDelay: const Duration(seconds: 3)),
        ));
  }
}
