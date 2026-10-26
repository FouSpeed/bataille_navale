package Bataille_Navale is

   Taille : constant := 10;

   subtype Ligne is Character range 'A' .. 'J';
   subtype Colonne is Positive range 1 .. Taille;
   
   type Coordonnee is record
      L : Ligne;
      C : Colonne;
   end record;

   type Type_Navire is 
      (Porte_Avions,
      Croiseur,
      Contre_Torpilleur,
      Sous_Marin,
      Torpilleur);
   type Orientation is (Horizontale, Verticale);
   subtype Longueur_Navire is Positive range 2 .. 5;
   
   Longueur : constant array (Type_Navire) of Longueur_Navire := (
      Porte_Avions => 5,
      Croiseur => 4,
      Contre_Torpilleur => 3,
      Sous_Marin => 3,
      Torpilleur => 2
   ); 
   
   type Camp is (Humain, Ordinateur);
   
   function Adversaire (C : Camp) return Camp;

end Bataille_Navale;

