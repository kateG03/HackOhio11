import 'package:geolocator/geolocator.dart';
//List<String> directions = <String>[];
//directions.insert("Go from")

class RoomNode {
String name;
String? number;
//Position position;
double longitude;
double latitude;

  RoomNode({required this.name, this.number, required this.longitude, required this.latitude});

}

RoomNode Sloopy = RoomNode(
  name: "Sloopy's Diner", 
  longitude: 39.997466, 
  latitude: -83.008996
);

RoomNode Archie = RoomNode(
  name: "Archie M. Griffin Grand Ballroom", 
  longitude: 39.997853, 
  latitude: -83.008483
);


//var rooms = new Map();
//rooms[1050]="Performance Hall";
 