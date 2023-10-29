import 'package:flutter/material.dart';
import 'package:my_indoor_nav/UI/start_screen.dart';
import 'package:my_indoor_nav/logic/room.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyIndoorNav',
      theme: ThemeData.light(),
      home: const MyHomePage(title: 'MyIndoorNav'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void buffer() async {
    await RoomList().createRoomList();
  }

  
  @override
  void initState() {
    super.initState();
    buffer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 198, 36, 36),
        title: Text(widget.title),
      ),
      body: StartScreen(),
    );
  }
}
