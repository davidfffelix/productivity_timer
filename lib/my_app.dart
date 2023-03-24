import 'package:flutter/material.dart';
import 'timer/timer_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Work Timer',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: TimerPage(),
    );
  }
}
