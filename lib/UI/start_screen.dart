import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class StartScreen extends StatefulWidget {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  QRViewController? controller;
  String dropdownValue = "Option 1";

  StartScreen({super.key});

  @override
  State<StatefulWidget> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner & Searchable Dropdown'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 300, // Adjust the height as needed
            child: QRView(
              key: qrKey,
              onQRViewCreated: (controller) {
                this.controller = controller;
                controller.scannedDataStream.listen((scanData) {
                  // Handle scanned QR code data
                });
              },
            ),
          ),
          SearchableDropdown.single(
            items: ["Option 1", "Option 2", "Option 3"],
            value: dropdownValue,
            hint: "Select an option",
            onChanged: (value) {
              setState(() {
                dropdownValue = value;
              });
            },
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text("Item 1"),
                  onTap: () {
                    // Handle item selection
                  },
                ),
                ListTile(
                  title: Text("Item 2"),
                  onTap: () {
                    // Handle item selection
                  },
                ),
                // Add more list items as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}
