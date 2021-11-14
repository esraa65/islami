import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';
import 'package:untitled/quran/suradetailsscreen.dart';

void main() {
  runApp(MyApp());
}

class Mythemedata {
  static final primarycolor = Color.fromARGB(255, 183, 147, 95);
  static final selectediconcolor = Color.fromARGB(255, 248, 248, 248);
  static final unselectediconcolor = Color.fromARGB(255, 36, 36, 36);
  static final blackcolor = Color.fromARGB(255, 36, 36, 36);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Mythemedata.primarycolor,
      ),
      title: 'Flutter Demo',
      routes: {
        Homepage.routename: (buildContext) => Homepage(),
        SuraDetailsScreen.routename: (buildContext) => SuraDetailsScreen()
      },
      initialRoute: Homepage.routename,
    );
  }
}
