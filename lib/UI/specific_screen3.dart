import 'package:flutter/material.dart';

class SpecificScreen extends StatefulWidget {
  final String category;
  const SpecificScreen({super.key, required this.category});

  @override
  State<StatefulWidget> createState() => _SpecificScreenState();
}

class _SpecificScreenState extends State<SpecificScreen> {
  Color selectedFloorColor = Colors.white;
  int selectedFloor = 1;
  Widget _getImage(int newPosition) {
    List<String> images = <String>[
      "assets/OUBasement.png",
      "assets/OUFloor1.png",
      "assets/OUFloor2.png",
      "assets/OUFloor3.png"
    ];
    return Image.asset(images[newPosition]);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Destination: ',
              style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          backgroundColor: const Color.fromARGB(255, 198, 36, 36),
        ),
        body: Column(
            //mainAxisAlignment: MainAxisAlignment,
            children: [
              const Divider(
                height: 10,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
              const Divider(height: 25, color: Color.fromARGB(0, 0, 0, 0)),
              const Text("Select the floor you are on currently: "),
              const Divider(height: 5, color: Color.fromARGB(0, 0, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                      heroTag: "btn8",
                      backgroundColor: selectedFloor == 0
                          ? selectedFloorColor
                          : Theme.of(context)
                              .floatingActionButtonTheme
                              .backgroundColor,
                      onPressed: () {
                        setState(() {
                          selectedFloor = 0;
                        });
                      },
                      child: const Text("B")),
                  FloatingActionButton(
                    heroTag: "btn5",
                    backgroundColor: selectedFloor == 1
                        ? selectedFloorColor
                        : Theme.of(context)
                            .floatingActionButtonTheme
                            .backgroundColor,
                    onPressed: () {
                      setState(() {
                        selectedFloor = 1;
                      });
                    },
                    child: const Text("1"),
                  ),
                  FloatingActionButton(
                    heroTag: "btn6",
                    backgroundColor: selectedFloor == 2
                        ? selectedFloorColor
                        : Theme.of(context)
                            .floatingActionButtonTheme
                            .backgroundColor,
                    onPressed: () {
                      setState(() {
                        selectedFloor = 2;
                      });
                    },
                    child: const Text("2"),
                  ),
                  FloatingActionButton(
                    heroTag: "btn7",
                    backgroundColor: selectedFloor == 3
                        ? selectedFloorColor
                        : Theme.of(context)
                            .floatingActionButtonTheme
                            .backgroundColor,
                    onPressed: () {
                      setState(() {
                        selectedFloor = 3;
                      });
                    },
                    child: const Text("3"),
                  ),
                ],
              ),
              const Divider(height: 18, color: Color.fromARGB(0, 0, 0, 0)),
              Container(
                  height: 400,
                  color: const  Color.fromARGB(255, 255, 255, 255),
                  child: _getImage(selectedFloor)),
              const Divider(height: 20, color: Color.fromARGB(0, 0, 0, 0)),
            ]));
  }
}
