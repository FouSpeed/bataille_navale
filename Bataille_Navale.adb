package body Bataille_Navale is
   
   function Adversaire (C : Camp) return Camp is
   begin
      if C = Humain then
         return Ordinateur;
      else 
         return Humain;
      end if;
   end Adversaire;

end Bataille_Navale;