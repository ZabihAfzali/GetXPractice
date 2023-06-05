import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogueScreen extends StatefulWidget {
  const DialogueScreen({Key? key}) : super(key: key);

  @override
  State<DialogueScreen> createState() => _DialogueScreenState();
}

class _DialogueScreenState extends State<DialogueScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GetX Dialogue Alert'),
        ),
        body: Column(
          children: [
            Card(
                child: ListTile(
                    title: Text('GetX Dialogue'),
                    subtitle: Text('Welcome to the GetX Dialogue'),
                    onTap: () {
                      Get.defaultDialog(
                        title: 'Default dialogue',
                        titlePadding: EdgeInsets.all(20),
                        //textConfirm: 'Ok',
                        //textCancel: 'Cancel',
                        middleText: 'Are you sure you want to delete this',
                        confirm: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('OK')),
                        cancel: TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text('Cancel')),
                        backgroundColor: Colors.cyan,
                      );
                    })),
            Card(
                child: ListTile(
                    title: Text('GetX Bottom Sheet Dialogue'),
                    subtitle: Text('Welcome to the GetX Bottom Sheet Dialogue'),
                    onTap: () {
                      Get.bottomSheet(Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              title: Text('Light theme'),
                              leading: Icon(Icons.light_mode),
                              onTap: () {
                                Get.changeTheme(ThemeData.light());
                              },
                            ),
                            ListTile(
                              title: Text('Dark theme'),
                              leading: Icon(Icons.dark_mode),
                              onTap: () {
                                Get.changeTheme(ThemeData.dark());
                              },
                            ),
                          ],
                        ),
                      ));
                    }))
          ],
        ),
      ),
    );
  }
}
