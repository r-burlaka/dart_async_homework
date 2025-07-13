import 'dart:async';

void main() async {
  final stream = Stream.fromIterable([1, 2, 3, 4, 5]).asBroadcastStream();

  // Варіант 1 — await for
  await for (final value in stream) {
    print(value);
  }

  // Варіант 2 — listen
  stream.listen((value) {
    print(value);
  });
}