program allumett;
//BUT :
//ENTREE :
//SORTIE :
uses crt;
VAR allum, retrait : integer;
CONST 	depart=20;
		fin=0;
		un=1;
		deux=2;
		trois=3;
		quatre=4;

BEGIN
	clrscr;
	randomize;
	WRITEln ('Le jeu commence avec ',depart,' allumettes, vous pouvez en retirer une, deux ou trois a votre tour, celui qui prend la derniere allumette gagne. Le joueur 1 commence.');
	(allum):=(depart);
	(retrait):=(fin);
	WHILE((allum)>(fin))DO
	BEGIN
		WRITEln ('Joueur, combien d''allumettes retirez vous ?');
			READln(retrait);
			WHILE((retrait<un) AND (retrait>trois))DO
			BEGIN
				WRITEln('Veuillez entrer une valeur correct comprise entre un, deux ou trois.');
				READln(retrait);
            END;
			allum:=(allum-retrait);
			IF(allum<=fin)THEN
			BEGIN
				WRITEln('L ordinateur gagne.');
			END
			ELSE
			BEGIN
				WRITEln ('Il reste ', allum,' allumettes, au tour de l''ordinateur.');
			END;
		IF (allum>fin) THEN
		BEGIN
			WRITEln('Au tour de l''ordinateur.');
			retrait:=fin;
			CASE(allum MOD quatre)OF
				fin : retrait:=trois;
				un : retrait:=(random(trois)+un);
				deux : retrait:=un;
				trois : retrait:=deux;
			END;
			allum:=(allum-retrait);
			WRITEln ('L''ordinateur retire ',retrait,' allumettes.');
			IF(allum<=fin)THEN
			BEGIN
				WRITEln ('Le joueur gagne.')
			END
			ELSE
			BEGIN
				WRITEln ('Il reste ', allum,' allumettes, au tour du joueur.')
			END;
		END;
	END;
        READln;
END.
