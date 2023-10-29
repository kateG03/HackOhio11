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

  var graph;

  void addNode(MessyNode node) {
    var temp;
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

  List<MessyNode> getPaths(MessyNode start, MessyNode end, MessyNode previous) {
    List<MessyNode> path = List.empty(growable: true);

    if (start.isConnected(end)) {
      path = [start, end];
    } else {
      for (MessyNode n in start.connections) {
        if (!n.isEqual(previous)) {
          path = getPaths(n, end, start);
          if (path.isNotEmpty) {
            path.insert(0, start);
          }
        }
      }
    }
    return path;
  }
}
