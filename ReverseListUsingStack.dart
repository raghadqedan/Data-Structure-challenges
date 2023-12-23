void printInReverse<E>(List<E> list) {
  var stack = Stack<E>();

  for (E value in list) {
    stack.push(value);
  }

  while (!stack.isEmpty) {
    print(stack.pop());
  }
}

class Stack<E> {
  Stack() : _storage = <E>[];
  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  bool get isEmpty => _storage.isEmpty;
}

void main() {
  List<int> num = [1, 2, 3, 4, 5, 6];
  printInReverse(num);
}
