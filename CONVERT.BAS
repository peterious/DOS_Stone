15 POKE 17059, 4: POKE 17126, 246
16 GOTO 2560
20 HOME
21 IF name$ = "" THEN PRINT "There is no character to save!": FOR z = 1 TO 1000: NEXT z: GOTO 1000
22 INVERSE 
23 PRINT "                    ";
30 PRINT "INSERT DATA DISK.   ";
31 PRINT "                    ";
32 NORMAL
40 GET z$
41 IF z$="" THEN TEXT:GOTO 1000
42 HGR2
50 file$=LEFT$(name$, 6)
60 PRINT CHR$(4); "open "; file$; ".CDP"
70 PRINT CHR$(4); "write "; file$; ".CDP"
80 PRINT name$
85 PRINT ali$
90 PRINT score
95 PRINT xp
100 PRINT ohits
105 PRINT hits
110 PRINT weapon$
115 PRINT armor$
116 PRINT shield$
120 PRINT spell$
121 PRINT moves
125 PRINT cd
126 PRINT lamp$
127 PRINT item$
130 PRINT CHR$(4); "close "; file$; ".CDP"
140 GOTO 1000
220 HOME
221 INVERSE
222 PRINT "                               "; 
230 PRINT "INSERT DATA DISK.              "; 
231 PRINT "                               ";
232 NORMAL   
233 PRINT: PRINT: GET Z$
234 IF z$ = "" THEN 1000
235 PRINT "ENTER PLAYER'S NAME."
240 INPUT name$: HGR2 'HGR2 SETS THE SCREEN RESOLUTION TO 256X192
250 file$ = LEFT$(name$, 6)
260 PRINT CHR$(4); "open "; file$ ".CDP"
270 PRINT CHR$(4); "read "; file$ ".CDP"
280 INPUT name$
285 INPUT ali$
290 INPUT score
295 INPUT xp
300 INPUT ohits
305 INPUT hits
310 INPUT weapon$
315 INPUT armor$
316 INPUT sheild$
320 INPUT spell$
321 INPUT moves
325 INPUT cd
326 INPUT lamp$
327 INPUT item$
330 PRINT CHR$(4); "close "; file$; ".CDP"
335 IF cd <> 1 THEN PRINT "THIS CHARACTER IS TOO POWERFUL!":CLEAR:FOR z=1 TO 1000:NEXT z:GOTO 1000
340 GOTO 1000
350 IF ERRNUM(0)=5 THEN 330
351 IF ERRNUM(0)=255 THEN RESUME
355 IF ERRNUM(0)=11 THEN 870
360 TEXT
370 PRINT "ERROR NUMBER "; ERRNUM(0); " HAS OCCURED."
380 GET z$
390 IF z$="†" THEN END
400 HOME
410 ONERR  GOTO 350:PRINT "I'AM RETURNING YOU TO THE INN.":FOR    z=1 TO 1000:NEXT z:GOTO 1000
420 HOME
421 INVERSE
422 PRINT "                               "; 
430 PRINT "INSERT DATA DISK.              "; 
431 PRINT "                               "; 
432 NORMAL:PRINT:PRINT
433 GET z$
434 IF z$="" THEN 1000
440 PRINT "ENTER PLAYER'S NAME."
445 INPUT file$
450 file$=LEFT$(file$, 6)
460 PRINT CHR$(4); "delete "; file$; ".CDP"
470 GOTO 1000
480 HOME
490 PRINT "ENTER PLAYER'S NAME."
500 INPUT name$
510 GOTO 1000
520 HOME
521 PRINT "THE PLAYER IN MEMORY WILL BE  "
522 PRINT "ERASED!  PRESS ESCAPE NOW TO  "
523 PRINT "ABORT!"
524 GET z$
525 IF z$="" THEN 1000
526 HOME
530 PRINT "ENTER PLAYER'S NAME."
540 INPUT name$
545 IF name$="" THEN 540
550 PRINT "ENTER PLAYER'S ALIGNMENT."
560 PRINT "1> GOOD"
570 PRINT "2> NEUTRAL"
580 PRINT "3> EVIL"
590 GET ali$
600 IF ali$="!" THEN  ali$="GOOD":GOTO 630
610 IF ali$="@" THEN  ali$="NEUTRAL":GOTO 630
620 IF ali$="#" THEN  ali$="EVIL":GOTO 630
625 GOTO 590
630 LET score=INT(RND(1)*11)+4
640 LET ohits=INT(RND(1)*11)+70
641 LET moves=0
645 LET xp=1000
650 LET hits=ohits
660 weapon$="NO WEAPON"
670 spell$="NO SPELL"
675 armor$="NO ARMOR"
676 shield$="NO SHIELD"
677 LET cd=1
678 lamp$ = "NO LAMP"
679 item$="NO ITEM"
680 HOME
681 IF name$="" THEN ? "THERE IS NO PLAYER IN MEMORY!":FOR    z=1 TO 1000:NEXT z:GOTO 1000
690 PRINT name$; " IS "; ali$; ","
700 PRINT "HAS "; score; " GOLD PIECES,"
710 PRINT hits; " HIT POINTS,"
715 PRINT "AND "; xp; " XPOINTS,"
720 PRINT "AND CARRIES "; weapon$
730 PRINT "AND "; spell$; ","
731 PRINT "AND IS PROTECTED BY "
732 PRINT armor$; " AND "
733 PRINT shield$; ","
734 PRINT "AND ALSO CARRIES "; item$; "."
740 GET z$
750GOTO 1000
760 HOME
761 INVERSE
762 PRINT "                               "; 
763 PRINT "INSERT DATA DISK.              "; 
764 PRINT "                               "; 
765 NORMAL: PRINT: PRINT
766 GET z$
770 PRINT CHR$(4); "CATALOG"
780 GET z$
790 GOTO 1000
800 HOME
801 INVERSE
802 PRINT "                               ";
810 PRINT "INSERT DATA DISK.              "; 
811 PRINT "                               "; 
812 NORMAL: PRINT: PRINT
820 GET z$
825 IF z$="" THEN 1000
826 PRINT: PRINT "THIS DISK WILL BE COMPLETELY  "
827 PRINT "ERASED!"
828 GET z$
829 IF z$="" THEN 1000
830 PRINT "THIS DISK IS "; 
831 PRINT "ONLY"; 
832 PRINT " TO BE USED"
840 PRINT "FOR "; 
841 PRINT "CASTLE DEATHSTONE"; 
842 PRINT " PLAYERS!"
850 PRINT CHR$(4); "INIT DEATHSTONE"
860 GOTO 1000
870 TEXT
880 PRINT "I CANNOT USE THE PLAYER'S NAME"
890 PRINT "AS THE FILE NAME."
900 PRINT "PLEASE TYPE IN A FILE NAME FOR"; 
910 PRINT NAME$; ","
920 INPUT zz$
930 file$ = LEFT$(zz$, 6)
940 ONERR GOTO 350
950 GOTO 60
1000 TEXT: HOME




2560