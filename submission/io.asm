        GD /000
        SB AJUSTE
        MM VALOR1

        GD /000
        MM TEMP

        GD /000
        SB AJUSTE
        MM VALOR2
        AD VALOR1
        MM RESULTADO   ; ABCD
        ML DESLOCA     ;  CD00
        SB LIMITE      ; 0A00
        JN SEM_EXCESSO ; Se CD >= A, então CD - A >= 0

        LD RESULTADO
        SB AJUSTE_SUB
        AD DESLOCA
        AD AJUSTE
        PD /100
        JP FIM

SEM_EXCESSO LD RESULTADO
            AD AJUSTE
            PD /100

FIM         HM /000

VALOR1   K /0
TEMP     K /0
VALOR2   K /0
AJUSTE   K /3030
RESULTADO K /0
DIGITO   K /0
LIMITE   K /A00
DESLOCA  K /100
AJUSTE_SUB K /000A