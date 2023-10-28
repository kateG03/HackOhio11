import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:easy_search_bar/easy_search_bar.dart';

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
<<<<<<< HEAD
          
          const SearchBar(),
          
=======
          EasySearchBar(
            title: const Text('Where to?'),
            onSearch: (value) => setState(() => searchValue = value),
            actions: [
              IconButton(icon: const Icon(Icons.person), onPressed: () {})
            ],
          ),
>>>>>>> 00f407f7dee8f1d3f2aa82d10f59341e381cb882
          ListTile(
              title: const Text('The Ohio State Union'), onTap: () => Navigator.pop(context)),
          ListTile(
              title: const Text('Item 2'), onTap: () => Navigator.pop(context)),
          Center(child: Text('Value: $searchValue')),
          const Text("this was qr view"),
        ],
      ),
    );
  }
}
