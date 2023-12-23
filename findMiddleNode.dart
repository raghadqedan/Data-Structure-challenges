class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  LinkedList(this.head);


  Node? findMiddleNode() {
    if (head == null) {
      return null;
    }

    Node? currentNode = head;
    Node? nextNode = head;

    while (nextNode != null && nextNode.next != null) {
      currentNode = currentNode!.next;
      nextNode = nextNode.next!.next;
    }

    return currentNode;
  }
}

void main() {
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

  Node? middNode = linkedList.findMiddleNode();

  if (middNode != null) {
    print("Middle Node: ${middNode.data}");
  } else {
    print("The linked list is empty.");
  }
}
