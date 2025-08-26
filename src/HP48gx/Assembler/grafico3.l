Saturn Assembler                                       Fri Sep 19 23:01:43 2008
V3.0.8 (12/06/2002)                                      grafico3.a     Page    1

    1             * File  grafico3.S      1
    2             * RPL
    3             * File  grafico3.S      2
    4
    5             * File  grafico3.S      3
    6 00000 00000         CON(5)  =DOCOL
    7             * File  grafico3.S      4
    8 00005 00000         CON(5)  =CLOSEUART
    9             * File  grafico3.S      5
   10 0000A 00000         CON(5)  =RECLAIMDISP
   11             * File  grafico3.S      6
   12 0000F 00000         CON(5)  =TURNMENUOFF
   13             * File  grafico3.S      7
   14 00014 00000         CON(5)  =ABUFF
   15             * File  grafico3.S      8
   16
   17             * File  grafico3.S      9
   18 00019 00000         CON(5)  =DOBINT
   19 0001E E0000         CON(5)  #E
   20             * File  grafico3.S      10
   21 00023 00000         CON(5)  =DOBINT
   22 00028 10000         CON(5)  #1
   23             * File  grafico3.S      11
   24 0002D 00000         CON(5)  =MAKEGROB
   25             * File  grafico3.S      12
   26
   27             * File  grafico3.S      13
   28
   29             * File  grafico3.S      14
   30 00032 00000         CON(5)  =DROP
   31             * File  grafico3.S      15
   32 00037 00000         CON(5)  =DOCODE
   33 0003C 4C100         REL(5)  LBL000
   34             * File  grafico3.S      16
   35 00041 8F000         GOSBVL  =SAVPTR
            00
   36             * File  grafico3.S      17
   37 00048 147           C=DAT1  A
   38             * File  grafico3.S      18
   39 0004B 135           D1=C
   40             * File  grafico3.S      19
   41 0004E 174           D1+     5
   42             * File  grafico3.S      20
   43 00051 174           D1+     5
   44             * File  grafico3.S      21
   45 00054 174           D1+     5
   46             * File  grafico3.S      22
   47 00057 174           D1+     5
   48             * File  grafico3.S      23
   49
   50             * File  grafico3.S      24
   51 0005A 13713         C=D1    A
            5
   52             * File  grafico3.S      25
   53 00060 81AF0         R0=C.f  A
            8
   54             * File  grafico3.S      26
   55
   56             * File  grafico3.S      27
   57 00066       =PRINCIPAL
   58             * File  grafico3.S      28
   59             * File  grafico3.S      29
   60             * File  grafico3.S      30
   61 00066 1             NIBHEX  1
   62 00067 B             NIBHEX  B
   63 00068 0             NIBHEX  0
   64 00069 1             NIBHEX  1
   65 0006A 1             NIBHEX  1
   66 0006B 0             NIBHEX  0
   67 0006C 0             NIBHEX  0
   68             * File  grafico3.S      31
   69 0006D 14E           C=DAT0  B
   70             * File  grafico3.S      32
   71 00070 80883         CBIT=0  3
   72             * File  grafico3.S      33
   73 00075 14C           DAT0=C  B
   74             * File  grafico3.S      34
   75             * File  grafico3.S      35
   76 00078 1             NIBHEX  1
   77 00079 B             NIBHEX  B
   78 0007A D             NIBHEX  D
   79 0007B 0             NIBHEX  0
   80 0007C 1             NIBHEX  1
   81 0007D 0             NIBHEX  0
   82 0007E 0             NIBHEX  0
   83             * File  grafico3.S      36
   84             * File  grafico3.S      37
   85 0007F 14E           C=DAT0  B
   86             * File  grafico3.S      38
   87 00082 80880         CBIT=0  0
   88             * File  grafico3.S      39
   89 00087 80891         CBIT=1  1
   90             * File  grafico3.S      40
   91 0008C 80892         CBIT=1  2
   92             * File  grafico3.S      41
   93 00091 14C           DAT0=C  B
   94             * File  grafico3.S      42
   95 00094 1             NIBHEX  1
   96 00095 B             NIBHEX  B
   97 00096 0             NIBHEX  0
   98 00097 1             NIBHEX  1
   99 00098 1             NIBHEX  1
  100 00099 0             NIBHEX  0
  101 0009A 0             NIBHEX  0
  102             * File  grafico3.S      43
  103 0009B 14E           C=DAT0  B
  104             * File  grafico3.S      44
  105 0009E 80893         CBIT=1  3
  106             * File  grafico3.S      45
  107 000A3 14C           DAT0=C  B
  108             * File  grafico3.S      46
  109 000A6       =BUCLE
  110             * File  grafico3.S      47
  111 000A6 8EB90         GOSUBL  =ON
            0
  112             * File  grafico3.S      48
  113 000AC 1             NIBHEX  1
  114 000AD B             NIBHEX  B
  115 000AE 1             NIBHEX  1
  116 000AF 1             NIBHEX  1
  117 000B0 1             NIBHEX  1
  118 000B1 0             NIBHEX  0
  119 000B2 0             NIBHEX  0
  120             * File  grafico3.S      49
  121             * File  grafico3.S      50
  122             * File  grafico3.S      51
  123
  124             * File  grafico3.S      52
  125 000B3 14E           C=DAT0  B
  126             * File  grafico3.S      53
  127             * File  grafico3.S      54
  128 000B6 808A0         ?CBIT=0 0
  129 000BB BE            GOYES   =BUCLE
  130             * File  grafico3.S      55
  131 000BD 1             NIBHEX  1
  132 000BE B             NIBHEX  B
  133 000BF 4             NIBHEX  4
  134 000C0 1             NIBHEX  1
  135 000C1 1             NIBHEX  1
  136 000C2 0             NIBHEX  0
  137 000C3 0             NIBHEX  0
  138             * File  grafico3.S      56
  139             * File  grafico3.S      57
  140             * File  grafico3.S      58
  141 000C4 AF0           A=0     W
  142             * File  grafico3.S      59
  143 000C7 14A           A=DAT0  B
  144             * File  grafico3.S      60
  145
  146             * File  grafico3.S      61
  147 000CA 81960         ASRB.f  B
  148             * File  grafico3.S      62
  149 000CF 81960         ASRB.f  B
  150             * File  grafico3.S      63
  151 000D4 BE8           A=-A    B
  152             * File  grafico3.S      64
  153 000D7 81860         A=A+    64      B
            F8186
            0F81860F81860F

  154             * File  grafico3.S      65
  155             * File  grafico3.S      66
  156             * File  grafico3.S      67
  157             * File  grafico3.S      68
  158             * File  grafico3.S      69
  159             * File  grafico3.S      70
  160 000EF 34220         LCHEX   00022
            00
  161             * File  grafico3.S      71
  162 000F6 8F000         GOSBVL  =MUL#
            00
  163             * File  grafico3.S      72
  164 000FD 81AF1         C=R0.f  A
            8
  165             * File  grafico3.S      73
  166 00103 C1            B=B+C   A
  167             * File  grafico3.S      74
  168 00105 13713         C=D1    A
            5
  169             * File  grafico3.S      75
  170             * File  grafico3.S      76
  171 0010B 8BD           ?C>=B   A
  172 0010E C0            GOYES   =DECREMENTO
  173             * File  grafico3.S      77
  174 00110 8E250         GOSUBL  =INCREMENTO
            0
  175             * File  grafico3.S      78
  176 00116 6A10          GOTO    =LINEA
  177             * File  grafico3.S      79
  178 0011A       =DECREMENTO
  179             * File  grafico3.S      80
  180 0011A 818FA         C=C-    34      A
            F818F
            AF818FA1

  181             * File  grafico3.S      81
  182             * File  grafico3.S      82
  183 0012C 8B5           ?C>B    A
  184 0012F BE            GOYES   =DECREMENTO
  185             * File  grafico3.S      83
  186 00131       =LINEA
  187             * File  grafico3.S      84
  188             * File  grafico3.S      85
  189 00131 135           D1=C
  190             * File  grafico3.S      86
  191 00134 3111          LCHEX   11
  192             * File  grafico3.S      87
  193 00138 14D           DAT1=C  B
  194             * File  grafico3.S      88
  195             * File  grafico3.S      89
  196 0013B 8E240         GOSUBL  =DESPLAZAMIENTO
            0
  197             * File  grafico3.S      90
  198 00141 8C32F         GOLONG  =PRINCIPAL
            F
  199             * File  grafico3.S      91
  200
  201             * File  grafico3.S      92
  202 00147       =ON
  203             * File  grafico3.S      93
  204             * File  grafico3.S      94
  205 00147 84F           ST=0    15
  206             * File  grafico3.S      95
  207 0014A       =LOOP1
  208             * File  grafico3.S      96
  209 0014A 8F000         GOSBVL  =CINRTN
            00
  210             * File  grafico3.S      97
  211             * File  grafico3.S      98
  212 00151 808AF         ?CBIT=0 15
  213 00156 00            RTNYES
  214             * File  grafico3.S      99
  215 00158 85F           ST=1    15
  216             * File  grafico3.S      100
  217 0015B 7700          GOSUB   =REINT
  218             * File  grafico3.S      101
  219 0015F 8F000         GOSBVL  =GETPTRLOOP
            00
  220             * File  grafico3.S      102
  221 00166       =REINT
  222             * File  grafico3.S      103
  223 00166 0F            RTI
  224             * File  grafico3.S      104
  225 00168       =INCREMENTO
  226             * File  grafico3.S      105
  227             * File  grafico3.S      106
  228 00168 8BD           ?C>=B   A
  229 0016B 00            RTNYES
  230             * File  grafico3.S      107
  231 0016D 818F2         C=C+    34      A
            F818F
            2F818F21

  232             * File  grafico3.S      108
  233 0017F 68EF          GOTO    =INCREMENTO
  234             * File  grafico3.S      109
  235             * File  grafico3.S      110
  236 00183       =DESPLAZAMIENTO
  237             * File  grafico3.S      111
  238 00183 80821         LAHEX   40
            04
  239             * File  grafico3.S      112
  240 0018A 81AF1         C=R0.f  A
            8
  241             * File  grafico3.S      113
  242 00190 134           D0=C
  243             * File  grafico3.S      114
  244 00193 3F000         LCHEX   1000000000000000
            00000
            00000001

  245             * File  grafico3.S      115
  246 001A5 AF5           B=C     W
  247             * File  grafico3.S      116
  248 001A8       =CUENTA
  249             * File  grafico3.S      117
  250 001A8 1567          C=DAT0  W
  251             * File  grafico3.S      118
  252             * File  grafico3.S      119
  253 001AC 941           ?C=B    S
  254 001AF 60            GOYES   =ADD
  255             * File  grafico3.S      120
  256 001B1 6720          GOTO    =SIGUIENTE
  257             * File  grafico3.S      121
  258 001B5       =ADD
  259             * File  grafico3.S      122
  260 001B5 BF2           CSL     W
  261             * File  grafico3.S      123
  262 001B8 1547          DAT0=C  W
  263             * File  grafico3.S      124
  264 001BC 16F           D0+     16
  265             * File  grafico3.S      125
  266 001BF 1567          C=DAT0  W
  267             * File  grafico3.S      126
  268 001C3 BF2           CSL     W
  269             * File  grafico3.S      127
  270 001C6 80890         CBIT=1  0
  271             * File  grafico3.S      128
  272 001CB 1547          DAT0=C  W
  273             * File  grafico3.S      129
  274 001CF 16F16         D0+     18
            1
  275             * File  grafico3.S      130
  276 001D5 6320          GOTO    =CUENTALINE
  277             * File  grafico3.S      131
  278 001D9       =SIGUIENTE
  279             * File  grafico3.S      132
  280 001D9 BF2           CSL     W
  281             * File  grafico3.S      133
  282 001DC 1547          DAT0=C  W
  283             * File  grafico3.S      134
  284 001E0 16F           D0+     16
  285             * File  grafico3.S      135
  286 001E3 1567          C=DAT0  W
  287             * File  grafico3.S      136
  288 001E7 BF2           CSL     W
  289             * File  grafico3.S      137
  290 001EA 1547          DAT0=C  W
  291             * File  grafico3.S      138
  292 001EE 16F16         D0+     18
            1
  293             * File  grafico3.S      139
  294
  295             * File  grafico3.S      140
  296             * File  grafico3.S      141
  297 001F4 968           ?A=0    B
  298 001F7 00            RTNYES
  299             * File  grafico3.S      142
  300 001F9       =CUENTALINE
  301             * File  grafico3.S      143
  302 001F9 A6C           A=A-    1       B
  303             * File  grafico3.S      144
  304 001FC 6BAF          GOTO    =CUENTA
  305             * File  grafico3.S      145
  306
  307             * File  grafico3.S      146
  308
  309             * File  grafico3.S      147
  310
  311             * File  grafico3.S      148
  312 00200       LBL000
  313             * File  grafico3.S      149
  314 00200 00000         CON(5)  =DROP
  315             * File  grafico3.S      150
  316 00205 00000         CON(5)  =TURNMENUON
  317             * File  grafico3.S      151
  318 0020A 00000         CON(5)  =RECLAIMDISP
  319             * File  grafico3.S      152
  320 0020F 00000         CON(5)  =CLOSEUART
  321             * File  grafico3.S      153
  322
  323             * File  grafico3.S      154
  324
  325             * File  grafico3.S      155
  326 00214 00000         CON(5)  =SEMI
Saturn Assembler                                       Fri Sep 19 23:01:43 2008
V3.0.8 (12/06/2002)   Symbol Table                       grafico3.a     Page    2

 ABUFF                             Ext                   -    14
=ADD                               Rel     437 #000001B5 -   258   254
=BUCLE                             Rel     166 #000000A6 -   109   129
 CINRTN                            Ext                   -   209
 CLOSEUART                         Ext                   -     8   320
=CUENTA                            Rel     424 #000001A8 -   248   304
=CUENTALINE                        Rel     505 #000001F9 -   300   276
=DECREMENTO                        Rel     282 #0000011A -   178   172   184
=DESPLAZAMIENTO                    Rel     387 #00000183 -   236   196
 DOBINT                            Ext                   -    18    21
 DOCODE                            Ext                   -    32
 DOCOL                             Ext                   -     6
 DROP                              Ext                   -    30   314
 GETPTRLOOP                        Ext                   -   219
=INCREMENTO                        Rel     360 #00000168 -   225   174   233
 LBL000                            Rel     512 #00000200 -   312    33
=LINEA                             Rel     305 #00000131 -   186   176
=LOOP1                             Rel     330 #0000014A -   207
 MAKEGROB                          Ext                   -    24
 MUL#                              Ext                   -   162
=ON                                Rel     327 #00000147 -   202   111
=PRINCIPAL                         Rel     102 #00000066 -    57   198
 RECLAIMDISP                       Ext                   -    10   318
=REINT                             Rel     358 #00000166 -   221   217
 SAVPTR                            Ext                   -    35
 SEMI                              Ext                   -   326
=SIGUIENTE                         Rel     473 #000001D9 -   278   256
 TURNMENUOFF                       Ext                   -    12
 TURNMENUON                        Ext                   -   316
Saturn Assembler                                       Fri Sep 19 23:01:43 2008
V3.0.8 (12/06/2002)   Statistics                         grafico3.a     Page    3

Input Parameters

  Source file name is grafico3.a

  Listing file name is grafico3.l

  Object file name is grafico3.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
