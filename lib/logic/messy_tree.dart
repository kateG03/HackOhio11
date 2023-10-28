class MessyNode {
  var data = Null;
  List<MessyNode> connections = List.empty(growable: true);

  bool isConnected(MessyNode node) {
    return connections.contains(node);
  }
}

class MessyTree {
  
}