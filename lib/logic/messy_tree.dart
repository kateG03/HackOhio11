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

  bool isEqual(MessyNode node){
    return node.latitude==latitude && node.longitude==latitude;
  }
}

class MessyTree {
  MessyNode head = MessyNode(latitude: 0, longitude: 0);

  List<MessyNode> getPaths(MessyNode start, MessyNode end, MessyNode previous) {
    List<MessyNode> path = List.empty(growable: true);
    
    if (start.isConnected(end)) {
      path = [start, end];
    } else {
      for (MessyNode n in start.connections) {
        if(!n.isEqual(previous)){
          path = getPaths(n, end, start);
          if(path.isNotEmpty){
            path.insert(0, start);
          }
        }
      }
    }
    return path;
  }
}
