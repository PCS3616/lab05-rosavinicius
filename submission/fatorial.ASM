            @ /0000
            SC FUNC
            HM /0000

            @ /0200
FUNC        JP /0000
            LV /0001
            MM /0400
            LD N
            JZ AFTER
            MM RES
            MM /0300
LOOP        LD /0300
            SB /0400
            JZ RETURN
            MM /0300
            ML RES
            MM RES
            JP LOOP
AFTER       LV /0001
            MM RES
RETURN      RS /0200

N @ /0100
N K = 3
RES @ /0102
