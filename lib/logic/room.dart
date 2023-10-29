//List<String> directions = <String>[];
//directions.insert("Go from")

// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'messy_tree.dart';

List<Room> roomList = [];
List<Room> extraList = [];

class Room {
  String name;
  String? number;
  List<MessyNode> nodes;
//Position position;

  Room({required this.name, this.number, required this.nodes});
}

// y - x
final List<double> northHighScreenPos = [175, 305];

Room highStreetEntrance = Room(
    name: "High Street Entrance",
    nodes: [MessyNode(latitude: 39.997688, longitude: -83.008107)]);

final List<double> mainEntranceScreenPos = [165, 75];




Room frontEntrance = Room(
    name: "Front Entrance",
    //39.9977124 - -83.0090093
    nodes: [MessyNode(latitude: 39.997629, longitude: -83.008958)]);

final List<double> thirdEntranceScreenPos = [20, 20];

Room thirdEntrance =
    Room(name: "3rd Entrance", nodes: [MessyNode(latitude: 39.9979736, longitude: -83.0093187)]);

final List<double> fourthEntranceScreenPos = [170, 303];

Room fourthEntrance =
    Room(name: "4th Entrance", nodes: [MessyNode(latitude: 39.9972596, longitude: -83.0086469)]);

class RoomList {
  Future<void> createRoomList() async {
    //Basement
    Room cowRoom = Room(
        name: "Maudine Cow Room",
        nodes: [MessyNode(latitude: 39.997762, longitude: -83.00864)]);
    roomList.add(cowRoom);
    Room creativeRoom = Room(
        name: "Creative Arts Room",
        nodes: [MessyNode(latitude: 39.99791, longitude: -83.00890)]);
    roomList.add(creativeRoom);
    Room mileRoom = Room(
        name: "Milestones Room",
        nodes: [MessyNode(latitude: 39.99753, longitude: -83.00916)]);
    roomList.add(mileRoom);
    Room danceRoom1 = Room(
        name: "Dance Room 1",
        nodes: [MessyNode(latitude: 39.99750, longitude: -83.00875)]);
    roomList.add(danceRoom1);
    Room danceRoom2 = Room(
        name: "Dance Room 2",
        //FIXME
        nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);

    Room kitchenRoom = Room(
        name: "Instructional Kitchen",
        nodes: [MessyNode(latitude: 39.99747, longitude: -83.00877)]);
    roomList.add(kitchenRoom);
    Room lowerLoungeRoom = Room(
        name: "Lower Level Lounge",
        //FIXME
        nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
    //------------------------------------------------------------------------
    //First floor
    Room entrance = Room(
        name: "Ohio Union Entrance",
        nodes: [MessyNode(latitude: 39.99761, longitude: -83.00894)]);
    roomList.add(entrance);
    Room safetyRoom = Room(
        name: "OSU Public Safety",
        nodes: [MessyNode(latitude: 39.99795, longitude: -83.00821)]);
    roomList.add(safetyRoom);
    Room bookRoom = Room(
        name: "The Ohio State University Bookstore",
        nodes: [MessyNode(latitude: 39.99786, longitude: -83.00820)]);
    roomList.add(bookRoom);
    Room alsonsoRoom = Room(
        name: "Multicultural center/Alonso Family Room",
        nodes: [MessyNode(latitude: 39.99773, longitude: -83.00821)]);
    roomList.add(alsonsoRoom);
    Room meetingRoom = Room(
        name: "Great Hall Meeting Room",
        nodes: [MessyNode(latitude: 39.99786, longitude: -83.00843)]);
    roomList.add(meetingRoom);
    Room infoCenter = Room(
        name: "Information Center",
        nodes: [MessyNode(latitude: 39.99756, longitude: -83.00830)]);
    roomList.add(infoCenter);
    Room alumniAssociation = Room(
        name: "The Ohio State University Alumni Association",
        nodes: [MessyNode(latitude: 39.99756, longitude: -83.00830)]);
    roomList.add(alumniAssociation);
    Room woodyRoom = Room(
        name: "Woody's Tavern",
        nodes: [MessyNode(latitude: 39.99776, longitude: -83.008871)]);
    roomList.add(woodyRoom);
    Room performanceRoom = Room(
        name: "Performance Hall",
        //FIXME
        nodes: [MessyNode(latitude: 39.997715, longitude: -83.008872)]);
    Room unionMarket = Room(
        name: "Union Market",
        nodes: [MessyNode(latitude: 39.99783, longitude: -83.00891)]);
    roomList.add(unionMarket);
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
        nodes: [MessyNode(latitude: 39.99795, longitude: -83.00923)]);
    roomList.add(espressRoom);
    Room sloopy = Room(
        name: "Sloopy's Diner",
        nodes: [MessyNode(latitude: 39.99736, longitude: -83.00898)]);
    roomList.add(sloopy);
//------------------------------------------------------------------------
//Second floor
    Room archie = Room(
        name: "Archie M. Griffin Grand Ballroom",
        number: "2131",
        nodes: [MessyNode(latitude: 39.9977404, longitude: -83.0087551)]);
    roomList.add(archie);
    Room dannyLounge = Room(
        name: "Danny Price Student Lounge",
        //FIXME
        nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
    Room adminRoom = Room(
        name: "Administrative Office Suite",
        number: "2008",
        nodes: [MessyNode(latitude: 39.9975891, longitude: -83.0081661)]);
    roomList.add(adminRoom);
    Room senateRoom = Room(
        name: "Senate Chamber",
        //FIXME
        nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
    Room traditionsRoom = Room(
        name: "Ohio Staters, INC. Traditions Room",
        number: "2120",
        nodes: [MessyNode(latitude: 39.9977825, longitude: -83.0089121)]);
    roomList.add(traditionsRoom);
    Room glassLounge = Room(
        name: "Glass Art Lounge",
        //FIXME
        nodes: [MessyNode(latitude: 39.997593, longitude: -83.008965)]);
    Room keithRoom = Room(
        name: "Keith B. Key Center For Student Leadership & Service",
        number: "2096",
        nodes: [MessyNode(latitude: 39.9974682, longitude: -83.0089888)]);
    roomList.add(keithRoom);
    Room studentAlumniRoom = Room(
        name: "Student-Alumni Council Room",
        number: "2154",
        nodes: [MessyNode(latitude: 39.9978814, longitude: -83.0092567)]);
    roomList.add(studentAlumniRoom);
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
        number: "3000",
        nodes: [MessyNode(latitude: 39.9976788, longitude: -83.0082274)]);
    roomList.add(sigmaRoom);
    Room undergraduateRoom = Room(
        name: "Undergraduate Admission Welcome Center",
        number: "3002",
        nodes: [MessyNode(latitude: 39.9976161, longitude: -83.0080940)]);
    roomList.add(undergraduateRoom);
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
        number: "3034",
        nodes: [MessyNode(latitude: 39.9976017, longitude: -83.0084306)]);
    roomList.add(officeRoom);
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
        number: "3140",
        nodes: [MessyNode(latitude: 39.9977201, longitude: -83.0088323)]);
    roomList.add(roundRoom);
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

    Room elevator = Room(
        name: "Elevator",
        nodes: [MessyNode(latitude: 39.9976857, longitude: -83.0086884)]);
    extraList.add(elevator);

    Room mainStairwell = Room(
        name: "Main Stairwell",
        nodes: [MessyNode(latitude: 39.9976179, longitude: -83.0087810)]);
    extraList.add(mainStairwell);

    Room backStairwell = Room(
        name: "Back Stairwell",
        nodes: [MessyNode(latitude: 39.9976549, longitude: -83.0089536)]);
    extraList.add(backStairwell);

      Room restrooms = Room(
        name: "Restrooms",
        nodes: [MessyNode(latitude: 39.9975686, longitude: -83.0087116)]);
    extraList.add(restrooms);

    log("Done setting up rooms! ${roomList.length}");
  }
}
