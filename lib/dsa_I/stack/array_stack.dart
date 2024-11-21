///Stack
///
/// Basic Operations : Push, Pop, Peek, IsEmpty, IsFull
class ArrayStack<T> {
  /// [stack]
  List<T?> _stack = [];

  /// [_count] is the number of elements in the stack
  int _count = 0;

  /// [_size] of stack
  int _size = 0;

  // Init the array stack
  ArrayStack(int size) {
    this._size = size;
    this._stack = List<T?>.filled(_size, null);
  }

  bool  isFull() => (_count == _size) ? true : false;
  bool  isEmpty() => (_count == 0) ? true : false;

  /// Push a item to the stack of type [T] to the [_stack]
  /// if the size is excedded the element wont be added.
  void push(T item) {
    if (isEmpty()) {
      return;
    }
    _stack[_count] = item;
    _count++;
  }
}
