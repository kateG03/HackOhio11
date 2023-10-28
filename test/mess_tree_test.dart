// Import the test package and Counter class
import 'package:my_indoor_nav/logic/messy_tree.dart';
import 'package:test/test.dart';

void main() {
  test('help me', () {
    final messyTree = MessyTree();

    final messyNode = MessyNode(latitude: 1, longitude: 1);
    final messyNode2 = MessyNode(latitude: 2, longitude: 2);
    final messyNode3 = MessyNode(latitude: 3, longitude: 3);
    final messyNode4 = MessyNode(latitude: 4, longitude: 4);
    final messyNode5 = MessyNode(latitude: 5, longitude: 5);
    //node one connections
    messyNode.addConnection(messyNode2);
    //node two connections
    messyNode2.addConnection(messyNode);
    messyNode2.addConnection(messyNode3);
    messyNode2.addConnection(messyNode4);
    //node three connections
    messyNode3.addConnection(messyNode2);
    messyNode3.addConnection(messyNode4);
    //node four connections
    messyNode4.addConnection(messyNode2);
    messyNode4.addConnection(messyNode3);
    messyNode4.addConnection(messyNode5);
    //node five connections
    messyNode5.addConnection(messyNode4);

    messyTree.head = messyNode;
    List<MessyNode> list = messyTree.getPaths(messyNode, messyNode5, messyNode);
    
    expect(1, 1);
  });
}
