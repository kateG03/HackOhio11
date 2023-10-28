class MessyNode {
  var Data;
  List<MessyNode> Connections;

  bool isConnected(MessyNode node) {
    return Connections.contains(node);
  }
}

class MessyTree {
  
}