        .section .data
input_string:   .asciz "Hello world!"

        # tohost/fromhost are data locations used by Spike
        .align 8
tohost: .byte 0
        .align 8
fromhost: .byte 0

        
        .section .text
        .globl _start
_start:
        # Load the address of the input string into a0
        la a0, input_string

        # Store ASCII lowercase bounds
        addi t2, t2, 97
        addi t3, t3, 122

        # Your code here!

        # initialize loop variable in a2
        addi a2, a0, 0
        # jump to while loop
        j while_loop

while_loop:
        # load character from memory at the address 0 + a2 into a3
        lb a3, 0(a2)

        # check to see if a3 (checker) = t1 (NUL), if true then exit the while loop
        beq a3, zero, end_program


        # if the char is lowercase then make it uppercase

        blt a3, t2, already_uppercase
        bgt a3, t3, already_uppercase

        # otherwise it is lowercase
        # change it to uppercase
        addi a3, a3, (-32)
        # load in memory addy
        sb a3, 0(a2)

already_uppercase:

        # increment a2 (loop variable)
        addi a2, a2, 1

        # repeat while loop
        j while_loop



        
end_program:
        # jump here when you're done
        j end_program

