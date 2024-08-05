import 'package:search_algorithmcha/search_algorithmcha.dart';

void main() {
  var dynamicSeacha = DynamicSearcha();

  // Sample data
  List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
  List<String> strList = ['apple', 'banana', 'cherry', 'date', 'fig', 'grape'];

  // Linear Search
  print('Linear Search Results:');
  print('Index of 7 in intList: ${dynamicSeacha.linearSearcha(intList, 7)}');
  print(
      'Index of 100 in intList: ${dynamicSeacha.linearSearcha(intList, 100)}');
  print(
      'Index of "date" in strList: ${dynamicSeacha.linearSearcha(strList, "date")}');
  print(
      'Index of "kiwi" in strList: ${dynamicSeacha.linearSearcha(strList, "kiwi")}');

  // Binary Search (requires sorted data)
  print('\nBinary Search Results:');
  List<String> sortedStrList = [
    'apple',
    'banana',
    'cherry',
    'date',
    'fig',
    'grape'
  ];
  print('Index of 7 in intList: ${dynamicSeacha.binarySearcha(intList, 7)}');
  print(
      'Index of 100 in intList: ${dynamicSeacha.binarySearcha(intList, 100)}');
  print(
      'Index of "date" in sortedStrList: ${dynamicSeacha.binarySearcha(sortedStrList, "date")}');
  print(
      'Index of "kiwi" in sortedStrList: ${dynamicSeacha.binarySearcha(sortedStrList, "kiwi")}');

  // Jump Search (requires sorted data)
  print('\nJump Search Results:');
  print('Index of 7 in intList: ${dynamicSeacha.jumpSearcha(intList, 7)}');
  print('Index of 100 in intList: ${dynamicSeacha.jumpSearcha(intList, 100)}');
  print(
      'Index of "date" in sortedStrList: ${dynamicSeacha.jumpSearcha(sortedStrList, "date")}');
  print(
      'Index of "kiwi" in sortedStrList: ${dynamicSeacha.jumpSearcha(sortedStrList, "kiwi")}');
}
