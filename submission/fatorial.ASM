; Programa incial 
@               /0000
LD              /N
MM              /N_decrementado
JZ              /000A
MM              /RES 
SC              /000E
HM              /0000


; Sub‐rotina para cálculo do fatorial
@               /000E
JP              /0000
LD              /N_decrementado
SB              /0032
JZ              /0020
MM              /N_decrementado
LD              /RES
ML              /N_decrementado
MM              /RES
JP              /0010
RS              /000E


;dados constantes
@               /0032 ; 
i               /0001 ;  constante 1
N_decrementado  /0000


; valores inicias em memoria 
@               /0100
N               K/0003
RES             K/0001
