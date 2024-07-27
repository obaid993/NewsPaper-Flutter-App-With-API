// ignore_for_file: prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Config/Theme.dart';
import 'screeens/home_screen.dart';
import 'screeens/news_details.dart';
import 'screeens/splasht_screen.dart';

late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: lightTheme,
        themeMode: ThemeMode.system,
        darkTheme: darkTheme,
        home: SplashScreen());
  }
}
