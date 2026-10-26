package body Bataille_Navale is
   
   function Adversaire (C : Camp) return Camp is
   begin
      if C = Humain then
         return Ordinateur;
      else 
         return Humain;
      end if;
   end Adversaire;

   function Est_Place(P: Plateau; Navire: Type_Navire) return Boolean is
      
end Bataille_Navale;