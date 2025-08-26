Saturn Assembler                                       Mon Aug 20 20:41:40 2007
V3.0.8 (12/06/2002)                                      EJE.a          Page    1

    1             * File  EJE.S   1
    2             * RPL
    3             * File  EJE.S   2
    4
    5             * File  EJE.S   3
    6 00000 00000         CON(5)  =DOCOL
    7             * File  EJE.S   4
    8 00005 00000         CON(5)  =CLOSEUART
    9             * File  EJE.S   5
   10 0000A 00000         CON(5)  =RECLAIMDISP
   11             * File  EJE.S   6
   12 0000F 00000         CON(5)  =TURNMENUOFF
   13             * File  EJE.S   7
   14 00014 00000         CON(5)  =ABUFF
   15             * File  EJE.S   8
   16
   17             * File  EJE.S   9
   18 00019 00000         CON(5)  =DOBINT
   19 0001E E0000         CON(5)  #E
   20             * File  EJE.S   10
   21 00023 00000         CON(5)  =DOBINT
   22 00028 10000         CON(5)  #1
   23             * File  EJE.S   11
   24 0002D 00000         CON(5)  =MAKEGROB
   25             * File  EJE.S   12
   26
   27             * File  EJE.S   13
   28
   29             * File  EJE.S   14
   30 00032 00000         CON(5)  =DROP
   31             * File  EJE.S   15
   32 00037 00000         CON(5)  =DOCODE
   33 0003C DB100         REL(5)  LBL000
   34             * File  EJE.S   16
   35 00041 8F000         GOSBVL  =SAVPTR
            00
   36             * File  EJE.S   17
   37 00048 147           C=DAT1  A
   38             * File  EJE.S   18
   39 0004B 135           D1=C
   40             * File  EJE.S   19
   41 0004E 174           D1+     5
   42             * File  EJE.S   20
   43 00051 174           D1+     5
   44             * File  EJE.S   21
   45 00054 174           D1+     5
   46             * File  EJE.S   22
   47 00057 174           D1+     5
   48             * File  EJE.S   23
   49 0005A 13713         C=D1    A
            5
   50             * File  EJE.S   24
   51 00060 81AF0         R1=C.f  A
            9
   52             * File  EJE.S   25
   53 00066 81AF0         R2=C.f  A
            A
   54             * File  EJE.S   26
   55             * File  EJE.S   27
   56 0006C 80821         LAHEX   60
            06
   57             * File  EJE.S   28
   58 00073       =EJE
   59             * File  EJE.S   29
   60 00073 81AF1         C=R1.f  A
            9
   61             * File  EJE.S   30
   62 00079 135           D1=C
   63             * File  EJE.S   31
   64 0007C 3110          LCHEX   01
   65             * File  EJE.S   32
   66 00080 14D           DAT1=C  B
   67             * File  EJE.S   33
   68 00083 13713         C=D1    A
            5
   69             * File  EJE.S   34
   70 00089 818F2         C=C+    34      A
            F818F
            2F818F21

   71             * File  EJE.S   35
   72 0009B 81AF0         R1=C.f  A
            9
   73             * File  EJE.S   36
   74 000A1 A6C           A=A-    1       B
   75             * File  EJE.S   37
   76             * File  EJE.S   38
   77 000A4 968           ?A=0    B
   78 000A7 60            GOYES   =COORDENADAS
   79             * File  EJE.S   39
   80 000A9 69CF          GOTO    =EJE
   81             * File  EJE.S   40
   82 000AD       =COORDENADAS
   83             * File  EJE.S   41
   84 000AD AF0           A=0     W
   85             * File  EJE.S   42
   86 000B0 80820         LAHEX   4
            4
   87             * File  EJE.S   43
   88 000B6       =COORD2
   89             * File  EJE.S   44
   90 000B6 81AF1         C=R2.f  A
            A
   91             * File  EJE.S   45
   92 000BC 135           D1=C
   93             * File  EJE.S   46
   94 000BF 3170          LCHEX   07
   95             * File  EJE.S   47
   96 000C3 14D           DAT1=C  B
   97             * File  EJE.S   48
   98 000C6 13713         C=D1    A
            5
   99             * File  EJE.S   49
  100 000CC 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  101             * File  EJE.S   50
  102 000EA 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  103             * File  EJE.S   51
  104 00108 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  105             * File  EJE.S   52
  106 00126 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  107             * File  EJE.S   53
  108 00144 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  109             * File  EJE.S   54
  110 00162 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  111             * File  EJE.S   55
  112 00180 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  113             * File  EJE.S   56
  114 0019E 818F2         C=C+    68      A
            F818F
            2F818F2F818F2F818F23

  115             * File  EJE.S   57
  116 001BC 81AF0         R2=C.f  A
            A
  117             * File  EJE.S   58
  118 001C2 A6C           A=A-    1       B
  119             * File  EJE.S   59
  120             * File  EJE.S   60
  121 001C5 968           ?A=0    B
  122 001C8 60            GOYES   =SIGUE
  123             * File  EJE.S   61
  124 001CA 6BEE          GOTO    =COORD2
  125             * File  EJE.S   62
  126 001CE       =SIGUE
  127             * File  EJE.S   63
  128 001CE 8E400         GOSUBL  =ON
            0
  129             * File  EJE.S   64
  130 001D4 69FF          GOTO    =SIGUE
  131             * File  EJE.S   65
  132 001D8       =ON
  133             * File  EJE.S   66
  134             * File  EJE.S   67
  135 001D8 84F           ST=0    15
  136             * File  EJE.S   68
  137 001DB       =LOOP1
  138             * File  EJE.S   69
  139 001DB 8F000         GOSBVL  =CINRTN
            00
  140             * File  EJE.S   70
  141             * File  EJE.S   71
  142 001E2 808AF         ?CBIT=0 15
  143 001E7 00            RTNYES
  144             * File  EJE.S   72
  145 001E9 85F           ST=1    15
  146             * File  EJE.S   73
  147 001EC 7700          GOSUB   =REINT
  148             * File  EJE.S   74
  149 001F0 8F000         GOSBVL  =GETPTRLOOP
            00
  150             * File  EJE.S   75
  151 001F7       =REINT
  152             * File  EJE.S   76
  153 001F7 0F            RTI
  154             * File  EJE.S   77
  155 001F9       LBL000
  156             * File  EJE.S   78
  157 001F9 00000         CON(5)  =DROP
  158             * File  EJE.S   79
  159 001FE 00000         CON(5)  =TURNMENUON
  160             * File  EJE.S   80
  161 00203 00000         CON(5)  =RECLAIMDISP
  162             * File  EJE.S   81
  163 00208 00000         CON(5)  =CLOSEUART
  164             * File  EJE.S   82
  165
  166             * File  EJE.S   83
  167
  168             * File  EJE.S   84
  169 0020D 00000         CON(5)  =SEMI
Saturn Assembler                                       Mon Aug 20 20:41:40 2007
V3.0.8 (12/06/2002)   Symbol Table                       EJE.a          Page    2

 ABUFF                             Ext                   -    14
 CINRTN                            Ext                   -   139
 CLOSEUART                         Ext                   -     8   163
=COORD2                            Rel     182 #000000B6 -    88   124
=COORDENADAS                       Rel     173 #000000AD -    82    78
 DOBINT                            Ext                   -    18    21
 DOCODE                            Ext                   -    32
 DOCOL                             Ext                   -     6
 DROP                              Ext                   -    30   157
=EJE                               Rel     115 #00000073 -    58    80
 GETPTRLOOP                        Ext                   -   149
 LBL000                            Rel     505 #000001F9 -   155    33
=LOOP1                             Rel     475 #000001DB -   137
 MAKEGROB                          Ext                   -    24
=ON                                Rel     472 #000001D8 -   132   128
 RECLAIMDISP                       Ext                   -    10   161
=REINT                             Rel     503 #000001F7 -   151   147
 SAVPTR                            Ext                   -    35
 SEMI                              Ext                   -   169
=SIGUE                             Rel     462 #000001CE -   126   122   130
 TURNMENUOFF                       Ext                   -    12
 TURNMENUON                        Ext                   -   159
Saturn Assembler                                       Mon Aug 20 20:41:40 2007
V3.0.8 (12/06/2002)   Statistics                         EJE.a          Page    3

Input Parameters

  Source file name is EJE.a

  Listing file name is EJE.l

  Object file name is EJE.o

  Flags set on command line
    None

Warnings:

  None

Errors:

  None
