import 'package:geolocator/geolocator.dart';

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

  List<MessyNode> test(MessyNode start, MessyNode end, MessyNode caller) {
    List<MessyNode> path = List.empty(growable: true);
    for (MessyNode n in start.connections) {
      if (n.isConnected(end) && !n.isEqual(caller)) {
        path.addAll(test(n, end, start));
      }
    }
    return path;
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
