     10 REM
     20 REM Programa autolistable
     30 REM
     40 GOTO 9000
   1000 r= PEEK (a) + 256 * (PEEK (a+1) + 256 * (PEEK (a+2) + 256 * PEEK (a+3) ) )
   1010 RETURN
   2000 li$= RIGHT$ ("       " + str$ (n), 7) + " "
   2001 rem PRINT n; " ";
   2010 FOR i= p + 8 TO p + l + 7
   2020 c= PEEK (i)
   2030 IF c = 1 OR c = 2 OR c = 3 OR c = 4 THEN 2060
   2031 if c = 5 then 2095
   2032 if c <> asc ("""") then goto 2040
   2034 li$= li$ + """" : i= i + 1
   2036 while peek (i) <> 0 : if peek (i) <> asc ("""") then li$= li$ + chr$ (peek (i) ) else li$= li$ + """"""
   2037 i= i + 1: wend
   2038 li$= li$ + """"
   2039 goto 2100
   2040 li$= li$ + chr$ (peek (i) )
   2041 rem PRINT CHR$ (PEEK (i) );
   2050 GOTO 2100
   2060 code= 256 * PEEK (i) + PEEK (i + 1)
   2070 GOSUB gettoken
   2080 li$= li$ + token$
   2081 rem PRINT token$;
   2090 i= i + 1
   2092 goto 2100
   2095 num%= peek (i+1) + 256 * (peek (i+2) + 256 * (peek (i+3) + 256 * peek (i+4) ) )
   2096 li$= li$ + str$ (num%)
   2097 i= i + 4
   2100 NEXT
   2110 PRINT li$
   2120 RETURN
   9000 REM Inicio
   9010 gosub 9500
   9020 p= PROGRAMPTR
   9030 REPEAT
   9040         a= p: GOSUB 1000: n= r
   9060         a= p + 4: GOSUB 1000: l= r
   9070         IF l > 0 THEN GOSUB 2000
   9080         p= p + 8 + l
   9090 UNTIL n >= 90000
   9100 END
   9500 REM
   9510 REM Carga la tabla de codigos
   9520 REM
   9530 numcod= 165
   9540 dim name$ (numcod), cod (numcod)
   9550 for i= 1 to numcod
   9560     read name$ (i), cod (i)
   9565     rem print name$ (i), cod (i)
   9570 next
   9575 read check$ : if check$ <> "***" then print "ERROR EN DATAS" : end
   9580 return
  10000 LABEL gettoken
  10010 REM Obtiene el token correspondiente al codigo
  10020 REM
  10022 res= 0
  10025 for busca= 1 to numcod
  10030         if cod (busca) = code then res= busca : busca= numcod
  10035 next
  10040 if res = 0 then token$= "???" else token$= name$ (res)
  10050 return
  10100 RESTORE 11000
  10110 READ token$
  10120 IF token$ = "" THEN 10160
  10130 READ c
  10140 IF c = code THEN RETURN
  10150 GOTO 10110
  10160 token$= "???"
  10170 RETURN
  11000 REM Comandos
  11001 DATA "END", 257
  11002 DATA "LIST", 258
  11003 DATA "REM", 259
  11004 DATA "LOAD", 260
  11005 DATA "SAVE", 261
  11006 DATA "NEW", 262
  11007 DATA "EXIT", 263
  11008 DATA "RUN", 264
  11009 DATA "PRINT", 265
  11010 DATA "FOR", 266
  11011 DATA "NEXT", 267
  11012 DATA "TO", 268
  11013 DATA "STEP", 269
  11014 DATA "IF", 270
  11015 DATA "THEN", 271
  11016 DATA "ELSE",272
  11017 DATA "TRON",273
  11018 DATA "TROFF", 274
  11019 DATA "LET", 275
  11020 DATA "GOTO", 276
  11021 DATA "STOP",277
  11022 DATA "CONT", 278
  11023 DATA "CLEAR", 279
  11024 DATA "GOSUB", 280
  11025 DATA "RETURN", 281
  11026 DATA "POKE", 282
  11027 DATA "DATA",283
  11028 DATA "READ",284
  11029 DATA "RESTORE",285
  11030 DATA "INPUT", 286
  11031 DATA "LINE", 287
  11032 DATA "RANDOMIZE", 288
  11034 DATA "AUTO", 290
  11035 DATA "DIM", 291
  11036 DATA "SYSTEM", 292
  11037 DATA "ON", 293
  11038 DATA "ERROR", 294
  11039 DATA "OPEN", 295
  11040 DATA "CLOSE", 296
  11041 DATA "OUTPUT", 297
  11042 DATA "AS", 298
  11043 DATA "LOCATE", 299
  11044 DATA "CLS", 300
  11045 DATA "APPEND", 301
  11046 DATA "WRITE", 302
  11047 DATA "MODE", 303
  11048 DATA "MOVE", 304
  11049 DATA "COLOR", 305
  11050 DATA "GET", 306
  11051 DATA "LABEL", 307
  11052 DATA "DELIMITER", 308
  11053 DATA "REPEAT", 309
  11054 DATA "UNTIL", 310
  11055 DATA "WHILE", 311
  11056 DATA "WEND", 312
  11057 DATA "PLOT", 313
  11058 DATA "POPEN", 314
  11059 DATA "RESUME", 315
  11060 DATA "DELETE", 316
  11061 DATA "LOCAL", 317
  11062 DATA "RANDOM", 318
  11063 DATA "PUT", 319
  11064 DATA "FIELD", 320
  11065 DATA "LSET", 321
  11066 DATA "RSET", 322
  11067 DATA "SOCKET", 323
  11068 DATA "DRAW", 324
  11069 DATA "DEF", 325
  11079 DATA "FN", 326
  11080 DATA "ERASE", 327
  11081 DATA "SWAP", 328
  11082 DATA "SYMBOL", 329
  11083 DATA "ZONE", 330
  11084 DATA "POP", 331
  11085 DATA "NAME", 332
  11086 DATA "KILL", 333
  11087 DATA "FILES", 334
  11088 DATA "PAPER", 335
  11089 DATA "PEN", 336
  11090 DATA "SHELL", 337
  11091 DATA "CHDIR", 338
  11092 DATA "MKDIR", 339
  11093 DATA "RMDIR", 340
  11094 DATA "BREAK", 341
  11095 DATA "SYNCHRONIZE", 342
  11096 DATA "PAUSE", 343
  11097 DATA "CHAIN", 344
  11098 DATA "STR", 345
  11099 DATA "REAL", 346
  11100 DATA "ENVIRON", 347
  11101 DATA "EDIT", 348
  12000 REM Funciones de cadena
  12001 DATA "MID$",513
  12002 DATA "LEFT$",514
  12003 DATA "RIGHT$",515
  12004 DATA "CHR$",516
  12005 DATA "ENVIRON$", 517
  12006 DATA "STRING$", 518
  12007 DATA "OSFAMILY$", 519
  12008 DATA "HEX$", 520
  12009 DATA "SPACE$", 521
  12010 DATA "UPPER$", 522
  12011 DATA "LOWER$", 523
  12012 DATA "STR$", 524
  12013 DATA "OCT$", 525
  12014 DATA "BIN$", 526
  12015 DATA "INKEY$", 527
  12016 DATA "PROGRAMARG$", 528
  12017 DATA "DATE$", 529
  12018 DATA "TIME$", 530
  12019 DATA "INPUT$", 531
  12020 DATA "MKI$", 532
  12021 DATA "MKS$", 533
  12022 DATA "MKD$", 534
  12023 DATA "MKL$", 535
  12024 DATA "TRIM$", 536
  12025 DATA "LTRIM$", 537
  12026 DATA "RTRIM$", 538
  12027 DATA "OSNAME$", 539
  13000 REM Funciones numericas
  13001 DATA "ASC", 769
  13002 DATA "LEN", 770
  13003 DATA "PEEK",771
  13004 DATA "PROGRAMPTR",772
  13005 DATA "RND",773
  13006 DATA "INT",774
  13007 DATA "SIN",775
  13008 DATA "COS",776
  13009 DATA "PI",777
  13010 DATA "TAN", 778
  13011 DATA "SQR", 779
  13012 DATA "ASIN", 780
  13013 DATA "ACOS", 781
  13014 DATA "INSTR", 782
  13015 DATA "ATAN", 783
  13016 DATA "ABS", 784
  13017 DATA "USR", 785
  13018 DATA "VAL", 786
  13019 DATA "EOF", 787
  13020 DATA "VARPTR", 788
  13021 DATA "SYSVARPTR", 789
  13022 DATA "SGN", 790
  13023 DATA "LOG", 791
  13024 DATA "LOG10", 792
  13025 DATA "EXP", 793
  13026 DATA "TIME", 794
  13027 DATA "ERR", 795
  13028 DATA "ERL", 796
  13029 DATA "CVI", 797
  13030 DATA "CVS", 798
  13031 DATA "CVD", 799
  13032 DATA "CVL", 800
  13033 DATA "MIN", 801
  13034 DATA "MAX", 802
  13035 DATA "CINT", 803
  13036 DATA "FIX", 804
  13037 DATA "XMOUSE", 805
  13038 DATA "YMOUSE", 806
  14000 REM Operadores
  14001 DATA "NOT",1025
  14002 DATA "OR",1026
  14003 DATA "AND",1027
  14004 DATA "TAB",1028
  14005 DATA "SPC", 1029
  14006 DATA "AT", 1030
  14007 DATA "XOR", 1031
  14008 DATA "MOD", 1032
  14009 DATA "USING", 1033
  14999 DATA "***"
  90000 REM Fin