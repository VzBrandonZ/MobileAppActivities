import 'package:app_async_await/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:app_async_await/services/mockapi.dart';

import '../constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var numberRandom1 = "", numberRandom2 = "", numberRandom3 = "";
  bool seleted1 = false, seleted2 = false, seleted3 = false;

  animationContainerClose(bool seletedG) {
    setState(() {
      seletedG = false;
    });
  }

  Future<void> getPingNetStable() async {
    var random = await MockApi().getPingNet(1);
    setState(() {
      numberRandom1 = random.toString();
    });
  }

  Future<void> getPingNetMedium() async {
    var random = await MockApi().getPingNet(3);
    setState(() {
      numberRandom2 = random.toString();
    });
  }

  Future<void> getPingNetBad() async {
    var random = await MockApi().getPingNet(10);
    setState(() {
      numberRandom3 = random.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Button(
                text: '${numberRandom1}',
                color: dataTextStyleGreen,
                childAnimated: AnimatedContainer(
                  width: seleted1 ? 150.0 : 0,
                  height: 10,
                  alignment: Alignment.center,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 33, 124, 39),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onEnd: () => setState(() {
                    seleted1 = false;
                  }),
                ),
                child: FloatingActionButton(
                  onPressed: () => setState(() {
                    seleted1 = !seleted1;
                    getPingNetStable();
                  }),
                  tooltip: '1s',
                  backgroundColor: Colors.green,
                  child: const Icon(
                    Icons.signal_wifi_4_bar,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Button(
                text: "${numberRandom2}",
                color: dataTextStyleYellow,
                childAnimated: AnimatedContainer(
                  width: seleted2 ? 150.0 : 0,
                  height: 10,
                  alignment: Alignment.center,
                  duration: const Duration(seconds: 3),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 205, 188, 39),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onEnd: () => setState(() {
                    seleted2 = false;
                  }),
                ),
                child: FloatingActionButton(
                  onPressed: () => setState(() {
                    seleted2 = !seleted2;
                    getPingNetMedium();
                  }),
                  tooltip: '5s',
                  backgroundColor: Colors.yellow,
                  child: const Icon(
                    Icons.network_wifi_3_bar,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Button(
                text: "${numberRandom3}",
                color: dataTextStyleRed,
                childAnimated: AnimatedContainer(
                  width: seleted3 ? 150.0 : 0,
                  height: 10,
                  alignment: Alignment.center,
                  duration: const Duration(seconds: 10),
                  curve: Curves.fastOutSlowIn,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 214, 43, 31),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  onEnd: () => setState(() {
                    seleted3 = false;
                  }),
                ),
                child: FloatingActionButton(
                  onPressed: () => setState(() {
                    seleted3 = !seleted3;
                    getPingNetBad();
                  }),
                  tooltip: '10s',
                  backgroundColor: Colors.red,
                  child: const Icon(
                    Icons.network_wifi_1_bar,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
