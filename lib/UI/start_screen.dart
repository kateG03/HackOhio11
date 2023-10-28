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
        title: const Text('Select the building to navigate:',
            style: TextStyle(fontSize: 18)),
      ),
      drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Drawer Header'),
        )
      ])),
      body: Column(
        children: <Widget>[
          SizedBox(
              height: 50,
              child: Expanded(
                child: DropdownMenu(
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
              )),
         
          ListTile(
              title: const Text('Item 2'), onTap: () => Navigator.pop(context)),
          Center(child: Text('Value: $searchValue')),
        ],
      ),
    );
  }
}
