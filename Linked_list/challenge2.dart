// Challenge 2: Find the Middle Node
// Create a function that finds the middle node of a linked list.

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

void main() {
  var node = Node<int>(
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

  int length = 0;
  Node<int>? currentNode = node;
  while (currentNode != null) {
    length++;
    currentNode = currentNode.next;
  }
  var middle = length ~/ 2;

  currentNode = node;
  for (int i = 0; i < middle; i++) {
    currentNode = currentNode!.next;
  }
  print(currentNode!.value);
}
