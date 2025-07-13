void main() async { 
  var paralelno = await Future.wait ([fetchName(), fetchAge()]);
  final stopwatch = Stopwatch();
  stopwatch.start(); 
  String myName = await fetchName();
  print(stopwatch.elapsedMilliseconds);
  stopwatch.stop();
  print('Мене звати - $myName');

  String roky;
  stopwatch.reset();
  stopwatch.start();  
  roky = await fetchAge ();
  print(stopwatch.elapsedMilliseconds);
  stopwatch.stop(); 
  int vik = int.parse(roky);
  if  (vik == 1) { print ('Мій вік $vik років');}
   else if ( 2 <= vik && vik <= 4) {print ('Мій вік $vik роки');}
    else if ( vik % 100 >= 11 && vik % 100 <= 14) {print ('Мій вік $vik років');} 
    else if (vik % 10 == 1) {print ('Мій вік $vik рік');}
     else if (vik % 10 == 2 || vik % 10 == 3 || vik % 10 == 4) {print ('Мій вік $vik роки');}
      else {print ( 'Мій вік $vik років');}
  
}

Future<String> fetchName() async {
  await Future.delayed(Duration(seconds: 2));
  return 'Rostyslav';
}


Future<String> fetchAge() async { 
  await Future.delayed(Duration(milliseconds: 1500));  
  return ('25');
 }