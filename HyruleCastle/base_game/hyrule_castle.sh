#!/bin/bash
HP1=60 ; HP1mx=60 ; HP2=30 ; STR1=10 ; STR2=5 ; N=1 ; ENM=Boko
echo "
Floor $N
"
while (($HP1>0))
do echo 1-Attack 2-Heal?
   read OPT
   if [ $OPT == Attack ] || [ $OPT == 1 ]
   then HP2=$(($HP2-$STR1))
	HP1=$(($HP1-$STR2))
	echo "Link : $HP1"
        echo "$ENM : $HP2
"
   fi

   if [ $OPT == Heal ] || [ $OPT == 2 ]
   then HP1=$(($HP1-$STR2+$HP1mx/2))
        if [ $HP1 -gt $HP1mx ] ; then HP1=$HP1mx ; fi
	echo "Link : $HP1"
	echo "$ENM : $HP2
"
   fi
   
   if [ $HP1 -le 0 ] && [ $N == 10 ] ; then echo  "
Game Over
" ; break ; fi
   if [ $HP2 -le 0 ] && [ $N == 10 ] ; then echo "
Congratulations!
" ; break ; fi
   if [ $HP2 -le 0 ]
   then N=$(($N+1))
	if [ $N == 10 ] ; then echo "
Final Floor!
"
                         HP2=150
                         STR2=20
                         ENM=Ganon

else     echo "
Floor $N
"
     HP2=30
fi     
if [ $HP1 -le 0 ] ; then echo "
Game Over
"
   fi
   fi

done
