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
   
   type Plateau is private;
   Placement_Invalide : exception;

   function Peut_Placer(P : Plateau; Navire : Type_Navire; origine : Coordonnee; sens : Orientation ) return Boolean;
   function Est_Place(P: Plateau; Navire: Type_Navire) return Boolean;
   function Flotte_Complete(P: Plateau) return Boolean;
   procedure Placer(P : in out Plateau; Navire : in Type_Navire; origine : in Coordonnee ; sens : in Orientation);


   private

   type Case_grille is record
      Occupee : Boolean := False;
      Navire : Type_Navire := Type_Navire'First;
   end record;
   
   type Grille is array (Ligne,Colonne) of Case_grille;

   type Etat_Navire is record
      Place : Boolean := False;
   end record;

   type Flotte is array (Type_Navire) of Etat_Navire;

   type Plateau is record
      Cases : Grille;
      Navires : Flotte;
   end record;


end Bataille_Navale;

