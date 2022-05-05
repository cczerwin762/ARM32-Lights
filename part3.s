.global _start
.text
_start:
        #open frame buffer 1
        mov r0, #1
        bl openfb
        cmp r0, #0
        blt _start_exit

        #get the color red and store it in r6
        mov r8, r0
        mov r0, #31
        mov r1, #0
        mov r2, #0
        bl getColor
        mov r6, r0
        
        #one pixel will be (r5, r5) the other will be (r4, r5)
        mov r5, #0
        mov r4, #7
        

        #pixel r5, r4
LOOP:   mov r2, r6
        mov r0, r5
        mov r1, r4
        bl setPixel
        mov r2, r6
        mov r0, r5
        mov r1, r5
        bl setPixel
        add r5, r5, #1          @increment r5
        sub r4, r4, #1          @decrement r4
        cmp r5, #7               
        ble LOOP                @if r5 <= 7, continue loop
        bl closefb

_start_exit: 
        #clean exit
        mov r7, #1
        svc #0
