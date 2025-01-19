// Challenge 1: Print in Reverse
//  Create a function that prints the nodes of a linked list in reverse order.
import '../stack/myStack.dart';

class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
}

void print_in_reverse<T>(Node<T>? node) {
  final stack = Stack<T>();
  while (node != null) {
    stack.push(node.value);
    node = node.next;
  }
  while (!stack.isEmpty()) {
    print(stack.pop());
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
          value: 4,
          next: Node<int>(
            value: 5,
            next: null,
          ),
        ),
      ),
    ),
  );

  print_in_reverse(node);
}
