import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeaseul_t_infinity_assignment/count.dart';
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
        splashColor: Color.fromARGB(255, 255, 132, 123),
        hoverColor: Theme.of(context).colorScheme.primaryContainer,
        highlightColor: const Color.fromARGB(255, 255, 134, 126),
        onTap: () {
          context.read<Counts>().increment();
        },
        child: Center(
          child: Wrap(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        '추가할 텍스트',
                        style: AppStyles.titleTextStyle,
                      ),
                      Text(
                        '화면 클릿 횟수: ${context.watch<Counts>().count}',
                        style: AppStyles.titleTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
