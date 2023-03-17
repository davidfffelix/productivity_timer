import 'package:flutter/material.dart';

import 'timer/timer_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Work Timer',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: TimerPage(),
    );
  }
}
