/* sharing bill among friends
      divide bill among friends total is 53
      


Public Class bill
{
integer costper1piece = 8;
integer costlessthan3piece = 7;
integer costgreaterthan3piece = 6;
Integer eachpersonbill ;

Public Integer Billpaidbyeachperson(integer noofpieces){
   if(noofpieces ==1){
     eachpersonbill = noofpieces *costper1piece;
       System.debug(eachpersonbill);
     }
     
    if(noofpieces ==3){
     eachpersonbill = noofpieces *costlessthan3piece ;
         System.debug(eachpersonbill);
      }
      
      
     if(noofpieces >3){
     eachpersonbill = noofpieces *costgreaterthan3piece;
          System.debug(eachpersonbill);
     }
 return noofpieces;
      
} 

 


}

*/
/*
 Fitness Class
  Check Status of person
  */




public class Fitnessofperson {


Decimal BWM;
Decimal pace;

Public Decimal Bwmofperson(Decimal weight , Decimal height) {
    BWM =  weight / (height * height);
    
     Return BWM;
  }
Public Decimal paceofperson(Decimal kilometers , Decimal minutes) {
     kilometers = kilometers ;
     minutes = minutes / 60;
    pace =  (kilometers / minutes);
  
     Return  pace;
  }

    
}