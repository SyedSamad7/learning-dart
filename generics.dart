void main() {
  ExampleWithOutGenerics pair =
      ExampleWithOutGenerics(first: 2, second: 'second');
  ExampleOfGenerics<bool, double> pair2 = ExampleOfGenerics(true, 2.4);
  ExampleOfGenerics pairs3 = ExampleOfGenerics('2', 5);
  pair.display(); // Output: First: 1, Second: One
  pair2.display(); // Output: First: true, Second: 2.4
  pairs3.display();
}

class ExampleWithOutGenerics {
  int first;
  String second;

  ExampleWithOutGenerics({required this.first, required this.second});

  void display() {
    print('First: $first, Second: $second');
  }
}

class ExampleOfGenerics<T, S> {
  T first;
  S second;

  ExampleOfGenerics(this.first, this.second);

  void display() {
    print('First: $first, Second: $second');
    print('${first.runtimeType} ${second.runtimeType}');
  }
}


// ExampleOfGenerics<int, String> pair = ExampleOfGenerics(1, 'One');
//   ExampleOfGenerics<bool, double> pair2 = ExampleOfGenerics(true, 2.4);
//   ExampleOfGenerics pairs3 = ExampleOfGenerics('2', 5);
//   pair.display(); // Output: First: 1, Second: One
//   pair2.display(); // Output: First: true, Second: 2.4
//   pairs3.display();