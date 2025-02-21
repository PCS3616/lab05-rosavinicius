        @ /000 ; início do código na posição 000
INICIO  LD PTR ; Carrega ponteiro na memória
        AD INC ; Incrementa de 2 em 2
        MM PTR ; Atualiza ponteiro
        MM SAIDA ; Prepara valor para escrita
        LD ACUM ; Soma acumulada na memória
        AD PROX ; Soma com próximo ímpar
        MM ACUM ; Atualiza soma acumulada
        LD PROX ; Carrega o próximo ímpar
        AD INC ; Próximo ímpar += 2
        MM PROX ; Atualiza próximo ímpar
        LD ACUM ;  
SAIDA   K =0 ; será substituído por 9{ptr+2}
        LD LIMITE ; Carrega limite
        SB CONTADOR ; Subtrai contador do limite
        JZ TERMINA ; Se chegou no limite, encerra
        LD CONTADOR ; Carrega contador
        AD UM ; Incrementa contador
        MM CONTADOR ; Atualiza contador
        JP INICIO ; Repete o processo

        @ /100
        K =0 ;

        @ /400 
TERMINA HM =0 ; Fim do programa
        
        @ /800
PTR     K /9100 ; Ponteiro de escrita na memória
        @ /802
UM      K =1 ; Constante 1
        @ /804
INC     K =2 ; Incremento de 2
        @ /806
LIMITE  K =63 ; Limite máximo
        @ /808
CONTADOR K =0 ; Contador
        @ /810 
ACUM    K =0 ; Soma acumulada
        @ /812
PROX    K =1 ; Próximo número ímpar a somar