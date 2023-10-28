import 'dart:developer';

import 'package:MyIndoorNav/UI/search_screen2.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: Color.fromARGB(255, 97, 96, 93),
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 235, 197, 95),
          ),
          child: Text('Drawer Header'),
        )
      ])),
      body: Column(
        children: <Widget>[
          Divider(height: 30),
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
