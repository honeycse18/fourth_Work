import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    overflow: Overflow.visible,
                    children: [
                      Container(
                        height: 250.0,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40.0,
                              ),
                              new Text(
                                "Log In Alert",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              new Text(
                                "This message for alert you about your account. Someone try to access your account right now. Please check details.",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontFamily: "Segoe UI",
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -50.0,
                        child: CircleAvatar(
                          radius: 50.0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(60.0),
                              ),
                              child: Image.asset("images/1.jpg")),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: Text("Click"),
        ),
      ),
    );
  }
}
