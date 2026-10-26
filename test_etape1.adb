with Ada.Text_IO; use Ada.Text_IO;
with Bataille_Navale; use Bataille_Navale;


procedure test_etape1 is
   Total : Integer := 0;
begin
   for Navire in Type_Navire loop
      Put_Line (Type_Navire'Image(Navire) & " : " & Integer'Image(Longueur(Navire)));
      Total := Total + Longueur(Navire);
   end loop;
   Put_Line (Integer'Image(Total));
   pragma Assert  (Adversaire (Humain) = Ordinateur);
   pragma Assert  (Adversaire (Ordinateur) = Humain);


end test_etape1;