import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/GetModels/dialogue_alert.dart';
import 'package:getxpractice/GetRoutes/getx_routes.dart';
import 'package:getxpractice/GetModels/home_screen.dart';
import 'package:get/get.dart';
import 'package:getxpractice/GetRoutes/screen_one.dart';
import 'package:getxpractice/GetRoutes/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RouteScreen(),
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/HomeScreen', page: ()=> RouteScreen()),
        GetPage(name: '/ScreenOne', page: ()=> ScreenOne()),
        GetPage(name: '/ScreenTwo', page: ()=> ScreenTwo()),
      ],
    );
  }
}


