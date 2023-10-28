//List<String> directions = <String>[];
//directions.insert("Go from")

class RoomNode {
String name;
String? number;
//Position position;
double latitude;
double longitude;

  RoomNode({required this.name, this.number, required this.latitude, required this.longitude});

}

RoomNode sloopy = RoomNode(
  name: "Sloopy's Diner", 
  latitude: 39.997466, 
  longitude: -83.008996
);

RoomNode archie = RoomNode(
  name: "Archie M. Griffin Grand Ballroom", 
  latitude: 39.997853, 
  longitude: -83.008483
);

RoomNode entrance = RoomNode(
  name: "Ohio Union Entrance", 
  latitude: 39.997593, 
  longitude: -83.008965
);

RoomNode unionMarket = RoomNode(
  name: "Union Market", 
  latitude: 39.997715, 
  longitude: -83.008872
);


//var rooms = new Map();
//rooms[1050]="Performance Hall";
 