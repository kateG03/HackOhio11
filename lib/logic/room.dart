//List<String> directions = <String>[];
//directions.insert("Go from")

import 'messy_tree.dart';

List<Room> roomList = [];

final List<double> northHighScreenPos = [330, 182];

final List<double> mainEntranceScreenPos = [95, 169];


class Room {
  String name;
  String? number;
  List<MessyNode> nodes;
//Position position;

  Room({required this.name, this.number, required this.nodes});
}

Room frontEntrance = Room(
    name: "Front Entrance",
    nodes: [MessyNode(latitude: 39.9977124, longitude: -83.0090093)]);

Room highStreetEntrance = Room(
    name: "High Street Entrance",
    nodes: [MessyNode(latitude: 39.9976980, longitude: -83.0081285)]);

class RoomList {
  void main() {
    //Basement
    Room cowRoom = Room(
        name: "Maudine Cow Room",
        nodes: [MessyNode(latitude: 39.997762, longitude: -83.00864)]);
    roomList.add(cowRoom);
    Room creativeRoom = Room(
        name: "Creative Arts Room",
        nodes: [MessyNode(latitude: 39.99791, longitude: -83.00890)]);
    Room mileRoom = Room(
        name: "Milestones Room",
        nodes: [MessyNode(latitude: 39.99753, longitude: -83.00916)]);

    Room danceRoom1 = Room(
        name: "Dance Room 1",
        nodes: [MessyNode(latitude: 39.99750, longitude: -83.00875)]);

    Room danceRoom2 = Room(
        name: "Dance Room 2",
        //FIXME
        nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

    Room kitchenRoom = Room(
        name: "Instructional Kitchen",
        nodes: [MessyNode(latitude: 39.99747, longitude: -83.00877)]);

    Room lowerLoungeRoom = Room(
        name: "Lower Level Lounge",
        //FIXME
        nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
    //------------------------------------------------------------------------
    //First floor
    Room entrance = Room(
        name: "Ohio Union Entrance",
        nodes: [MessyNode(latitude: 39.99761, longitude: -83.00894)]);

    Room safetyRoom = Room(
        name: "OSU Public Safety",
        nodes: [MessyNode(latitude: 39.99795, longitude: -83.00821)]);
    Room bookRoom = Room(
        name: "The Ohio State University Bookstore",
        nodes: [MessyNode(latitude: 39.99786, longitude: -83.00820)]);
    Room alsonsoRoom = Room(
        name: "Multicultural center/Alonso Family Room",
        nodes: [MessyNode(latitude: 39.99773, longitude: -83.00821)]);
    Room meetingRoom = Room(
        name: "Great Hall Meeting Room",
        nodes: [MessyNode(latitude: 39.99786, longitude: -83.00843)]);
    Room infoCenter = Room(
        name: "Information Center",
        nodes: [MessyNode(latitude: 39.99756, longitude: -83.00830)]);
    Room alumniAssociation = Room(
        name: "The Ohio State Unversity Alumni Association",
        nodes: [MessyNode(latitude: 39.99756, longitude: -83.00830)]);
    Room woodyRoom = Room(
        name: "Woody's Tavern",
        nodes: [MessyNode(latitude: 39.99776, longitude: -83.008871)]);
    Room performanceRoom = Room(
        name: "Performance Hall",
        //FIXME
        nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
    Room unionMarket = Room(
        name: "Union Market",
        nodes: [MessyNode(latitude: 39.99783, longitude: -83.00891)]);
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
        nodes: [MessyNode(latitude: 39.99795, longitude: -83.00923)]);
    Room sloopy = Room(
        name: "Sloopy's Diner",
        nodes: [MessyNode(latitude: 39.99736, longitude: -83.00898)]);
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
 