package Bataille_Navale is
   type Plateau is private;

   Taille : constant := 10;
   Placement_Invalide : exception;

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
   function Peut_Placer(P : Plateau; Navire : Type_Navire; coord : Coordonnee; O : Orientation ) return Boolean;
   

end Bataille_Navale;

