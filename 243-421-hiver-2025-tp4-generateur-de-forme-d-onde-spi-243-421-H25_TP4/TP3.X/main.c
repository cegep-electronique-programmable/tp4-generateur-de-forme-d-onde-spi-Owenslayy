/**
 * Auteur 
 * Maxime Champagne
 * 3 mars 2022
 * salut2334sfg
 * Modifié par
 *owenslay le 4 mars 9;44
 *
 * SPI/main.c
 * 
*/
#include <stdio.h>
#include "mcc_generated_files/mcc.h"

#define MAX 60
uint8_t const sin[MAX] ={
              254,254,252,249,244,238,231,222,213,202,
              191,179,167,154,141,127,114,101,88,76,
              64,53,42,33,24,17,11,6,3,1,
              0,1,3,6,11,17,24,33,42,53,
              64,76,88,101,114,128,141,154,167,179,
              191,202,213,222,231,238,244,249,252,254};

uint8_t const car[MAX] ={
             0,0,0,0,0,0,0,0,0,0,
			  0,0,0,0,0,0,0,0,0,0,
			  0,0,0,0,0,0,0,0,0,0,
			  255,255,255,255,255,255,255,255,255,255,
			  255,255,255,255,255,255,255,255,255,255,
			  255,255,255,255,255,255,255,255,255,255};

uint8_t const tri[MAX] ={
            9,17,26,34,43,51,60,68,77,85,
			 94,102,111,119,128,136,145,153,162,170,
			 179,187,196,204,213,221,230,238,247,255,
			 247,238,230,221,213,204,196,187,179,170,
			 162,153,145,136,128,119,111,102,94,86,
			 77,68,60,51,43,34,26,17,9,0};

void out_dig(uint8_t x);
void sinus_60(void);
void carre_60(void);
void triangle_60(void);
void myTimer1_ISR(void);
static uint8_t i; 
unsigned long long pr = 0xf6c0;
int lecture;
 //64800 100%
//64 535 75
//63942 50
// 63 535 40
//61 535 20%
void main(void)
{
    //uint8_t valeur, lecture;
    //float tension;
    
    SYSTEM_Initialize();
    
    INTERRUPT_GlobalInterruptEnable();
    
    INTERRUPT_PeripheralInterruptEnable();
    
   TMR1_SetInterruptHandler(myTimer1_ISR);

    SSPCON1bits.SSPEN = 1;
    IO_RA5_SetHigh();
  
    while (1)
    {
        
        if(EUSART1_is_rx_ready()){
             lecture = EUSART1_Read();
        }

            switch(lecture){
                case 's':
                    //sinus_60();
                    out_dig(sin[i]);
                    break;
                case 't':
                    //triangle_60();
                    out_dig(tri[i]);
                    break;
                case 'c':
                  // carre_60();
                    out_dig(car[i]);
                   
                    break;
                
                    
            }
            
        
        
//        //Code de test pour valider le fonctionnement du potentiomètre
//        {
//            printf("\n\rEntrer une valeur entre 0 et 255, suivie de [Enter]");
//            valeur = 0;
//            do
//            {
//                do
//                {
//                    
//                        lecture = EUSART1_Read();
//                                        
//                }
//                while (((lecture < '0') || (lecture > '9')) && (lecture != 0x0d));
//                if ((lecture >= '0') && (lecture <= '9')) 
//                {
//                    valeur = 10 * valeur + lecture - '0';
//                    putchar(lecture);
//                }
//            }
//        
//            while ((lecture != 0x0d) && (valeur < 26)); 
//            tension = (float)5* valeur /256;
//            printf("\n\rValeur = %u tension = %3.2f ", valeur, tension);
//            out_dig(valeur);    // envoi sur potentiometre 
//        } 
        
        
        
        //Code de test pour générer une onde sinusoidale
        
         
        
    }
    }
     

           


//---------------------------------------------------------------
// Routine d'interruption du Timer1
//---------------------------------------------------------------
void myTimer1_ISR(void){
    
    //static uint8_t i; 
     
        
                    
    TMR1_WriteTimer(pr);//65035
    
    
    
    //out_dig(tri[i]);
    
    i++;
    if (i==MAX){
        i=0;
    }
}
    
//----------------------------------------------------------------
// Transmission au pot. d'une onde comprenant 60 points par cycle.
//----------------------------------------------------------------
void sinus_60(void) {
    uint8_t i;
   // while(1) {
        for (i=0;i<MAX;i++) {
            out_dig(sin[i]);
			__delay_ms(1);
            }
       // } 
}

void carre_60(void) {
    uint8_t i;
   
        for (i=0;i<MAX;i++) {
            out_dig(car[i]);
			__delay_ms(1);
            }
         
}

void triangle_60(void) {
    uint8_t i;
    
        for (i=0;i<MAX;i++) {
            out_dig(tri[i]);
			__delay_ms(1);
            }
        
}

//----------------------------------------------------------------
//  Transmission d'une donnee a la sortie du pot. numerique
//----------------------------------------------------------------
void out_dig(uint8_t x)
{
	IO_RA5_SetLow();   // selection du potentiometre
	SPI_ExchangeByte(0x11);  // ecriture, pot. 0
	SPI_ExchangeByte(x);
	IO_RA5_SetHigh();
	//__delay_ms(1);
}
void addition(void)
{
    long difference = 3430;
    difference = difference/2;
}
