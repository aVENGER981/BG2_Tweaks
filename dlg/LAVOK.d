REPLACE ~LAVOK~


IF WEIGHT #3 ~Global("LavokOutside","GLOBAL",1)
~ THEN BEGIN 28 // from:
  SAY #18738 /* ~Ah, le ciel, enfin... j'avais oublié sa couleur, depuis le temps. Je te remercie... et je voudrais te remercier de ta gentillesse...~ [LAVOK18] */
  IF ~~ THEN DO ~AddXPObject(Player1,45500)
AddXPObject(Player2,45500)
AddXPObject(Player3,45500)
AddXPObject(Player4,45500)
AddXPObject(Player5,45500)
AddXPObject(Player6,45500)
~ GOTO 29
END

IF ~~ THEN BEGIN 59 // from: 57.1 57.1
  SAY #37291 /* ~Oui... je... je m'y attendais... je ne mérite rien de plus, je suppose, après tout le mal que j'ai fait...~ [LAVOK16] */
  IF ~Global("PlayerHasStronghold","GLOBAL",2)
~ THEN JOURNAL #16007 /* ~Nessa la Vache se sent quelque peu patraque aujourd'hui. Dreppin m'a demandé de me procurer une potion d'antidote auprès de Hull qui est de garde à la porte ce matin. Il semblerait que Hull se serve de cette potion pour éviter les gueules de bois matinales...~ */ FLAGS 256 GOTO 60
  IF ~~ THEN JOURNAL #5822 /* ~Lavok est mort, la sphère est revenue.

Lavok a renvoyé la sphère dans notre plan et il est mort. Mais avant de mourir, il m'a légué la sphère... peut-être à cause de mes pouvoirs magiques, je ne sais pas. Il m'a demandé d'utiliser la structure avec sagesse... plus de sagesse que lui... puis il est mort. Quels secrets se cachent là ? Comment fonctionne-t-elle ? Je ne sais pas exactement... mais c'est quelque chose de plus grand que tout ce que peuvent posséder les autres mages, c'est certain.~ */ FLAGS 256 GOTO 61
END

END
