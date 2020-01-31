#!/bin/bash
echo "
You wake up at the foot of a 10-story tower, head pounding, vision blurry, you don't even remember who you are...
Who are you? 
.
.
.
(Type START to find out!)
"
read S
while [ $S != START ]
      do echo "Hey! Why don't you listen!"
	  read S
	  done
P_RLL=$(shuf -i 1-100 -n 1)

if [ $P_RLL -le 50 ] ; then
    P=$(tail -n 5 players.csv | head -n 1 | cut -d ',' -f 2)
    HP_P=$(tail -n 5 players.csv | head -n 1 | cut -d ',' -f 3)
    HP_Pmax=$(tail -n 5 players.csv | head -n 1 | cut -d ',' -f 3)
    STR_P=$(tail -n 5 players.csv | head -n 1 | cut -d ',' -f 5)
fi

if [ $P_RLL -gt 50 ] && [ $P_RLL -le 80 ] ; then
    P=$(tail -n 4 players.csv | head -n 1 | cut -d ',' -f 2)
    HP_P=$(tail -n 4 players.csv | head -n 1 | cut -d ',' -f 3)
    HP_Pmax=$(tail -n 4 players.csv | head -n 1 | cut -d ',' -f 3)
    STR_P=$(tail -n 4 players.csv | head -n 1 | cut -d ',' -f 5)
fi

if [ $P_RLL -gt 80 ] && [ $P_RLL -le 95 ] ; then
    P=$(tail -n 3 players.csv | head -n 1 | cut -d ',' -f 2)
    HP_P=$(tail -n 3 players.csv | head -n 1 | cut -d ',' -f 3)
    HP_Pmax=$(tail -n 3 players.csv | head -n 1 | cut -d ',' -f 3)
    STR_P=$(tail -n 3 players.csv | head -n 1 | cut -d ',' -f 5)
fi

if [ $P_RLL -gt 95 ] && [ $P_RLL -lt 100 ]; then
    P=$(tail -n 2 players.csv | head -n 1 | cut -d ',' -f 2)
    HP_P=$(tail -n 2 players.csv | head -n 1 | cut -d ',' -f 3)
    HP_Pmax=$(tail -n 2 players.csv | head -n 1 | cut -d ',' -f 2)
    STR_P=$(tail -n 2 players.csv | head -n 1 | cut -d ',' -f 5)
fi

if [ $P_RLL == 100 ] ; then
    P=$(tail -n 1 players.csv | cut -d ',' -f 2)
    HP_P=$(tail -n 1 players.csv | cut -d ',' -f 3)
    HP_Pmax=$(tail -n 1 players.csv | cut -d ',' -f 3)
    STR_P=$(tail -n 1 players.csv | cut -d ',' -f 3)
fi
N=1
REWARD=$(($HP_Pmax/2))
echo "
You are $P!
HP : $HP_P
STR : $STR_P
Secret : $REWARD

You walk slowly towards the tower and you push the door open as you remember! You had a bet with Princess Zelda: if you can defeat every enemy on each floor, including the dreaded boss of the last floor, 'maybe' she'll give you a kiss! 

After all those years!

The thought of the Princess' lips on your cheeks fills you with determination.
.
.
.
(Type START to initiate the first fight)"

read S
while [ $S != START ]
      do echo "Hey! Why don't you listen!"
          read S
          done

echo "
========== Floor $N ==========
"
while (($HP_P>0))
do
if [ $N != 10 ] ; then
 E_RLL=$(shuf -i 1-100 -n 1)

        if [ $E_RLL -le 50 ] ; then
            E_RLL1=$(shuf -i 1-4 -n 1)
            if [ $E_RLL1 == 1 ] ; then
               E=$(tail -n 3 enemies.csv  | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 3 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 3 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 3 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
	    if [ $E_RLL1 == 2 ] ; then
	         E=$(tail -n 2 enemies.csv  | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 2 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 2 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 2 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
	    if [ $E_RLL1 == 3 ] ; then
                 E=$(tail -n 6 enemies.csv  | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 6 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 6 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 6 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
	     if [ $E_RLL1 == 4 ] ; then
                 E=$(tail -n 1 enemies.csv | cut -d ',' -f 2)
                 HP_E=$(tail -n 1 enemies.csv | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 1  enemies.csv | cut -d ',' -f 3)
                 STR_E=$(tail -n 1 enemies.csv | cut -d ',' -f 5)
             fi
        fi

	if [ $E_RLL -gt 50 ] && [ $E_RLL -le 80 ] ; then
         E_RLL1=$(shuf -i 1-2 -n 1)
            if [ $E_RLL1 == 1 ] ; then
               E=$(tail -n 4 enemies.csv  | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 4 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 4 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 4 enemies.csv  | head -n 1 | cut -d ',' -f 5)
	       else
                 E=$(tail -n 7 enemies.csv  | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 7 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 7 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 7 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
	    fi

         if [ $E_RLL -gt 80 ] && [ $E_RLL -le 95 ] ; then
         E_RLL1=$(shuf -i 1-2 -n 1)
            if [ $E_RLL1 == 1 ] ; then
               E=$(tail -n 12 enemies.csv  | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 12 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 12 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 12 enemies.csv  | head -n 1 | cut -d ',' -f 5)
               else
                 E=$(tail -n 5 enemies.csv  | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 5 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 5 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 5 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
         fi

	  if [ $E_RLL -gt 95 ] && [ $E_RLL -lt 100 ] ; then
         E_RLL1=$(shuf -i 1-2 -n 1)
            if [ $E_RLL1 == 1 ] ; then
               E=$(tail -n 9 enemies.csv  | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 9 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 9 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 9 enemies.csv  | head -n 1 | cut -d ',' -f 5)
               else
                 E=$(tail -n 10 enemies.csv  | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 10 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 10 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 10 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
	    fi

	   if [ $E_RLL == 100 ] ; then
         E_RLL1=$(shuf -i 1-2 -n 1)
            if [ $E_RLL1 == 1 ] ; then
               E=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 5)
               else
                 E=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 11 enemies.csv  | head -n 1 | cut -d ',' -f 5)
            fi
           fi
	
   echo "
You've encountered $E
HP : $HP_E / $HP_Emax
STR : $STR_E
"
fi
   while (($HP_E>0))
do
	 echo "
1-Attack 2-Heal
"
   read OPT
   if [ $OPT == Attack ] || [ $OPT == 1 ]
   then HP_E=$(($HP_E-$STR_P))
	HP_P=$(($HP_P-$STR_E))
	echo "$P : $HP_P / $HP_Pmax"
        echo "$E : $HP_E / $HP_Emax
"
   fi

   if [ $OPT == Heal ] || [ $OPT == 2 ]
   then HP_P=$(($HP_P-$STR_E+$HP_Pmax/2))
        if [ $HP_P -gt $HP_Pmax ] ; then HP_P=$HP_Pmax ; fi
	echo -e "$P : $HP_P / $HP_Pmax \e[32mGreen"
	echo "$E : $HP_E / $HP_Emax
"
   fi

   if [ $OPT != Heal ] && [ $OPT != 2 ] && [ $OPT != Attack ] && [ $OPT != 1 ]
   then echo Invalid Input : Please type the name or the number of the option.
	fi
   if [ $HP_P -le 0 ] ; then echo  "
You were unsuccessful in your mission...
The princess is very disapointed, she might even give her oh-so precious kiss to a more worthy hero!
Quickly! Climb back up! You must be the one to get that kiss!  
" ; break ; fi
done
   if [ $HP_E -le 0 ] && [ $N == 10 ] && [ $HP_P -lt $REWARD ] ; then echo "
Congratulations! You defeated all the enemies...
Alas your performace wasn't worth of the Princess' kiss...
Saddened, you climb down the tower and gather your resolve to challenge it again.

" ; break ; fi
    if [ $HP_E -le 0 ] && [ $N == 10 ] && [ $HP_P -ge $REWARD ] ; then echo "
Congratulations! You defeated all the enemies!
The Princess is blushing, impressed by your performance...
You delight in the bliss that is the long awaited kiss! It's been 33 years!
" ; break ; fi
   if [ $HP_E -le 0 ]
   then N=$(($N+1))
	if [ $N == 10 ] ; then echo "
========== Final Floor! ==========
"
	B_RLL=$(shuf -i 1-100 -n 1)

	if [ $B_RLL -le 50 ] ; then
        E=$(tail -n 7 bosses.csv | head -n 1 | cut -d ',' -f 2)
        HP_E=$(tail -n 7 bosses.csv | head -n 1 | cut -d ',' -f 3)
        HP_Emax=$(tail -n 7 bosses.csv | head -n 1 | cut -d ',' -f 3)
        STR_E=$(tail -n 7 bosses.csv | head -n 1 | cut -d ',' -f 5)
        fi

	if [ $B_RLL -gt 50 ] && [ $B_RLL -le 80 ] ; then
        E=$(tail -n 1 bosses.csv | cut -d ',' -f 2)
        HP_E=$(tail -n 1 bosses.csv | cut -d ',' -f 3)
        HP_Emax=$(tail -n 1 bosses.csv | cut -d ',' -f 3)
        STR_E=$(tail -n 1 bosses.csv | cut -d ',' -f 5)
	fi

	
	if [ $B_RLL -gt 80 ] && [ $B_RLL -le 95 ] ; then
            B_RLL1=$(shuf -i 1-2 -n 1)
	    if [ $B_RLL == 1 ] ; then
	       E=$(tail -n 6 bosses.csv | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 6 bosses.csv | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 6 bosses.csv | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 6 bosses.csv | head -n 1 | cut -d ',' -f 5)
	    else E=$(tail -n 3 bosses.csv | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 3 bosses.csv | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 3 bosses.csv | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 3 bosses.csv | head -n 1 | cut -d ',' -f 5)
        fi
	fi

	if [ $B_RLL -gt 95 ] && [ $B_RLL -lt 100 ] ; then
         B_RLL1=$(shuf -i 1-2 -n 1)
            if [ $B_RLL == 1 ] ; then
               E=$(tail -n 2 bosses.csv | head -n 1 | cut -d ',' -f 2)
               HP_E=$(tail -n 2 bosses.csv | head -n 1 | cut -d ',' -f 3)
               HP_Emax=$(tail -n 2 bosses.csv | head -n 1 | cut -d ',' -f 3)
               STR_E=$(tail -n 2 bosses.csv | head -n 1 | cut -d ',' -f 5)
            else E=$(tail -n 5 bosses.csv | head -n 1 | cut -d ',' -f 2)
                 HP_E=$(tail -n 5 bosses.csv | head -n 1 | cut -d ',' -f 3)
                 HP_Emax=$(tail -n 5 bosses.csv | head -n 1 | cut -d ',' -f 3)
                 STR_E=$(tail -n 5 bosses.csv | head -n 1 | cut -d ',' -f 5)
	    fi
	fi

	if [ $B_RLL == 100 ] ; then
        E=$(tail -n 4 bosses.csv | head -n 1 | cut -d ',' -f 2)
        HP_E=$(tail -n 4 bosses.csv | head -n 1 | cut -d ',' -f 3)
        HP_Emax=$(tail -n 4 bosses.csv | head -n 1 | cut -d ',' -f 3)
        STR_E=$(tail -n 4 bosses.csv | head -n 1 | cut -d ',' -f 5)
	fi
echo "
$E approaches...
HP : $HP_E
STR : $STR_E
"	

else     echo "
========== Floor $N ==========
"
	fi
	fi

done
