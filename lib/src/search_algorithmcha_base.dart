import 'dart:math';

class DynamicSearcha<T> {
  int linearSearcha(List<T> data, T target) {
    final stopwatch = Stopwatch()..start();
    for (var i = 0; i < data.length; i++) {
      if (data[i] == target) {
        stopwatch.stop();
        print(
            "Linear Search took ${stopwatch.elapsedMicroseconds} microseconds");
        return i;
      }
    }
    stopwatch.stop();
    print("Linear Search took ${stopwatch.elapsedMicroseconds} microseconds");
    return -1;
  }

  int binarySearcha(List<T> data, T target) {
    final stopWatch = Stopwatch()..start();
    int left = 0;
    int right = data.length - 1;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;

      if (data[mid] == target) {
        stopWatch.stop();
        print(
            "Binary Search took ${stopWatch.elapsedMicroseconds} microseconds");
        return mid;
      } else if ((data[mid] as Comparable).compareTo(target) < 0) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    stopWatch.stop();
    print("Binary Search took ${stopWatch.elapsedMicroseconds} microseconds");
    return -1;
  }

  int jumpSearcha(List<T> data, T target) {
    final stopWatch = Stopwatch()..start();
    int n = data.length;
    int step = sqrt(n).toInt();
    int prev = 0;

    // Finding the block where the element is present
    while ((data[min(step, n) - 1] as Comparable).compareTo(target) < 0) {
      prev = step;
      step += sqrt(n).toInt();
      if (prev >= n) {
        stopWatch.stop();
        print("Jump Search took ${stopWatch.elapsedMicroseconds} microseconds");
        return -1;
      }
    }

    // Doing a linear search for target in the block starting with prev
    while ((data[prev] as Comparable).compareTo(target) < 0) {
      prev++;
      if (prev == min(step, n)) {
        stopWatch.stop();
        print("Jump Search took ${stopWatch.elapsedMicroseconds} microseconds");
        return -1;
      }
    }

    // If the element is found
    if (data[prev] == target) {
      stopWatch.stop();
      print("Jump Search took ${stopWatch.elapsedMicroseconds} microseconds");
      return prev;
    }

    stopWatch.stop();
    print("Jump Search took ${stopWatch.elapsedMicroseconds} microseconds");
    return -1;
  }
}
