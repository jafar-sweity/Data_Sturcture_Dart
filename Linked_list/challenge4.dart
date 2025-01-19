// Challenge 4: Remove All Occurrences 
//  Create a function that removes all occurrences of a specific element from a linked list. The implementation is similar to the removeAfter method that you implemented earlier.

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

void remove_all_occurrences<T>(Node<T> head, T value) {
  Node<T>? currentHead = head;
  while (currentHead != null) {
    if (currentHead.next != null && currentHead.next!.value == value) {
      currentHead.next = currentHead.next!.next;
    } else {
      currentHead = currentHead.next;
    }
  }
}

void main() {
  final node = Node<int>(
    value: 1,
    next: Node<int>(
      value: 2,
      next: Node<int>(
        value: 3,
        next: Node<int>(
          value: 2,
          next: Node<int>(
            value: 5,
            next: null,
          ),
        ),
      ),
    ),
  );

  remove_all_occurrences(node, 2);
  Node<int>? currentNode = node;
  while (currentNode != null) {
    print(currentNode.value);
    currentNode = currentNode.next;
  }
}