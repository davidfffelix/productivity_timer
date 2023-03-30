import 'package:flutter/material.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/bottom_buttons_widget.dart';
import '../widgets/productivity_button_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void emptyMethod() {}
  final double defaultPadding = 5.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2D2D2D),
        appBar: AppBarWidget(
          leading: GestureDetector(
            child: const Icon(
              Icons.menu,
              // color: Colors.white,
              color: Color(0xff5e35b1),
            ),
            onTap: () {
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) {},
              //   ),
              // );
            },
          ),
          title: const Text(
            'Productivity Timer',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          actions: const Icon(
            Icons.notifications_off,
            color: Color(0xff5e35b1),
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
                      backgroundColor: Colors.deepPurpleAccent,
                      progressColor: const Color(0xff5e35b1),
                      radius: availableWidth / 2.5,
                      circularStrokeCap: CircularStrokeCap.round,
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
                        child: BottomButtonsHomePage(
                          onPressed: emptyMethod,
                          bottomIcon: Icons.pause,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(defaultPadding),
                      ),
                      Expanded(
                        child: BottomButtonsHomePage(
                          onPressed: emptyMethod,
                          bottomIcon: Icons.restart_alt,
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
      ),
    );
  }
}



// Container(
//                         height: 70,
//                         width: 70,
//                         decoration: const BoxDecoration(
//                           color: Color(0xff828A9F),
//                           shape: BoxShape.circle,
//                         ),
//                         child: IconButton(
//                           iconSize: 40,
//                           color: Colors.white,
//                           onPressed: () {},
//                           icon: const Icon(Icons.restart_alt),
//                         ),
//                       ),







// Expanded(
//                       child: ProductivityButton(
//                         text: 'Restart',
//                         size: 3,
//                         onPressed: emptyMethod,
//                       ),
//                     ),
