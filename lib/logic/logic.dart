//List<String> directions = <String>[];
//directions.insert("Go from")

import 'messy_tree.dart';

final List<double> northHighScreenPos = [330, 182];

final List<double> mainEntranceScreenPos = [95, 169];

class Room {
  String name;
  String? number;
  List<MessyNode> nodes;
//Position position;

  Room({required this.name, this.number, required this.nodes});
}

Room sloopy = Room(
    name: "Sloopy's Diner",
    nodes: [MessyNode(latitude: 39.997466, longitude: -83.008996)]);

Room archie = Room(
    name: "Archie M. Griffin Grand Ballroom",
    number: "2133",
    nodes: [MessyNode(latitude: 39.997853, longitude: -83.008483)]);

Room entrance = Room(
    name: "Ohio Union Entrance",
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);

Room frontEntrance = Room(
    name: "Front Entrance",
    nodes: [MessyNode(latitude: 39.9977124, longitude: -83.0090093)]);

Room highStreetEntrance = Room(
    name: "High Street Entrance",
    nodes: [MessyNode(latitude: 39.9976980, longitude: -83.0081285)]);

Room unionMarket = Room(
    name: "Union Market",
    nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);


//var rooms = new Map();
//rooms[1050]="Performance Hall";
 
