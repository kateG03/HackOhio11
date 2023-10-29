import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_indoor_nav/UI/specific_screen3.dart';

const double mapHeight = 400;

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
  var center = [mapHeight / 2 * cos(45), mapHeight / 2 * sin(45)];

  Widget _getImage(int newPosition) {
    List<String> images = <String>[
      "assets/OUBasementGrey.png",
      "assets/OUFloor1Grey.png",
      "assets/OUFloor2Grey.png",
      "assets/OUFloor3Grey.png"
    ];
    return InteractiveViewer(key: UniqueKey(), child: Image.asset(images[newPosition]));
  }

  Color unselectedFloorColor = const Color.fromARGB(255, 97, 96, 93);
  Color selectedFloorColor = const Color.fromARGB(255, 198, 36, 36);
  int selectedFloor = 1;
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
              SizedBox(
                  height: 50,
                  child: DropdownMenu(
                    leadingIcon: const Icon(Icons.search),
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(value: 0, label: "The Ohio State Union")
                    ],
                    onSelected: (value) {
                      //spot to set the destination
                    },
                  )),
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
                          : unselectedFloorColor,
                      onPressed: () {
                        setState(() {
                          selectedFloor = 0;
                        });
                      },
                      child: const Text("B",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255)))),
                  FloatingActionButton(
                    heroTag: "btn5",
                    backgroundColor: selectedFloor == 1
                        ? selectedFloorColor
                        : unselectedFloorColor,
                    onPressed: () {
                      setState(() {
                        selectedFloor = 1;
                      });
                    },
                    child: const Text("1",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                  FloatingActionButton(
                    heroTag: "btn6",
                    backgroundColor: selectedFloor == 2
                        ? selectedFloorColor
                        : unselectedFloorColor,
                    onPressed: () {
                      setState(() {
                        selectedFloor = 2;
                      });
                    },
                    child: const Text("2",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                  FloatingActionButton(
                    heroTag: "btn7",
                    backgroundColor: selectedFloor == 3
                        ? selectedFloorColor
                        : unselectedFloorColor,
                    onPressed: () {
                      setState(() {
                        selectedFloor = 3;
                      });
                    },
                    child: const Text("3",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                ],
              ),
              const Divider(height: 18, color: Color.fromARGB(0, 0, 0, 0)),
              Container(
                height: mapHeight,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Stack(children: [
                  _getImage(selectedFloor),
                  const Positioned(
                      bottom: 170.2,
                      left: 170.2,
                      child: Icon(Icons.navigation, size: 25)),
                ]),
              ),
              const Divider(height: 20, color: Color.fromARGB(0, 0, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 198, 38, 38),
                      heroTag: "btn1",
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpecificScreen(
                                        category: 'Bathrooms',
                                      )));
                        });
                      },
                      child: const Icon(
                        Icons.wc,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const Divider(
                        height: 10, color: Color.fromARGB(0, 0, 0, 0)),
                    const Text("Bathrooms")
                  ]),
                  Column(children: [
                    FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 198, 38, 38),
                      heroTag: "btn2",
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpecificScreen(
                                        category: 'Stairs & Elevators',
                                      )));
                        });
                      },
                      child: const Icon(
                        Icons.stairs_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const Divider(
                        height: 10, color: Color.fromARGB(0, 0, 0, 0)),
                    const Text("Stairs")
                  ]),
                  Column(children: [
                    FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 198, 38, 38),
                      heroTag: "btn3",
                      onPressed: () {
                        setState(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpecificScreen(
                                        category: 'Exits',
                                      )));
                        });
                      },
                      child: const Icon(
                        Icons.door_back_door_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const Divider(
                        height: 10, color: Color.fromARGB(0, 0, 0, 0)),
                    const Text("Exits")
                  ]),
                ],
              ),
            ]));
  }
}
