Saturn Assembler                                       Mon Aug 20 23:39:33 2007
V3.0.8 (12/06/2002)                                      continua.a     Page    1

    1             * File  continua.S      1
    2             * RPL
    3             * File  continua.S      2
    4
    5             * File  continua.S      3
    6 00000 00000         CON(5)  =DOCOL
    7             * File  continua.S      4
    8 00005 00000         CON(5)  =CLOSEUART
    9             * File  continua.S      5
   10 0000A 00000         CON(5)  =RECLAIMDISP
   11             * File  continua.S      6
   12 0000F 00000         CON(5)  =TURNMENUOFF
   13             * File  continua.S      7
   14 00014 00000         CON(5)  =ABUFF
   15             * File  continua.S      8
   16
   17             * File  continua.S      9
   18 00019 00000         CON(5)  =DOBINT
   19 0001E E0000         CON(5)  #E
   20             * File  continua.S      10
   21 00023 00000         CON(5)  =DOBINT
   22 00028 10000         CON(5)  #1
   23             * File  continua.S      11
   24 0002D 00000         CON(5)  =MAKEGROB
   25             * File  continua.S      12
   26
   27             * File  continua.S      13
   28
   29             * File  continua.S      14
   30 00032 00000         CON(5)  =DROP
   31             * File  continua.S      15
   32 00037 00000         CON(5)  =DOCODE
   33 0003C A1300         REL(5)  LBL000
   34             * File  continua.S      16
   35 00041 8F000         GOSBVL  =SAVPTR
            00
   36             * File  continua.S      17
   37 00048 147           C=DAT1  A
   38             * File  continua.S      18
   39 0004B 135           D1=C
   40             * File  continua.S      19
   41 0004E 174           D1+     5
   42             * File  continua.S      20
   43 00051 174           D1+     5
   44             * File  continua.S      21
   45 00054 174           D1+     5
   46             * File  continua.S      22
   47 00057 174           D1+     5
   48             * File  continua.S      23
   49 0005A 13713         C=D1    A
            5
   50             * File  continua.S      24
   51 00060 81AF0         R1=C.f  A
            9
   52             * File  continua.S      25
   53 00066 81AF0         R2=C.f  A
            A
   54             * File  continua.S      26
   55 0006C 171           D1+     2
   56             * File  continua.S      27
   57 0006F 13713         C=D1    A
            5
   58             * File  continua.S      28
   59 00075 81AF0         R0=C.f  A
            8
   60             * File  continua.S      29
   61             * File  continua.S      30
   62 0007B 80821         LAHEX   64
            46
   63             * File  continua.S      31
   64 00082       =EJE
   65             * File  continua.S      32
   66 00082 81AF1         C=R1.f  A
            9
   67             * File  continua.S      33
   68 00088 135           D1=C
   69             * File  continua.S      34
   70 0008B 3110          LCHEX   01
   71             * File  continua.S      35
   72 0008F 14D           DAT1=C  B
   73             * File  continua.S      36
   74 00092 13713         C=D1    A
            5
   75             * File  continua.S      37
   76 00098 818F2         C=C+    34      A
            F818F
            2F818F21

   77             * File  continua.S      38
   78 000AA 81AF0         R1=C.f  A
            9
   79             * File  continua.S      39
   80 000B0 A6C           A=A-    1       B
   81             * File  continua.S      40
   82             * File  continua.S      41
   83 000B3 968           ?A=0    B
   84 000B6 60            GOYES   =COORDENADAS
   85             * File  continua.S      42
   86 000B8 69CF          GOTO    =EJE
   87             * File  continua.S      43
   88 000BC       =COORDENADAS
   89             * File  continua.S      44
   90 000BC AF0           A=0     W
   91             * File  continua.S      45
   92 000BF 80820         LAHEX   5
            5
   93             * File  continua.S      46
   94 000C5       =COORD2
   95             * File  continua.S      47
   96 000C5 81AF1         C=R2.f  A
            A
   97             * File  continua.S      48
   98 000CB 135           D1=C
   99             * File  continua.S      49
  100 000CE 3170          LCHEX   07
  101             * File  continua.S      50
  102 000D2 14D           DAT1=C  B
  103             * File  continua.S      51
  104 000D5 13713         C=D1    A
            5
  105             * File  continua.S      52
  106 000DB 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  107             * File  continua.S      53
  108 000F9 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  109             * File  continua.S      54
  110 00117 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  111             * File  continua.S      55
  112 00135 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  113             * File  continua.S      56
  114 00153 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  115             * File  continua.S      57
  116 00171 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  117             * File  continua.S      58
  118 0018F 818F2         C=C+    34      A
            F818F
            2F818F21

  119             * File  continua.S      59
  120 001A1 81AF0         R2=C.f  A
            A
  121             * File  continua.S      60
  122 001A7 A6C           A=A-    1       B
  123             * File  continua.S      61
  124             * File  continua.S      62
  125 001AA 968           ?A=0    B
  126 001AD 60            GOYES   =SIGUE
  127             * File  continua.S      63
  128 001AF 651F          GOTO    =COORD2
  129             * File  continua.S      64
  130 001B3       =SIGUE
  131             * File  continua.S      65
  132 001B3 81AF1         C=R0.f  A
            8
  133             * File  continua.S      66
  134 001B9 135           D1=C
  135             * File  continua.S      67
  136 001BC       =PRINCIPAL
  137             * File  continua.S      68
  138             * File  continua.S      69
  139             * File  continua.S      70
  140 001BC 1             NIBHEX  1
  141 001BD B             NIBHEX  B
  142 001BE 0             NIBHEX  0
  143 001BF 1             NIBHEX  1
  144 001C0 1             NIBHEX  1
  145 001C1 0             NIBHEX  0
  146 001C2 0             NIBHEX  0
  147             * File  continua.S      71
  148 001C3 14E           C=DAT0  B
  149             * File  continua.S      72
  150 001C6 80883         CBIT=0  3
  151             * File  continua.S      73
  152 001CB 14C           DAT0=C  B
  153             * File  continua.S      74
  154             * File  continua.S      75
  155 001CE 1             NIBHEX  1
  156 001CF B             NIBHEX  B
  157 001D0 D             NIBHEX  D
  158 001D1 0             NIBHEX  0
  159 001D2 1             NIBHEX  1
  160 001D3 0             NIBHEX  0
  161 001D4 0             NIBHEX  0
  162             * File  continua.S      76
  163             * File  continua.S      77
  164 001D5 14E           C=DAT0  B
  165             * File  continua.S      78
  166 001D8 80880         CBIT=0  0
  167             * File  continua.S      79
  168 001DD 80891         CBIT=1  1
  169             * File  continua.S      80
  170 001E2 80892         CBIT=1  2
  171             * File  continua.S      81
  172 001E7 14C           DAT0=C  B
  173             * File  continua.S      82
  174 001EA 1             NIBHEX  1
  175 001EB B             NIBHEX  B
  176 001EC 0             NIBHEX  0
  177 001ED 1             NIBHEX  1
  178 001EE 1             NIBHEX  1
  179 001EF 0             NIBHEX  0
  180 001F0 0             NIBHEX  0
  181             * File  continua.S      83
  182 001F1 14E           C=DAT0  B
  183             * File  continua.S      84
  184 001F4 80893         CBIT=1  3
  185             * File  continua.S      85
  186 001F9 14C           DAT0=C  B
  187             * File  continua.S      86
  188 001FC       =BUCLE
  189             * File  continua.S      87
  190 001FC 8EB90         GOSUBL  =ON
            0
  191             * File  continua.S      88
  192 00202 1             NIBHEX  1
  193 00203 B             NIBHEX  B
  194 00204 1             NIBHEX  1
  195 00205 1             NIBHEX  1
  196 00206 1             NIBHEX  1
  197 00207 0             NIBHEX  0
  198 00208 0             NIBHEX  0
  199             * File  continua.S      89
  200             * File  continua.S      90
  201             * File  continua.S      91
  202
  203             * File  continua.S      92
  204 00209 14E           C=DAT0  B
  205             * File  continua.S      93
  206             * File  continua.S      94
  207 0020C 808A0         ?CBIT=0 0
  208 00211 BE            GOYES   =BUCLE
  209             * File  continua.S      95
  210 00213 1             NIBHEX  1
  211 00214 B             NIBHEX  B
  212 00215 4             NIBHEX  4
  213 00216 1             NIBHEX  1
  214 00217 1             NIBHEX  1
  215 00218 0             NIBHEX  0
  216 00219 0             NIBHEX  0
  217             * File  continua.S      96
  218             * File  continua.S      97
  219             * File  continua.S      98
  220 0021A AF0           A=0     W
  221             * File  continua.S      99
  222 0021D 14A           A=DAT0  B
  223             * File  continua.S      100
  224
  225             * File  continua.S      101
  226 00220 81960         ASRB.f  B
  227             * File  continua.S      102
  228 00225 81960         ASRB.f  B
  229             * File  continua.S      103
  230 0022A BE8           A=-A    B
  231             * File  continua.S      104
  232 0022D 81860         A=A+    64      B
            F8186
            0F81860F81860F

  233             * File  continua.S      105
  234             * File  continua.S      106
  235             * File  continua.S      107
  236             * File  continua.S      108
  237             * File  continua.S      109
  238             * File  continua.S      110
  239 00245 34220         LCHEX   00022
            00
  240             * File  continua.S      111
  241 0024C 8F000         GOSBVL  =MUL#
            00
  242             * File  continua.S      112
  243 00253 81AF1         C=R0.f  A
            8
  244             * File  continua.S      113
  245 00259 C1            B=B+C   A
  246             * File  continua.S      114
  247 0025B 13713         C=D1    A
            5
  248             * File  continua.S      115
  249             * File  continua.S      116
  250 00261 8BD           ?C>=B   A
  251 00264 C0            GOYES   =DECREMENTO
  252             * File  continua.S      117
  253 00266 8E250         GOSUBL  =INCREMENTO
            0
  254             * File  continua.S      118
  255 0026C 6A10          GOTO    =LINEA
  256             * File  continua.S      119
  257 00270       =DECREMENTO
  258             * File  continua.S      120
  259 00270 818FA         C=C-    34      A
            F818F
            AF818FA1

  260             * File  continua.S      121
  261             * File  continua.S      122
  262 00282 8B5           ?C>B    A
  263 00285 BE            GOYES   =DECREMENTO
  264             * File  continua.S      123
  265 00287       =LINEA
  266             * File  continua.S      124
  267             * File  continua.S      125
  268 00287 135           D1=C
  269             * File  continua.S      126
  270 0028A 3111          LCHEX   11
  271             * File  continua.S      127
  272 0028E 14D           DAT1=C  B
  273             * File  continua.S      128
  274             * File  continua.S      129
  275 00291 8E240         GOSUBL  =DESPLAZAMIENTO
            0
  276             * File  continua.S      130
  277 00297 8C32F         GOLONG  =PRINCIPAL
            F
  278             * File  continua.S      131
  279
  280             * File  continua.S      132
  281 0029D       =ON
  282             * File  continua.S      133
  283             * File  continua.S      134
  284 0029D 84F           ST=0    15
  285             * File  continua.S      135
  286 002A0       =LOOP1
  287             * File  continua.S      136
  288 002A0 8F000         GOSBVL  =CINRTN
            00
  289             * File  continua.S      137
  290             * File  continua.S      138
  291 002A7 808AF         ?CBIT=0 15
  292 002AC 00            RTNYES
  293             * File  continua.S      139
  294 002AE 85F           ST=1    15
  295             * File  continua.S      140
  296 002B1 7700          GOSUB   =REINT
  297             * File  continua.S      141
  298 002B5 8F000         GOSBVL  =GETPTRLOOP
            00
  299             * File  continua.S      142
  300 002BC       =REINT
  301             * File  continua.S      143
  302 002BC 0F            RTI
  303             * File  continua.S      144
  304 002BE       =INCREMENTO
  305             * File  continua.S      145
  306             * File  continua.S      146
  307 002BE 8BD           ?C>=B   A
  308 002C1 00            RTNYES
  309             * File  continua.S      147
  310 002C3 818F2         C=C+    34      A
            F818F
            2F818F21

  311             * File  continua.S      148
  312 002D5 68EF          GOTO    =INCREMENTO
  313             * File  continua.S      149
  314             * File  continua.S      150
  315 002D9       =DESPLAZAMIENTO
  316             * File  continua.S      151
  317 002D9 80821         LAHEX   40
            04
  318             * File  continua.S      152
  319 002E0 81AF1         C=R0.f  A
            8
  320             * File  continua.S      153
  321 002E6 134           D0=C
  322             * File  continua.S      154
  323 002E9 3F000         LCHEX   1000000000000000
            00000
            00000001

  324             * File  continua.S      155
  325 002FB AF5           B=C     W
  326             * File  continua.S      156
  327 002FE       =CUENTA
  328             * File  continua.S      157
  329 002FE 1567          C=DAT0  W
  330             * File  continua.S      158
  331             * File  continua.S      159
  332 00302 941           ?C=B    S
  333 00305 60            GOYES   =ADD
  334             * File  continua.S      160
  335 00307 6720          GOTO    =SIGUIENTE
  336             * File  continua.S      161
  337 0030B       =ADD
  338             * File  continua.S      162
  339 0030B BF2           CSL     W
  340             * File  continua.S      163
  341 0030E 1547          DAT0=C  W
  342             * File  continua.S      164
  343 00312 16F           D0+     16
  344             * File  continua.S      165
  345 00315 1567          C=DAT0  W
  346             * File  continua.S      166
  347 00319 BF2           CSL     W
  348             * File  continua.S      167
  349 0031C 80890         CBIT=1  0
  350             * File  continua.S      168
  351 00321 1547          DAT0=C  W
  352             * File  continua.S      169
  353 00325 16F16         D0+     18
            1
  354             * File  continua.S      170
  355 0032B 6320          GOTO    =CUENTALINE
  356             * File  continua.S      171
  357 0032F       =SIGUIENTE
  358             * File  continua.S      172
  359 0032F BF2           CSL     W
  360             * File  continua.S      173
  361 00332 1547          DAT0=C  W
  362             * File  continua.S      174
  363 00336 16F           D0+     16
  364             * File  continua.S      175
  365 00339 1567          C=DAT0  W
  366             * File  continua.S      176
  367 0033D BF2           CSL     W
  368             * File  continua.S      177
  369 00340 1547          DAT0=C  W
  370             * File  continua.S      178
  371 00344 16F16         D0+     18
            1
  372             * File  continua.S      179
  373
  374             * File  continua.S      180
  375             * File  continua.S      181
  376 0034A 968           ?A=0    B
  377 0034D 00            RTNYES
  378             * File  continua.S      182
  379 0034F       =CUENTALINE
  380             * File  continua.S      183
  381 0034F A6C           A=A-    1       B
  382             * File  continua.S      184
  383 00352 6BAF          GOTO    =CUENTA
  384             * File  continua.S      185
  385
  386             * File  continua.S      186
  387
  388             * File  continua.S      187
  389
  390             * File  continua.S      188
  391 00356       LBL000
  392             * File  continua.S      189
  393 00356 00000         CON(5)  =DROP
  394             * File  continua.S      190
  395 0035B 00000         CON(5)  =TURNMENUON
  396             * File  continua.S      191
  397 00360 00000         CON(5)  =RECLAIMDISP
  398             * File  continua.S      192
  399 00365 00000         CON(5)  =CLOSEUART
  400             * File  continua.S      193
  401
  402             * File  continua.S      194
  403
  404             * File  continua.S      195
  405 0036A 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon Aug 20 23:39:33 2007
V3.0.8 (12/06/2002)   Symbol Table                       continua.a     Page    2

 ABUFF                             Ext                   -    14
=ADD                               Rel     779 #0000030B -   337   333
=BUCLE                             Rel     508 #000001FC -   188   208
 CINRTN                            Ext                   -   288
 CLOSEUART                         Ext                   -     8   399
=COORD2                            Rel     197 #000000C5 -    94   128
=COORDENADAS                       Rel     188 #000000BC -    88    84
=CUENTA                            Rel     766 #000002FE -   327   383
=CUENTALINE                        Rel     847 #0000034F -   379   355
=DECREMENTO                        Rel     624 #00000270 -   257   251   263
=DESPLAZAMIENTO                    Rel     729 #000002D9 -   315   275
 DOBINT                            Ext                   -    18    21
 DOCODE                            Ext                   -    32
 DOCOL                             Ext                   -     6
 DROP                              Ext                   -    30   393
=EJE                               Rel     130 #00000082 -    64    86
 GETPTRLOOP                        Ext                   -   298
=INCREMENTO                        Rel     702 #000002BE -   304   253   312
 LBL000                            Rel     854 #00000356 -   391    33
=LINEA                             Rel     647 #00000287 -   265   255
=LOOP1                             Rel     672 #000002A0 -   286
 MAKEGROB                          Ext                   -    24
 MUL#                              Ext                   -   241
=ON                                Rel     669 #0000029D -   281   190
=PRINCIPAL                         Rel     444 #000001BC -   136   277
 RECLAIMDISP                       Ext                   -    10   397
=REINT                             Rel     700 #000002BC -   300   296
 SAVPTR                            Ext                   -    35
 SEMI                              Ext                   -   405
=SIGUE                             Rel     435 #000001B3 -   130   126
=SIGUIENTE                         Rel     815 #0000032F -   357   335
 TURNMENUOFF                       Ext                   -    12
 TURNMENUON                        Ext                   -   395
Saturn Assembler                                       Mon Aug 20 23:39:33 2007
V3.0.8 (12/06/2002)   Statistics                         continua.a     Page    3

Input Parameters

  Source file name is continua.a

  Listing file name is continua.l

  Object file name is continua.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
