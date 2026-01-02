import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_basic/counter.dart';

void main() {
  group('Counter', () {
    test('Should start with 0', () {
      expect(Counter().value, 0);
    });

    test('Should increase by 1', () {
      final counter = Counter();

      counter.countUp();

      expect(counter.value, 1);
    });

    test('Should decrease by 1', () {
      final counter = Counter();

      counter.countDown();

      expect(counter.value, -1);
    });

    test('Should reset to 0', () {
      final counter = Counter();

      counter.countDown();
      counter.countDown();
      counter.countDown();

      counter.clear();

      expect(counter.value, 0);
    });
  });
}