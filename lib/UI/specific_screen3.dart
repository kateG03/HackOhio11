import 'package:flutter/material.dart';

class SpecificScreen extends StatefulWidget {
  final String category;
  const SpecificScreen({super.key, required this.category});

  @override
  State<StatefulWidget> createState() => _SpecificScreenState();
}

class _SpecificScreenState extends State<SpecificScreen> {
  int a = 0;
  int r = 0;
  int g = 0;
  int b = 0;
  Color unselectedFloorColor = const Color.fromARGB(255, 97, 96, 93);
  Color selectedFloorColor = const Color.fromARGB(255, 198, 36, 36);
  Color badButtonColor = const Color.fromARGB(100, 97, 96, 93);
  int selectedFloor = 1;

  Widget _getHighlightedImage(int newPosition) {
    if (widget.category == "Bathrooms") {
      List<String> bathroomImages = <String>[
        "assets/OUBasementBWBATHROOMS.png",
        "assets/OUFloor1BWBATHROOMS.png",
        "assets/OUFloor2BWBATHROOMS.png",
        "assets/OUFloor3BWBATHROOMS.png"
      ];
      return InteractiveViewer(key: UniqueKey(), child: Image.asset(bathroomImages[newPosition]));
    } else if (widget.category == "Stairs & Elevators") {
      List<String> stairsImages = <String>[
        "assets/OUBasementBWSTAIRS.png",
        "assets/OUFloor1BWSTAIRS.png",
        "assets/OUFloor2BWSTAIRS.png",
        "assets/OUFloor3BWSTAIRS.png"
      ];
      return InteractiveViewer(key: UniqueKey(), child: Image.asset(stairsImages[newPosition]));
    } else {
      selectedFloor = 1;
      return InteractiveViewer(key: UniqueKey(), child: Image.asset("assets/OUFloor1BWEXIT.png"));
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.category == "Exits") {
      unselectedFloorColor = Color.fromARGB(100, 97, 96, 93);
    } else {
      unselectedFloorColor = const Color.fromARGB(255, 97, 96, 93);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(widget.category,
              style:
                  const TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
          backgroundColor: const Color.fromARGB(255, 198, 36, 36),
        ),
        body: Column(
            //mainAxisAlignment: MainAxisAlignment,
            children: [
              const Divider(
                height: 10,
                color: Color.fromARGB(0, 0, 0, 0),
              ),
              const Divider(height: 20, color: Color.fromARGB(0, 0, 0, 0)),
              const Text("Select the floor you are on currently: "),
              const Divider(height: 15, color: Color.fromARGB(0, 0, 0, 0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                      heroTag: "btn8",
                      onPressed: () {
                        widget.category != "Exits"
                            ? () {
                                setState(() {
                                  selectedFloor = 0;
                                });
                              }
                            : null;
                      },
                      backgroundColor: selectedFloor == 0
                          ? selectedFloorColor
                          : unselectedFloorColor,
                      child: const Text("B",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 20))),
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
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20)),
                  ),
                  FloatingActionButton(
                    heroTag: "btn6",
                    backgroundColor: selectedFloor == 2
                        ? selectedFloorColor
                        : unselectedFloorColor,
                    onPressed: widget.category != "Exits"
                        ? () {
                            setState(() {
                              selectedFloor = 2;
                            });
                          }
                        : null,
                    child: const Text("2",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20)),
                  ),
                  FloatingActionButton(
                    heroTag: "btn7",
                    backgroundColor: selectedFloor == 3
                        ? selectedFloorColor
                        : unselectedFloorColor,
                    onPressed: widget.category != "Exits"
                        ? () {
                            setState(() {
                              selectedFloor = 3;
                            });
                          }
                        : null,
                    child: const Text("3",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20)),
                  ),
                ],
              ),
              const Divider(height: 18, color: Color.fromARGB(0, 0, 0, 0)),
              Container(
                  height: 400,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  child: 
                   _getHighlightedImage(selectedFloor)),
              //color: const  Color.fromARGB(255, 255, 255, 255),
              //child: _getImage(selectedFloor)),
              const Divider(height: 40, color: Color.fromARGB(0, 0, 0, 0)),
              Container(
                  height: 121, color: const Color.fromARGB(255, 198, 36, 36))
            ]));
  }
}
