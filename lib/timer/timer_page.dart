import 'package:flutter/material.dart';
import '../components/productivity_button.dart';
import 'package:percent_indicator/percent_indicator.dart';

class TimerPage extends StatelessWidget {
  const TimerPage({super.key});

  void emptyMethod() {}
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2D2D2D),
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
                    color: const Color(0xffee4035),
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
                    color: Color(0xff7bc043),
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
                    color: Color(0xff0057e7),
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
            Expanded(
              child: CircularPercentIndicator(
                radius: 100,
                lineWidth: 10,
                percent: 1,
                // Definimos widget dentro do indicador
                center: Text(
                  '30:00',
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                progressColor: Color(0xff009688),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(defaultPadding),
                ),
                Expanded(
                  child: ProductivityButton(
                    color: Color(0xfff37736),
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
                    color: Color(0xfff6cd61),
                    text: 'Restart',
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
