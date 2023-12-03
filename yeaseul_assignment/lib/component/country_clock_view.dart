import "dart:async";
// async에는 Future, Stream, Completer, Timer 등이 있다.
// Timer는 일정 시간이 지난 후에 작업을 수행하거나 주기적으로 작업을 수행할 때 사용한다.
import "package:flutter/material.dart";
import "package:intl/intl.dart";
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class CountryClock extends StatefulWidget {
  final String seklectClockCountry;
  const CountryClock({Key? key, required this.seklectClockCountry})
      : super(key: key);

  @override
  State<CountryClock> createState() => _CountryClockState();
}

class _CountryClockState extends State<CountryClock> {
  late Timer _timer;
  late DateTime _currentTime;
  String _formattedTime = '';

  @override
  void initState() {
    super.initState();
    tz.initializeTimeZones();
    _getTime();
    _timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getTime());
  }

  void _getTime() {
    setState(() {
      _currentTime =
          tz.TZDateTime.now(tz.getLocation(widget.seklectClockCountry));
      ;
      _formattedTime = DateFormat('HH:mm:ss').format(_currentTime);
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      height: 300,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Text(
            _formattedTime,
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
