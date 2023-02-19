1 rem *************************************************************
2 rem **                      europa.bas                         **
3 rem ** Mapa de Europa extraido de un programa de A. S. Godinez **
4 rem **    publicado en El Ordenador Personal, num 29, 1984     **
5 rem **               Original para Dragon 32                   **
6 rem *************************************************************
70 mode 1
80 b0$= "BM 18,190 H2U4H6L2G1L2H3L3U1E1U1E1U2E1U3H3U1E3R2U1E4U1E1U1E1U1E1U4E1U9H1E1R4E2R2F4R1F1R3F1R4F2R2F1R3F1R2F1R2F3E8U13H4U4H9U4R8F3R5U6R3D4R4E3R6U2"
90 b1$= "E1U2E2R6E7U4R5U2E1R6U2R3F3R2U23E9F2D3G1D3R1D3L3D9G2F2R3D3R5E3F4R7E6R6D2R7U4R5U6H2U8E5F5R3U10L3H4E3R4E3R8E6H1L5H1L4G5L4G3L3H5U7U10H7U4"
100 b2$= "BM18,190 R3E2R6F2R11U2E1R5E2U4R5U4H1U4E6R4E2R4E7U5E3R6F4R5E4R3E5R3F8D5R1F8R4F4R4F6D5F1E4U10R2F3E2H5L5H4L3H11U7E2R6D2F15R6F11D11F10D4E3F3E1R2U1"
110 b3$= "R8H5U4H4U2R7U3E2R11F2R2E6R6U3L2H7U4E4U9E4U4E2U3E4R4D2R8F1G5F2R5D5R4U4R5U4R7"
120 b4$= "BM255,140 L5G4L5G8L6G2F3G3L9G7D10F6": b5$= "BM143,182 D9L4H3L6H2U3R4U3R3D3R7E2": b6$= "BM111,154 D9G2H3U4E4BM+0,+14 F3D8G4L2G1L1H2U13R3E2R2F2": b7$= "BM74,173 D2F1G3U2L3U1E2R2E1BM+5,+0 R2D2L2U2BM-15,+5 E2F2G2H2"
130 b8$= "BM109,0 D10G2D4F6R4E6R6D5F2D3F3D6F2D7R6U3E3F1R2E3U14E4R7U3H6U3H3U4BM133,38 D2F2D3G4U3H3U2R4E2"
140 b9$= "BM72,20 R8D2G5E1R5D4G5D5F2D6F4D12R4F2D4G4F2D2L4G1L12H2L5G2H1L8E3R3E3R4U3L3U2L4U2E6U2R4E3U9L6U17E7U2BM-15,+22 D8L4D9G4L15H4E9H2E1U3R4F1E5R5F3"
150 d0$= "BM32,13 D11G5L16H9U2R5U4H4E1F2R4U3H3E2R6D4G3F1R10F2R3E3": line (0, 35) - (40, 35): line -(40, 0)
160 s$= "U2E2R3F2D2G3D2BD1D1"
170 e1$= "BM11,178 U4E2U4E2U6E5U4R4U6L8U3L3": e2$= "BM51, 144 R3F8R5F4R5": e3$= "BM103,148 U3H4U19E11H5L5H11U4"
180 e4$= "BM104,120 R10F1D4R4F1G5L11G3": e5$= "BM89,89 F3E2R3F3D3R1D4G3D3": e6$= "BM+4,+2 U4H2": e7$= "BM+1,-9 E1U2E5H2E2U5": e8$= "BM125,74 D7G1D7G5D4F4E2R3F2D5F6G9L7H1G2H2G2"
190 e9$= "BM+5,+5 R6E2F4R4D7G1": f1$= "BM+1,-7 R8E1R2E3U4E2U7L10G2L1H2": f2$= "BM+3,-39 D11F3D9L6G5L1": f3$= "BM+12,-5 R3F5R3F3R4F1R4F1R8F2R2": f4$= "BM122,68 L3H2L2"
200 f5$= "BM163,69 F2E2R8F6D8G3F5D11G5D6G2L7G3L2G3L6H3": f6$= "BM-4,+10 F8R7E3R4E5U5E4H3": f7$= "BM-7,+17 F8D2R2E2F2D10F2G2D4F3D3G4L8": f8$= "U8H3L5D4BM+4,+17 E1U4E3U1": f9$= "BM+11,-4 E3R9F1R1E5R12"
210 g1$= "BU15L4H3L3G7L12H2": g2$= "BM224,132 L3G2L4U11H10G5L17G3": g3$= "BM204,168 U3E1U3": g4$= "BM124,18 E2U5E9U25": g5$= "BM55,50 H3G1H3E4R3E1"
220 draw b0$: draw b1$: draw b2$: draw b3$: draw b4$: draw b5$: draw b6$: draw b7$: draw b8$: draw b9$: draw d0$: draw e1$: draw e2$: draw e3$: draw e4$: draw e5$: draw e6$: draw e7$:  draw e8$: draw e9$
230 draw f1$ + f2$ + f3$ + f4$: draw f5$ + f6$ + f7$ + f8$: draw f9$ + g1$ + g2$ + g3$: draw g4$ + g5$
240 draw "BM10,90 C4XS$;"
1000 get a$
