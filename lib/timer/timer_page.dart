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
            // Pegamos a largura disponível pelo constraints
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
                // O const foi retirado por que o child (child: CircularPercentIndicator) não é constante
                Expanded(
                  child: CircularPercentIndicator(
                    radius: availableWidth / 2.5,
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
                        color: Color(0xff5e35b1),
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
                        color: Color(0xff5e35b1),
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
