import 'package:flutter/material.dart';
import '../components/productivity_button.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  void emptyMethod() {}
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Work Time'),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: const Color(0xff009688),
                    text: 'Work',
                    size: 3,
                    onPressed: emptyMethod,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: Color(0xff607D8B),
                    //TODO: Formatar o texto
                    text: 'Short Break',
                    size: 3,
                    onPressed: emptyMethod,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: Color(0xff455A64),
                    text: 'Long Break',
                    size: 3,
                    onPressed: emptyMethod,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            ),
            const Expanded(
              child: Text('Hello!'),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: Color(0xff212121),
                    text: 'Stop',
                    size: 3,
                    onPressed: emptyMethod,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: Color(0xff009688),
                    text: 'Start',
                    onPressed: emptyMethod,
                    size: 3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
