import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFBA9884),
        body: SafeArea(
          child: DefaultTabController(
            length: 4,
            child: Scaffold(
              backgroundColor: Color(0xFFBA9884),
              body: TabBarView(
                children: [
                  Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/page1.png"),
                        alignment: Alignment.topCenter,
                      ),
                      Text("welcome to yoga world")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/page2.png"),
                        alignment: Alignment.topCenter,
                      ),
                      Text("healthy freaks")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/page3.png"),
                        alignment: Alignment.topCenter,
                      ),
                      Text("cycling")
                    ],
                  ),
                  Column(
                    children: [
                      Image(
                        image: AssetImage("assets/images/page4.png"),
                        alignment: Alignment.topCenter,
                      ),
                      Text("deditation")
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
