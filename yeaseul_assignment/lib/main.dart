import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeaseul_t_infinity_assignment/component/navigation_destination.dart';
import 'package:yeaseul_t_infinity_assignment/screen/clock_page.dart';
import 'package:yeaseul_t_infinity_assignment/utils/count.dart';
import 'package:yeaseul_t_infinity_assignment/screen/screen_click_page.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => Counts()),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counts(),
      child: MaterialApp(
        title: 'toy_mobile_app',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 142, 144, 255),
              brightness: Brightness.values[0]),
        ), // MyTheme 클래스를 사용하여 테마를 설정합니다.
        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = ScreenClickCount();
        break;
      case 1:
        page = ClockPage();
        break;
      default:
        throw UnimplementedError('$selectedIndex 에는 위젯이 존재하지 않습니다.');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 0, 108),
          title: Text("toy_mobile_app",
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 1,
              child: NavigationRail(
                backgroundColor: Color.fromARGB(255, 197, 201, 255),
                extended: constraints.maxWidth >= 600,
                destinations: [
                  createDestination(Icons.ads_click, 'Screen Click Count', 8.0),
                  createDestination(Icons.schedule, 'Clock', 5.0),
                ],
                selectedIndex: selectedIndex,
                onDestinationSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                  });
                },
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}
