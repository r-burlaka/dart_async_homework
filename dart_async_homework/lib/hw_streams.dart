import 'dart:async';

void main() {
  final controller = StreamController<String>();

  controller.sink.add("Hello");
  controller.sink.add("World");
  controller.sink.add("Dart");

  controller.stream.listen(
    (value) {
      print(value);
    },
    onDone: () {
      print("Стрім завершено");
    },
  );

  controller.close();
}