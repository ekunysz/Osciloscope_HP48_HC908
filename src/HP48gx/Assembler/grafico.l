Saturn Assembler                                       Sat Nov 03 16:49:58 2007
V3.0.8 (12/06/2002)                                      grafico.a      Page    1

    1             * File  grafico.S       1
    2             * RPL
    3             * File  grafico.S       2
    4
    5             * File  grafico.S       3
    6 00000 00000         CON(5)  =DOCOL
    7             * File  grafico.S       4
    8 00005 00000         CON(5)  =CLOSEUART
    9             * File  grafico.S       5
   10 0000A 00000         CON(5)  =RECLAIMDISP
   11             * File  grafico.S       6
   12 0000F 00000         CON(5)  =TURNMENUOFF
   13             * File  grafico.S       7
   14 00014 00000         CON(5)  =ABUFF
   15             * File  grafico.S       8
   16
   17             * File  grafico.S       9
   18 00019 00000         CON(5)  =DOBINT
   19 0001E E0000         CON(5)  #E
   20             * File  grafico.S       10
   21 00023 00000         CON(5)  =DOBINT
   22 00028 10000         CON(5)  #1
   23             * File  grafico.S       11
   24 0002D 00000         CON(5)  =MAKEGROB
   25             * File  grafico.S       12
   26
   27             * File  grafico.S       13
   28
   29             * File  grafico.S       14
   30 00032 00000         CON(5)  =DROP
   31             * File  grafico.S       15
   32 00037 00000         CON(5)  =DOCODE
   33 0003C B3100         REL(5)  LBL000
   34             * File  grafico.S       16
   35 00041 8F000         GOSBVL  =SAVPTR
            00
   36             * File  grafico.S       17
   37 00048 147           C=DAT1  A
   38             * File  grafico.S       18
   39 0004B 135           D1=C
   40             * File  grafico.S       19
   41 0004E 174           D1+     5
   42             * File  grafico.S       20
   43 00051 174           D1+     5
   44             * File  grafico.S       21
   45 00054 174           D1+     5
   46             * File  grafico.S       22
   47 00057 174           D1+     5
   48             * File  grafico.S       23
   49 0005A 13713         C=D1    A
            5
   50             * File  grafico.S       24
   51 00060 81AF0         R0=C.f  A
            8
   52             * File  grafico.S       25
   53 00066 3122          LCHEX   22
   54             * File  grafico.S       26
   55 0006A AE7           D=C     B
   56             * File  grafico.S       27
   57
   58             * File  grafico.S       28
   59 0006D       =PRINCIPAL
   60             * File  grafico.S       29
   61             * File  grafico.S       30
   62 0006D 1             NIBHEX  1
   63 0006E B             NIBHEX  B
   64 0006F D             NIBHEX  D
   65 00070 0             NIBHEX  0
   66 00071 1             NIBHEX  1
   67 00072 0             NIBHEX  0
   68 00073 0             NIBHEX  0
   69             * File  grafico.S       31
   70             * File  grafico.S       32
   71 00074 14E           C=DAT0  B
   72             * File  grafico.S       33
   73 00077 80880         CBIT=0  0
   74             * File  grafico.S       34
   75 0007C 80891         CBIT=1  1
   76             * File  grafico.S       35
   77 00081 80892         CBIT=1  2
   78             * File  grafico.S       36
   79 00086 14C           DAT0=C  B
   80             * File  grafico.S       37
   81 00089 1             NIBHEX  1
   82 0008A B             NIBHEX  B
   83 0008B 0             NIBHEX  0
   84 0008C 1             NIBHEX  1
   85 0008D 1             NIBHEX  1
   86 0008E 0             NIBHEX  0
   87 0008F 0             NIBHEX  0
   88             * File  grafico.S       38
   89 00090 14E           C=DAT0  B
   90             * File  grafico.S       39
   91 00093 80893         CBIT=1  3
   92             * File  grafico.S       40
   93 00098 14C           DAT0=C  B
   94             * File  grafico.S       41
   95 0009B       =BUCLE
   96             * File  grafico.S       42
   97 0009B 1             NIBHEX  1
   98 0009C B             NIBHEX  B
   99 0009D 1             NIBHEX  1
  100 0009E 1             NIBHEX  1
  101 0009F 1             NIBHEX  1
  102 000A0 0             NIBHEX  0
  103 000A1 0             NIBHEX  0
  104             * File  grafico.S       43
  105             * File  grafico.S       44
  106             * File  grafico.S       45
  107 000A2 14E           C=DAT0  B
  108             * File  grafico.S       46
  109             * File  grafico.S       47
  110 000A5 808A0         ?CBIT=0 0
  111 000AA 1F            GOYES   =BUCLE
  112             * File  grafico.S       48
  113 000AC 1             NIBHEX  1
  114 000AD B             NIBHEX  B
  115 000AE 4             NIBHEX  4
  116 000AF 1             NIBHEX  1
  117 000B0 1             NIBHEX  1
  118 000B1 0             NIBHEX  0
  119 000B2 0             NIBHEX  0
  120             * File  grafico.S       49
  121             * File  grafico.S       50
  122             * File  grafico.S       51
  123 000B3 AF0           A=0     W
  124             * File  grafico.S       52
  125 000B6 14A           A=DAT0  B
  126             * File  grafico.S       53
  127
  128             * File  grafico.S       54
  129 000B9 81960         ASRB.f  B
  130             * File  grafico.S       55
  131 000BE 81960         ASRB.f  B
  132             * File  grafico.S       56
  133
  134             * File  grafico.S       57
  135 000C3 BE8           A=-A    B
  136             * File  grafico.S       58
  137 000C6 81860         A=A+    64      B
            F8186
            0F81860F81860F

  138             * File  grafico.S       59
  139             * File  grafico.S       60
  140             * File  grafico.S       61
  141             * File  grafico.S       62
  142 000DE 34220         LCHEX   00022
            00
  143             * File  grafico.S       63
  144 000E5 8F000         GOSBVL  =MUL#
            00
  145             * File  grafico.S       64
  146 000EC 81AF1         C=R0.f  A
            8
  147             * File  grafico.S       65
  148 000F2 C1            B=B+C   A
  149             * File  grafico.S       66
  150 000F4 13713         C=D1    A
            5
  151             * File  grafico.S       67
  152             * File  grafico.S       68
  153 000FA 8BD           ?C>=B   A
  154 000FD C0            GOYES   =DECREMENTO
  155             * File  grafico.S       69
  156 000FF 8E750         GOSUBL  =INCREMENTO
            0
  157             * File  grafico.S       70
  158 00105 6A10          GOTO    =LINEA
  159             * File  grafico.S       71
  160 00109       =DECREMENTO
  161             * File  grafico.S       72
  162 00109 818FA         C=C-    34      A
            F818F
            AF818FA1

  163             * File  grafico.S       73
  164             * File  grafico.S       74
  165 0011B 8B5           ?C>B    A
  166 0011E BE            GOYES   =DECREMENTO
  167             * File  grafico.S       75
  168 00120       =LINEA
  169             * File  grafico.S       76
  170             * File  grafico.S       77
  171 00120 135           D1=C
  172             * File  grafico.S       78
  173 00123 3170          LCHEX   07
  174             * File  grafico.S       79
  175 00127 14D           DAT1=C  B
  176             * File  grafico.S       80
  177 0012A 170           D1+     1
  178             * File  grafico.S       81
  179 0012D A6F           D=D-    1       B
  180             * File  grafico.S       82
  181             * File  grafico.S       83
  182 00130 96B           ?D=0    B
  183 00133 80            GOYES   =ON
  184             * File  grafico.S       84
  185 00135 8C63F         GOLONG  =PRINCIPAL
            F
  186             * File  grafico.S       85
  187 0013B       =ON
  188             * File  grafico.S       86
  189             * File  grafico.S       87
  190 0013B 84F           ST=0    15
  191             * File  grafico.S       88
  192 0013E       =LOOP1
  193             * File  grafico.S       89
  194 0013E 8F000         GOSBVL  =CINRTN
            00
  195             * File  grafico.S       90
  196             * File  grafico.S       91
  197 00145 808AF         ?CBIT=0 15
  198 0014A 4F            GOYES   =LOOP1
  199             * File  grafico.S       92
  200 0014C 85F           ST=1    15
  201             * File  grafico.S       93
  202 0014F 7700          GOSUB   =REINT
  203             * File  grafico.S       94
  204 00153 8F000         GOSBVL  =GETPTRLOOP
            00
  205             * File  grafico.S       95
  206 0015A       =REINT
  207             * File  grafico.S       96
  208 0015A 0F            RTI
  209             * File  grafico.S       97
  210 0015C       =INCREMENTO
  211             * File  grafico.S       98
  212             * File  grafico.S       99
  213 0015C 8BD           ?C>=B   A
  214 0015F 00            RTNYES
  215             * File  grafico.S       100
  216 00161 818F2         C=C+    34      A
            F818F
            2F818F21

  217             * File  grafico.S       101
  218 00173 68EF          GOTO    =INCREMENTO
  219             * File  grafico.S       102
  220
  221             * File  grafico.S       103
  222 00177       LBL000
  223             * File  grafico.S       104
  224 00177 00000         CON(5)  =DROP
  225             * File  grafico.S       105
  226 0017C 00000         CON(5)  =TURNMENUON
  227             * File  grafico.S       106
  228 00181 00000         CON(5)  =RECLAIMDISP
  229             * File  grafico.S       107
  230
  231             * File  grafico.S       108
  232
  233             * File  grafico.S       109
  234
  235             * File  grafico.S       110
  236 00186 00000         CON(5)  =SEMI
Saturn Assembler                                       Sat Nov 03 16:49:58 2007
V3.0.8 (12/06/2002)   Symbol Table                       grafico.a      Page    2

 ABUFF                             Ext                   -    14
=BUCLE                             Rel     155 #0000009B -    95   111
 CINRTN                            Ext                   -   194
 CLOSEUART                         Ext                   -     8
=DECREMENTO                        Rel     265 #00000109 -   160   154   166
 DOBINT                            Ext                   -    18    21
 DOCODE                            Ext                   -    32
 DOCOL                             Ext                   -     6
 DROP                              Ext                   -    30   224
 GETPTRLOOP                        Ext                   -   204
=INCREMENTO                        Rel     348 #0000015C -   210   156   218
 LBL000                            Rel     375 #00000177 -   222    33
=LINEA                             Rel     288 #00000120 -   168   158
=LOOP1                             Rel     318 #0000013E -   192   198
 MAKEGROB                          Ext                   -    24
 MUL#                              Ext                   -   144
=ON                                Rel     315 #0000013B -   187   183
=PRINCIPAL                         Rel     109 #0000006D -    59   185
 RECLAIMDISP                       Ext                   -    10   228
=REINT                             Rel     346 #0000015A -   206   202
 SAVPTR                            Ext                   -    35
 SEMI                              Ext                   -   236
 TURNMENUOFF                       Ext                   -    12
 TURNMENUON                        Ext                   -   226
Saturn Assembler                                       Sat Nov 03 16:49:58 2007
V3.0.8 (12/06/2002)   Statistics                         grafico.a      Page    3

Input Parameters

  Source file name is grafico.a

  Listing file name is grafico.l

  Object file name is grafico.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
