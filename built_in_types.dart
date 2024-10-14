void main() {
  /// Numbers comes in two sub types (1) [int], (2) [double]
  int a = 10;
  double b = 10.0;
  print('int value $a');
  print('double value $b');

  /// we can declare variable with num type. but in this varible we can pass both value [int] and [double]
  num c = 10;
  c += 10.0;
  print('num value $c');

  // A [String] is a sequence of characters and Strings are enclosed in quotes (either single '...' or double "..." quotes).
  String name = 'Syed Abdul Samad Shah';
  String email = "syedsamadshah15@gmail.com";
  print(' Name: $name \n Email: $email');

  // Bolean type
  bool isMale = true;
  bool isFemale = false;
  print(' Male $isMale \n Female $isFemale');

  //Records Data Type in dart
  var record = (
    'first',
    a: 3,
    'second',
    b: true,
  );

  /// The return type of the function is also [Records] of the two integers, indecating that it will return another record with two integers
  /// This function expect a [Records] with two integer field in perameter
  (int, int) swap((int, int) record) {
    // the syntax of the [(a, b)] assign the first integer in the [record] to the  variable [a], and the second integer to the variable [b]
    // so if record was [(5, 8)], then [a] would be [5] and [b] would be [8] after this line executes
    var (a, b) = record;
    // this line creates a new [record] where the values of [a] and [b] are swapped,
    // instead of returning [(a, b)], it returns [(b, a)]
    // so if [a] was [5] and [b] was [8], the function will return [(8, 5)]
    return (b, a);
  }

  print("${record.$1} ${record.$2} ${record.a} ${record.b}");
  print('swapping value ${swap((3, 5))}');

  // Discover List
  // A [List] in dart is an ordered Collection of items
  List<int> anyListName = [1, 2, 4]; // integer type [List]
  // data type not defined and assign the different data type value like integer, string and more, in this case list type is dynamic e.g.
  List dynamicList = [
    1,
    'any data',
    true,
    1.0
  ]; // dynamic type [List], you can check type like this [ print(dynamicList.runtimeType) ]
  print("$anyListName, $dynamicList");

  // Discover Sets
  // A [set] in dart is an unordered collection of unique items.
  Set<String> names = {
    'Haris',
    'Afaq',
    'Ishaq',
  };
  names.add('Samad'); // we can add new value in sets
  var anyName = <String>{}; // creat a set
  var anySecond = {}; // Creates a dynamic type map, not a set.
  print('$names ${names.runtimeType} $anyName $anySecond');

  // Discover Maps
  /// A [Map] in dart is an collection of key-value pairs where each key is unique,
  /// we can use same value multiple time
  /// and both keys and values can be any type of object //[data type]
  Map<String, dynamic> data = {
    'name': 'Syed Abdul Samad Shah',
    'age': 3,
    'email': 'syedsamadshah15@gmail.com',
    'isDeveloper': true,
  };
  data['country'] = 'Pakistan'; // we can add new value in maps
  print(data);
}
