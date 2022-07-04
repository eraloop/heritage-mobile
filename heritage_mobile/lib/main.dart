import 'package:flutter/material.dart';

import './utilities/colors.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'heritage',
      theme: ThemeData(
        fontFamily: 'Mont',
        // primarySwatch: Colors.blue,
        // accentColor: Colors(382839),
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w600),
          headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w200),
          bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w200),
        ),
      ),
      home: const MyHomePage(title: 'heritage'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(widget.title), backgroundColor: AppColors.primaryColor),
        body: SplashScreen());
  }
}
