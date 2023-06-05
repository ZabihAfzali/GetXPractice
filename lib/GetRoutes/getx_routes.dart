import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxpractice/GetModels/dialogue_alert.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({Key? key}) : super(key: key);

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Routes'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                onPressed: (){
                  //Get.to(DialogueScreen());
                  Get.toNamed('/ScreenOne', arguments: [
                    'Zabi',
                    'Khan',
                  ]);
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=>DialogueScreen()));
                },
                child: Text('Go to Next Screen'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
