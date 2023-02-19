// keyword.h
// Revision 22-aug-2003

#ifndef INCLUDE_KEYWORD_H_
#define INCLUDE_KEYWORD_H_

#include "blassic.h"

const BlCode
	keyEND=               0x0101,
	keyLIST=              0x0102,
	keyREM=               0x0103,
	keyLOAD=              0x0104,
	keySAVE=              0x0105,
	keyNEW=               0x0106,
        keyEXIT=              0x0107,
	keyRUN=               0x0108,
	keyPRINT=             0x0109,
	keyFOR=               0x010A,
	keyNEXT=              0x010B,
	keyTO=                0x010C,
	keySTEP=              0x010D,
	keyIF=                0x010E,
	keyTHEN=              0x010F,
	keyELSE=              0x0110,
	keyTRON=              0x0111,
	keyTROFF=             0x0112,
	keyLET=               0x0113,
	keyGOTO=              0x0114,
	keySTOP=              0x0115,
	keyCONT=              0x0116,
	keyCLEAR=             0x0117,
	keyGOSUB=             0x0118,
	keyRETURN=            0x0119,
	keyPOKE=              0x011A,
	keyDATA=              0x011B,
	keyREAD=              0x011C,
	keyRESTORE=           0x011D,
	keyINPUT=             0x011E,
	keyLINE=              0x011F,
	keyRANDOMIZE=         0x0120,
	keyPLEASE=            0x0121,
	keyAUTO=              0x0122,
	keyDIM=               0x0123,
	keySYSTEM=            0x0124,
        keyON=                0x0125,
        keyERROR=             0x0126,
        keyOPEN=              0x0127,
        keyCLOSE=             0x0128,
        keyOUTPUT=            0x0129,
        keyAS=                0x012A,
	keyLOCATE=            0x012B,
	keyCLS=               0x012C,
	keyAPPEND=            0x012D,
	keyWRITE=             0x012E,
	keyMODE=              0x012F,
	keyMOVE=              0x0130,
	keyCOLOR=             0x0131,
        keyGET=               0x0132,
	keyLABEL=             0x0133,
	keyDELIMITER=         0x0134,
	keyREPEAT=            0x0135,
	keyUNTIL=             0x0136,
        keyWHILE=             0x0137,
        keyWEND=              0x0138,
	keyPLOT=              0x0139,
        keyPOPEN=             0x013A,
        keyRESUME=            0x013B,
	keyDELETE=            0x013C,
	keyLOCAL=             0x013D,
	keyRANDOM=            0x013E,
	keyPUT=               0x013F,
        keyFIELD=             0x0140,
        keyLSET=              0x0141,
        keyRSET=              0x0142,
        keySOCKET=            0x0143,
        keyDRAW=              0x0144,
	keyDEF=               0x0145,
	keyFN=                0x0146,
        keyERASE=             0x0147,
        keySWAP=              0x0148,
	keySYMBOL=            0x0149,
	keyZONE=              0x014A,
	keyPOP=               0x014B,
	keyNAME=              0x014C,
	keyKILL=              0x014D,
	keyFILES=             0x014E,
	keyPAPER=             0x014F,
	keyPEN=               0x0150,
	keySHELL=             0x0151,
	keyMERGE=             0x0152,
	keyCHDIR=             0x0153,
	keyMKDIR=             0x0154,
	keyRMDIR=             0x0155,
	keyBREAK=             0x0156,
	keySYNCHRONIZE=       0x0157,
	keyPAUSE=             0x0158,
	keyCHAIN=             0x0159,
	keySTR=               0x015A,
	keyREAL=              0x015B,
	keyENVIRON=           0x015C,
	keyEDIT=              0x015D,
	keyDRAWR=             0x015E,
	keyPLOTR=             0x015F,
	keyMOVER=             0x0160,
	keyPOKE16=            0x0161,
	keyPOKE32=            0x0162,
	keyRENUM=             0x0163,
	keyCIRCLE=            0x0164,
	keyMASK=              0x0165,
	keyWINDOW=            0x0166,
	keyGRAPHICS=          0x0167,
	keyAFTER=             0x0168,
	keyBEEP=              0x0169,
	keyDEFINT=            0x016A,
	keyDEFSTR=            0x016B,
	keyDEFREAL=           0x016C,
	keyDEFSNG=            0x016D,
	keyDEFDBL=            0x016E,
	keyINK=               0x016F,
	keySET_TITLE=         0x0170,
	keyTAG=               0x0171,
	keyTAGOFF=            0x0172,
	keyORIGIN=            0x0173,
	keyDEG=               0x0174,
	keyRAD=               0x0175,
	keyINVERSE=           0x0176,
	keyIF_DEBUG=          0x0177,

	keyMID_S=             0x0201,
	keyLEFT_S=            0x0202,
	keyRIGHT_S=           0x0203,
	keyCHR_S=             0x0204,
	keyENVIRON_S=         0x0205,
	keySTRING_S=          0x0206,
	keyOSFAMILY_S=        0x0207,
	keyHEX_S=             0x0208,
	keySPACE_S=           0x0209,
	keyUPPER_S=           0x020A,
	keyLOWER_S=           0x020B,
	keySTR_S=             0x020C,
	keyOCT_S=             0x020D,
	keyBIN_S=             0x020E,
	keyINKEY_S=           0x020F,
	keyPROGRAMARG_S=      0x0210,
	keyDATE_S=            0x0211,
	keyTIME_S=            0x0212,
	keyINPUT_S=           0x0213,
	keyMKI_S=             0x0214,
	keyMKS_S=             0x0215,
	keyMKD_S=             0x0216,
	keyMKL_S=             0x0217,
	keyTRIM_S=            0x0218,
	keyLTRIM_S=           0x0219,
	keyRTRIM_S=           0x021A,
	keyOSNAME_S=          0x021B,
	keyFINDFIRST_S=       0x021C,
	keyFINDNEXT_S=        0x021D,
	keyCOPYCHR_S=         0x021E,
	keySTRERR_S=          0x021F,
	keyDEC_S=             0x0220,

	keyASC=               0x0301,
	keyLEN=               0x0302,
	keyPEEK=              0x0303,
	keyPROGRAMPTR=        0x0304,
	keyRND=               0x0305,
	keyINT=               0x0306,
	keySIN=               0x0307,
	keyCOS=               0x0308,
	keyPI=                0x0309,
	keyTAN=               0x030A,
	keySQR=               0x030B,
	keyASIN=              0x030C,
	keyACOS=              0x030D,
	keyINSTR=             0x030E,
	keyATAN=              0x030F,
	keyABS=               0x0310,
	keyUSR=               0x0311,
	keyVAL=               0x0312,
	keyEOF=               0x0313,
	keyVARPTR=            0x0314,
	keySYSVARPTR=         0x0315,
	keySGN=               0x0316,
	keyLOG=               0x0317,
	keyLOG10=             0x0318,
	keyEXP=               0x0319,
	keyTIME=              0x031A,
	keyERR=               0x031B,
	keyERL=               0x031C,
	keyCVI=               0x031D,
	keyCVS=               0x031E,
	keyCVD=               0x031F,
	keyCVL=               0x0320,
	keyMIN=               0x0321,
	keyMAX=               0x0322,
	keyCINT=              0x0323,
	keyFIX=               0x0324,
	keyXMOUSE=            0x0325,
	keyYMOUSE=            0x0326,
	keyXPOS=              0x0327,
	keyYPOS=              0x0328,
	keyPEEK16=            0x0329,
	keyPEEK32=            0x032A,
	keyRINSTR=            0x032B,
	keyFIND_FIRST_OF=     0x032C,
	keyFIND_LAST_OF=      0x032D,
	keyFIND_FIRST_NOT_OF= 0x032E,
	keyFIND_LAST_NOT_OF=  0x032F,
	keySINH=              0x0330,
	keyCOSH=              0x0331,
	keyTANH=              0x0332,
	keyASINH=             0x0333,
	keyACOSH=             0x0334,
	keyATANH=             0x0335,
	keyATAN2=             0x0336,
	keyTEST=              0x0337,
	keyTESTR=             0x0338,
	keyPOS=               0x0339,
	keyVPOS=              0x033A,

	keyNOT=               0x0401,
	keyOR=                0x0402,
	keyAND=               0x0403,
	keyTAB=               0x0404,
	keySPC=               0x0405,
	keyAT=                0x0406,
	keyXOR=               0x0407,
	keyMOD=               0x0408,
	keyUSING=             0x0409,

	keyIDENTIFIER=        0xFF01,
	keyNUMBER=            0xFF02,
	keySTRING=            0xFF03,
	keyDISTINCT=          0xFF04,
	keyMINOREQUAL=        0xFF05,
	keyGREATEREQUAL=      0xFF06,
	keyINTEGER=           0xFF07,
	keyENDLINE=           0xFFFF;

inline bool iskey (unsigned char c)
{
	// Por ahora.
	return c == '\001' || c == '\002' || c == '\003' || c == '\004';
}

const BlChar INTEGER_PREFIX= '\005';

inline bool isnumberfunction (BlCode s)
{
	return s >= 0x0300 && s <= 0x03FF;
}

inline bool isstringfunction (BlCode s)
{
	return s >= 0x0200 && s <= 0x02FF;
}

void excludekeyword (const std::string & str);
BlCode keyword (const std::string & str);
std::string decodekeyword (BlCode s);

#endif

// Fin de keyword.h
