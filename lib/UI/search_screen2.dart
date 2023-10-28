import 'package:flutter/material.dart';

class FloatingActionButtonExampleApp extends StatelessWidget {
  const FloatingActionButtonExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const FloatingActionButtonExample(),
    );
  }
}

class FloatingActionButtonExample extends StatefulWidget {
  const FloatingActionButtonExample({super.key});

  @override
  State<FloatingActionButtonExample> createState() =>
      _FloatingActionButtonExampleState();
}

class _FloatingActionButtonExampleState
    extends State<FloatingActionButtonExample> {
  // The FAB's foregroundColor, backgroundColor, and shape
  static const List<(Color?, Color? background, ShapeBorder?)> customizations =
      <(Color?, Color?, ShapeBorder?)>[
    (null, null, null), // The FAB uses its default for null parameters.
    (null, Colors.green, null),
    (Colors.white, Colors.green, null),
    (Colors.white, Colors.green, CircleBorder()),
  ];
  int index = 0; // Selects the customization.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Destination: '),
        ),
        body: Column(
            //mainAxisAlignment: MainAxisAlignment,
            children: [
              SizedBox(
                  height: 50,
                  child: Expanded(
                    child: DropdownMenu(
                      leadingIcon: const Icon(Icons.search),
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(
                            value: 0, label: "The Ohio State Union")
                      ],
                      onSelected: (value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const FloatingActionButtonExampleApp()));
                      },
                    ),
                  )),
               Divider(height: 70, color: const Color.fromARGB(0, 0, 0, 0)),
               Container(height: 400, color: const Color.fromARGB(255, 0, 0, 0)),
               Divider(height: 30, color: const Color.fromARGB(0, 0, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    FloatingActionButton(
                      heroTag: "btn1",
                      onPressed: () {
                        setState(() {
                          index = (index + 1) % customizations.length;
                        });
                      },
                      foregroundColor: customizations[index].$1,
                      backgroundColor: customizations[index].$2,
                      shape: customizations[index].$3,
                      child: const Icon(Icons.wc),
                    ),
                    const Text("Bathrooms")
                  ]),
                  Column(children: [
                    FloatingActionButton(
                      heroTag: "btn2",
                      onPressed: () {
                        setState(() {
                          index = (index + 1) % customizations.length;
                        });
                      },
                      foregroundColor: customizations[index].$1,
                      backgroundColor: customizations[index].$2,
                      shape: customizations[index].$3,
                      child: const Icon(Icons.fastfood),
                    ),
                    const Text("Food")
                  ]),
                  Column(children: [
                    FloatingActionButton(
                      heroTag: "btn3",
                      onPressed: () {
                        setState(() {
                          index = (index + 1) % customizations.length;
                        });
                      },
                      foregroundColor: customizations[index].$1,
                      backgroundColor: customizations[index].$2,
                      shape: customizations[index].$3,
                      child: const Icon(Icons.door_back_door_outlined),
                    ),
                    const Text("Exits")
                  ]),
                ],
              )
            ]));
  }
}
