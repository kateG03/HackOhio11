// Import the test package and Counter class
import 'package:my_indoor_nav/logic/messy_tree.dart';
import 'package:test/test.dart';

void main() {
  test('help me', () {
    
    final messyTree = MessyTree();
    final messyNode = MessyNode(latitude: 1, longitude: 1);
    final messyNode2 = MessyNode(latitude: 2, longitude: 2);
    messyNode.addConnection(messyNode2);

    expect(1, 1);
  });
}