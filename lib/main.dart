import 'package:flutter/material.dart';
import 'package:massenger_clone/Src/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "Massenger",

          theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.grey,
        ).copyWith(
          secondary: Colors.deepPurple,
        ),

            textTheme: TextTheme(
              bodyText1: TextStyle(
color: Colors.white,
                fontSize: 24,
              ),
              bodyText2: TextStyle(
color: Colors.white,
                fontSize: 16,
              ),
            ),

            iconTheme: IconThemeData(
              color: Colors.deepPurple,
            )
    ),
      home: SafeArea(
        child: Chats(),
      ),
    );
  }
}


