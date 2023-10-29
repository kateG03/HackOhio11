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

  void main()
  {

  List<Room> roomList = [];
  //Basement
  Room cowRoom = Room(
      name: "Maudine Cow Room",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
      roomList.add(cowRoom);

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
Room entrance = Room(
    name: "Ohio Union Entrance",
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);

  Room safetyRoom = Room(
      name: "OSU Public Safety",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room bookRoom = Room(
      name: "The Ohio State University Bookstore",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room alsonsoRoom = Room(
      name: "Alonso Family Room",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
   Room meetingRoom = Room(
      name: "Great Hall Meeting Room",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
      
  Room infoCenter = Room(
      name: "Information Center",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room alumniAssociation = Room(
      name: "The Ohio State Unversity Alumni Association",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room woodyRoom = Room(
      name: "Woody's Tavern",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room performanceRoom = Room(
      name: "Performance Hall",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room unionMarket = Room(
      name: "Union Market",
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room benLounge = Room(
      name: "Ben & Arlene Roth Lounge",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room bankTheater = Room(
      name: "US Bank Conference Theater",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room espressRoom = Room(
      name: "Espress-OH",
      //FIXME
      nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
  Room sloopy = Room(
    name: "Sloopy's Diner",
    nodes: [MessyNode(latitude: 39.997466, longitude: -83.008996)]);
//------------------------------------------------------------------------
//Second floor
Room archie = Room(
    name: "Archie M. Griffin Grand Ballroom",
    number: "2133",
    nodes: [MessyNode(latitude: 39.997853, longitude: -83.008483)]);
Room dannyLounge = Room(
    name: "Danny Price Student Lounge",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room adminRoom = Room(
    name: "Administrative Office Suite",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room senateRoom = Room(
    name: "Senate Chamber",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room traditionsRoom = Room(
    name: "Ohio Staters, INC. Traditions Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room glassLounge = Room(
    name: "Glass Art Lounge",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room keithRoom = Room(
    name: "Keith B. Key Center For Student Leadership & Service",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room studentAlumniRoom = Room(
    name: "Student-Alumni Council Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room sphinxRoom = Room(
    name: "Sphix Centennial Leadership Suite",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room foundersRoom = Room(
    name: "Ohio Staters, INC. Founders Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
//------------------------------------------------------------------------
//Third floor

Room sigmaRoom = Room(
    name: "Sigma Phi Epsilon Lounge",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room undergraduateRoom = Room(
    name: "Undergraduate Admission Welcome Center",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room interfaithRoom = Room(
    name: "Interfaith Prayer & Reflection Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room stanlenyRoom = Room(
    name: "Stanley D. Gottesegen Study Lounge",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room officeRoom = Room(
    name: "Office of the Senior Vice President for Student Life",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room willieRoom = Room(
    name: "Willie J. Younge, SR. Off-Campus & Commuter Student Engagement",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room buckIDRoom = Room(
    name: "BUCKID",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room brutusRoom = Room(
    name: "Brutus Buckeye Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room cartoonRoom = Room(
    name: "Cartoon Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room roundRoom = Room(
    name: "Round Meeting Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room keithKeyRoom = Room(
    name: "Keith B. Key Center for Student Leadership & Service",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room barbieRoom = Room(
    name: "Barbie Tootle Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room haysRoom = Room(
    name: "Hays Cape Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room tanyaRoom = Room(
    name: "Tanya Rutner Hartman Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room rosaRoom = Room(
    name: "Rosa M. Ailabouni",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
Room suzanneRoom = Room(
    name: "Suzanne M. Scharer Room",
    //FIXME
    nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);

}
}
//var rooms = new Map();
//rooms[1050]="Performance Hall";
 