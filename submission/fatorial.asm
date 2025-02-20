SC FAT	
	HM =0	
@ /100
N 	K =0	
RES 	K =1	
CTE1 	K =1	
@ /200
FAT	K =0	
	LD N	
 	JZ FIM	
 	
LOOP	LD RES	
	ML N	
	MM RES	
	
	LD N	
	SB CTE1	
	MM N	
	
	JZ FIM	
	JP LOOP
	
FIM 	RS FAT	
