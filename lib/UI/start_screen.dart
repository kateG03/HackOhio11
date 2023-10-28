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
        title: const Text('QR Scanner & Searchable Dropdown'),
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
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const FloatingActionButtonExampleApp()));
                  },
                  child: const Icon(Icons.search)),
              const SearchBar(
                
              ),
            ],
          ),
          ListTile(
              title: const Text('The Ohio State Union'),
              onTap: () => Navigator.pop(context)),
          ListTile(
              title: const Text('Item 2'), onTap: () => Navigator.pop(context)),
          Center(child: Text('Value: $searchValue')),
        ],
      ),
    );
  }
}
