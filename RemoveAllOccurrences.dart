class Node {
  int data;
  Node? next;

  Node(this.data, [this.next]);
}

class LinkedList {
  Node? head;

  LinkedList(this.head);

  void removeAllOccurrences(int target) {
    Node? current = head;
    Node? prev = null;

    while (current != null) {
      if (current.data == target) {
        if (prev == null) {
          head = current.next;
        } else {
          // Remove the node by updating the next reference of the previous node
          prev.next = current.next;
        }
      } else {
        prev = current;
      }

      current = current.next;
    }
  }

  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  // Create a sample linked list
  Node node1 = Node(1);
  Node node2 = Node(2);
  Node node3 = Node(3);
  Node node4 = Node(2);
  Node node5 = Node(4);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  node4.next = node5;

  LinkedList linkedList = LinkedList(node1);

  print("Original Linked List:");
  linkedList.printList();

  linkedList.removeAllOccurrences(2);

  print("\nLinked List after Removing Occurrences of 2:");
  linkedList.printList();
}
