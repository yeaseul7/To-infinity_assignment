import 'package:flutter/material.dart';
import 'package:yeaseul_t_infinity_assignment/component/country_choose_button.dart';
import 'package:yeaseul_t_infinity_assignment/component/country_clock_view.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  var seklectClockNum = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 226, 226),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 199, 199),
          title: Text('korean clock & American clock',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                countryChoseButton(0, '한국 시간', () {
                  setState(() {
                    seklectClockNum = 0;
                  });
                }),
                countryChoseButton(1, '미국 시간', () {
                  setState(() {
                    seklectClockNum = 1;
                  });
                }),
              ],
            ),
            Expanded(child: CountryClock(clockWidgetIndex: seklectClockNum)),
          ],
        ));
  }
}
