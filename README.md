# ARM32-Lights
This repository houses four different source files to make four different binary executables for an ARM32 based Raspberry Pi with the sensehat add on.
For all programs you will need to assemble the lights.s file with the following command:
as lights.s -o lights.o

## Clear
This program will clear the sensehat.  
###To assemble:  
as clear.s -o clear.o  
###To link and create the binary executable:  
ld clear.o lights.o -o clear  
###To run:  
./clear  

## Blue
This program will turn all LEDs on the sensehat to the color blue.  
###To assemble:  
as part2.s -o part2.o  
###To link and create the binary executable:  
ld part2.o lights.o -o blue  
###To run:  
./blue  

## Red X
This program will output a Red X on the sensehat.  
###To assemble:  
as part3.s -o part3.o  
###To link and create the binary executable:  
ld part3.o lights.o -o redx  
###To run:  
./redx  

## CC (my initials)
This program will output 'cc' on the sensehat. These are my initials.  
###To assemble:  
as part4.s -o part4.o  
###To link and create the binary executable:  
ld part4.o lights.o -o initials  
###To run:  
./initials  
