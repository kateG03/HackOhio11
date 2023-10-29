//List<String> directions = <String>[];
//directions.insert("Go from")

import 'messy_tree.dart';

class Room {
  String name;
  String? number;
  List<MessyNode> nodes;
//Position position;

  Room({required this.name, this.number, required this.nodes});
}

class RoomList {

  List<Room> roomList = [];
  //Basement
  Room cowRoom = Room(
      name: "Maudine Cow Room",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
      roomList.add(dynamic cowRoom);

  Room creativeRoom = Room(
      name: "Creative Arts Room",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

  Room mileRoom = Room(
      name: "Milestones Room",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

  Room danceRoom1 = Room(
      name: "Dance Room 1",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

  Room danceRoom2 = Room(
      name: "Dance Room 2",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

  Room kitchenRoom = Room(
      name: "Instructional Kitchen",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

  Room lowerLoungeRoom = Room(
      name: "Lower Level Lounge",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
      //------------------------------------------------------------------------
  //First floor

  Room safetyRoom = Room(
      name: "OSU Public Safety",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room bookRoom = Room(
      name: "The Ohio State University Bookstore",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
      
  Room unionMarket = Room(
      name: "Union Market",
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

Room sloopy = Room(
    name: "Sloopy's Diner",
    nodes: [MessyNode(latitude: 39.997466, longitude: -83.008996)]);
//------------------------------------------------------------------------
//Second floor
Room entrance = Room(
    name: "Ohio Union Entrance",
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);

Room archie = Room(
    name: "Archie M. Griffin Grand Ballroom",
    number: "2133",
    nodes: [MessyNode(latitude: 39.997853, longitude: -83.008483)]);
//------------------------------------------------------------------------
  //Third floor

}
//var rooms = new Map();
//rooms[1050]="Performance Hall";
 