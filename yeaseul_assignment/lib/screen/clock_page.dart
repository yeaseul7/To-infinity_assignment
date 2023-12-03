import 'package:flutter/material.dart';
import 'package:yeaseul_t_infinity_assignment/component/country_choose_button.dart';
import 'package:yeaseul_t_infinity_assignment/component/country_clock_view.dart';

class ClockPage extends StatefulWidget {
  const ClockPage({Key? key}) : super(key: key);

  @override
  State<ClockPage> createState() => _ClockPageState();
}

class _ClockPageState extends State<ClockPage> {
  var selectClockCountry = 'Asia/Seoul';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                countryChoseButton(0, 'Seoul', () {
                  setState(() {
                    selectClockCountry = 'Asia/Seoul';
                  });
                }),
                countryChoseButton(1, 'New_York', () {
                  setState(() {
                    selectClockCountry = 'America/New_York';
                  });
                }),
              ],
            ),
            Expanded(
                child: CountryClock(selectClockCountry: selectClockCountry)),
          ],
        ));
  }
}
