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
  latitude: 39.997466, 
  longitude: -83.008996
);

RoomNode Archie = RoomNode(
  name: "Archie M. Griffin Grand Ballroom", 
  latitude: 39.997853, 
  longitude: -83.008483
);

RoomNode Entrance = RoomNode(
  name: "Ohio Union Entrance", 
  latitude: 39.997593, 
  longitude: -83.008965
);

RoomNode UnionMarket = RoomNode(
  name: "Union Market", 
  latitude: 39.997715, 
  longitude: -83.008872
);


//var rooms = new Map();
//rooms[1050]="Performance Hall";
 