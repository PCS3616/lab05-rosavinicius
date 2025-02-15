; Programa principal
      LD   N       ; AC ← [N]  (Carrega N)
      MM   N_DEC   ; [N_DEC] ← AC  (Armazena N em “N_decrementado”)
      JZ   FIM     ; Se AC == 0, pula para FIM (0x000A)
      MM   RES     ; [RES] ← AC  (Inicializa “N!” com N)
      SC   FATORIAL ; Chama a sub‐rotina de cálculo do fatorial
FIM:  HM          ; Fim do programa principal

; Sub‐rotina para cálculo do fatorial
FATORIAL:
      LD   N_DEC   ; AC ← [N_DEC]  (Carrega o contador “N_decrementado”)
      SB   UM      ; AC ← AC - 1
      JZ   RETORNO ; Se AC == 0 (contador era 1), pula para RETORNO
      MM   N_DEC   ; [N_DEC] ← AC  (Atualiza “N_decrementado”)
      LD   RES     ; AC ← [RES]  (Carrega o fatorial parcial)
      ML   N_DEC   ; AC ← AC × [N_DEC]  (Multiplica pelo contador atualizado)
      MM   RES     ; [RES] ← AC  (Atualiza o fatorial parcial)
      JP   FATORIAL ; Volta para o início do laço da sub‐rotina
RETORNO:
      RS          ; Retorna da sub‐rotina

; Dados e constantes
UM:   0001       ; Constante 1
N_DEC: 0000      ; Variável “N_decrementado”
N:    0003       ; Valor de N (exemplo: 3)
RES:  0001       ; Valor inicial de “N!” (já que 0! = 1)
