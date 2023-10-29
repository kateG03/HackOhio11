// Import the test package and Counter class
import 'package:my_indoor_nav/logic/messy_tree.dart';
import 'package:test/test.dart';

void main() {
  test('help me', () {
    final messyTree = MessyTree();

    final messyNode1 = MessyNode(latitude: 1, longitude: 1);
    final messyNode2 = MessyNode(latitude: 1, longitude: 2);
    final messyNode3 = MessyNode(latitude: 2, longitude: 1.5);
    final messyNode4 = MessyNode(latitude: 2, longitude: 2);
    final messyNode5 = MessyNode(latitude: 2, longitude: 3);
    final messyNode6 = MessyNode(latitude: 3, longitude: 2);
    final messyNode7 = MessyNode(latitude: 3, longitude: 2.5);
    //node one connections
    messyNode1.addConnection(messyNode2);
    messyNode1.addConnection(messyNode3);
    //node two connections
    messyNode2.addConnection(messyNode1);
    messyNode2.addConnection(messyNode4);
    //node three connections
    messyNode3.addConnection(messyNode1);
    messyNode3.addConnection(messyNode4);
    messyNode3.addConnection(messyNode6);
    //node four connections
    messyNode4.addConnection(messyNode2);
    messyNode4.addConnection(messyNode3);
    messyNode4.addConnection(messyNode5);
    messyNode4.addConnection(messyNode6);
    //node five connections
    messyNode5.addConnection(messyNode4);
    messyNode5.addConnection(messyNode7);
    //node six connections
    messyNode6.addConnection(messyNode3);
    messyNode6.addConnection(messyNode4);
    messyNode6.addConnection(messyNode7);
    //node seven connections
    messyNode6.addConnection(messyNode5);
    messyNode6.addConnection(messyNode6);

    messyTree.addNode(messyNode1);
    messyTree.addNode(messyNode2);
    messyTree.addNode(messyNode3);
    messyTree.addNode(messyNode4);
    messyTree.addNode(messyNode5);
    messyTree.addNode(messyNode6);
    messyTree.addNode(messyNode7);

    List<MessyNode> list = messyTree.findShortestPath(messyNode1, messyNode7);

    expect(list.length, 4);
  });
}
