import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnakeBar extends StatefulWidget {
  const SnakeBar({Key? key}) : super(key: key);

  @override
  State<SnakeBar> createState() => _SnakeBarState();
}

class _SnakeBarState extends State<SnakeBar> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Applications'),
        ),
        body: Column(
          children: [

          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Get.snackbar('Zabiullah', 'welcome',backgroundColor: Colors.pink,
            icon: Icon(Icons.icecream_sharp),duration: Duration(seconds: 10),showProgressIndicator: true,progressIndicatorBackgroundColor: Colors.green,
                snackPosition: SnackPosition.BOTTOM,
              snackStyle: SnackStyle.FLOATING,
            );
          },

        ),

      ),
    );
  }
}
