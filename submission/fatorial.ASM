; Programa principal
@ /0000
k/ 8100   ; AC ← [0x0100]  (N)
k/ 9034   ; [0x0034] ← AC  (armazenar N em “N_decrementado”)
k/ 100A   ; Se AC == 0, pula para 0x000A 
k/ 9102   ; [0x0102] ← AC  (inicializa “N!” com N)
k/ A00E   ; Chama a sub‐rotina (endereço 0x000F)
k/ C000   ; Fim do programa principal

; Sub‐rotina para cálculo do fatorial
@ 000E
k/ 0000
k/ 8034   ; AC ← [0x0034]  (carrega o contador “N_decrementado”)
k/ 5032   ; AC ← AC – [0x0032]  (subtrai 1)
k/ 1020   ; Se AC == 0 (ou seja, se o contador era 1) então pula para 0x0026 (retorna)
k/ 9034   ; [0x0034] ← AC  (atualiza “N_decrementado” com o novo valor)
k/ 8102   ; AC ← [0x0102]  (carrega o fatorial parcial)
k/ 6034   ; AC ← AC × [0x0034]  (multiplica pelo contador atualizado)
k/ 9102   ; [0x0102] ← AC  (atualiza o fatorial parcial)
k/ 0010   ; Pula para 0x0010 (início do laço da sub‐rotina)
k/ B00E   ; Retorna da sub‐rotina

; Dados e constantes
@ 0032
k/ 0001   ; Constante 1
k/ 0000   ; Variável “N_decrementado”

; Valores iniciais em memória
@ 0100
N  K = 1   ; Valor de N (exemplo: 3)
RES K = 1   ; Valor inicial de “N!” (já que 0! = 1)
