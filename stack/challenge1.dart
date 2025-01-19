// this challenge one : reverse a list by using stack data structure but i no found as built in  class so i will implement it as a class

import 'myStack.dart';

void print_the_list(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}

void main() {
  final stack = Stack<int>(); // the main
  final reversedList = <int>[];

  // i do it static to 5 elements
  for (int i = 0; i < 5; i++) {
    stack.push(i);
  }
  // and i will print the list before reversing
  print("before reversing the list");
  print_the_list(stack.storage);
  for (int i = 0; i < 5; i++) {
    reversedList.add(stack.pop());
  }

  print("----------------------------\n after reversing the list");

  print_the_list(reversedList);
}
