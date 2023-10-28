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
}

class MessyTree {
  MessyNode head = MessyNode(latitude: 0, longitude: 0);

  List<MessyNode> getPath(MessyNode start, MessyNode end) {
    List<MessyNode> path = List.empty(growable: true);
    
    if (start.isConnected(end)) {
      path = [start, end];
    } else {
      for (MessyNode n in start.connections) {
        path = getPath(n, end);
        path.insert(0, start);
      }
    }
    return path;
  }
}
