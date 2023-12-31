import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeaseul_t_infinity_assignment/utils/count.dart';
import 'package:yeaseul_t_infinity_assignment/styles/app_style.dart';

class ScreenClickCount extends StatefulWidget {
  const ScreenClickCount({super.key});

  @override
  State<ScreenClickCount> createState() => _ScreenClickCountState();
}

class _ScreenClickCountState extends State<ScreenClickCount> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).colorScheme.primaryContainer,
      child: InkWell(
        onTap: () {
          context.read<Counts>().increment();
        },
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "화면을 클릭하세요",
                    style: AppStyles.titleTextStyle,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('화면 클릭 횟수: ${context.watch<Counts>().count}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
