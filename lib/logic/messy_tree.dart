import 'package:geolocator/geolocator.dart';
import 'package:my_indoor_nav/logic/room.dart';

class MessyNode {
  var data = Null;
  double latitude;
  double longitude;
  List<MessyNode> connections = List.empty(growable: true);

  MessyNode({required this.latitude, required this.longitude});

  bool isConnected(MessyNode node) {
    return connections.contains(node);
  }

  void addConnection(MessyNode node) {
    connections.insert(0, node);
  }

  bool isEqual(MessyNode node) {
    return node.latitude == latitude && node.longitude == latitude;
  }
}

class MessyTree {
  MessyNode head = MessyNode(latitude: 0, longitude: 0);

  var graph = <MessyNode,Map<MessyNode,double>>{};

  void addNode(MessyNode node) {
    var temp = <MessyNode,double>{};
    for (MessyNode n in node.connections) {
      temp[n]=Geolocator.distanceBetween(node.latitude,node.longitude,n.latitude,n.longitude);
    }
    graph[node]=temp;
  }

  List<MessyNode> findShortestPath(MessyNode start, MessyNode end) {
    // Create a map to store the shortest distance from the start node to each node
    final distances = <MessyNode, double>{};
  
    // Create a map to store the previous node in the shortest path
    final previous = <MessyNode, MessyNode>{};
  
    // Create a set to store the unvisited nodes
    final unvisited = <MessyNode>{};

    // Initialize the distances and previous map
    for (final node in graph.keys) {
      distances[node] = double.infinity;
      previous[node] = MessyNode(latitude: 0, longitude: 0);
      unvisited.add(node);
    }
  
    // Set the distance of the start node to 0
    distances[start] = 0;
  
    // Loop until all nodes are visited
    while (unvisited.isNotEmpty) {
      // Find the node with the smallest distance
      final currentNode = unvisited.reduce((a, b) => distances[a]! < distances[b]! ? a : b);
  
      // Remove the current node from the unvisited set
      unvisited.remove(currentNode);
  
      // Stop the loop if the current node is the end node
      if (currentNode == end) {
        break;
      }
  
      // Update the distances of the adjacent nodes
      for (final neighbor in graph[currentNode]!.keys) {
        final distance = graph[currentNode]![neighbor];
        final totalDistance = distances[currentNode]! + distance!;
  
        if (totalDistance < distances[neighbor]!) {
          distances[neighbor] = totalDistance;
          previous[neighbor] = currentNode;
        }
      }
    }
  
    // Check if there is a path between the start and end node
    if (previous[end] == null) {
      throw StateError('There is no path between the start and end node.');
    }
  
    // Reconstruct the shortest path
    final path = <MessyNode>[];
    var currentNode = end;
  
    while (!currentNode.isEqual(MessyNode(latitude: 0, longitude: 0))) {
      path.insert(0, currentNode);
      currentNode = previous[currentNode]!;
    }
  
    return path;
  }
}

class FirstFloor {
MessyNode traversal1 = MessyNode(latitude: 39.9976644, longitude: -83.0088490);
MessyNode traversal2 = MessyNode(latitude: 39.9976115, longitude: -83.0085966);
MessyNode traversal3 = MessyNode(latitude: 39.9976521, longitude: -83.0084008);
MessyNode traversal4 = MessyNode(latitude: 39.9977759, longitude: -83.0082341);
MessyNode traversal5 = MessyNode(latitude: 39.9979924, longitude: -83.0082703);

Room sloopy = Room(
  name: "Sloopy's Diner",
  nodes: [MessyNode(latitude: 39.99736, longitude: -83.00898)]);
Room unionMarket = Room(
  name: "Union Market",
  nodes: [MessyNode(latitude: 39.99783, longitude: -83.00891)]);
Room woodyRoom = Room(
  name: "Woody's Tavern",
  nodes: [MessyNode(latitude: 39.99776, longitude: -83.008871)]);
Room infoCenter = Room(
  name: "Information Center",
  nodes: [MessyNode(latitude: 39.99756, longitude: -83.00830)]);
Room alumniAssociation = Room(
  name: "The Ohio State University Alumni Association",
  nodes: [MessyNode(latitude: 39.99756, longitude: -83.00830)]);
Room meetingRoom = Room(
  name: "Great Hall Meeting Room",
  nodes: [MessyNode(latitude: 39.99786, longitude: -83.00843)]);
Room safetyRoom = Room(
  name: "OSU Public Safety",
  nodes: [MessyNode(latitude: 39.99795, longitude: -83.00821)]);
Room bookRoom = Room(
  name: "The Ohio State University Bookstore",
  nodes: [MessyNode(latitude: 39.99786, longitude: -83.00820)]);

MessyTree firstFloor

traversal1.addConnection(traversal2);

}