/*
** ETNA PROJECT, 26/10/2019 by abdelr_o
** Hyrule Castle
** File description:
**      Coding the Base Game in C
*/

#include<stdio.h>

int main (int argc, char *argv)
{
    int HP1 = 60;
    int HP1mx = 60;
    int HP2 = 30;
    int STR1 = 10;
    int STR2 = 5 ;
    int N = 1;
    int a;

    printf("\n Floor N \n");
        while ( HP1 > 0 )
            {
                printf("1-Attack 2-Heal");
                scanf(&a);
                    if ( a == 1 )
                        {
                            HP2 =( HP2 - STR1 );
                            HP1 = (HP1 - STR2 );
                        }                              
            }
}
                                      
                                                                            
