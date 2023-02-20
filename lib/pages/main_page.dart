import 'package:flutter/material.dart';
import 'screens/calculater_screen.dart';
import 'screens/history_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    int screeenNumber = 0;
    List<Widget> screens = [CalculaterSreen(), const HistoryScreen()];

    return SafeArea(
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    print("calculater");
                    setState(() {
                      screeenNumber = 0;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.calculate,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('Рассчитать стоимость'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                GestureDetector(
                  onTap: () {
                    print("history");
                    setState(() {
                      screeenNumber = 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.history,
                          size: 30,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text('История Рассчетов'),
                      ],
                    ),
                  ),
                ),
              ],
            )),
        Expanded(
          flex: 4,
          child: screens[screeenNumber],
        )
      ]),
    );
  }
}
