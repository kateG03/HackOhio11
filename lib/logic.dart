import 'package:geolocator/geolocator.dart';
//List<String> directions = <String>[];
//directions.insert("Go from")

class RoomNode
{
final String name;
final int number;
final Position position;

  RoomNode({required this.name, required this.number});

}

var rooms = new Map();
rooms[1050]="Performance Hall";
 