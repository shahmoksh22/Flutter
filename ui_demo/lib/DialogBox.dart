import 'package:flutter/material.dart';
import 'package:ui_demo/SplashScreen.dart';

class DialogBoxScreen extends StatefulWidget {
  const DialogBoxScreen({super.key});

  @override
  State<DialogBoxScreen> createState() => _DialogBoxScreenState();
}

class _DialogBoxScreenState extends State<DialogBoxScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Box   Screen"),
        backgroundColor: Colors.green,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text("Alert Dialog Box"),
                      content: const Text("You have raised a Alert Dialog Box"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            color: Colors.green,
                            padding: const EdgeInsets.all(14),
                            child: const Text("okay"),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text("Show alert Dialog box"),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => SimpleDialog(
                      title:const Text('GeeksforGeeks'),
                      children: <Widget>[
                        SimpleDialogOption(
                          onPressed: () { },
                          child:const Text('Option 1'),
                        ),
                        SimpleDialogOption(
                          onPressed: () { },
                          child: const Text('Option 2'),
                        ),
                      ],
                    ),

                  );
                },
                child: const Text("SimpleDialog"),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Welcome'),
                        content: Text('GeeksforGeeks'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('CANCEL'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SplashScreen()),
                              );
                              },
                            child: Text('ACCEPT'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text("AlertDialog"),
              ),
              TextButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        child: AlertDialog(
                          title: Text('Are You Sure You Want To LogOut'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('CANCEL'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const SplashScreen()),
                                );
                              },
                              child: Text('LOGOUT'),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text("LogOut"),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
