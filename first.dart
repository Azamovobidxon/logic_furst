void main() {
  int x = 89;
  int y = 23;
  int z = 105;
  int p = 0;
  
   if (x > y) {
     p = x;
   } else {
    p = y;
   } if (p < z) {
    p = z;
   }
  print('bu sonlar ichidan eng kattasi bu $p');

   int  p1 = x;

   if (p1 < y) {
     p1 = y;
   } else if(p1 < z) {
     p1 = z;
   } 
   print('little number $p1');

}


