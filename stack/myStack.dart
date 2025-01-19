class Stack<E> {
  Stack() : storage = <E>[];

  final List<E> storage;

  void push(E element) {
    storage.add(element);
  }

  E pop() {
    return storage.removeLast();
  }

  bool isEmpty() {
    return storage.isEmpty;
  }
}
