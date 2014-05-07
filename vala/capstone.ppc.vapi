[CCode (cprefix="CS_")]
namespace Capstone {
	[CCode (cname="cs_ppc", cheader_filename="ppc.h")]
	public struct PPC {
		PpcBC bc;
		PpcBH bh;
		bool update_cr0;
		uint8 op_count;
		PpcOp operands[8];
	}

	[CCode (cname="ppc_bh", cprefix="PPC_BH_", cheader_filename="ppc.h")]
	public enum PpcBH {
		NO = 0,
		PLUS,
		MINUS
	}

	
	[CCode (cname="ppc_op_type", cprefix="PPC_OP_", cheader_filename="ppc.h")]
	public enum PpcOpType {
		INVALID = 0,
		REG,
		IMM,
		MEM
	}

	[CCode (cname="ppc_bc", cprefix="PPC_BC_", cheader_filename="ppc.h")]
	public enum PpcBC {
		LT       = (0 << 5) | 12,
		LE       = (1 << 5) |  4,
		EQ       = (2 << 5) | 12,
		GE       = (0 << 5) |  4,
		GT       = (1 << 5) | 12,
		NE       = (2 << 5) |  4,
		UN       = (3 << 5) | 12,
		NU       = (3 << 5) |  4,
		LT_MINUS = (0 << 5) | 14,
		LE_MINUS = (1 << 5) |  6,
		EQ_MINUS = (2 << 5) | 14,
		GE_MINUS = (0 << 5) |  6,
		GT_MINUS = (1 << 5) | 14,
		NE_MINUS = (2 << 5) |  6,
		UN_MINUS = (3 << 5) | 14,
		NU_MINUS = (3 << 5) |  6,
		LT_PLUS  = (0 << 5) | 15,
		LE_PLUS  = (1 << 5) |  7,
		EQ_PLUS  = (2 << 5) | 15,
		GE_PLUS  = (0 << 5) |  7,
		GT_PLUS  = (1 << 5) | 15,
		NE_PLUS  = (2 << 5) |  7,
		UN_PLUS  = (3 << 5) | 15,
		NU_PLUS  = (3 << 5) |  7
	}

	[CCode (cname="ppc_reg", cprefix="PPC_SFT_", cheader_filename="ppc.h")]
	public enum PpcShifter {
		INVALID = 0,
		ASR,
		LSL,
		LSR,
		ROR,
		RRX,
		ASR_REG,
		LSL_REG,
		LSR_REG,
		ROR_REG,
		RRX_REG,
	}

	[CCode (cname="ppc_op_mem", cheader_filename="ppc.h")]
	public struct PpcOpMem {
		uint base;
		int32 disp;
	}

	[CCode (cname="cs_ppc_op", cheader_filename="ppc.h")]
	public struct PpcOp {
		PpcOpType type;
		// union
		uint reg;
		int32 imm;
		PpcOpMem mem;
	}

	[CCode (cname="arm_insn", cprefix="PPC_INS_", cheader_filename="ppc.h")]
	public enum PpcInsn {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js ppc ppc_insn
		*/
		INVALID = 0,
		ADD = 1,
		ADDC = 2,
		ADDE = 3,
		ADDI = 4,
		ADDIC = 5,
		ADDIS = 6,
		ADDME = 7,
		ADDZE = 8,
		AND = 9,
		ANDC = 10,
		ANDIS = 11,
		ANDI = 12,
		B = 13,
		BA = 14,
		BCL = 15,
		BCTR = 16,
		BCTRL = 17,
		BDNZ = 18,
		BDNZA = 19,
		BDNZL = 20,
		BDNZLA = 21,
		BDNZLR = 22,
		BDNZLRL = 23,
		BDZ = 24,
		BDZA = 25,
		BDZL = 26,
		BDZLA = 27,
		BDZLR = 28,
		BDZLRL = 29,
		BL = 30,
		BLA = 31,
		BLR = 32,
		BLRL = 33,
		CMPD = 34,
		CMPDI = 35,
		CMPLD = 36,
		CMPLDI = 37,
		CMPLW = 38,
		CMPLWI = 39,
		CMPW = 40,
		CMPWI = 41,
		CNTLZD = 42,
		CNTLZW = 43,
		CREQV = 44,
		CRXOR = 45,
		CRAND = 46,
		CRANDC = 47,
		CRNAND = 48,
		CRNOR = 49,
		CROR = 50,
		CRORC = 51,
		DCBA = 52,
		DCBF = 53,
		DCBI = 54,
		DCBST = 55,
		DCBT = 56,
		DCBTST = 57,
		DCBZ = 58,
		DCBZL = 59,
		DIVD = 60,
		DIVDU = 61,
		DIVW = 62,
		DIVWU = 63,
		DSS = 64,
		DSSALL = 65,
		DST = 66,
		DSTST = 67,
		DSTSTT = 68,
		DSTT = 69,
		EIEIO = 70,
		EQV = 71,
		EXTSB = 72,
		EXTSH = 73,
		EXTSW = 74,
		FABS = 75,
		FADD = 76,
		FADDS = 77,
		FCFID = 78,
		FCFIDS = 79,
		FCFIDU = 80,
		FCFIDUS = 81,
		FCMPU = 82,
		FCPSGN = 83,
		FCTID = 84,
		FCTIDUZ = 85,
		FCTIDZ = 86,
		FCTIW = 87,
		FCTIWUZ = 88,
		FCTIWZ = 89,
		FDIV = 90,
		FDIVS = 91,
		FMADD = 92,
		FMADDS = 93,
		FMSUB = 94,
		FMSUBS = 95,
		FMUL = 96,
		FMULS = 97,
		FNABS = 98,
		FNEG = 99,
		FNMADD = 100,
		FNMADDS = 101,
		FNMSUB = 102,
		FNMSUBS = 103,
		FRE = 104,
		FRES = 105,
		FRIM = 106,
		FRIN = 107,
		FRIP = 108,
		FRIZ = 109,
		FRSP = 110,
		FRSQRTE = 111,
		FRSQRTES = 112,
		FSEL = 113,
		FSQRT = 114,
		FSQRTS = 115,
		FSUB = 116,
		FSUBS = 117,
		ICBI = 118,
		ISEL = 119,
		ISYNC = 120,
		LA = 121,
		LBZ = 122,
		LBZU = 123,
		LBZUX = 124,
		LBZX = 125,
		LD = 126,
		LDARX = 127,
		LDBRX = 128,
		LDU = 129,
		LDUX = 130,
		LDX = 131,
		LFD = 132,
		LFDU = 133,
		LFDUX = 134,
		LFDX = 135,
		LFIWAX = 136,
		LFIWZX = 137,
		LFS = 138,
		LFSU = 139,
		LFSUX = 140,
		LFSX = 141,
		LHA = 142,
		LHAU = 143,
		LHAUX = 144,
		LHAX = 145,
		LHBRX = 146,
		LHZ = 147,
		LHZU = 148,
		LHZUX = 149,
		LHZX = 150,
		LI = 151,
		LIS = 152,
		LMW = 153,
		LVEBX = 154,
		LVEHX = 155,
		LVEWX = 156,
		LVSL = 157,
		LVSR = 158,
		LVX = 159,
		LVXL = 160,
		LWA = 161,
		LWARX = 162,
		LWAUX = 163,
		LWAX = 164,
		LWBRX = 165,
		LWZ = 166,
		LWZU = 167,
		LWZUX = 168,
		LWZX = 169,
		MCRF = 170,
		MFCR = 171,
		MFCTR = 172,
		MFFS = 173,
		MFLR = 174,
		MFMSR = 175,
		MFOCRF = 176,
		MFSPR = 177,
		MFTB = 178,
		MFVSCR = 179,
		MTCRF = 180,
		MTCTR = 181,
		MTFSB0 = 182,
		MTFSB1 = 183,
		MTFSF = 184,
		MTLR = 185,
		MTMSR = 186,
		MTMSRD = 187,
		MTOCRF = 188,
		MTSPR = 189,
		MTVSCR = 190,
		MULHD = 191,
		MULHDU = 192,
		MULHW = 193,
		MULHWU = 194,
		MULLD = 195,
		MULLI = 196,
		MULLW = 197,
		NAND = 198,
		NEG = 199,
		NOP = 200,
		ORI = 201,
		NOR = 202,
		OR = 203,
		ORC = 204,
		ORIS = 205,
		POPCNTD = 206,
		POPCNTW = 207,
		RLDCL = 208,
		RLDCR = 209,
		RLDIC = 210,
		RLDICL = 211,
		RLDICR = 212,
		RLDIMI = 213,
		RLWIMI = 214,
		RLWINM = 215,
		RLWNM = 216,
		SC = 217,
		SLBIA = 218,
		SLBIE = 219,
		SLBMFEE = 220,
		SLBMTE = 221,
		SLD = 222,
		SLW = 223,
		SRAD = 224,
		SRADI = 225,
		SRAW = 226,
		SRAWI = 227,
		SRD = 228,
		SRW = 229,
		STB = 230,
		STBU = 231,
		STBUX = 232,
		STBX = 233,
		STD = 234,
		STDBRX = 235,
		STDCX = 236,
		STDU = 237,
		STDUX = 238,
		STDX = 239,
		STFD = 240,
		STFDU = 241,
		STFDUX = 242,
		STFDX = 243,
		STFIWX = 244,
		STFS = 245,
		STFSU = 246,
		STFSUX = 247,
		STFSX = 248,
		STH = 249,
		STHBRX = 250,
		STHU = 251,
		STHUX = 252,
		STHX = 253,
		STMW = 254,
		STVEBX = 255,
		STVEHX = 256,
		STVEWX = 257,
		STVX = 258,
		STVXL = 259,
		STW = 260,
		STWBRX = 261,
		STWCX = 262,
		STWU = 263,
		STWUX = 264,
		STWX = 265,
		SUBF = 266,
		SUBFC = 267,
		SUBFE = 268,
		SUBFIC = 269,
		SUBFME = 270,
		SUBFZE = 271,
		SYNC = 272,
		TD = 273,
		TDI = 274,
		TLBIE = 275,
		TLBIEL = 276,
		TLBSYNC = 277,
		TRAP = 278,
		TW = 279,
		TWI = 280,
		VADDCUW = 281,
		VADDFP = 282,
		VADDSBS = 283,
		VADDSHS = 284,
		VADDSWS = 285,
		VADDUBM = 286,
		VADDUBS = 287,
		VADDUHM = 288,
		VADDUHS = 289,
		VADDUWM = 290,
		VADDUWS = 291,
		VAND = 292,
		VANDC = 293,
		VAVGSB = 294,
		VAVGSH = 295,
		VAVGSW = 296,
		VAVGUB = 297,
		VAVGUH = 298,
		VAVGUW = 299,
		VCFSX = 300,
		VCFUX = 301,
		VCMPBFP = 302,
		VCMPEQFP = 303,
		VCMPEQUB = 304,
		VCMPEQUH = 305,
		VCMPEQUW = 306,
		VCMPGEFP = 307,
		VCMPGTFP = 308,
		VCMPGTSB = 309,
		VCMPGTSH = 310,
		VCMPGTSW = 311,
		VCMPGTUB = 312,
		VCMPGTUH = 313,
		VCMPGTUW = 314,
		VCTSXS = 315,
		VCTUXS = 316,
		VEXPTEFP = 317,
		VLOGEFP = 318,
		VMADDFP = 319,
		VMAXFP = 320,
		VMAXSB = 321,
		VMAXSH = 322,
		VMAXSW = 323,
		VMAXUB = 324,
		VMAXUH = 325,
		VMAXUW = 326,
		VMHADDSHS = 327,
		VMHRADDSHS = 328,
		VMINFP = 329,
		VMINSB = 330,
		VMINSH = 331,
		VMINSW = 332,
		VMINUB = 333,
		VMINUH = 334,
		VMINUW = 335,
		VMLADDUHM = 336,
		VMRGHB = 337,
		VMRGHH = 338,
		VMRGHW = 339,
		VMRGLB = 340,
		VMRGLH = 341,
		VMRGLW = 342,
		VMSUMMBM = 343,
		VMSUMSHM = 344,
		VMSUMSHS = 345,
		VMSUMUBM = 346,
		VMSUMUHM = 347,
		VMSUMUHS = 348,
		VMULESB = 349,
		VMULESH = 350,
		VMULEUB = 351,
		VMULEUH = 352,
		VMULOSB = 353,
		VMULOSH = 354,
		VMULOUB = 355,
		VMULOUH = 356,
		VNMSUBFP = 357,
		VNOR = 358,
		VOR = 359,
		VPERM = 360,
		VPKPX = 361,
		VPKSHSS = 362,
		VPKSHUS = 363,
		VPKSWSS = 364,
		VPKSWUS = 365,
		VPKUHUM = 366,
		VPKUHUS = 367,
		VPKUWUM = 368,
		VPKUWUS = 369,
		VREFP = 370,
		VRFIM = 371,
		VRFIN = 372,
		VRFIP = 373,
		VRFIZ = 374,
		VRLB = 375,
		VRLH = 376,
		VRLW = 377,
		VRSQRTEFP = 378,
		VSEL = 379,
		VSL = 380,
		VSLB = 381,
		VSLDOI = 382,
		VSLH = 383,
		VSLO = 384,
		VSLW = 385,
		VSPLTB = 386,
		VSPLTH = 387,
		VSPLTISB = 388,
		VSPLTISH = 389,
		VSPLTISW = 390,
		VSPLTW = 391,
		VSR = 392,
		VSRAB = 393,
		VSRAH = 394,
		VSRAW = 395,
		VSRB = 396,
		VSRH = 397,
		VSRO = 398,
		VSRW = 399,
		VSUBCUW = 400,
		VSUBFP = 401,
		VSUBSBS = 402,
		VSUBSHS = 403,
		VSUBSWS = 404,
		VSUBUBM = 405,
		VSUBUBS = 406,
		VSUBUHM = 407,
		VSUBUHS = 408,
		VSUBUWM = 409,
		VSUBUWS = 410,
		VSUM2SWS = 411,
		VSUM4SBS = 412,
		VSUM4SHS = 413,
		VSUM4UBS = 414,
		VSUMSWS = 415,
		VUPKHPX = 416,
		VUPKHSB = 417,
		VUPKHSH = 418,
		VUPKLPX = 419,
		VUPKLSB = 420,
		VUPKLSH = 421,
		VXOR = 422,
		WAIT = 423,
		XOR = 424,
		XORI = 425,
		XORIS = 426,
		BC = 427,
		BCA = 428,
		BCCTR = 429,
		BCCTRL = 430,
		BCLA = 431,
		BCLR = 432,
		BCLRL = 433,
		MAX = 434,
	}

	[CCode (cname="ppc_reg", cprefix="PPC_REG_", cheader_filename="ppc.h")]
	public enum PPCReg {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js ppc ppc_reg
		 */
		INVALID = 0,
		CARRY = 1,
		CR0 = 2,
		CR1 = 3,
		CR2 = 4,
		CR3 = 5,
		CR4 = 6,
		CR5 = 7,
		CR6 = 8,
		CR7 = 9,
		CR8 = 10,
		CR9 = 11,
		CR10 = 12,
		CR11 = 13,
		CR12 = 14,
		CR13 = 15,
		CR14 = 16,
		CR15 = 17,
		CR16 = 18,
		CR17 = 19,
		CR18 = 20,
		CR19 = 21,
		CR20 = 22,
		CR21 = 23,
		CR22 = 24,
		CR23 = 25,
		CR24 = 26,
		CR25 = 27,
		CR26 = 28,
		CR27 = 29,
		CR28 = 30,
		CR29 = 31,
		CR30 = 32,
		CR31 = 33,
		CTR = 34,
		F0 = 35,
		F1 = 36,
		F2 = 37,
		F3 = 38,
		F4 = 39,
		F5 = 40,
		F6 = 41,
		F7 = 42,
		F8 = 43,
		F9 = 44,
		F10 = 45,
		F11 = 46,
		F12 = 47,
		F13 = 48,
		F14 = 49,
		F15 = 50,
		F16 = 51,
		F17 = 52,
		F18 = 53,
		F19 = 54,
		F20 = 55,
		F21 = 56,
		F22 = 57,
		F23 = 58,
		F24 = 59,
		F25 = 60,
		F26 = 61,
		F27 = 62,
		F28 = 63,
		F29 = 64,
		F30 = 65,
		F31 = 66,
		LR = 67,
		R0 = 68,
		R1 = 69,
		R2 = 70,
		R3 = 71,
		R4 = 72,
		R5 = 73,
		R6 = 74,
		R7 = 75,
		R8 = 76,
		R9 = 77,
		R10 = 78,
		R11 = 79,
		R12 = 80,
		R13 = 81,
		R14 = 82,
		R15 = 83,
		R16 = 84,
		R17 = 85,
		R18 = 86,
		R19 = 87,
		R20 = 88,
		R21 = 89,
		R22 = 90,
		R23 = 91,
		R24 = 92,
		R25 = 93,
		R26 = 94,
		R27 = 95,
		R28 = 96,
		R29 = 97,
		R30 = 98,
		R31 = 99,
		V0 = 100,
		V1 = 101,
		V2 = 102,
		V3 = 103,
		V4 = 104,
		V5 = 105,
		V6 = 106,
		V7 = 107,
		V8 = 108,
		V9 = 109,
		V10 = 110,
		V11 = 111,
		V12 = 112,
		V13 = 113,
		V14 = 114,
		V15 = 115,
		V16 = 116,
		V17 = 117,
		V18 = 118,
		V19 = 119,
		V20 = 120,
		V21 = 121,
		V22 = 122,
		V23 = 123,
		V24 = 124,
		V25 = 125,
		V26 = 126,
		V27 = 127,
		V28 = 128,
		V29 = 129,
		V30 = 130,
		V31 = 131,
		VRSAVE = 132,
		RM = 133,
		CTR8 = 134,
		LR8 = 135,
		CR1EQ = 136,
		MAX = 137,
	}

	[CCode (cname="arm_insn_group", cprefix="PPC_GRP_", cheader_filename="ppc.h")]
	public enum PpcInsnGroup {
		/*
		   Place cursor in the next line and type: yy@"
		   :r! node cs-dump-enums.js ppc ppc_insn_group
		 */
		INVALID = 0,
		ALTIVEC = 1,
		MODE32 = 2,
		MODE64 = 3,
		JUMP = 4,
		MAX = 5
	}
}
