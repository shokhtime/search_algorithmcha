import 'package:search_algorithmcha/search_algorithmcha.dart';
import 'package:test/test.dart';

void main() {
  group("DynamicSearcha Tests", () {
    late DynamicSearcha<int> intSearches;
    late DynamicSearcha<String> strSearches;
    List<int> intList = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
    List<String> strList = [
      "apple",
      "banana",
      "cherry",
      "date",
      "fig",
      "grape"
    ];

    setUp(() {
      intSearches = DynamicSearcha<int>();
      strSearches = DynamicSearcha<String>();
    });

    //! test in linear search for int
    test("Linear Search Test for int list", () {
      expect(intSearches.linearSearcha(intList, 7), equals(3));
      expect(intSearches.linearSearcha(intList, 100), equals(-1));
    });

    //! test in linear search for str
    test("Linear Search Test for string list", () {
      expect(strSearches.linearSearcha(strList, 'date'), equals(3));
      expect(strSearches.linearSearcha(strList, 'kiwi'), equals(-1));
    });

    //! test in binary search for int
    test("Binary Search Test for int list", () {
      expect(intSearches.binarySearcha(intList, 7), equals(3));
      expect(intSearches.binarySearcha(intList, 100), equals(-1));
    });

    //! test in binary search for str
    test("Binary Search Test for string list", () {
      List<String> sortedStrList = [
        "apple",
        "banana",
        "cherry",
        "date",
        "fig",
        "grape"
      ];
      expect(strSearches.binarySearcha(sortedStrList, 'date'), equals(3));
      expect(strSearches.binarySearcha(sortedStrList, 'kiwi'), equals(-1));
    });

    //! test in jump search for int
    test("Jump Search Test for int list", () {
      expect(intSearches.jumpSearcha(intList, 9), equals(4));
      expect(intSearches.jumpSearcha(intList, 777), equals(-1));
    });

    //! test in jump search for str
    test("Jump Search Test for string list", () {
      List<String> sortedStrList = [
        "apple",
        "banana",
        "cherry",
        "date",
        "fig",
        "grape"
      ];
      expect(strSearches.jumpSearcha(sortedStrList, "banana"), equals(1));
      expect(strSearches.jumpSearcha(sortedStrList, "kiwi"), equals(-1));
    });
  });
}
