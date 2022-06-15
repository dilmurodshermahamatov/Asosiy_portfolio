import 'package:b01/Sahifa3.dart';
import 'package:flutter/material.dart';
import 'Home.dart';

void main(List<String> args) {
  runApp(const MyApp());
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
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (RouteSettings settings) {
        List<String> _text1 = settings.name.toString().split("/");
        List<String> _img1 = settings.name.toString().split("/");
        if (_img1[1] == "Sahifa3") {
          return MaterialPageRoute(builder: (context) {
            return Sahifa3(int.parse(_text1[2]), int.parse(_img1[2]));
          });
        }
      },
      home: HomePage(),
    );
  }
}
