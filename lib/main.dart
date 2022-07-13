import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'messenger.dart';

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
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(statusBarColor:Color(0xff343841),systemNavigationBarColor:Color(0xff343841),
          )
          )

      ),
      home: Messenger()
    );
  }
}

