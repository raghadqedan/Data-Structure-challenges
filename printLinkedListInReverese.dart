
class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  LinkedList(this.head);


  void printReverse() {
    _printReverseRecursive(head);
  }

  void _printReverseRecursive(Node? node) {
    if (node == null) {
      return;
    }

    _printReverseRecursive(node.next);

    print(node.data);
  }
}

void main() {
  // Create a sample linked list
  Node node1 = Node(1);
  Node node2 = Node(2);
  Node node3 = Node(3);
  Node node4 = Node(4);
  Node node5 = Node(5);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  LinkedList linkedList = LinkedList(node1);

  print("linked list  in reverse :");
  linkedList.printReverse();
}