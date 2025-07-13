import 'dart:async';

void main() async {
  final stream = Stream.periodic(
    Duration(seconds: 1),
    (index) => index + 1,
  ).take(10);

  await for (final value in stream) {
    print('$value...');
  }
}