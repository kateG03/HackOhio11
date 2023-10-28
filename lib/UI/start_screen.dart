import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:my_indoor_nav/UI/search_screen2.dart';

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
          const Divider(height: 30),
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
        ],
      ),
    );
  }
}
