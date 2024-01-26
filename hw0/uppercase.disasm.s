
uppercase.bin:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	ffff2517          	auipc	a0,0xffff2
   10078:	f8c50513          	addi	a0,a0,-116 # 2000 <__DATA_BEGIN__>
   1007c:	06138393          	addi	t2,t2,97
   10080:	07ae0e13          	addi	t3,t3,122
   10084:	00050613          	mv	a2,a0
   10088:	0040006f          	j	1008c <while_loop>

0001008c <while_loop>:
   1008c:	00060683          	lb	a3,0(a2)
   10090:	00068e63          	beqz	a3,100ac <end_program>
   10094:	0076c863          	blt	a3,t2,100a4 <already_uppercase>
   10098:	00de4663          	blt	t3,a3,100a4 <already_uppercase>
   1009c:	fe068693          	addi	a3,a3,-32
   100a0:	00d60023          	sb	a3,0(a2)

000100a4 <already_uppercase>:
   100a4:	00160613          	addi	a2,a2,1
   100a8:	fe5ff06f          	j	1008c <while_loop>

000100ac <end_program>:
   100ac:	0000006f          	j	100ac <end_program>
