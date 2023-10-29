import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:my_indoor_nav/UI/search_screen2.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class StartScreen extends StatefulWidget {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  final String dropdownValue = "Option 1";

  StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  String searchValue = '';
  @override
  Widget build(BuildContext context) {
    log("opening...");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Building:', style: TextStyle(fontSize: 18)),
        backgroundColor: const Color.fromARGB(255, 97, 96, 93),
      ),
      body: Column(
        children: <Widget>[
          const Divider(
            height: 80,
            color: Color.fromARGB(0, 0, 0, 0),
          ),
          SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                DropdownMenu(
                  leadingIcon: const Icon(Icons.search),
                  dropdownMenuEntries: const [
                    DropdownMenuEntry(value: 0, label: "The Ohio State Union")
                  ],
                  onSelected: (value) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FloatingActionButtonExampleApp()));
                  },
                ),
              ])),
          const Divider(
            height: 80,
            color: Color.fromARGB(0, 0, 0, 0),
          ),
          const Text("or",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              textScaleFactor: 3),
          const Divider(
            height: 10,
            color: Color.fromARGB(0, 0, 0, 0),
          ),
          const Text("Scan QR code below:",
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              textScaleFactor: 1.5),
          const Divider(
            height: 120,
            color: Color.fromARGB(0, 0, 0, 0),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(
                    255, 198, 36, 36), // background (button) color
                foregroundColor: Colors.white, // foreground (text) color
                fixedSize: const Size.fromRadius(50),
                shape: const CircleBorder()),
            child: const Icon(
              Icons.photo_camera,
              size: 50,
            ),
          )
        ],
      ),
    );
  }

}
