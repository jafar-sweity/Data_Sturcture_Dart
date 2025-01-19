// Challenge 3: Reverse a Linked List
// Create a function that reverses a linked list. You do this by manipulating the nodes

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

Node<T>? reverse_linked_list<T>(Node<T> head) {
  Node<T>? node = null;
  Node<T>? currentHead = head;

  while (currentHead != null) {
    Node<T>? temp = currentHead.next;

    currentHead.next = node;

    node = currentHead;
    currentHead = temp;
  }
  return node;
}

void main() {
  final node = Node<int>(
    value: 1,
    next: Node<int>(
      value: 2,
      next: Node<int>(
        value: 3,
        next: Node<int>(
          value: 4,
          next: Node<int>(
            value: 5,
            next: null,
          ),
        ),
      ),
    ),
  );

  Node<int>? reversedNode = reverse_linked_list(node);
  while (reversedNode != null) {
    print(reversedNode.value);
    reversedNode = reversedNode.next;
  }
}
