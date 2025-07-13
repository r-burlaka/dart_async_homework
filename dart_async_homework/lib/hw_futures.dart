import 'dart:async';

Future<String> delayedCountdown(int seconds) async {
  for (int i = seconds; i > 0; i--) {
    print('$i...');
    await Future.delayed(Duration(seconds: 1));
  }
  return 'Старт!';
}

void main() async {
  String result = await delayedCountdown(3);
  print(result);
}