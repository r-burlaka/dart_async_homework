
void main () async {
  String roky;
  roky = await fetchAge ();
  int vik = int.parse(roky);
  if  (vik == 1) { print ('Мій вік $vik років');}
   else if ( 2 <= vik && vik <= 4) {print ('Мій вік $vik роки');}
    else if ( vik % 100 >= 11 && vik % 100 <= 14) {print ('Мій вік $vik років');} 
    else if (vik % 10 == 1) {print ('Мій вік $vik рік');}
     else if (vik % 10 == 2 || vik % 10 == 3 || vik % 10 == 4) {print ('Мій вік $vik роки');}
      else {print ( 'Мій вік $vik років');}
  
  }

Future<String> fetchAge() async { 
  await Future.delayed(Duration(milliseconds: 1500));  
  return ('25');
 }