// this challenge two : Balance the Parentheses
//Check for balanced parentheses. Given a string, check if there are ( and ) characters, and return true if the parentheses in the string are balanced.

import 'myStack.dart';

bool balanced(String str) {
  final stack = Stack<String>();

  bool isb = true;

  for (String x in str.split('')) {
    if (x == '(' || x == '[' || x == '{') {
      stack.push(x);
    } else {
      if (stack.storage.isEmpty) {
        isb = false;
        break;
      }
      String poped = stack.pop();
      if (x == ')' && poped != '(') {
        isb = false;
      } else if (x == ']' && poped != '[') {
        isb = false;
      } else if (x == '}' && poped != '{') {
        isb = false;
      }
    }
  }
  return isb;
}

void main() {
  final str = "({})"; // here no problem to put the string you want
  print(balanced(str));
}
