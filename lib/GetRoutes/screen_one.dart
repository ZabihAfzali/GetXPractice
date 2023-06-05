import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  String intentData=Get.arguments[0];
  String seconData=Get.arguments[1];

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.pink
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Screen One:'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(50),
              child: TextButton(
              onPressed: (){

              },child: Text(intentData,style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20),
              ),),
              ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(50),
              child: TextButton(
                onPressed: (){
                  Get.toNamed('/ScreenTwo', arguments: [
                    'Nabi',
                    'Khan',
                  ]);
                },child: Text(seconData,style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 20),
              ),),
            ),

          ],
        ),
      ),
    );
  }
}
