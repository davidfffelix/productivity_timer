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
      backgroundColor: const Color(0xff2D2D2D),
      appBar: AppBar(
        backgroundColor: const Color(0xff2D2D2D),
        elevation: 0,
        title: const Text(
          'Productivity Timer',
        ),
      ),
      // Widgets do tipo builder normalmente esperam como parâmetro uma função que retorna algo
      // Com o constraints conseguimos pegar a largura e altura disponível na tela. Nesse caso, somente o radius.
      // LayoutBuilder = Usamos ele para deixar a largura relativa ao tamanho da tela
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          bottom: 20,
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            final double availableWidth = constraints.maxWidth;
            return Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(defaultPadding),
                    ),
                    Expanded(
                      child: ProductivityButton(
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
                    progressColor: const Color(0xff5e35b1),
                    backgroundColor: Colors.deepPurpleAccent,
                    radius: availableWidth / 2.5,
                    // circularStrokeCap: CircularStrokeCap.round,
                    lineWidth: 15,
                    percent: 0.45,
                    center: const Text(
                      '30:00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(defaultPadding),
                    ),
                    Expanded(
                      child: ProductivityButton(
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
                        text: 'Restart',
                        size: 3,
                        onPressed: emptyMethod,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultPadding),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
