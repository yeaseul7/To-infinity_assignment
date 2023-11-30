import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeaseul_t_infinity_assignment/count.dart';

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
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 189, 24, 24)),
        ),
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
        page = ScreenClickCount();
        break;
      default:
        throw UnimplementedError('no widget for $selectedIndex');
    }

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SafeArea(
              child: NavigationRail(
                extended: constraints.maxWidth >= 600,
                destinations: [
                  NavigationRailDestination(
                    icon: Padding(
                      padding: EdgeInsets.all(8.0), // 원하는 padding 값으로 변경
                      child: Icon(Icons.ads_click),
                    ),
                    label: Padding(
                      padding: EdgeInsets.all(8.0), // 원하는 padding 값으로 변경
                      child: Text('Screen Click Count'),
                    ),
                  ),
                  NavigationRailDestination(
                    icon: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.schedule),
                    ),
                    label: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Clock'),
                    ),
                  ),
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
              child: Container(
                color: Theme.of(context).colorScheme.primaryContainer,
                child: page,
              ),
            ),
          ],
        ),
      );
    });
  }
}

class ScreenClickCount extends StatefulWidget {
  const ScreenClickCount({super.key});

  @override
  State<ScreenClickCount> createState() => _ScreenClickCountState();
}

class _ScreenClickCountState extends State<ScreenClickCount> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primaryContainer,
      width: double.infinity, // 추가
      height: double.infinity,
      child: InkWell(
        onTap: () {
          context.read<Counts>().increment();
        },
        child: Center(
          child: Text(
            'Screen Click Count: ${context.watch<Counts>().count}',
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ),
      ),
    );
  }
}

class BigCard extends StatelessWidget {
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );
    return Card(
      color: theme.colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(pair.asLowerCase, style: style),
      ),
    );
  }
}
