	.file	"tank_kernel_MASTER.c"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__CCP__ = 0x34
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_macinfo,"",@progbits
.Ldebug_macinfo0:
	.text
.Ltext0:
	.section	.debug_macinfo
	.byte	0x3
	.uleb128 0x0
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x1
	.string	"__STDC__ 1"
	.byte	0x1
	.uleb128 0x2
	.string	"__STDC_VERSION__ 199901L"
	.byte	0x1
	.uleb128 0x3
	.string	"__STDC_HOSTED__ 1"
	.byte	0x1
	.uleb128 0x4
	.string	"__GNUC__ 4"
	.byte	0x1
	.uleb128 0x5
	.string	"__GNUC_MINOR__ 5"
	.byte	0x1
	.uleb128 0x6
	.string	"__GNUC_PATCHLEVEL__ 1"
	.byte	0x1
	.uleb128 0x7
	.string	"__SIZE_TYPE__ unsigned int"
	.byte	0x1
	.uleb128 0x8
	.string	"__PTRDIFF_TYPE__ int"
	.byte	0x1
	.uleb128 0x9
	.string	"__WCHAR_TYPE__ int"
	.byte	0x1
	.uleb128 0xa
	.string	"__WINT_TYPE__ unsigned int"
	.byte	0x1
	.uleb128 0xb
	.string	"__INTMAX_TYPE__ long long int"
	.byte	0x1
	.uleb128 0xc
	.string	"__UINTMAX_TYPE__ long long unsigned int"
	.byte	0x1
	.uleb128 0xd
	.string	"__CHAR16_TYPE__ short unsigned int"
	.byte	0x1
	.uleb128 0xe
	.string	"__CHAR32_TYPE__ long unsigned int"
	.byte	0x1
	.uleb128 0xf
	.string	"__SIG_ATOMIC_TYPE__ int"
	.byte	0x1
	.uleb128 0x10
	.string	"__INT8_TYPE__ signed char"
	.byte	0x1
	.uleb128 0x11
	.string	"__INT16_TYPE__ short int"
	.byte	0x1
	.uleb128 0x12
	.string	"__INT32_TYPE__ long int"
	.byte	0x1
	.uleb128 0x13
	.string	"__INT64_TYPE__ long long int"
	.byte	0x1
	.uleb128 0x14
	.string	"__UINT8_TYPE__ unsigned char"
	.byte	0x1
	.uleb128 0x15
	.string	"__UINT16_TYPE__ short unsigned int"
	.byte	0x1
	.uleb128 0x16
	.string	"__UINT32_TYPE__ long unsigned int"
	.byte	0x1
	.uleb128 0x17
	.string	"__UINT64_TYPE__ long long unsigned int"
	.byte	0x1
	.uleb128 0x18
	.string	"__INT_LEAST8_TYPE__ signed char"
	.byte	0x1
	.uleb128 0x19
	.string	"__INT_LEAST16_TYPE__ short int"
	.byte	0x1
	.uleb128 0x1a
	.string	"__INT_LEAST32_TYPE__ long int"
	.byte	0x1
	.uleb128 0x1b
	.string	"__INT_LEAST64_TYPE__ long long int"
	.byte	0x1
	.uleb128 0x1c
	.string	"__UINT_LEAST8_TYPE__ unsigned char"
	.byte	0x1
	.uleb128 0x1d
	.string	"__UINT_LEAST16_TYPE__ short unsigned int"
	.byte	0x1
	.uleb128 0x1e
	.string	"__UINT_LEAST32_TYPE__ long unsigned int"
	.byte	0x1
	.uleb128 0x1f
	.string	"__UINT_LEAST64_TYPE__ long long unsigned int"
	.byte	0x1
	.uleb128 0x20
	.string	"__INT_FAST8_TYPE__ int"
	.byte	0x1
	.uleb128 0x21
	.string	"__INT_FAST16_TYPE__ int"
	.byte	0x1
	.uleb128 0x22
	.string	"__INT_FAST32_TYPE__ long int"
	.byte	0x1
	.uleb128 0x23
	.string	"__INT_FAST64_TYPE__ long long int"
	.byte	0x1
	.uleb128 0x24
	.string	"__UINT_FAST8_TYPE__ unsigned int"
	.byte	0x1
	.uleb128 0x25
	.string	"__UINT_FAST16_TYPE__ unsigned int"
	.byte	0x1
	.uleb128 0x26
	.string	"__UINT_FAST32_TYPE__ long unsigned int"
	.byte	0x1
	.uleb128 0x27
	.string	"__UINT_FAST64_TYPE__ long long unsigned int"
	.byte	0x1
	.uleb128 0x28
	.string	"__INTPTR_TYPE__ int"
	.byte	0x1
	.uleb128 0x29
	.string	"__UINTPTR_TYPE__ unsigned int"
	.byte	0x1
	.uleb128 0x2a
	.string	"__GXX_ABI_VERSION 1002"
	.byte	0x1
	.uleb128 0x2b
	.string	"__USING_SJLJ_EXCEPTIONS__ 1"
	.byte	0x1
	.uleb128 0x2c
	.string	"__SCHAR_MAX__ 127"
	.byte	0x1
	.uleb128 0x2d
	.string	"__SHRT_MAX__ 32767"
	.byte	0x1
	.uleb128 0x2e
	.string	"__INT_MAX__ 32767"
	.byte	0x1
	.uleb128 0x2f
	.string	"__LONG_MAX__ 2147483647L"
	.byte	0x1
	.uleb128 0x30
	.string	"__LONG_LONG_MAX__ 9223372036854775807LL"
	.byte	0x1
	.uleb128 0x31
	.string	"__WCHAR_MAX__ 32767"
	.byte	0x1
	.uleb128 0x32
	.string	"__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)"
	.byte	0x1
	.uleb128 0x33
	.string	"__WINT_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x34
	.string	"__WINT_MIN__ 0U"
	.byte	0x1
	.uleb128 0x35
	.string	"__PTRDIFF_MAX__ 32767"
	.byte	0x1
	.uleb128 0x36
	.string	"__SIZE_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x37
	.string	"__CHAR_BIT__ 8"
	.byte	0x1
	.uleb128 0x38
	.string	"__INTMAX_MAX__ 9223372036854775807LL"
	.byte	0x1
	.uleb128 0x39
	.string	"__INTMAX_C(c) c ## LL"
	.byte	0x1
	.uleb128 0x3a
	.string	"__UINTMAX_MAX__ 18446744073709551615ULL"
	.byte	0x1
	.uleb128 0x3b
	.string	"__UINTMAX_C(c) c ## ULL"
	.byte	0x1
	.uleb128 0x3c
	.string	"__SIG_ATOMIC_MAX__ 32767"
	.byte	0x1
	.uleb128 0x3d
	.string	"__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)"
	.byte	0x1
	.uleb128 0x3e
	.string	"__INT8_MAX__ 127"
	.byte	0x1
	.uleb128 0x3f
	.string	"__INT16_MAX__ 32767"
	.byte	0x1
	.uleb128 0x40
	.string	"__INT32_MAX__ 2147483647L"
	.byte	0x1
	.uleb128 0x41
	.string	"__INT64_MAX__ 9223372036854775807LL"
	.byte	0x1
	.uleb128 0x42
	.string	"__UINT8_MAX__ 255"
	.byte	0x1
	.uleb128 0x43
	.string	"__UINT16_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x44
	.string	"__UINT32_MAX__ 4294967295UL"
	.byte	0x1
	.uleb128 0x45
	.string	"__UINT64_MAX__ 18446744073709551615ULL"
	.byte	0x1
	.uleb128 0x46
	.string	"__INT_LEAST8_MAX__ 127"
	.byte	0x1
	.uleb128 0x47
	.string	"__INT8_C(c) c"
	.byte	0x1
	.uleb128 0x48
	.string	"__INT_LEAST16_MAX__ 32767"
	.byte	0x1
	.uleb128 0x49
	.string	"__INT16_C(c) c"
	.byte	0x1
	.uleb128 0x4a
	.string	"__INT_LEAST32_MAX__ 2147483647L"
	.byte	0x1
	.uleb128 0x4b
	.string	"__INT32_C(c) c ## L"
	.byte	0x1
	.uleb128 0x4c
	.string	"__INT_LEAST64_MAX__ 9223372036854775807LL"
	.byte	0x1
	.uleb128 0x4d
	.string	"__INT64_C(c) c ## LL"
	.byte	0x1
	.uleb128 0x4e
	.string	"__UINT_LEAST8_MAX__ 255"
	.byte	0x1
	.uleb128 0x4f
	.string	"__UINT8_C(c) c"
	.byte	0x1
	.uleb128 0x50
	.string	"__UINT_LEAST16_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x51
	.string	"__UINT16_C(c) c ## U"
	.byte	0x1
	.uleb128 0x52
	.string	"__UINT_LEAST32_MAX__ 4294967295UL"
	.byte	0x1
	.uleb128 0x53
	.string	"__UINT32_C(c) c ## UL"
	.byte	0x1
	.uleb128 0x54
	.string	"__UINT_LEAST64_MAX__ 18446744073709551615ULL"
	.byte	0x1
	.uleb128 0x55
	.string	"__UINT64_C(c) c ## ULL"
	.byte	0x1
	.uleb128 0x56
	.string	"__INT_FAST8_MAX__ 32767"
	.byte	0x1
	.uleb128 0x57
	.string	"__INT_FAST16_MAX__ 32767"
	.byte	0x1
	.uleb128 0x58
	.string	"__INT_FAST32_MAX__ 2147483647L"
	.byte	0x1
	.uleb128 0x59
	.string	"__INT_FAST64_MAX__ 9223372036854775807LL"
	.byte	0x1
	.uleb128 0x5a
	.string	"__UINT_FAST8_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x5b
	.string	"__UINT_FAST16_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x5c
	.string	"__UINT_FAST32_MAX__ 4294967295UL"
	.byte	0x1
	.uleb128 0x5d
	.string	"__UINT_FAST64_MAX__ 18446744073709551615ULL"
	.byte	0x1
	.uleb128 0x5e
	.string	"__INTPTR_MAX__ 32767"
	.byte	0x1
	.uleb128 0x5f
	.string	"__UINTPTR_MAX__ 65535U"
	.byte	0x1
	.uleb128 0x60
	.string	"__FLT_EVAL_METHOD__ 0"
	.byte	0x1
	.uleb128 0x61
	.string	"__DEC_EVAL_METHOD__ 2"
	.byte	0x1
	.uleb128 0x62
	.string	"__FLT_RADIX__ 2"
	.byte	0x1
	.uleb128 0x63
	.string	"__FLT_MANT_DIG__ 24"
	.byte	0x1
	.uleb128 0x64
	.string	"__FLT_DIG__ 6"
	.byte	0x1
	.uleb128 0x65
	.string	"__FLT_MIN_EXP__ (-125)"
	.byte	0x1
	.uleb128 0x66
	.string	"__FLT_MIN_10_EXP__ (-37)"
	.byte	0x1
	.uleb128 0x67
	.string	"__FLT_MAX_EXP__ 128"
	.byte	0x1
	.uleb128 0x68
	.string	"__FLT_MAX_10_EXP__ 38"
	.byte	0x1
	.uleb128 0x69
	.string	"__FLT_MAX__ 3.40282347e+38F"
	.byte	0x1
	.uleb128 0x6a
	.string	"__FLT_MIN__ 1.17549435e-38F"
	.byte	0x1
	.uleb128 0x6b
	.string	"__FLT_EPSILON__ 1.19209290e-7F"
	.byte	0x1
	.uleb128 0x6c
	.string	"__FLT_DENORM_MIN__ 1.40129846e-45F"
	.byte	0x1
	.uleb128 0x6d
	.string	"__FLT_HAS_DENORM__ 1"
	.byte	0x1
	.uleb128 0x6e
	.string	"__FLT_HAS_INFINITY__ 1"
	.byte	0x1
	.uleb128 0x6f
	.string	"__FLT_HAS_QUIET_NAN__ 1"
	.byte	0x1
	.uleb128 0x70
	.string	"__DBL_MANT_DIG__ 24"
	.byte	0x1
	.uleb128 0x71
	.string	"__DBL_DIG__ 6"
	.byte	0x1
	.uleb128 0x72
	.string	"__DBL_MIN_EXP__ (-125)"
	.byte	0x1
	.uleb128 0x73
	.string	"__DBL_MIN_10_EXP__ (-37)"
	.byte	0x1
	.uleb128 0x74
	.string	"__DBL_MAX_EXP__ 128"
	.byte	0x1
	.uleb128 0x75
	.string	"__DBL_MAX_10_EXP__ 38"
	.byte	0x1
	.uleb128 0x76
	.string	"__DBL_MAX__ ((double)3.40282347e+38L)"
	.byte	0x1
	.uleb128 0x77
	.string	"__DBL_MIN__ ((double)1.17549435e-38L)"
	.byte	0x1
	.uleb128 0x78
	.string	"__DBL_EPSILON__ ((double)1.19209290e-7L)"
	.byte	0x1
	.uleb128 0x79
	.string	"__DBL_DENORM_MIN__ ((double)1.40129846e-45L)"
	.byte	0x1
	.uleb128 0x7a
	.string	"__DBL_HAS_DENORM__ 1"
	.byte	0x1
	.uleb128 0x7b
	.string	"__DBL_HAS_INFINITY__ 1"
	.byte	0x1
	.uleb128 0x7c
	.string	"__DBL_HAS_QUIET_NAN__ 1"
	.byte	0x1
	.uleb128 0x7d
	.string	"__LDBL_MANT_DIG__ 24"
	.byte	0x1
	.uleb128 0x7e
	.string	"__LDBL_DIG__ 6"
	.byte	0x1
	.uleb128 0x7f
	.string	"__LDBL_MIN_EXP__ (-125)"
	.byte	0x1
	.uleb128 0x80
	.string	"__LDBL_MIN_10_EXP__ (-37)"
	.byte	0x1
	.uleb128 0x81
	.string	"__LDBL_MAX_EXP__ 128"
	.byte	0x1
	.uleb128 0x82
	.string	"__LDBL_MAX_10_EXP__ 38"
	.byte	0x1
	.uleb128 0x83
	.string	"__DECIMAL_DIG__ 9"
	.byte	0x1
	.uleb128 0x84
	.string	"__LDBL_MAX__ 3.40282347e+38L"
	.byte	0x1
	.uleb128 0x85
	.string	"__LDBL_MIN__ 1.17549435e-38L"
	.byte	0x1
	.uleb128 0x86
	.string	"__LDBL_EPSILON__ 1.19209290e-7L"
	.byte	0x1
	.uleb128 0x87
	.string	"__LDBL_DENORM_MIN__ 1.40129846e-45L"
	.byte	0x1
	.uleb128 0x88
	.string	"__LDBL_HAS_DENORM__ 1"
	.byte	0x1
	.uleb128 0x89
	.string	"__LDBL_HAS_INFINITY__ 1"
	.byte	0x1
	.uleb128 0x8a
	.string	"__LDBL_HAS_QUIET_NAN__ 1"
	.byte	0x1
	.uleb128 0x8b
	.string	"__DEC32_MANT_DIG__ 7"
	.byte	0x1
	.uleb128 0x8c
	.string	"__DEC32_MIN_EXP__ (-94)"
	.byte	0x1
	.uleb128 0x8d
	.string	"__DEC32_MAX_EXP__ 97"
	.byte	0x1
	.uleb128 0x8e
	.string	"__DEC32_MIN__ 1E-95DF"
	.byte	0x1
	.uleb128 0x8f
	.string	"__DEC32_MAX__ 9.999999E96DF"
	.byte	0x1
	.uleb128 0x90
	.string	"__DEC32_EPSILON__ 1E-6DF"
	.byte	0x1
	.uleb128 0x91
	.string	"__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF"
	.byte	0x1
	.uleb128 0x92
	.string	"__DEC64_MANT_DIG__ 16"
	.byte	0x1
	.uleb128 0x93
	.string	"__DEC64_MIN_EXP__ (-382)"
	.byte	0x1
	.uleb128 0x94
	.string	"__DEC64_MAX_EXP__ 385"
	.byte	0x1
	.uleb128 0x95
	.string	"__DEC64_MIN__ 1E-383DD"
	.byte	0x1
	.uleb128 0x96
	.string	"__DEC64_MAX__ 9.999999999999999E384DD"
	.byte	0x1
	.uleb128 0x97
	.string	"__DEC64_EPSILON__ 1E-15DD"
	.byte	0x1
	.uleb128 0x98
	.string	"__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD"
	.byte	0x1
	.uleb128 0x99
	.string	"__DEC128_MANT_DIG__ 34"
	.byte	0x1
	.uleb128 0x9a
	.string	"__DEC128_MIN_EXP__ (-6142)"
	.byte	0x1
	.uleb128 0x9b
	.string	"__DEC128_MAX_EXP__ 6145"
	.byte	0x1
	.uleb128 0x9c
	.string	"__DEC128_MIN__ 1E-6143DL"
	.byte	0x1
	.uleb128 0x9d
	.string	"__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL"
	.byte	0x1
	.uleb128 0x9e
	.string	"__DEC128_EPSILON__ 1E-33DL"
	.byte	0x1
	.uleb128 0x9f
	.ascii	"__DE"
	.string	"C128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL"
	.byte	0x1
	.uleb128 0xa0
	.string	"__SFRACT_FBIT__ 7"
	.byte	0x1
	.uleb128 0xa1
	.string	"__SFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xa2
	.string	"__SFRACT_MIN__ (-0.5HR-0.5HR)"
	.byte	0x1
	.uleb128 0xa3
	.string	"__SFRACT_MAX__ 0X7FP-7HR"
	.byte	0x1
	.uleb128 0xa4
	.string	"__SFRACT_EPSILON__ 0x1P-7HR"
	.byte	0x1
	.uleb128 0xa5
	.string	"__USFRACT_FBIT__ 8"
	.byte	0x1
	.uleb128 0xa6
	.string	"__USFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xa7
	.string	"__USFRACT_MIN__ 0.0UHR"
	.byte	0x1
	.uleb128 0xa8
	.string	"__USFRACT_MAX__ 0XFFP-8UHR"
	.byte	0x1
	.uleb128 0xa9
	.string	"__USFRACT_EPSILON__ 0x1P-8UHR"
	.byte	0x1
	.uleb128 0xaa
	.string	"__FRACT_FBIT__ 15"
	.byte	0x1
	.uleb128 0xab
	.string	"__FRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xac
	.string	"__FRACT_MIN__ (-0.5R-0.5R)"
	.byte	0x1
	.uleb128 0xad
	.string	"__FRACT_MAX__ 0X7FFFP-15R"
	.byte	0x1
	.uleb128 0xae
	.string	"__FRACT_EPSILON__ 0x1P-15R"
	.byte	0x1
	.uleb128 0xaf
	.string	"__UFRACT_FBIT__ 16"
	.byte	0x1
	.uleb128 0xb0
	.string	"__UFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xb1
	.string	"__UFRACT_MIN__ 0.0UR"
	.byte	0x1
	.uleb128 0xb2
	.string	"__UFRACT_MAX__ 0XFFFFP-16UR"
	.byte	0x1
	.uleb128 0xb3
	.string	"__UFRACT_EPSILON__ 0x1P-16UR"
	.byte	0x1
	.uleb128 0xb4
	.string	"__LFRACT_FBIT__ 31"
	.byte	0x1
	.uleb128 0xb5
	.string	"__LFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xb6
	.string	"__LFRACT_MIN__ (-0.5LR-0.5LR)"
	.byte	0x1
	.uleb128 0xb7
	.string	"__LFRACT_MAX__ 0X7FFFFFFFP-31LR"
	.byte	0x1
	.uleb128 0xb8
	.string	"__LFRACT_EPSILON__ 0x1P-31LR"
	.byte	0x1
	.uleb128 0xb9
	.string	"__ULFRACT_FBIT__ 32"
	.byte	0x1
	.uleb128 0xba
	.string	"__ULFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xbb
	.string	"__ULFRACT_MIN__ 0.0ULR"
	.byte	0x1
	.uleb128 0xbc
	.string	"__ULFRACT_MAX__ 0XFFFFFFFFP-32ULR"
	.byte	0x1
	.uleb128 0xbd
	.string	"__ULFRACT_EPSILON__ 0x1P-32ULR"
	.byte	0x1
	.uleb128 0xbe
	.string	"__LLFRACT_FBIT__ 63"
	.byte	0x1
	.uleb128 0xbf
	.string	"__LLFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xc0
	.string	"__LLFRACT_MIN__ (-0.5LLR-0.5LLR)"
	.byte	0x1
	.uleb128 0xc1
	.string	"__LLFRACT_MAX__ 0X7FFFFFFFFFFFFFFFP-63LLR"
	.byte	0x1
	.uleb128 0xc2
	.string	"__LLFRACT_EPSILON__ 0x1P-63LLR"
	.byte	0x1
	.uleb128 0xc3
	.string	"__ULLFRACT_FBIT__ 64"
	.byte	0x1
	.uleb128 0xc4
	.string	"__ULLFRACT_IBIT__ 0"
	.byte	0x1
	.uleb128 0xc5
	.string	"__ULLFRACT_MIN__ 0.0ULLR"
	.byte	0x1
	.uleb128 0xc6
	.string	"__ULLFRACT_MAX__ 0XFFFFFFFFFFFFFFFFP-64ULLR"
	.byte	0x1
	.uleb128 0xc7
	.string	"__ULLFRACT_EPSILON__ 0x1P-64ULLR"
	.byte	0x1
	.uleb128 0xc8
	.string	"__SACCUM_FBIT__ 8"
	.byte	0x1
	.uleb128 0xc9
	.string	"__SACCUM_IBIT__ 7"
	.byte	0x1
	.uleb128 0xca
	.string	"__SACCUM_MIN__ (-0X1P6HK-0X1P6HK)"
	.byte	0x1
	.uleb128 0xcb
	.string	"__SACCUM_MAX__ 0X7FFFP-8HK"
	.byte	0x1
	.uleb128 0xcc
	.string	"__SACCUM_EPSILON__ 0x1P-8HK"
	.byte	0x1
	.uleb128 0xcd
	.string	"__USACCUM_FBIT__ 8"
	.byte	0x1
	.uleb128 0xce
	.string	"__USACCUM_IBIT__ 8"
	.byte	0x1
	.uleb128 0xcf
	.string	"__USACCUM_MIN__ 0.0UHK"
	.byte	0x1
	.uleb128 0xd0
	.string	"__USACCUM_MAX__ 0XFFFFP-8UHK"
	.byte	0x1
	.uleb128 0xd1
	.string	"__USACCUM_EPSILON__ 0x1P-8UHK"
	.byte	0x1
	.uleb128 0xd2
	.string	"__ACCUM_FBIT__ 16"
	.byte	0x1
	.uleb128 0xd3
	.string	"__ACCUM_IBIT__ 15"
	.byte	0x1
	.uleb128 0xd4
	.string	"__ACCUM_MIN__ (-0X1P14K-0X1P14K)"
	.byte	0x1
	.uleb128 0xd5
	.string	"__ACCUM_MAX__ 0X7FFFFFFFP-16K"
	.byte	0x1
	.uleb128 0xd6
	.string	"__ACCUM_EPSILON__ 0x1P-16K"
	.byte	0x1
	.uleb128 0xd7
	.string	"__UACCUM_FBIT__ 16"
	.byte	0x1
	.uleb128 0xd8
	.string	"__UACCUM_IBIT__ 16"
	.byte	0x1
	.uleb128 0xd9
	.string	"__UACCUM_MIN__ 0.0UK"
	.byte	0x1
	.uleb128 0xda
	.string	"__UACCUM_MAX__ 0XFFFFFFFFP-16UK"
	.byte	0x1
	.uleb128 0xdb
	.string	"__UACCUM_EPSILON__ 0x1P-16UK"
	.byte	0x1
	.uleb128 0xdc
	.string	"__LACCUM_FBIT__ 32"
	.byte	0x1
	.uleb128 0xdd
	.string	"__LACCUM_IBIT__ 31"
	.byte	0x1
	.uleb128 0xde
	.string	"__LACCUM_MIN__ (-0X1P30LK-0X1P30LK)"
	.byte	0x1
	.uleb128 0xdf
	.string	"__LACCUM_MAX__ 0X7FFFFFFFFFFFFFFFP-32LK"
	.byte	0x1
	.uleb128 0xe0
	.string	"__LACCUM_EPSILON__ 0x1P-32LK"
	.byte	0x1
	.uleb128 0xe1
	.string	"__ULACCUM_FBIT__ 32"
	.byte	0x1
	.uleb128 0xe2
	.string	"__ULACCUM_IBIT__ 32"
	.byte	0x1
	.uleb128 0xe3
	.string	"__ULACCUM_MIN__ 0.0ULK"
	.byte	0x1
	.uleb128 0xe4
	.string	"__ULACCUM_MAX__ 0XFFFFFFFFFFFFFFFFP-32ULK"
	.byte	0x1
	.uleb128 0xe5
	.string	"__ULACCUM_EPSILON__ 0x1P-32ULK"
	.byte	0x1
	.uleb128 0xe6
	.string	"__LLACCUM_FBIT__ 64"
	.byte	0x1
	.uleb128 0xe7
	.string	"__LLACCUM_IBIT__ 63"
	.byte	0x1
	.uleb128 0xe8
	.string	"__LLACCUM_MIN__ (-0X1P62LLK-0X1P62LLK)"
	.byte	0x1
	.uleb128 0xe9
	.string	"__LLACCUM_MAX__ 0X7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFP-64LLK"
	.byte	0x1
	.uleb128 0xea
	.string	"__LLACCUM_EPSILON__ 0x1P-64LLK"
	.byte	0x1
	.uleb128 0xeb
	.string	"__ULLACCUM_FBIT__ 64"
	.byte	0x1
	.uleb128 0xec
	.string	"__ULLACCUM_IBIT__ 64"
	.byte	0x1
	.uleb128 0xed
	.string	"__ULLACCUM_MIN__ 0.0ULLK"
	.byte	0x1
	.uleb128 0xee
	.string	"__ULLACCUM_MAX__ 0XFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFP-64ULLK"
	.byte	0x1
	.uleb128 0xef
	.string	"__ULLACCUM_EPSILON__ 0x1P-64ULLK"
	.byte	0x1
	.uleb128 0xf0
	.string	"__QQ_FBIT__ 7"
	.byte	0x1
	.uleb128 0xf1
	.string	"__QQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xf2
	.string	"__HQ_FBIT__ 15"
	.byte	0x1
	.uleb128 0xf3
	.string	"__HQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xf4
	.string	"__SQ_FBIT__ 31"
	.byte	0x1
	.uleb128 0xf5
	.string	"__SQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xf6
	.string	"__DQ_FBIT__ 63"
	.byte	0x1
	.uleb128 0xf7
	.string	"__DQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xf8
	.string	"__TQ_FBIT__ 127"
	.byte	0x1
	.uleb128 0xf9
	.string	"__TQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xfa
	.string	"__UQQ_FBIT__ 8"
	.byte	0x1
	.uleb128 0xfb
	.string	"__UQQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xfc
	.string	"__UHQ_FBIT__ 16"
	.byte	0x1
	.uleb128 0xfd
	.string	"__UHQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0xfe
	.string	"__USQ_FBIT__ 32"
	.byte	0x1
	.uleb128 0xff
	.string	"__USQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0x100
	.string	"__UDQ_FBIT__ 64"
	.byte	0x1
	.uleb128 0x101
	.string	"__UDQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0x102
	.string	"__UTQ_FBIT__ 128"
	.byte	0x1
	.uleb128 0x103
	.string	"__UTQ_IBIT__ 0"
	.byte	0x1
	.uleb128 0x104
	.string	"__HA_FBIT__ 8"
	.byte	0x1
	.uleb128 0x105
	.string	"__HA_IBIT__ 7"
	.byte	0x1
	.uleb128 0x106
	.string	"__SA_FBIT__ 16"
	.byte	0x1
	.uleb128 0x107
	.string	"__SA_IBIT__ 15"
	.byte	0x1
	.uleb128 0x108
	.string	"__DA_FBIT__ 32"
	.byte	0x1
	.uleb128 0x109
	.string	"__DA_IBIT__ 31"
	.byte	0x1
	.uleb128 0x10a
	.string	"__TA_FBIT__ 64"
	.byte	0x1
	.uleb128 0x10b
	.string	"__TA_IBIT__ 63"
	.byte	0x1
	.uleb128 0x10c
	.string	"__UHA_FBIT__ 8"
	.byte	0x1
	.uleb128 0x10d
	.string	"__UHA_IBIT__ 8"
	.byte	0x1
	.uleb128 0x10e
	.string	"__USA_FBIT__ 16"
	.byte	0x1
	.uleb128 0x10f
	.string	"__USA_IBIT__ 16"
	.byte	0x1
	.uleb128 0x110
	.string	"__UDA_FBIT__ 32"
	.byte	0x1
	.uleb128 0x111
	.string	"__UDA_IBIT__ 32"
	.byte	0x1
	.uleb128 0x112
	.string	"__UTA_FBIT__ 64"
	.byte	0x1
	.uleb128 0x113
	.string	"__UTA_IBIT__ 64"
	.byte	0x1
	.uleb128 0x114
	.string	"__REGISTER_PREFIX__ "
	.byte	0x1
	.uleb128 0x115
	.string	"__USER_LABEL_PREFIX__ "
	.byte	0x1
	.uleb128 0x116
	.string	"__VERSION__ \"4.5.1\""
	.byte	0x1
	.uleb128 0x117
	.string	"__GNUC_STDC_INLINE__ 1"
	.byte	0x1
	.uleb128 0x118
	.string	"__OPTIMIZE_SIZE__ 1"
	.byte	0x1
	.uleb128 0x119
	.string	"__OPTIMIZE__ 1"
	.byte	0x1
	.uleb128 0x11a
	.string	"__FINITE_MATH_ONLY__ 0"
	.byte	0x1
	.uleb128 0x11b
	.string	"__PRAGMA_REDEFINE_EXTNAME 1"
	.byte	0x1
	.uleb128 0x11c
	.string	"__SIZEOF_INT__ 2"
	.byte	0x1
	.uleb128 0x11d
	.string	"__SIZEOF_LONG__ 4"
	.byte	0x1
	.uleb128 0x11e
	.string	"__SIZEOF_LONG_LONG__ 8"
	.byte	0x1
	.uleb128 0x11f
	.string	"__SIZEOF_SHORT__ 2"
	.byte	0x1
	.uleb128 0x120
	.string	"__SIZEOF_FLOAT__ 4"
	.byte	0x1
	.uleb128 0x121
	.string	"__SIZEOF_DOUBLE__ 4"
	.byte	0x1
	.uleb128 0x122
	.string	"__SIZEOF_LONG_DOUBLE__ 4"
	.byte	0x1
	.uleb128 0x123
	.string	"__SIZEOF_SIZE_T__ 2"
	.byte	0x1
	.uleb128 0x124
	.string	"__SIZEOF_WCHAR_T__ 2"
	.byte	0x1
	.uleb128 0x125
	.string	"__SIZEOF_WINT_T__ 2"
	.byte	0x1
	.uleb128 0x126
	.string	"__SIZEOF_PTRDIFF_T__ 2"
	.byte	0x1
	.uleb128 0x127
	.string	"__SIZEOF_POINTER__ 2"
	.byte	0x1
	.uleb128 0x128
	.string	"__AVR 1"
	.byte	0x1
	.uleb128 0x129
	.string	"__AVR__ 1"
	.byte	0x1
	.uleb128 0x12a
	.string	"AVR 1"
	.byte	0x1
	.uleb128 0x12b
	.string	"__AVR_ARCH__ 51"
	.byte	0x1
	.uleb128 0x12c
	.string	"__AVR_ATmega1284P__ 1"
	.byte	0x1
	.uleb128 0x12d
	.string	"__AVR_HAVE_RAMPZ__ 1"
	.byte	0x1
	.uleb128 0x12e
	.string	"__AVR_HAVE_ELPM__ 1"
	.byte	0x1
	.uleb128 0x12f
	.string	"__AVR_HAVE_ELPMX__ 1"
	.byte	0x1
	.uleb128 0x130
	.string	"__AVR_HAVE_MOVW__ 1"
	.byte	0x1
	.uleb128 0x131
	.string	"__AVR_HAVE_LPMX__ 1"
	.byte	0x1
	.uleb128 0x132
	.string	"__AVR_ENHANCED__ 1"
	.byte	0x1
	.uleb128 0x133
	.string	"__AVR_HAVE_MUL__ 1"
	.byte	0x1
	.uleb128 0x134
	.string	"__AVR_MEGA__ 1"
	.byte	0x1
	.uleb128 0x135
	.string	"__AVR_HAVE_JMP_CALL__ 1"
	.byte	0x1
	.uleb128 0x136
	.string	"__AVR_2_BYTE_PC__ 1"
	.byte	0x1
	.uleb128 0x137
	.string	"__AVR_HAVE_16BIT_SP__ 1"
	.byte	0x1
	.uleb128 0x138
	.string	"__BIGGEST_ALIGNMENT__ 1"
	.byte	0x1
	.uleb128 0x1
	.string	"AVR 1"
	.byte	0x1
	.uleb128 0x2
	.string	"F_CPU 20000000"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x2
	.string	"_INIT_RESET_CONDITION_KERNEL_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3
	.byte	0x1
	.uleb128 0x2
	.string	"_KERNEL_INIT_H_ "
	.byte	0x1
	.uleb128 0x6
	.string	"_KERNEL_ "
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xc
	.string	"ANTON_STD_H_ "
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x28
	.string	"__STDINT_H_ "
	.byte	0x1
	.uleb128 0x39
	.string	"__USING_MINT8 0"
	.byte	0x1
	.uleb128 0x11d
	.string	"__CONCATenate(left,right) left ## right"
	.byte	0x1
	.uleb128 0x11e
	.string	"__CONCAT(left,right) __CONCATenate(left, right)"
	.byte	0x1
	.uleb128 0x12c
	.string	"INT8_MAX 0x7f"
	.byte	0x1
	.uleb128 0x131
	.string	"INT8_MIN (-INT8_MAX - 1)"
	.byte	0x1
	.uleb128 0x136
	.string	"UINT8_MAX (__CONCAT(INT8_MAX, U) * 2U + 1U)"
	.byte	0x1
	.uleb128 0x147
	.string	"INT16_MAX 0x7fff"
	.byte	0x1
	.uleb128 0x14c
	.string	"INT16_MIN (-INT16_MAX - 1)"
	.byte	0x1
	.uleb128 0x151
	.string	"UINT16_MAX (__CONCAT(INT16_MAX, U) * 2U + 1U)"
	.byte	0x1
	.uleb128 0x156
	.string	"INT32_MAX 0x7fffffffL"
	.byte	0x1
	.uleb128 0x15b
	.string	"INT32_MIN (-INT32_MAX - 1L)"
	.byte	0x1
	.uleb128 0x160
	.string	"UINT32_MAX (__CONCAT(INT32_MAX, U) * 2UL + 1UL)"
	.byte	0x1
	.uleb128 0x167
	.string	"INT64_MAX 0x7fffffffffffffffLL"
	.byte	0x1
	.uleb128 0x16c
	.string	"INT64_MIN (-INT64_MAX - 1LL)"
	.byte	0x1
	.uleb128 0x171
	.string	"UINT64_MAX (__CONCAT(INT64_MAX, U) * 2ULL + 1ULL)"
	.byte	0x1
	.uleb128 0x17b
	.string	"INT_LEAST8_MAX INT8_MAX"
	.byte	0x1
	.uleb128 0x180
	.string	"INT_LEAST8_MIN INT8_MIN"
	.byte	0x1
	.uleb128 0x185
	.string	"UINT_LEAST8_MAX UINT8_MAX"
	.byte	0x1
	.uleb128 0x18a
	.string	"INT_LEAST16_MAX INT16_MAX"
	.byte	0x1
	.uleb128 0x18f
	.string	"INT_LEAST16_MIN INT16_MIN"
	.byte	0x1
	.uleb128 0x194
	.string	"UINT_LEAST16_MAX UINT16_MAX"
	.byte	0x1
	.uleb128 0x199
	.string	"INT_LEAST32_MAX INT32_MAX"
	.byte	0x1
	.uleb128 0x19e
	.string	"INT_LEAST32_MIN INT32_MIN"
	.byte	0x1
	.uleb128 0x1a3
	.string	"UINT_LEAST32_MAX UINT32_MAX"
	.byte	0x1
	.uleb128 0x1a8
	.string	"INT_LEAST64_MAX INT64_MAX"
	.byte	0x1
	.uleb128 0x1ad
	.string	"INT_LEAST64_MIN INT64_MIN"
	.byte	0x1
	.uleb128 0x1b2
	.string	"UINT_LEAST64_MAX UINT64_MAX"
	.byte	0x1
	.uleb128 0x1bd
	.string	"INT_FAST8_MAX INT8_MAX"
	.byte	0x1
	.uleb128 0x1c2
	.string	"INT_FAST8_MIN INT8_MIN"
	.byte	0x1
	.uleb128 0x1c7
	.string	"UINT_FAST8_MAX UINT8_MAX"
	.byte	0x1
	.uleb128 0x1cc
	.string	"INT_FAST16_MAX INT16_MAX"
	.byte	0x1
	.uleb128 0x1d1
	.string	"INT_FAST16_MIN INT16_MIN"
	.byte	0x1
	.uleb128 0x1d6
	.string	"UINT_FAST16_MAX UINT16_MAX"
	.byte	0x1
	.uleb128 0x1db
	.string	"INT_FAST32_MAX INT32_MAX"
	.byte	0x1
	.uleb128 0x1e0
	.string	"INT_FAST32_MIN INT32_MIN"
	.byte	0x1
	.uleb128 0x1e5
	.string	"UINT_FAST32_MAX UINT32_MAX"
	.byte	0x1
	.uleb128 0x1ea
	.string	"INT_FAST64_MAX INT64_MAX"
	.byte	0x1
	.uleb128 0x1ef
	.string	"INT_FAST64_MIN INT64_MIN"
	.byte	0x1
	.uleb128 0x1f4
	.string	"UINT_FAST64_MAX UINT64_MAX"
	.byte	0x1
	.uleb128 0x1ff
	.string	"INTPTR_MAX INT16_MAX"
	.byte	0x1
	.uleb128 0x204
	.string	"INTPTR_MIN INT16_MIN"
	.byte	0x1
	.uleb128 0x209
	.string	"UINTPTR_MAX UINT16_MAX"
	.byte	0x1
	.uleb128 0x214
	.string	"INTMAX_MAX INT64_MAX"
	.byte	0x1
	.uleb128 0x219
	.string	"INTMAX_MIN INT64_MIN"
	.byte	0x1
	.uleb128 0x21e
	.string	"UINTMAX_MAX UINT64_MAX"
	.byte	0x1
	.uleb128 0x22b
	.string	"PTRDIFF_MAX INT16_MAX"
	.byte	0x1
	.uleb128 0x230
	.string	"PTRDIFF_MIN INT16_MIN"
	.byte	0x1
	.uleb128 0x239
	.string	"SIG_ATOMIC_MAX INT8_MAX"
	.byte	0x1
	.uleb128 0x23e
	.string	"SIG_ATOMIC_MIN INT8_MIN"
	.byte	0x1
	.uleb128 0x244
	.string	"SIZE_MAX (__CONCAT(INT16_MAX, U))"
	.byte	0x1
	.uleb128 0x261
	.string	"INT8_C(value) ((int8_t) value)"
	.byte	0x1
	.uleb128 0x266
	.string	"UINT8_C(value) ((uint8_t) __CONCAT(value, U))"
	.byte	0x1
	.uleb128 0x275
	.string	"INT16_C(value) value"
	.byte	0x1
	.uleb128 0x27a
	.string	"UINT16_C(value) __CONCAT(value, U)"
	.byte	0x1
	.uleb128 0x27f
	.string	"INT32_C(value) __CONCAT(value, L)"
	.byte	0x1
	.uleb128 0x284
	.string	"UINT32_C(value) __CONCAT(value, UL)"
	.byte	0x1
	.uleb128 0x28b
	.string	"INT64_C(value) __CONCAT(value, LL)"
	.byte	0x1
	.uleb128 0x290
	.string	"UINT64_C(value) __CONCAT(value, ULL)"
	.byte	0x1
	.uleb128 0x295
	.string	"INTMAX_C(value) __CONCAT(value, LL)"
	.byte	0x1
	.uleb128 0x29a
	.string	"UINTMAX_C(value) __CONCAT(value, ULL)"
	.byte	0x4
	.byte	0x1
	.uleb128 0x7
	.string	"_GCC_WRAP_STDINT_H "
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x7
	.byte	0x1
	.uleb128 0x28
	.string	"_STDLIB_H_ 1"
	.byte	0x1
	.uleb128 0x2c
	.string	"__need_NULL "
	.byte	0x1
	.uleb128 0x2d
	.string	"__need_size_t "
	.byte	0x1
	.uleb128 0x2e
	.string	"__need_wchar_t "
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x8
	.byte	0x1
	.uleb128 0xba
	.string	"__size_t__ "
	.byte	0x1
	.uleb128 0xbb
	.string	"__SIZE_T__ "
	.byte	0x1
	.uleb128 0xbc
	.string	"_SIZE_T "
	.byte	0x1
	.uleb128 0xbd
	.string	"_SYS_SIZE_T_H "
	.byte	0x1
	.uleb128 0xbe
	.string	"_T_SIZE_ "
	.byte	0x1
	.uleb128 0xbf
	.string	"_T_SIZE "
	.byte	0x1
	.uleb128 0xc0
	.string	"__SIZE_T "
	.byte	0x1
	.uleb128 0xc1
	.string	"_SIZE_T_ "
	.byte	0x1
	.uleb128 0xc2
	.string	"_BSD_SIZE_T_ "
	.byte	0x1
	.uleb128 0xc3
	.string	"_SIZE_T_DEFINED_ "
	.byte	0x1
	.uleb128 0xc4
	.string	"_SIZE_T_DEFINED "
	.byte	0x1
	.uleb128 0xc5
	.string	"_BSD_SIZE_T_DEFINED_ "
	.byte	0x1
	.uleb128 0xc6
	.string	"_SIZE_T_DECLARED "
	.byte	0x1
	.uleb128 0xc7
	.string	"___int_size_t_h "
	.byte	0x1
	.uleb128 0xc8
	.string	"_GCC_SIZE_T "
	.byte	0x1
	.uleb128 0xc9
	.string	"_SIZET_ "
	.byte	0x1
	.uleb128 0xcd
	.string	"__size_t "
	.byte	0x2
	.uleb128 0xe9
	.string	"__need_size_t"
	.byte	0x1
	.uleb128 0x106
	.string	"__wchar_t__ "
	.byte	0x1
	.uleb128 0x107
	.string	"__WCHAR_T__ "
	.byte	0x1
	.uleb128 0x108
	.string	"_WCHAR_T "
	.byte	0x1
	.uleb128 0x109
	.string	"_T_WCHAR_ "
	.byte	0x1
	.uleb128 0x10a
	.string	"_T_WCHAR "
	.byte	0x1
	.uleb128 0x10b
	.string	"__WCHAR_T "
	.byte	0x1
	.uleb128 0x10c
	.string	"_WCHAR_T_ "
	.byte	0x1
	.uleb128 0x10d
	.string	"_BSD_WCHAR_T_ "
	.byte	0x1
	.uleb128 0x10e
	.string	"_WCHAR_T_DEFINED_ "
	.byte	0x1
	.uleb128 0x10f
	.string	"_WCHAR_T_DEFINED "
	.byte	0x1
	.uleb128 0x110
	.string	"_WCHAR_T_H "
	.byte	0x1
	.uleb128 0x111
	.string	"___int_wchar_t_h "
	.byte	0x1
	.uleb128 0x112
	.string	"__INT_WCHAR_T_H "
	.byte	0x1
	.uleb128 0x113
	.string	"_GCC_WCHAR_T "
	.byte	0x1
	.uleb128 0x114
	.string	"_WCHAR_T_DECLARED "
	.byte	0x2
	.uleb128 0x121
	.string	"_BSD_WCHAR_T_"
	.byte	0x2
	.uleb128 0x156
	.string	"__need_wchar_t"
	.byte	0x2
	.uleb128 0x18b
	.string	"NULL"
	.byte	0x1
	.uleb128 0x190
	.string	"NULL ((void *)0)"
	.byte	0x2
	.uleb128 0x196
	.string	"__need_NULL"
	.byte	0x4
	.byte	0x1
	.uleb128 0x32
	.string	"__ptr_t void *"
	.byte	0x1
	.uleb128 0x55
	.string	"__ATTR_CONST__ __attribute__((__const__))"
	.byte	0x1
	.uleb128 0x59
	.string	"__ATTR_MALLOC__ __attribute__((__malloc__))"
	.byte	0x1
	.uleb128 0x5d
	.string	"__ATTR_NORETURN__ __attribute__((__noreturn__))"
	.byte	0x1
	.uleb128 0x61
	.string	"__ATTR_PURE__ __attribute__((__pure__))"
	.byte	0x1
	.uleb128 0x71
	.string	"abs(__i) __builtin_abs(__i)"
	.byte	0x1
	.uleb128 0x7a
	.string	"labs(__i) __builtin_labs(__i)"
	.byte	0x1
	.uleb128 0x159
	.string	"RAND_MAX 0x7FFF"
	.byte	0x1
	.uleb128 0x1ea
	.string	"RANDOM_MAX 0x7FFFFFFF"
	.byte	0x1
	.uleb128 0x213
	.string	"DTOSTR_ALWAYS_SIGN 0x01"
	.byte	0x1
	.uleb128 0x216
	.string	"DTOSTR_PLUS_SIGN 0x02"
	.byte	0x1
	.uleb128 0x219
	.string	"DTOSTR_UPPERCASE 0x04"
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x61
	.string	"_AVR_IO_H_ "
	.byte	0x3
	.uleb128 0x63
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x24
	.string	"_AVR_SFR_DEFS_H_ 1"
	.byte	0x1
	.uleb128 0x79
	.string	"_SFR_ASM_COMPAT 0"
	.byte	0x3
	.uleb128 0x7e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x23
	.string	"__INTTYPES_H_ "
	.byte	0x1
	.uleb128 0x60
	.string	"PRId8 \"d\""
	.byte	0x1
	.uleb128 0x63
	.string	"PRIdLEAST8 \"d\""
	.byte	0x1
	.uleb128 0x66
	.string	"PRIdFAST8 \"d\""
	.byte	0x1
	.uleb128 0x6a
	.string	"PRIi8 \"i\""
	.byte	0x1
	.uleb128 0x6d
	.string	"PRIiLEAST8 \"i\""
	.byte	0x1
	.uleb128 0x70
	.string	"PRIiFAST8 \"i\""
	.byte	0x1
	.uleb128 0x75
	.string	"PRId16 \"d\""
	.byte	0x1
	.uleb128 0x78
	.string	"PRIdLEAST16 \"d\""
	.byte	0x1
	.uleb128 0x7b
	.string	"PRIdFAST16 \"d\""
	.byte	0x1
	.uleb128 0x7f
	.string	"PRIi16 \"i\""
	.byte	0x1
	.uleb128 0x82
	.string	"PRIiLEAST16 \"i\""
	.byte	0x1
	.uleb128 0x85
	.string	"PRIiFAST16 \"i\""
	.byte	0x1
	.uleb128 0x8a
	.string	"PRId32 \"ld\""
	.byte	0x1
	.uleb128 0x8d
	.string	"PRIdLEAST32 \"ld\""
	.byte	0x1
	.uleb128 0x90
	.string	"PRIdFAST32 \"ld\""
	.byte	0x1
	.uleb128 0x94
	.string	"PRIi32 \"li\""
	.byte	0x1
	.uleb128 0x97
	.string	"PRIiLEAST32 \"li\""
	.byte	0x1
	.uleb128 0x9a
	.string	"PRIiFAST32 \"li\""
	.byte	0x1
	.uleb128 0xaf
	.string	"PRIdPTR PRId16"
	.byte	0x1
	.uleb128 0xb2
	.string	"PRIiPTR PRIi16"
	.byte	0x1
	.uleb128 0xb6
	.string	"PRIo8 \"o\""
	.byte	0x1
	.uleb128 0xb9
	.string	"PRIoLEAST8 \"o\""
	.byte	0x1
	.uleb128 0xbc
	.string	"PRIoFAST8 \"o\""
	.byte	0x1
	.uleb128 0xc0
	.string	"PRIu8 \"u\""
	.byte	0x1
	.uleb128 0xc3
	.string	"PRIuLEAST8 \"u\""
	.byte	0x1
	.uleb128 0xc6
	.string	"PRIuFAST8 \"u\""
	.byte	0x1
	.uleb128 0xca
	.string	"PRIx8 \"x\""
	.byte	0x1
	.uleb128 0xcd
	.string	"PRIxLEAST8 \"x\""
	.byte	0x1
	.uleb128 0xd0
	.string	"PRIxFAST8 \"x\""
	.byte	0x1
	.uleb128 0xd4
	.string	"PRIX8 \"X\""
	.byte	0x1
	.uleb128 0xd7
	.string	"PRIXLEAST8 \"X\""
	.byte	0x1
	.uleb128 0xda
	.string	"PRIXFAST8 \"X\""
	.byte	0x1
	.uleb128 0xdf
	.string	"PRIo16 \"o\""
	.byte	0x1
	.uleb128 0xe2
	.string	"PRIoLEAST16 \"o\""
	.byte	0x1
	.uleb128 0xe5
	.string	"PRIoFAST16 \"o\""
	.byte	0x1
	.uleb128 0xe9
	.string	"PRIu16 \"u\""
	.byte	0x1
	.uleb128 0xec
	.string	"PRIuLEAST16 \"u\""
	.byte	0x1
	.uleb128 0xef
	.string	"PRIuFAST16 \"u\""
	.byte	0x1
	.uleb128 0xf3
	.string	"PRIx16 \"x\""
	.byte	0x1
	.uleb128 0xf6
	.string	"PRIxLEAST16 \"x\""
	.byte	0x1
	.uleb128 0xf9
	.string	"PRIxFAST16 \"x\""
	.byte	0x1
	.uleb128 0xfd
	.string	"PRIX16 \"X\""
	.byte	0x1
	.uleb128 0x100
	.string	"PRIXLEAST16 \"X\""
	.byte	0x1
	.uleb128 0x103
	.string	"PRIXFAST16 \"X\""
	.byte	0x1
	.uleb128 0x108
	.string	"PRIo32 \"lo\""
	.byte	0x1
	.uleb128 0x10b
	.string	"PRIoLEAST32 \"lo\""
	.byte	0x1
	.uleb128 0x10e
	.string	"PRIoFAST32 \"lo\""
	.byte	0x1
	.uleb128 0x112
	.string	"PRIu32 \"lu\""
	.byte	0x1
	.uleb128 0x115
	.string	"PRIuLEAST32 \"lu\""
	.byte	0x1
	.uleb128 0x118
	.string	"PRIuFAST32 \"lu\""
	.byte	0x1
	.uleb128 0x11c
	.string	"PRIx32 \"lx\""
	.byte	0x1
	.uleb128 0x11f
	.string	"PRIxLEAST32 \"lx\""
	.byte	0x1
	.uleb128 0x122
	.string	"PRIxFAST32 \"lx\""
	.byte	0x1
	.uleb128 0x126
	.string	"PRIX32 \"lX\""
	.byte	0x1
	.uleb128 0x129
	.string	"PRIXLEAST32 \"lX\""
	.byte	0x1
	.uleb128 0x12c
	.string	"PRIXFAST32 \"lX\""
	.byte	0x1
	.uleb128 0x14a
	.string	"PRIoPTR PRIo16"
	.byte	0x1
	.uleb128 0x14d
	.string	"PRIuPTR PRIu16"
	.byte	0x1
	.uleb128 0x150
	.string	"PRIxPTR PRIx16"
	.byte	0x1
	.uleb128 0x153
	.string	"PRIXPTR PRIX16"
	.byte	0x1
	.uleb128 0x165
	.string	"SCNd16 \"d\""
	.byte	0x1
	.uleb128 0x168
	.string	"SCNdLEAST16 \"d\""
	.byte	0x1
	.uleb128 0x16b
	.string	"SCNdFAST16 \"d\""
	.byte	0x1
	.uleb128 0x16f
	.string	"SCNi16 \"i\""
	.byte	0x1
	.uleb128 0x172
	.string	"SCNiLEAST16 \"i\""
	.byte	0x1
	.uleb128 0x175
	.string	"SCNiFAST16 \"i\""
	.byte	0x1
	.uleb128 0x17a
	.string	"SCNd32 \"ld\""
	.byte	0x1
	.uleb128 0x17d
	.string	"SCNdLEAST32 \"ld\""
	.byte	0x1
	.uleb128 0x180
	.string	"SCNdFAST32 \"ld\""
	.byte	0x1
	.uleb128 0x184
	.string	"SCNi32 \"li\""
	.byte	0x1
	.uleb128 0x187
	.string	"SCNiLEAST32 \"li\""
	.byte	0x1
	.uleb128 0x18a
	.string	"SCNiFAST32 \"li\""
	.byte	0x1
	.uleb128 0x19e
	.string	"SCNdPTR SCNd16"
	.byte	0x1
	.uleb128 0x1a1
	.string	"SCNiPTR SCNi16"
	.byte	0x1
	.uleb128 0x1b5
	.string	"SCNo16 \"o\""
	.byte	0x1
	.uleb128 0x1b8
	.string	"SCNoLEAST16 \"o\""
	.byte	0x1
	.uleb128 0x1bb
	.string	"SCNoFAST16 \"o\""
	.byte	0x1
	.uleb128 0x1bf
	.string	"SCNu16 \"u\""
	.byte	0x1
	.uleb128 0x1c2
	.string	"SCNuLEAST16 \"u\""
	.byte	0x1
	.uleb128 0x1c5
	.string	"SCNuFAST16 \"u\""
	.byte	0x1
	.uleb128 0x1c9
	.string	"SCNx16 \"x\""
	.byte	0x1
	.uleb128 0x1cc
	.string	"SCNxLEAST16 \"x\""
	.byte	0x1
	.uleb128 0x1cf
	.string	"SCNxFAST16 \"x\""
	.byte	0x1
	.uleb128 0x1d4
	.string	"SCNo32 \"lo\""
	.byte	0x1
	.uleb128 0x1d7
	.string	"SCNoLEAST32 \"lo\""
	.byte	0x1
	.uleb128 0x1da
	.string	"SCNoFAST32 \"lo\""
	.byte	0x1
	.uleb128 0x1de
	.string	"SCNu32 \"lu\""
	.byte	0x1
	.uleb128 0x1e1
	.string	"SCNuLEAST32 \"lu\""
	.byte	0x1
	.uleb128 0x1e4
	.string	"SCNuFAST32 \"lu\""
	.byte	0x1
	.uleb128 0x1e8
	.string	"SCNx32 \"lx\""
	.byte	0x1
	.uleb128 0x1eb
	.string	"SCNxLEAST32 \"lx\""
	.byte	0x1
	.uleb128 0x1ee
	.string	"SCNxFAST32 \"lx\""
	.byte	0x1
	.uleb128 0x207
	.string	"SCNoPTR SCNo16"
	.byte	0x1
	.uleb128 0x20a
	.string	"SCNuPTR SCNu16"
	.byte	0x1
	.uleb128 0x20d
	.string	"SCNxPTR SCNx16"
	.byte	0x4
	.byte	0x1
	.uleb128 0x80
	.string	"_MMIO_BYTE(mem_addr) (*(volatile uint8_t *)(mem_addr))"
	.byte	0x1
	.uleb128 0x81
	.string	"_MMIO_WORD(mem_addr) (*(volatile uint16_t *)(mem_addr))"
	.byte	0x1
	.uleb128 0x82
	.string	"_MMIO_DWORD(mem_addr) (*(volatile uint32_t *)(mem_addr))"
	.byte	0x1
	.uleb128 0xac
	.string	"__SFR_OFFSET 0x20"
	.byte	0x1
	.uleb128 0xb0
	.string	"_SFR_MEM8(mem_addr) _MMIO_BYTE(mem_addr)"
	.byte	0x1
	.uleb128 0xb1
	.string	"_SFR_MEM16(mem_addr) _MMIO_WORD(mem_addr)"
	.byte	0x1
	.uleb128 0xb2
	.string	"_SFR_MEM32(mem_addr) _MMIO_DWORD(mem_addr)"
	.byte	0x1
	.uleb128 0xb3
	.string	"_SFR_IO8(io_addr) _MMIO_BYTE((io_addr) + __SFR_OFFSET)"
	.byte	0x1
	.uleb128 0xb4
	.string	"_SFR_IO16(io_addr) _MMIO_WORD((io_addr) + __SFR_OFFSET)"
	.byte	0x1
	.uleb128 0xb6
	.string	"_SFR_MEM_ADDR(sfr) ((uint16_t) &(sfr))"
	.byte	0x1
	.uleb128 0xb7
	.string	"_SFR_IO_ADDR(sfr) (_SFR_MEM_ADDR(sfr) - __SFR_OFFSET)"
	.byte	0x1
	.uleb128 0xb8
	.string	"_SFR_IO_REG_P(sfr) (_SFR_MEM_ADDR(sfr) < 0x40 + __SFR_OFFSET)"
	.byte	0x1
	.uleb128 0xba
	.string	"_SFR_ADDR(sfr) _SFR_MEM_ADDR(sfr)"
	.byte	0x1
	.uleb128 0xbe
	.string	"_SFR_BYTE(sfr) _MMIO_BYTE(_SFR_ADDR(sfr))"
	.byte	0x1
	.uleb128 0xbf
	.string	"_SFR_WORD(sfr) _MMIO_WORD(_SFR_ADDR(sfr))"
	.byte	0x1
	.uleb128 0xc0
	.string	"_SFR_DWORD(sfr) _MMIO_DWORD(_SFR_ADDR(sfr))"
	.byte	0x1
	.uleb128 0xd0
	.string	"_BV(bit) (1 << (bit))"
	.byte	0x1
	.uleb128 0xd5
	.string	"_VECTOR(N) __vector_ ## N"
	.byte	0x1
	.uleb128 0xea
	.string	"bit_is_set(sfr,bit) (_SFR_BYTE(sfr) & _BV(bit))"
	.byte	0x1
	.uleb128 0xf5
	.string	"bit_is_clear(sfr,bit) (!(_SFR_BYTE(sfr) & _BV(bit)))"
	.byte	0x1
	.uleb128 0xfe
	.ascii	"loop"
	.string	"_until_bit_is_set(sfr,bit) do { } while (bit_is_clear(sfr, bit))"
	.byte	0x1
	.uleb128 0x107
	.ascii	"loop"
	.string	"_until_bit_is_clear(sfr,bit) do { } while (bit_is_set(sfr, bit))"
	.byte	0x4
	.byte	0x3
	.uleb128 0xa2
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x2b
	.string	"_AVR_IOXXX_H_ \"iom1284p.h\""
	.byte	0x1
	.uleb128 0x32
	.string	"_AVR_IOM1284P_H_ 1"
	.byte	0x1
	.uleb128 0x37
	.string	"PINA _SFR_IO8(0x00)"
	.byte	0x1
	.uleb128 0x38
	.string	"PINA0 0"
	.byte	0x1
	.uleb128 0x39
	.string	"PINA1 1"
	.byte	0x1
	.uleb128 0x3a
	.string	"PINA2 2"
	.byte	0x1
	.uleb128 0x3b
	.string	"PINA3 3"
	.byte	0x1
	.uleb128 0x3c
	.string	"PINA4 4"
	.byte	0x1
	.uleb128 0x3d
	.string	"PINA5 5"
	.byte	0x1
	.uleb128 0x3e
	.string	"PINA6 6"
	.byte	0x1
	.uleb128 0x3f
	.string	"PINA7 7"
	.byte	0x1
	.uleb128 0x41
	.string	"DDRA _SFR_IO8(0x01)"
	.byte	0x1
	.uleb128 0x42
	.string	"DDA0 0"
	.byte	0x1
	.uleb128 0x43
	.string	"DDA1 1"
	.byte	0x1
	.uleb128 0x44
	.string	"DDA2 2"
	.byte	0x1
	.uleb128 0x45
	.string	"DDA3 3"
	.byte	0x1
	.uleb128 0x46
	.string	"DDA4 4"
	.byte	0x1
	.uleb128 0x47
	.string	"DDA5 5"
	.byte	0x1
	.uleb128 0x48
	.string	"DDA6 6"
	.byte	0x1
	.uleb128 0x49
	.string	"DDA7 7"
	.byte	0x1
	.uleb128 0x4b
	.string	"PORTA _SFR_IO8(0x02)"
	.byte	0x1
	.uleb128 0x4c
	.string	"PORTA0 0"
	.byte	0x1
	.uleb128 0x4d
	.string	"PORTA1 1"
	.byte	0x1
	.uleb128 0x4e
	.string	"PORTA2 2"
	.byte	0x1
	.uleb128 0x4f
	.string	"PORTA3 3"
	.byte	0x1
	.uleb128 0x50
	.string	"PORTA4 4"
	.byte	0x1
	.uleb128 0x51
	.string	"PORTA5 5"
	.byte	0x1
	.uleb128 0x52
	.string	"PORTA6 6"
	.byte	0x1
	.uleb128 0x53
	.string	"PORTA7 7"
	.byte	0x1
	.uleb128 0x55
	.string	"PINB _SFR_IO8(0x03)"
	.byte	0x1
	.uleb128 0x56
	.string	"PINB0 0"
	.byte	0x1
	.uleb128 0x57
	.string	"PINB1 1"
	.byte	0x1
	.uleb128 0x58
	.string	"PINB2 2"
	.byte	0x1
	.uleb128 0x59
	.string	"PINB3 3"
	.byte	0x1
	.uleb128 0x5a
	.string	"PINB4 4"
	.byte	0x1
	.uleb128 0x5b
	.string	"PINB5 5"
	.byte	0x1
	.uleb128 0x5c
	.string	"PINB6 6"
	.byte	0x1
	.uleb128 0x5d
	.string	"PINB7 7"
	.byte	0x1
	.uleb128 0x5f
	.string	"DDRB _SFR_IO8(0x04)"
	.byte	0x1
	.uleb128 0x60
	.string	"DDB0 0"
	.byte	0x1
	.uleb128 0x61
	.string	"DDB1 1"
	.byte	0x1
	.uleb128 0x62
	.string	"DDB2 2"
	.byte	0x1
	.uleb128 0x63
	.string	"DDB3 3"
	.byte	0x1
	.uleb128 0x64
	.string	"DDB4 4"
	.byte	0x1
	.uleb128 0x65
	.string	"DDB5 5"
	.byte	0x1
	.uleb128 0x66
	.string	"DDB6 6"
	.byte	0x1
	.uleb128 0x67
	.string	"DDB7 7"
	.byte	0x1
	.uleb128 0x69
	.string	"PORTB _SFR_IO8(0x05)"
	.byte	0x1
	.uleb128 0x6a
	.string	"PORTB0 0"
	.byte	0x1
	.uleb128 0x6b
	.string	"PORTB1 1"
	.byte	0x1
	.uleb128 0x6c
	.string	"PORTB2 2"
	.byte	0x1
	.uleb128 0x6d
	.string	"PORTB3 3"
	.byte	0x1
	.uleb128 0x6e
	.string	"PORTB4 4"
	.byte	0x1
	.uleb128 0x6f
	.string	"PORTB5 5"
	.byte	0x1
	.uleb128 0x70
	.string	"PORTB6 6"
	.byte	0x1
	.uleb128 0x71
	.string	"PORTB7 7"
	.byte	0x1
	.uleb128 0x73
	.string	"PINC _SFR_IO8(0x06)"
	.byte	0x1
	.uleb128 0x74
	.string	"PINC0 0"
	.byte	0x1
	.uleb128 0x75
	.string	"PINC1 1"
	.byte	0x1
	.uleb128 0x76
	.string	"PINC2 2"
	.byte	0x1
	.uleb128 0x77
	.string	"PINC3 3"
	.byte	0x1
	.uleb128 0x78
	.string	"PINC4 4"
	.byte	0x1
	.uleb128 0x79
	.string	"PINC5 5"
	.byte	0x1
	.uleb128 0x7a
	.string	"PINC6 6"
	.byte	0x1
	.uleb128 0x7b
	.string	"PINC7 7"
	.byte	0x1
	.uleb128 0x7d
	.string	"DDRC _SFR_IO8(0x07)"
	.byte	0x1
	.uleb128 0x7e
	.string	"DDC0 0"
	.byte	0x1
	.uleb128 0x7f
	.string	"DDC1 1"
	.byte	0x1
	.uleb128 0x80
	.string	"DDC2 2"
	.byte	0x1
	.uleb128 0x81
	.string	"DDC3 3"
	.byte	0x1
	.uleb128 0x82
	.string	"DDC4 4"
	.byte	0x1
	.uleb128 0x83
	.string	"DDC5 5"
	.byte	0x1
	.uleb128 0x84
	.string	"DDC6 6"
	.byte	0x1
	.uleb128 0x85
	.string	"DDC7 7"
	.byte	0x1
	.uleb128 0x87
	.string	"PORTC _SFR_IO8(0x08)"
	.byte	0x1
	.uleb128 0x88
	.string	"PORTC0 0"
	.byte	0x1
	.uleb128 0x89
	.string	"PORTC1 1"
	.byte	0x1
	.uleb128 0x8a
	.string	"PORTC2 2"
	.byte	0x1
	.uleb128 0x8b
	.string	"PORTC3 3"
	.byte	0x1
	.uleb128 0x8c
	.string	"PORTC4 4"
	.byte	0x1
	.uleb128 0x8d
	.string	"PORTC5 5"
	.byte	0x1
	.uleb128 0x8e
	.string	"PORTC6 6"
	.byte	0x1
	.uleb128 0x8f
	.string	"PORTC7 7"
	.byte	0x1
	.uleb128 0x91
	.string	"PIND _SFR_IO8(0x09)"
	.byte	0x1
	.uleb128 0x92
	.string	"PIND0 0"
	.byte	0x1
	.uleb128 0x93
	.string	"PIND1 1"
	.byte	0x1
	.uleb128 0x94
	.string	"PIND2 2"
	.byte	0x1
	.uleb128 0x95
	.string	"PIND3 3"
	.byte	0x1
	.uleb128 0x96
	.string	"PIND4 4"
	.byte	0x1
	.uleb128 0x97
	.string	"PIND5 5"
	.byte	0x1
	.uleb128 0x98
	.string	"PIND6 6"
	.byte	0x1
	.uleb128 0x99
	.string	"PIND7 7"
	.byte	0x1
	.uleb128 0x9b
	.string	"DDRD _SFR_IO8(0x0A)"
	.byte	0x1
	.uleb128 0x9c
	.string	"DDD0 0"
	.byte	0x1
	.uleb128 0x9d
	.string	"DDD1 1"
	.byte	0x1
	.uleb128 0x9e
	.string	"DDD2 2"
	.byte	0x1
	.uleb128 0x9f
	.string	"DDD3 3"
	.byte	0x1
	.uleb128 0xa0
	.string	"DDD4 4"
	.byte	0x1
	.uleb128 0xa1
	.string	"DDD5 5"
	.byte	0x1
	.uleb128 0xa2
	.string	"DDD6 6"
	.byte	0x1
	.uleb128 0xa3
	.string	"DDD7 7"
	.byte	0x1
	.uleb128 0xa5
	.string	"PORTD _SFR_IO8(0x0B)"
	.byte	0x1
	.uleb128 0xa6
	.string	"PORTD0 0"
	.byte	0x1
	.uleb128 0xa7
	.string	"PORTD1 1"
	.byte	0x1
	.uleb128 0xa8
	.string	"PORTD2 2"
	.byte	0x1
	.uleb128 0xa9
	.string	"PORTD3 3"
	.byte	0x1
	.uleb128 0xaa
	.string	"PORTD4 4"
	.byte	0x1
	.uleb128 0xab
	.string	"PORTD5 5"
	.byte	0x1
	.uleb128 0xac
	.string	"PORTD6 6"
	.byte	0x1
	.uleb128 0xad
	.string	"PORTD7 7"
	.byte	0x1
	.uleb128 0xaf
	.string	"TIFR0 _SFR_IO8(0x15)"
	.byte	0x1
	.uleb128 0xb0
	.string	"TOV0 0"
	.byte	0x1
	.uleb128 0xb1
	.string	"OCF0A 1"
	.byte	0x1
	.uleb128 0xb2
	.string	"OCF0B 2"
	.byte	0x1
	.uleb128 0xb4
	.string	"TIFR1 _SFR_IO8(0x16)"
	.byte	0x1
	.uleb128 0xb5
	.string	"TOV1 0"
	.byte	0x1
	.uleb128 0xb6
	.string	"OCF1A 1"
	.byte	0x1
	.uleb128 0xb7
	.string	"OCF1B 2"
	.byte	0x1
	.uleb128 0xb8
	.string	"ICF1 5"
	.byte	0x1
	.uleb128 0xba
	.string	"TIFR2 _SFR_IO8(0x17)"
	.byte	0x1
	.uleb128 0xbb
	.string	"TOV2 0"
	.byte	0x1
	.uleb128 0xbc
	.string	"OCF2A 1"
	.byte	0x1
	.uleb128 0xbd
	.string	"OCF2B 2"
	.byte	0x1
	.uleb128 0xbf
	.string	"TIFR3 _SFR_IO8(0x18)"
	.byte	0x1
	.uleb128 0xc0
	.string	"TOV3 0"
	.byte	0x1
	.uleb128 0xc1
	.string	"OCF3A 1"
	.byte	0x1
	.uleb128 0xc2
	.string	"OCF3B 2"
	.byte	0x1
	.uleb128 0xc3
	.string	"ICF3 5"
	.byte	0x1
	.uleb128 0xc5
	.string	"PCIFR _SFR_IO8(0x1B)"
	.byte	0x1
	.uleb128 0xc6
	.string	"PCIF0 0"
	.byte	0x1
	.uleb128 0xc7
	.string	"PCIF1 1"
	.byte	0x1
	.uleb128 0xc8
	.string	"PCIF2 2"
	.byte	0x1
	.uleb128 0xc9
	.string	"PCIF3 3"
	.byte	0x1
	.uleb128 0xcb
	.string	"EIFR _SFR_IO8(0x1C)"
	.byte	0x1
	.uleb128 0xcc
	.string	"INTF0 0"
	.byte	0x1
	.uleb128 0xcd
	.string	"INTF1 1"
	.byte	0x1
	.uleb128 0xce
	.string	"INTF2 2"
	.byte	0x1
	.uleb128 0xd0
	.string	"EIMSK _SFR_IO8(0x1D)"
	.byte	0x1
	.uleb128 0xd1
	.string	"INT0 0"
	.byte	0x1
	.uleb128 0xd2
	.string	"INT1 1"
	.byte	0x1
	.uleb128 0xd3
	.string	"INT2 2"
	.byte	0x1
	.uleb128 0xd5
	.string	"GPIOR0 _SFR_IO8(0x1E)"
	.byte	0x1
	.uleb128 0xd6
	.string	"GPIOR00 0"
	.byte	0x1
	.uleb128 0xd7
	.string	"GPIOR01 1"
	.byte	0x1
	.uleb128 0xd8
	.string	"GPIOR02 2"
	.byte	0x1
	.uleb128 0xd9
	.string	"GPIOR03 3"
	.byte	0x1
	.uleb128 0xda
	.string	"GPIOR04 4"
	.byte	0x1
	.uleb128 0xdb
	.string	"GPIOR05 5"
	.byte	0x1
	.uleb128 0xdc
	.string	"GPIOR06 6"
	.byte	0x1
	.uleb128 0xdd
	.string	"GPIOR07 7"
	.byte	0x1
	.uleb128 0xdf
	.string	"EECR _SFR_IO8(0x1F)"
	.byte	0x1
	.uleb128 0xe0
	.string	"EERE 0"
	.byte	0x1
	.uleb128 0xe1
	.string	"EEPE 1"
	.byte	0x1
	.uleb128 0xe2
	.string	"EEMPE 2"
	.byte	0x1
	.uleb128 0xe3
	.string	"EERIE 3"
	.byte	0x1
	.uleb128 0xe4
	.string	"EEPM0 4"
	.byte	0x1
	.uleb128 0xe5
	.string	"EEPM1 5"
	.byte	0x1
	.uleb128 0xe7
	.string	"EEDR _SFR_IO8(0x20)"
	.byte	0x1
	.uleb128 0xe8
	.string	"EEDR0 0"
	.byte	0x1
	.uleb128 0xe9
	.string	"EEDR1 1"
	.byte	0x1
	.uleb128 0xea
	.string	"EEDR2 2"
	.byte	0x1
	.uleb128 0xeb
	.string	"EEDR3 3"
	.byte	0x1
	.uleb128 0xec
	.string	"EEDR4 4"
	.byte	0x1
	.uleb128 0xed
	.string	"EEDR5 5"
	.byte	0x1
	.uleb128 0xee
	.string	"EEDR6 6"
	.byte	0x1
	.uleb128 0xef
	.string	"EEDR7 7"
	.byte	0x1
	.uleb128 0xf1
	.string	"EEAR _SFR_IO16(0x21)"
	.byte	0x1
	.uleb128 0xf3
	.string	"EEARL _SFR_IO8(0x21)"
	.byte	0x1
	.uleb128 0xf4
	.string	"EEAR0 0"
	.byte	0x1
	.uleb128 0xf5
	.string	"EEAR1 1"
	.byte	0x1
	.uleb128 0xf6
	.string	"EEAR2 2"
	.byte	0x1
	.uleb128 0xf7
	.string	"EEAR3 3"
	.byte	0x1
	.uleb128 0xf8
	.string	"EEAR4 4"
	.byte	0x1
	.uleb128 0xf9
	.string	"EEAR5 5"
	.byte	0x1
	.uleb128 0xfa
	.string	"EEAR6 6"
	.byte	0x1
	.uleb128 0xfb
	.string	"EEAR7 7"
	.byte	0x1
	.uleb128 0xfd
	.string	"EEARH _SFR_IO8(0x22)"
	.byte	0x1
	.uleb128 0xfe
	.string	"EEAR8 0"
	.byte	0x1
	.uleb128 0xff
	.string	"EEAR9 1"
	.byte	0x1
	.uleb128 0x100
	.string	"EEAR10 2"
	.byte	0x1
	.uleb128 0x101
	.string	"EEAR11 3"
	.byte	0x1
	.uleb128 0x103
	.string	"GTCCR _SFR_IO8(0x23)"
	.byte	0x1
	.uleb128 0x104
	.string	"PSRSYNC 0"
	.byte	0x1
	.uleb128 0x105
	.string	"PSRASY 1"
	.byte	0x1
	.uleb128 0x106
	.string	"TSM 7"
	.byte	0x1
	.uleb128 0x108
	.string	"TCCR0A _SFR_IO8(0x24)"
	.byte	0x1
	.uleb128 0x109
	.string	"WGM00 0"
	.byte	0x1
	.uleb128 0x10a
	.string	"WGM01 1"
	.byte	0x1
	.uleb128 0x10b
	.string	"COM0B0 4"
	.byte	0x1
	.uleb128 0x10c
	.string	"COM0B1 5"
	.byte	0x1
	.uleb128 0x10d
	.string	"COM0A0 6"
	.byte	0x1
	.uleb128 0x10e
	.string	"COM0A1 7"
	.byte	0x1
	.uleb128 0x110
	.string	"TCCR0B _SFR_IO8(0x25)"
	.byte	0x1
	.uleb128 0x111
	.string	"CS00 0"
	.byte	0x1
	.uleb128 0x112
	.string	"CS01 1"
	.byte	0x1
	.uleb128 0x113
	.string	"CS02 2"
	.byte	0x1
	.uleb128 0x114
	.string	"WGM02 3"
	.byte	0x1
	.uleb128 0x115
	.string	"FOC0B 6"
	.byte	0x1
	.uleb128 0x116
	.string	"FOC0A 7"
	.byte	0x1
	.uleb128 0x118
	.string	"TCNT0 _SFR_IO8(0x26)"
	.byte	0x1
	.uleb128 0x119
	.string	"TCNT0_0 0"
	.byte	0x1
	.uleb128 0x11a
	.string	"TCNT0_1 1"
	.byte	0x1
	.uleb128 0x11b
	.string	"TCNT0_2 2"
	.byte	0x1
	.uleb128 0x11c
	.string	"TCNT0_3 3"
	.byte	0x1
	.uleb128 0x11d
	.string	"TCNT0_4 4"
	.byte	0x1
	.uleb128 0x11e
	.string	"TCNT0_5 5"
	.byte	0x1
	.uleb128 0x11f
	.string	"TCNT0_6 6"
	.byte	0x1
	.uleb128 0x120
	.string	"TCNT0_7 7"
	.byte	0x1
	.uleb128 0x122
	.string	"OCR0A _SFR_IO8(0x27)"
	.byte	0x1
	.uleb128 0x123
	.string	"OCR0A_0 0"
	.byte	0x1
	.uleb128 0x124
	.string	"OCR0A_1 1"
	.byte	0x1
	.uleb128 0x125
	.string	"OCR0A_2 2"
	.byte	0x1
	.uleb128 0x126
	.string	"OCR0A_3 3"
	.byte	0x1
	.uleb128 0x127
	.string	"OCR0A_4 4"
	.byte	0x1
	.uleb128 0x128
	.string	"OCR0A_5 5"
	.byte	0x1
	.uleb128 0x129
	.string	"OCR0A_6 6"
	.byte	0x1
	.uleb128 0x12a
	.string	"OCR0A_7 7"
	.byte	0x1
	.uleb128 0x12c
	.string	"OCR0B _SFR_IO8(0x28)"
	.byte	0x1
	.uleb128 0x12d
	.string	"OCR0B_0 0"
	.byte	0x1
	.uleb128 0x12e
	.string	"OCR0B_1 1"
	.byte	0x1
	.uleb128 0x12f
	.string	"OCR0B_2 2"
	.byte	0x1
	.uleb128 0x130
	.string	"OCR0B_3 3"
	.byte	0x1
	.uleb128 0x131
	.string	"OCR0B_4 4"
	.byte	0x1
	.uleb128 0x132
	.string	"OCR0B_5 5"
	.byte	0x1
	.uleb128 0x133
	.string	"OCR0B_6 6"
	.byte	0x1
	.uleb128 0x134
	.string	"OCR0B_7 7"
	.byte	0x1
	.uleb128 0x136
	.string	"GPIOR1 _SFR_IO8(0x2A)"
	.byte	0x1
	.uleb128 0x137
	.string	"GPIOR10 0"
	.byte	0x1
	.uleb128 0x138
	.string	"GPIOR11 1"
	.byte	0x1
	.uleb128 0x139
	.string	"GPIOR12 2"
	.byte	0x1
	.uleb128 0x13a
	.string	"GPIOR13 3"
	.byte	0x1
	.uleb128 0x13b
	.string	"GPIOR14 4"
	.byte	0x1
	.uleb128 0x13c
	.string	"GPIOR15 5"
	.byte	0x1
	.uleb128 0x13d
	.string	"GPIOR16 6"
	.byte	0x1
	.uleb128 0x13e
	.string	"GPIOR17 7"
	.byte	0x1
	.uleb128 0x140
	.string	"GPIOR2 _SFR_IO8(0x2B)"
	.byte	0x1
	.uleb128 0x141
	.string	"GPIOR20 0"
	.byte	0x1
	.uleb128 0x142
	.string	"GPIOR21 1"
	.byte	0x1
	.uleb128 0x143
	.string	"GPIOR22 2"
	.byte	0x1
	.uleb128 0x144
	.string	"GPIOR23 3"
	.byte	0x1
	.uleb128 0x145
	.string	"GPIOR24 4"
	.byte	0x1
	.uleb128 0x146
	.string	"GPIOR25 5"
	.byte	0x1
	.uleb128 0x147
	.string	"GPIOR26 6"
	.byte	0x1
	.uleb128 0x148
	.string	"GPIOR27 7"
	.byte	0x1
	.uleb128 0x14a
	.string	"SPCR _SFR_IO8(0x2C)"
	.byte	0x1
	.uleb128 0x14b
	.string	"SPR0 0"
	.byte	0x1
	.uleb128 0x14c
	.string	"SPR1 1"
	.byte	0x1
	.uleb128 0x14d
	.string	"CPHA 2"
	.byte	0x1
	.uleb128 0x14e
	.string	"CPOL 3"
	.byte	0x1
	.uleb128 0x14f
	.string	"MSTR 4"
	.byte	0x1
	.uleb128 0x150
	.string	"DORD 5"
	.byte	0x1
	.uleb128 0x151
	.string	"SPE 6"
	.byte	0x1
	.uleb128 0x152
	.string	"SPIE 7"
	.byte	0x1
	.uleb128 0x154
	.string	"SPSR _SFR_IO8(0x2D)"
	.byte	0x1
	.uleb128 0x155
	.string	"SPI2X 0"
	.byte	0x1
	.uleb128 0x156
	.string	"WCOL 6"
	.byte	0x1
	.uleb128 0x157
	.string	"SPIF 7"
	.byte	0x1
	.uleb128 0x159
	.string	"SPDR _SFR_IO8(0x2E)"
	.byte	0x1
	.uleb128 0x15a
	.string	"SPDR0 0"
	.byte	0x1
	.uleb128 0x15b
	.string	"SPDR1 1"
	.byte	0x1
	.uleb128 0x15c
	.string	"SPDR2 2"
	.byte	0x1
	.uleb128 0x15d
	.string	"SPDR3 3"
	.byte	0x1
	.uleb128 0x15e
	.string	"SPDR4 4"
	.byte	0x1
	.uleb128 0x15f
	.string	"SPDR5 5"
	.byte	0x1
	.uleb128 0x160
	.string	"SPDR6 6"
	.byte	0x1
	.uleb128 0x161
	.string	"SPDR7 7"
	.byte	0x1
	.uleb128 0x163
	.string	"ACSR _SFR_IO8(0x30)"
	.byte	0x1
	.uleb128 0x164
	.string	"ACIS0 0"
	.byte	0x1
	.uleb128 0x165
	.string	"ACIS1 1"
	.byte	0x1
	.uleb128 0x166
	.string	"ACIC 2"
	.byte	0x1
	.uleb128 0x167
	.string	"ACIE 3"
	.byte	0x1
	.uleb128 0x168
	.string	"ACI 4"
	.byte	0x1
	.uleb128 0x169
	.string	"ACO 5"
	.byte	0x1
	.uleb128 0x16a
	.string	"ACBG 6"
	.byte	0x1
	.uleb128 0x16b
	.string	"ACD 7"
	.byte	0x1
	.uleb128 0x16d
	.string	"OCDR _SFR_IO8(0x31)"
	.byte	0x1
	.uleb128 0x16e
	.string	"OCDR0 0"
	.byte	0x1
	.uleb128 0x16f
	.string	"OCDR1 1"
	.byte	0x1
	.uleb128 0x170
	.string	"OCDR2 2"
	.byte	0x1
	.uleb128 0x171
	.string	"OCDR3 3"
	.byte	0x1
	.uleb128 0x172
	.string	"OCDR4 4"
	.byte	0x1
	.uleb128 0x173
	.string	"OCDR5 5"
	.byte	0x1
	.uleb128 0x174
	.string	"OCDR6 6"
	.byte	0x1
	.uleb128 0x175
	.string	"OCDR7 7"
	.byte	0x1
	.uleb128 0x177
	.string	"SMCR _SFR_IO8(0x33)"
	.byte	0x1
	.uleb128 0x178
	.string	"SE 0"
	.byte	0x1
	.uleb128 0x179
	.string	"SM0 1"
	.byte	0x1
	.uleb128 0x17a
	.string	"SM1 2"
	.byte	0x1
	.uleb128 0x17b
	.string	"SM2 3"
	.byte	0x1
	.uleb128 0x17d
	.string	"MCUSR _SFR_IO8(0x34)"
	.byte	0x1
	.uleb128 0x17e
	.string	"PORF 0"
	.byte	0x1
	.uleb128 0x17f
	.string	"EXTRF 1"
	.byte	0x1
	.uleb128 0x180
	.string	"BORF 2"
	.byte	0x1
	.uleb128 0x181
	.string	"WDRF 3"
	.byte	0x1
	.uleb128 0x182
	.string	"JTRF 4"
	.byte	0x1
	.uleb128 0x184
	.string	"MCUCR _SFR_IO8(0x35)"
	.byte	0x1
	.uleb128 0x185
	.string	"IVCE 0"
	.byte	0x1
	.uleb128 0x186
	.string	"IVSEL 1"
	.byte	0x1
	.uleb128 0x187
	.string	"PUD 4"
	.byte	0x1
	.uleb128 0x188
	.string	"BODSE 5"
	.byte	0x1
	.uleb128 0x189
	.string	"BODS 6"
	.byte	0x1
	.uleb128 0x18a
	.string	"JTD 7"
	.byte	0x1
	.uleb128 0x18c
	.string	"SPMCSR _SFR_IO8(0x37)"
	.byte	0x1
	.uleb128 0x18d
	.string	"SPMEN 0"
	.byte	0x1
	.uleb128 0x18e
	.string	"PGERS 1"
	.byte	0x1
	.uleb128 0x18f
	.string	"PGWRT 2"
	.byte	0x1
	.uleb128 0x190
	.string	"BLBSET 3"
	.byte	0x1
	.uleb128 0x191
	.string	"RWWSRE 4"
	.byte	0x1
	.uleb128 0x192
	.string	"SIGRD 5"
	.byte	0x1
	.uleb128 0x193
	.string	"RWWSB 6"
	.byte	0x1
	.uleb128 0x194
	.string	"SPMIE 7"
	.byte	0x1
	.uleb128 0x196
	.string	"RAMPZ _SFR_IO8(0x3B)"
	.byte	0x1
	.uleb128 0x197
	.string	"RAMPZ0 0"
	.byte	0x1
	.uleb128 0x199
	.string	"WDTCSR _SFR_MEM8(0x60)"
	.byte	0x1
	.uleb128 0x19a
	.string	"WDP0 0"
	.byte	0x1
	.uleb128 0x19b
	.string	"WDP1 1"
	.byte	0x1
	.uleb128 0x19c
	.string	"WDP2 2"
	.byte	0x1
	.uleb128 0x19d
	.string	"WDE 3"
	.byte	0x1
	.uleb128 0x19e
	.string	"WDCE 4"
	.byte	0x1
	.uleb128 0x19f
	.string	"WDP3 5"
	.byte	0x1
	.uleb128 0x1a0
	.string	"WDIE 6"
	.byte	0x1
	.uleb128 0x1a1
	.string	"WDIF 7"
	.byte	0x1
	.uleb128 0x1a3
	.string	"CLKPR _SFR_MEM8(0x61)"
	.byte	0x1
	.uleb128 0x1a4
	.string	"CLKPS0 0"
	.byte	0x1
	.uleb128 0x1a5
	.string	"CLKPS1 1"
	.byte	0x1
	.uleb128 0x1a6
	.string	"CLKPS2 2"
	.byte	0x1
	.uleb128 0x1a7
	.string	"CLKPS3 3"
	.byte	0x1
	.uleb128 0x1a8
	.string	"CLKPCE 7"
	.byte	0x1
	.uleb128 0x1aa
	.string	"PRR0 _SFR_MEM8(0x64)"
	.byte	0x1
	.uleb128 0x1ab
	.string	"PRADC 0"
	.byte	0x1
	.uleb128 0x1ac
	.string	"PRUSART0 1"
	.byte	0x1
	.uleb128 0x1ad
	.string	"PRSPI 2"
	.byte	0x1
	.uleb128 0x1ae
	.string	"PRTIM1 3"
	.byte	0x1
	.uleb128 0x1af
	.string	"PRUSART1 4"
	.byte	0x1
	.uleb128 0x1b0
	.string	"PRTIM0 5"
	.byte	0x1
	.uleb128 0x1b1
	.string	"PRTIM2 6"
	.byte	0x1
	.uleb128 0x1b2
	.string	"PRTWI 7"
	.byte	0x1
	.uleb128 0x1b4
	.string	"PRR1 _SFR_MEM8(0x65)"
	.byte	0x1
	.uleb128 0x1b5
	.string	"PRTIM3 0"
	.byte	0x1
	.uleb128 0x1b7
	.string	"OSCCAL _SFR_MEM8(0x66)"
	.byte	0x1
	.uleb128 0x1b8
	.string	"CAL0 0"
	.byte	0x1
	.uleb128 0x1b9
	.string	"CAL1 1"
	.byte	0x1
	.uleb128 0x1ba
	.string	"CAL2 2"
	.byte	0x1
	.uleb128 0x1bb
	.string	"CAL3 3"
	.byte	0x1
	.uleb128 0x1bc
	.string	"CAL4 4"
	.byte	0x1
	.uleb128 0x1bd
	.string	"CAL5 5"
	.byte	0x1
	.uleb128 0x1be
	.string	"CAL6 6"
	.byte	0x1
	.uleb128 0x1bf
	.string	"CAL7 7"
	.byte	0x1
	.uleb128 0x1c1
	.string	"PCICR _SFR_MEM8(0x68)"
	.byte	0x1
	.uleb128 0x1c2
	.string	"PCIE0 0"
	.byte	0x1
	.uleb128 0x1c3
	.string	"PCIE1 1"
	.byte	0x1
	.uleb128 0x1c4
	.string	"PCIE2 2"
	.byte	0x1
	.uleb128 0x1c5
	.string	"PCIE3 3"
	.byte	0x1
	.uleb128 0x1c7
	.string	"EICRA _SFR_MEM8(0x69)"
	.byte	0x1
	.uleb128 0x1c8
	.string	"ISC00 0"
	.byte	0x1
	.uleb128 0x1c9
	.string	"ISC01 1"
	.byte	0x1
	.uleb128 0x1ca
	.string	"ISC10 2"
	.byte	0x1
	.uleb128 0x1cb
	.string	"ISC11 3"
	.byte	0x1
	.uleb128 0x1cc
	.string	"ISC20 4"
	.byte	0x1
	.uleb128 0x1cd
	.string	"ISC21 5"
	.byte	0x1
	.uleb128 0x1cf
	.string	"PCMSK0 _SFR_MEM8(0x6B)"
	.byte	0x1
	.uleb128 0x1d0
	.string	"PCINT0 0"
	.byte	0x1
	.uleb128 0x1d1
	.string	"PCINT1 1"
	.byte	0x1
	.uleb128 0x1d2
	.string	"PCINT2 2"
	.byte	0x1
	.uleb128 0x1d3
	.string	"PCINT3 3"
	.byte	0x1
	.uleb128 0x1d4
	.string	"PCINT4 4"
	.byte	0x1
	.uleb128 0x1d5
	.string	"PCINT5 5"
	.byte	0x1
	.uleb128 0x1d6
	.string	"PCINT6 6"
	.byte	0x1
	.uleb128 0x1d7
	.string	"PCINT7 7"
	.byte	0x1
	.uleb128 0x1d9
	.string	"PCMSK1 _SFR_MEM8(0x6C)"
	.byte	0x1
	.uleb128 0x1da
	.string	"PCINT8 0"
	.byte	0x1
	.uleb128 0x1db
	.string	"PCINT9 1"
	.byte	0x1
	.uleb128 0x1dc
	.string	"PCINT10 2"
	.byte	0x1
	.uleb128 0x1dd
	.string	"PCINT11 3"
	.byte	0x1
	.uleb128 0x1de
	.string	"PCINT12 4"
	.byte	0x1
	.uleb128 0x1df
	.string	"PCINT13 5"
	.byte	0x1
	.uleb128 0x1e0
	.string	"PCINT14 6"
	.byte	0x1
	.uleb128 0x1e1
	.string	"PCINT15 7"
	.byte	0x1
	.uleb128 0x1e3
	.string	"PCMSK2 _SFR_MEM8(0x6D)"
	.byte	0x1
	.uleb128 0x1e4
	.string	"PCINT16 0"
	.byte	0x1
	.uleb128 0x1e5
	.string	"PCINT17 1"
	.byte	0x1
	.uleb128 0x1e6
	.string	"PCINT18 2"
	.byte	0x1
	.uleb128 0x1e7
	.string	"PCINT19 3"
	.byte	0x1
	.uleb128 0x1e8
	.string	"PCINT20 4"
	.byte	0x1
	.uleb128 0x1e9
	.string	"PCINT21 5"
	.byte	0x1
	.uleb128 0x1ea
	.string	"PCINT22 6"
	.byte	0x1
	.uleb128 0x1eb
	.string	"PCINT23 7"
	.byte	0x1
	.uleb128 0x1ed
	.string	"TIMSK0 _SFR_MEM8(0x6E)"
	.byte	0x1
	.uleb128 0x1ee
	.string	"TOIE0 0"
	.byte	0x1
	.uleb128 0x1ef
	.string	"OCIE0A 1"
	.byte	0x1
	.uleb128 0x1f0
	.string	"OCIE0B 2"
	.byte	0x1
	.uleb128 0x1f2
	.string	"TIMSK1 _SFR_MEM8(0x6F)"
	.byte	0x1
	.uleb128 0x1f3
	.string	"TOIE1 0"
	.byte	0x1
	.uleb128 0x1f4
	.string	"OCIE1A 1"
	.byte	0x1
	.uleb128 0x1f5
	.string	"OCIE1B 2"
	.byte	0x1
	.uleb128 0x1f6
	.string	"ICIE1 5"
	.byte	0x1
	.uleb128 0x1f8
	.string	"TIMSK2 _SFR_MEM8(0x70)"
	.byte	0x1
	.uleb128 0x1f9
	.string	"TOIE2 0"
	.byte	0x1
	.uleb128 0x1fa
	.string	"OCIE2A 1"
	.byte	0x1
	.uleb128 0x1fb
	.string	"OCIE2B 2"
	.byte	0x1
	.uleb128 0x1fd
	.string	"TIMSK3 _SFR_MEM8(0x71)"
	.byte	0x1
	.uleb128 0x1fe
	.string	"TOIE3 0"
	.byte	0x1
	.uleb128 0x1ff
	.string	"OCIE3A 1"
	.byte	0x1
	.uleb128 0x200
	.string	"OCIE3B 2"
	.byte	0x1
	.uleb128 0x201
	.string	"ICIE3 5"
	.byte	0x1
	.uleb128 0x203
	.string	"PCMSK3 _SFR_MEM8(0x73)"
	.byte	0x1
	.uleb128 0x204
	.string	"PCINT24 0"
	.byte	0x1
	.uleb128 0x205
	.string	"PCINT25 1"
	.byte	0x1
	.uleb128 0x206
	.string	"PCINT26 2"
	.byte	0x1
	.uleb128 0x207
	.string	"PCINT27 3"
	.byte	0x1
	.uleb128 0x208
	.string	"PCINT28 4"
	.byte	0x1
	.uleb128 0x209
	.string	"PCINT29 5"
	.byte	0x1
	.uleb128 0x20a
	.string	"PCINT30 6"
	.byte	0x1
	.uleb128 0x20b
	.string	"PCINT31 7"
	.byte	0x1
	.uleb128 0x20e
	.string	"ADC _SFR_MEM16(0x78)"
	.byte	0x1
	.uleb128 0x210
	.string	"ADCW _SFR_MEM16(0x78)"
	.byte	0x1
	.uleb128 0x212
	.string	"ADCL _SFR_MEM8(0x78)"
	.byte	0x1
	.uleb128 0x213
	.string	"ADCL0 0"
	.byte	0x1
	.uleb128 0x214
	.string	"ADCL1 1"
	.byte	0x1
	.uleb128 0x215
	.string	"ADCL2 2"
	.byte	0x1
	.uleb128 0x216
	.string	"ADCL3 3"
	.byte	0x1
	.uleb128 0x217
	.string	"ADCL4 4"
	.byte	0x1
	.uleb128 0x218
	.string	"ADCL5 5"
	.byte	0x1
	.uleb128 0x219
	.string	"ADCL6 6"
	.byte	0x1
	.uleb128 0x21a
	.string	"ADCL7 7"
	.byte	0x1
	.uleb128 0x21c
	.string	"ADCH _SFR_MEM8(0x79)"
	.byte	0x1
	.uleb128 0x21d
	.string	"ADCH0 0"
	.byte	0x1
	.uleb128 0x21e
	.string	"ADCH1 1"
	.byte	0x1
	.uleb128 0x21f
	.string	"ADCH2 2"
	.byte	0x1
	.uleb128 0x220
	.string	"ADCH3 3"
	.byte	0x1
	.uleb128 0x221
	.string	"ADCH4 4"
	.byte	0x1
	.uleb128 0x222
	.string	"ADCH5 5"
	.byte	0x1
	.uleb128 0x223
	.string	"ADCH6 6"
	.byte	0x1
	.uleb128 0x224
	.string	"ADCH7 7"
	.byte	0x1
	.uleb128 0x226
	.string	"ADCSRA _SFR_MEM8(0x7A)"
	.byte	0x1
	.uleb128 0x227
	.string	"ADPS0 0"
	.byte	0x1
	.uleb128 0x228
	.string	"ADPS1 1"
	.byte	0x1
	.uleb128 0x229
	.string	"ADPS2 2"
	.byte	0x1
	.uleb128 0x22a
	.string	"ADIE 3"
	.byte	0x1
	.uleb128 0x22b
	.string	"ADIF 4"
	.byte	0x1
	.uleb128 0x22c
	.string	"ADATE 5"
	.byte	0x1
	.uleb128 0x22d
	.string	"ADSC 6"
	.byte	0x1
	.uleb128 0x22e
	.string	"ADEN 7"
	.byte	0x1
	.uleb128 0x230
	.string	"ADCSRB _SFR_MEM8(0x7B)"
	.byte	0x1
	.uleb128 0x231
	.string	"ADTS0 0"
	.byte	0x1
	.uleb128 0x232
	.string	"ADTS1 1"
	.byte	0x1
	.uleb128 0x233
	.string	"ADTS2 2"
	.byte	0x1
	.uleb128 0x234
	.string	"ACME 6"
	.byte	0x1
	.uleb128 0x236
	.string	"ADMUX _SFR_MEM8(0x7C)"
	.byte	0x1
	.uleb128 0x237
	.string	"MUX0 0"
	.byte	0x1
	.uleb128 0x238
	.string	"MUX1 1"
	.byte	0x1
	.uleb128 0x239
	.string	"MUX2 2"
	.byte	0x1
	.uleb128 0x23a
	.string	"MUX3 3"
	.byte	0x1
	.uleb128 0x23b
	.string	"MUX4 4"
	.byte	0x1
	.uleb128 0x23c
	.string	"ADLAR 5"
	.byte	0x1
	.uleb128 0x23d
	.string	"REFS0 6"
	.byte	0x1
	.uleb128 0x23e
	.string	"REFS1 7"
	.byte	0x1
	.uleb128 0x240
	.string	"DIDR0 _SFR_MEM8(0x7E)"
	.byte	0x1
	.uleb128 0x241
	.string	"ADC0D 0"
	.byte	0x1
	.uleb128 0x242
	.string	"ADC1D 1"
	.byte	0x1
	.uleb128 0x243
	.string	"ADC2D 2"
	.byte	0x1
	.uleb128 0x244
	.string	"ADC3D 3"
	.byte	0x1
	.uleb128 0x245
	.string	"ADC4D 4"
	.byte	0x1
	.uleb128 0x246
	.string	"ADC5D 5"
	.byte	0x1
	.uleb128 0x247
	.string	"ADC6D 6"
	.byte	0x1
	.uleb128 0x248
	.string	"ADC7D 7"
	.byte	0x1
	.uleb128 0x24a
	.string	"DIDR1 _SFR_MEM8(0x7F)"
	.byte	0x1
	.uleb128 0x24b
	.string	"AIN0D 0"
	.byte	0x1
	.uleb128 0x24c
	.string	"AIN1D 1"
	.byte	0x1
	.uleb128 0x24e
	.string	"TCCR1A _SFR_MEM8(0x80)"
	.byte	0x1
	.uleb128 0x24f
	.string	"WGM10 0"
	.byte	0x1
	.uleb128 0x250
	.string	"WGM11 1"
	.byte	0x1
	.uleb128 0x251
	.string	"COM1B0 4"
	.byte	0x1
	.uleb128 0x252
	.string	"COM1B1 5"
	.byte	0x1
	.uleb128 0x253
	.string	"COM1A0 6"
	.byte	0x1
	.uleb128 0x254
	.string	"COM1A1 7"
	.byte	0x1
	.uleb128 0x256
	.string	"TCCR1B _SFR_MEM8(0x81)"
	.byte	0x1
	.uleb128 0x257
	.string	"CS10 0"
	.byte	0x1
	.uleb128 0x258
	.string	"CS11 1"
	.byte	0x1
	.uleb128 0x259
	.string	"CS12 2"
	.byte	0x1
	.uleb128 0x25a
	.string	"WGM12 3"
	.byte	0x1
	.uleb128 0x25b
	.string	"WGM13 4"
	.byte	0x1
	.uleb128 0x25c
	.string	"ICES1 6"
	.byte	0x1
	.uleb128 0x25d
	.string	"ICNC1 7"
	.byte	0x1
	.uleb128 0x25f
	.string	"TCCR1C _SFR_MEM8(0x82)"
	.byte	0x1
	.uleb128 0x260
	.string	"FOC1B 6"
	.byte	0x1
	.uleb128 0x261
	.string	"FOC1A 7"
	.byte	0x1
	.uleb128 0x263
	.string	"TCNT1 _SFR_MEM16(0x84)"
	.byte	0x1
	.uleb128 0x265
	.string	"TCNT1L _SFR_MEM8(0x84)"
	.byte	0x1
	.uleb128 0x266
	.string	"TCNT1L0 0"
	.byte	0x1
	.uleb128 0x267
	.string	"TCNT1L1 1"
	.byte	0x1
	.uleb128 0x268
	.string	"TCNT1L2 2"
	.byte	0x1
	.uleb128 0x269
	.string	"TCNT1L3 3"
	.byte	0x1
	.uleb128 0x26a
	.string	"TCNT1L4 4"
	.byte	0x1
	.uleb128 0x26b
	.string	"TCNT1L5 5"
	.byte	0x1
	.uleb128 0x26c
	.string	"TCNT1L6 6"
	.byte	0x1
	.uleb128 0x26d
	.string	"TCNT1L7 7"
	.byte	0x1
	.uleb128 0x26f
	.string	"TCNT1H _SFR_MEM8(0x85)"
	.byte	0x1
	.uleb128 0x270
	.string	"TCNT1H0 0"
	.byte	0x1
	.uleb128 0x271
	.string	"TCNT1H1 1"
	.byte	0x1
	.uleb128 0x272
	.string	"TCNT1H2 2"
	.byte	0x1
	.uleb128 0x273
	.string	"TCNT1H3 3"
	.byte	0x1
	.uleb128 0x274
	.string	"TCNT1H4 4"
	.byte	0x1
	.uleb128 0x275
	.string	"TCNT1H5 5"
	.byte	0x1
	.uleb128 0x276
	.string	"TCNT1H6 6"
	.byte	0x1
	.uleb128 0x277
	.string	"TCNT1H7 7"
	.byte	0x1
	.uleb128 0x279
	.string	"ICR1 _SFR_MEM16(0x86)"
	.byte	0x1
	.uleb128 0x27b
	.string	"ICR1L _SFR_MEM8(0x86)"
	.byte	0x1
	.uleb128 0x27c
	.string	"ICR1L0 0"
	.byte	0x1
	.uleb128 0x27d
	.string	"ICR1L1 1"
	.byte	0x1
	.uleb128 0x27e
	.string	"ICR1L2 2"
	.byte	0x1
	.uleb128 0x27f
	.string	"ICR1L3 3"
	.byte	0x1
	.uleb128 0x280
	.string	"ICR1L4 4"
	.byte	0x1
	.uleb128 0x281
	.string	"ICR1L5 5"
	.byte	0x1
	.uleb128 0x282
	.string	"ICR1L6 6"
	.byte	0x1
	.uleb128 0x283
	.string	"ICR1L7 7"
	.byte	0x1
	.uleb128 0x285
	.string	"ICR1H _SFR_MEM8(0x87)"
	.byte	0x1
	.uleb128 0x286
	.string	"ICR1H0 0"
	.byte	0x1
	.uleb128 0x287
	.string	"ICR1H1 1"
	.byte	0x1
	.uleb128 0x288
	.string	"ICR1H2 2"
	.byte	0x1
	.uleb128 0x289
	.string	"ICR1H3 3"
	.byte	0x1
	.uleb128 0x28a
	.string	"ICR1H4 4"
	.byte	0x1
	.uleb128 0x28b
	.string	"ICR1H5 5"
	.byte	0x1
	.uleb128 0x28c
	.string	"ICR1H6 6"
	.byte	0x1
	.uleb128 0x28d
	.string	"ICR1H7 7"
	.byte	0x1
	.uleb128 0x28f
	.string	"OCR1A _SFR_MEM16(0x88)"
	.byte	0x1
	.uleb128 0x291
	.string	"OCR1AL _SFR_MEM8(0x88)"
	.byte	0x1
	.uleb128 0x292
	.string	"OCR1AL0 0"
	.byte	0x1
	.uleb128 0x293
	.string	"OCR1AL1 1"
	.byte	0x1
	.uleb128 0x294
	.string	"OCR1AL2 2"
	.byte	0x1
	.uleb128 0x295
	.string	"OCR1AL3 3"
	.byte	0x1
	.uleb128 0x296
	.string	"OCR1AL4 4"
	.byte	0x1
	.uleb128 0x297
	.string	"OCR1AL5 5"
	.byte	0x1
	.uleb128 0x298
	.string	"OCR1AL6 6"
	.byte	0x1
	.uleb128 0x299
	.string	"OCR1AL7 7"
	.byte	0x1
	.uleb128 0x29b
	.string	"OCR1AH _SFR_MEM8(0x89)"
	.byte	0x1
	.uleb128 0x29c
	.string	"OCR1AH0 0"
	.byte	0x1
	.uleb128 0x29d
	.string	"OCR1AH1 1"
	.byte	0x1
	.uleb128 0x29e
	.string	"OCR1AH2 2"
	.byte	0x1
	.uleb128 0x29f
	.string	"OCR1AH3 3"
	.byte	0x1
	.uleb128 0x2a0
	.string	"OCR1AH4 4"
	.byte	0x1
	.uleb128 0x2a1
	.string	"OCR1AH5 5"
	.byte	0x1
	.uleb128 0x2a2
	.string	"OCR1AH6 6"
	.byte	0x1
	.uleb128 0x2a3
	.string	"OCR1AH7 7"
	.byte	0x1
	.uleb128 0x2a5
	.string	"OCR1B _SFR_MEM16(0x8A)"
	.byte	0x1
	.uleb128 0x2a7
	.string	"OCR1BL _SFR_MEM8(0x8A)"
	.byte	0x1
	.uleb128 0x2a8
	.string	"OCR1AL0 0"
	.byte	0x1
	.uleb128 0x2a9
	.string	"OCR1AL1 1"
	.byte	0x1
	.uleb128 0x2aa
	.string	"OCR1AL2 2"
	.byte	0x1
	.uleb128 0x2ab
	.string	"OCR1AL3 3"
	.byte	0x1
	.uleb128 0x2ac
	.string	"OCR1AL4 4"
	.byte	0x1
	.uleb128 0x2ad
	.string	"OCR1AL5 5"
	.byte	0x1
	.uleb128 0x2ae
	.string	"OCR1AL6 6"
	.byte	0x1
	.uleb128 0x2af
	.string	"OCR1AL7 7"
	.byte	0x1
	.uleb128 0x2b1
	.string	"OCR1BH _SFR_MEM8(0x8B)"
	.byte	0x1
	.uleb128 0x2b2
	.string	"OCR1AH0 0"
	.byte	0x1
	.uleb128 0x2b3
	.string	"OCR1AH1 1"
	.byte	0x1
	.uleb128 0x2b4
	.string	"OCR1AH2 2"
	.byte	0x1
	.uleb128 0x2b5
	.string	"OCR1AH3 3"
	.byte	0x1
	.uleb128 0x2b6
	.string	"OCR1AH4 4"
	.byte	0x1
	.uleb128 0x2b7
	.string	"OCR1AH5 5"
	.byte	0x1
	.uleb128 0x2b8
	.string	"OCR1AH6 6"
	.byte	0x1
	.uleb128 0x2b9
	.string	"OCR1AH7 7"
	.byte	0x1
	.uleb128 0x2bb
	.string	"TCCR3A _SFR_MEM8(0x90)"
	.byte	0x1
	.uleb128 0x2bc
	.string	"WGM30 0"
	.byte	0x1
	.uleb128 0x2bd
	.string	"WGM31 1"
	.byte	0x1
	.uleb128 0x2be
	.string	"COM3B0 4"
	.byte	0x1
	.uleb128 0x2bf
	.string	"COM3B1 5"
	.byte	0x1
	.uleb128 0x2c0
	.string	"COM3A0 6"
	.byte	0x1
	.uleb128 0x2c1
	.string	"COM3A1 7"
	.byte	0x1
	.uleb128 0x2c3
	.string	"TCCR3B _SFR_MEM8(0x91)"
	.byte	0x1
	.uleb128 0x2c4
	.string	"CS30 0"
	.byte	0x1
	.uleb128 0x2c5
	.string	"CS31 1"
	.byte	0x1
	.uleb128 0x2c6
	.string	"CS32 2"
	.byte	0x1
	.uleb128 0x2c7
	.string	"WGM32 3"
	.byte	0x1
	.uleb128 0x2c8
	.string	"WGM33 4"
	.byte	0x1
	.uleb128 0x2c9
	.string	"ICES3 6"
	.byte	0x1
	.uleb128 0x2ca
	.string	"ICNC3 7"
	.byte	0x1
	.uleb128 0x2cc
	.string	"TCCR3C _SFR_MEM8(0x92)"
	.byte	0x1
	.uleb128 0x2cd
	.string	"FOC3B 6"
	.byte	0x1
	.uleb128 0x2ce
	.string	"FOC3A 7"
	.byte	0x1
	.uleb128 0x2d0
	.string	"TCNT3 _SFR_MEM16(0x94)"
	.byte	0x1
	.uleb128 0x2d2
	.string	"TCNT3L _SFR_MEM8(0x94)"
	.byte	0x1
	.uleb128 0x2d3
	.string	"TCNT3L0 0"
	.byte	0x1
	.uleb128 0x2d4
	.string	"TCNT3L1 1"
	.byte	0x1
	.uleb128 0x2d5
	.string	"TCNT3L2 2"
	.byte	0x1
	.uleb128 0x2d6
	.string	"TCNT3L3 3"
	.byte	0x1
	.uleb128 0x2d7
	.string	"TCNT3L4 4"
	.byte	0x1
	.uleb128 0x2d8
	.string	"TCNT3L5 5"
	.byte	0x1
	.uleb128 0x2d9
	.string	"TCNT3L6 6"
	.byte	0x1
	.uleb128 0x2da
	.string	"TCNT3L7 7"
	.byte	0x1
	.uleb128 0x2dc
	.string	"TCNT3H _SFR_MEM8(0x95)"
	.byte	0x1
	.uleb128 0x2dd
	.string	"TCNT3H0 0"
	.byte	0x1
	.uleb128 0x2de
	.string	"TCNT3H1 1"
	.byte	0x1
	.uleb128 0x2df
	.string	"TCNT3H2 2"
	.byte	0x1
	.uleb128 0x2e0
	.string	"TCNT3H3 3"
	.byte	0x1
	.uleb128 0x2e1
	.string	"TCNT3H4 4"
	.byte	0x1
	.uleb128 0x2e2
	.string	"TCNT3H5 5"
	.byte	0x1
	.uleb128 0x2e3
	.string	"TCNT3H6 6"
	.byte	0x1
	.uleb128 0x2e4
	.string	"TCNT3H7 7"
	.byte	0x1
	.uleb128 0x2e6
	.string	"ICR3 _SFR_MEM16(0x96)"
	.byte	0x1
	.uleb128 0x2e8
	.string	"ICR3L _SFR_MEM8(0x96)"
	.byte	0x1
	.uleb128 0x2e9
	.string	"ICR3L0 0"
	.byte	0x1
	.uleb128 0x2ea
	.string	"ICR3L1 1"
	.byte	0x1
	.uleb128 0x2eb
	.string	"ICR3L2 2"
	.byte	0x1
	.uleb128 0x2ec
	.string	"ICR3L3 3"
	.byte	0x1
	.uleb128 0x2ed
	.string	"ICR3L4 4"
	.byte	0x1
	.uleb128 0x2ee
	.string	"ICR3L5 5"
	.byte	0x1
	.uleb128 0x2ef
	.string	"ICR3L6 6"
	.byte	0x1
	.uleb128 0x2f0
	.string	"ICR3L7 7"
	.byte	0x1
	.uleb128 0x2f2
	.string	"ICR3H _SFR_MEM8(0x97)"
	.byte	0x1
	.uleb128 0x2f3
	.string	"ICR3H0 0"
	.byte	0x1
	.uleb128 0x2f4
	.string	"ICR3H1 1"
	.byte	0x1
	.uleb128 0x2f5
	.string	"ICR3H2 2"
	.byte	0x1
	.uleb128 0x2f6
	.string	"ICR3H3 3"
	.byte	0x1
	.uleb128 0x2f7
	.string	"ICR3H4 4"
	.byte	0x1
	.uleb128 0x2f8
	.string	"ICR3H5 5"
	.byte	0x1
	.uleb128 0x2f9
	.string	"ICR3H6 6"
	.byte	0x1
	.uleb128 0x2fa
	.string	"ICR3H7 7"
	.byte	0x1
	.uleb128 0x2fc
	.string	"OCR3A _SFR_MEM16(0x98)"
	.byte	0x1
	.uleb128 0x2fe
	.string	"OCR3AL _SFR_MEM8(0x98)"
	.byte	0x1
	.uleb128 0x2ff
	.string	"OCR3AL0 0"
	.byte	0x1
	.uleb128 0x300
	.string	"OCR3AL1 1"
	.byte	0x1
	.uleb128 0x301
	.string	"OCR3AL2 2"
	.byte	0x1
	.uleb128 0x302
	.string	"OCR3AL3 3"
	.byte	0x1
	.uleb128 0x303
	.string	"OCR3AL4 4"
	.byte	0x1
	.uleb128 0x304
	.string	"OCR3AL5 5"
	.byte	0x1
	.uleb128 0x305
	.string	"OCR3AL6 6"
	.byte	0x1
	.uleb128 0x306
	.string	"OCR3AL7 7"
	.byte	0x1
	.uleb128 0x308
	.string	"OCR3AH _SFR_MEM8(0x99)"
	.byte	0x1
	.uleb128 0x309
	.string	"OCR3AH0 0"
	.byte	0x1
	.uleb128 0x30a
	.string	"OCR3AH1 1"
	.byte	0x1
	.uleb128 0x30b
	.string	"OCR3AH2 2"
	.byte	0x1
	.uleb128 0x30c
	.string	"OCR3AH3 3"
	.byte	0x1
	.uleb128 0x30d
	.string	"OCR3AH4 4"
	.byte	0x1
	.uleb128 0x30e
	.string	"OCR3AH5 5"
	.byte	0x1
	.uleb128 0x30f
	.string	"OCR3AH6 6"
	.byte	0x1
	.uleb128 0x310
	.string	"OCR3AH7 7"
	.byte	0x1
	.uleb128 0x312
	.string	"OCR3B _SFR_MEM16(0x9A)"
	.byte	0x1
	.uleb128 0x314
	.string	"OCR3BL _SFR_MEM8(0x9A)"
	.byte	0x1
	.uleb128 0x315
	.string	"OCR3AL0 0"
	.byte	0x1
	.uleb128 0x316
	.string	"OCR3AL1 1"
	.byte	0x1
	.uleb128 0x317
	.string	"OCR3AL2 2"
	.byte	0x1
	.uleb128 0x318
	.string	"OCR3AL3 3"
	.byte	0x1
	.uleb128 0x319
	.string	"OCR3AL4 4"
	.byte	0x1
	.uleb128 0x31a
	.string	"OCR3AL5 5"
	.byte	0x1
	.uleb128 0x31b
	.string	"OCR3AL6 6"
	.byte	0x1
	.uleb128 0x31c
	.string	"OCR3AL7 7"
	.byte	0x1
	.uleb128 0x31e
	.string	"OCR3BH _SFR_MEM8(0x9B)"
	.byte	0x1
	.uleb128 0x31f
	.string	"OCR3AH0 0"
	.byte	0x1
	.uleb128 0x320
	.string	"OCR3AH1 1"
	.byte	0x1
	.uleb128 0x321
	.string	"OCR3AH2 2"
	.byte	0x1
	.uleb128 0x322
	.string	"OCR3AH3 3"
	.byte	0x1
	.uleb128 0x323
	.string	"OCR3AH4 4"
	.byte	0x1
	.uleb128 0x324
	.string	"OCR3AH5 5"
	.byte	0x1
	.uleb128 0x325
	.string	"OCR3AH6 6"
	.byte	0x1
	.uleb128 0x326
	.string	"OCR3AH7 7"
	.byte	0x1
	.uleb128 0x328
	.string	"TCCR2A _SFR_MEM8(0xB0)"
	.byte	0x1
	.uleb128 0x329
	.string	"WGM20 0"
	.byte	0x1
	.uleb128 0x32a
	.string	"WGM21 1"
	.byte	0x1
	.uleb128 0x32b
	.string	"COM2B0 4"
	.byte	0x1
	.uleb128 0x32c
	.string	"COM2B1 5"
	.byte	0x1
	.uleb128 0x32d
	.string	"COM2A0 6"
	.byte	0x1
	.uleb128 0x32e
	.string	"COM2A1 7"
	.byte	0x1
	.uleb128 0x330
	.string	"TCCR2B _SFR_MEM8(0xB1)"
	.byte	0x1
	.uleb128 0x331
	.string	"CS20 0"
	.byte	0x1
	.uleb128 0x332
	.string	"CS21 1"
	.byte	0x1
	.uleb128 0x333
	.string	"CS22 2"
	.byte	0x1
	.uleb128 0x334
	.string	"WGM22 3"
	.byte	0x1
	.uleb128 0x335
	.string	"FOC2B 6"
	.byte	0x1
	.uleb128 0x336
	.string	"FOC2A 7"
	.byte	0x1
	.uleb128 0x338
	.string	"TCNT2 _SFR_MEM8(0xB2)"
	.byte	0x1
	.uleb128 0x339
	.string	"TCNT2_0 0"
	.byte	0x1
	.uleb128 0x33a
	.string	"TCNT2_1 1"
	.byte	0x1
	.uleb128 0x33b
	.string	"TCNT2_2 2"
	.byte	0x1
	.uleb128 0x33c
	.string	"TCNT2_3 3"
	.byte	0x1
	.uleb128 0x33d
	.string	"TCNT2_4 4"
	.byte	0x1
	.uleb128 0x33e
	.string	"TCNT2_5 5"
	.byte	0x1
	.uleb128 0x33f
	.string	"TCNT2_6 6"
	.byte	0x1
	.uleb128 0x340
	.string	"TCNT2_7 7"
	.byte	0x1
	.uleb128 0x342
	.string	"OCR2A _SFR_MEM8(0xB3)"
	.byte	0x1
	.uleb128 0x343
	.string	"OCR2_0 0"
	.byte	0x1
	.uleb128 0x344
	.string	"OCR2_1 1"
	.byte	0x1
	.uleb128 0x345
	.string	"OCR2_2 2"
	.byte	0x1
	.uleb128 0x346
	.string	"OCR2_3 3"
	.byte	0x1
	.uleb128 0x347
	.string	"OCR2_4 4"
	.byte	0x1
	.uleb128 0x348
	.string	"OCR2_5 5"
	.byte	0x1
	.uleb128 0x349
	.string	"OCR2_6 6"
	.byte	0x1
	.uleb128 0x34a
	.string	"OCR2_7 7"
	.byte	0x1
	.uleb128 0x34c
	.string	"OCR2B _SFR_MEM8(0xB4)"
	.byte	0x1
	.uleb128 0x34d
	.string	"OCR2_0 0"
	.byte	0x1
	.uleb128 0x34e
	.string	"OCR2_1 1"
	.byte	0x1
	.uleb128 0x34f
	.string	"OCR2_2 2"
	.byte	0x1
	.uleb128 0x350
	.string	"OCR2_3 3"
	.byte	0x1
	.uleb128 0x351
	.string	"OCR2_4 4"
	.byte	0x1
	.uleb128 0x352
	.string	"OCR2_5 5"
	.byte	0x1
	.uleb128 0x353
	.string	"OCR2_6 6"
	.byte	0x1
	.uleb128 0x354
	.string	"OCR2_7 7"
	.byte	0x1
	.uleb128 0x356
	.string	"ASSR _SFR_MEM8(0xB6)"
	.byte	0x1
	.uleb128 0x357
	.string	"TCR2BUB 0"
	.byte	0x1
	.uleb128 0x358
	.string	"TCR2AUB 1"
	.byte	0x1
	.uleb128 0x359
	.string	"OCR2BUB 2"
	.byte	0x1
	.uleb128 0x35a
	.string	"OCR2AUB 3"
	.byte	0x1
	.uleb128 0x35b
	.string	"TCN2UB 4"
	.byte	0x1
	.uleb128 0x35c
	.string	"AS2 5"
	.byte	0x1
	.uleb128 0x35d
	.string	"EXCLK 6"
	.byte	0x1
	.uleb128 0x35f
	.string	"TWBR _SFR_MEM8(0xB8)"
	.byte	0x1
	.uleb128 0x360
	.string	"TWBR0 0"
	.byte	0x1
	.uleb128 0x361
	.string	"TWBR1 1"
	.byte	0x1
	.uleb128 0x362
	.string	"TWBR2 2"
	.byte	0x1
	.uleb128 0x363
	.string	"TWBR3 3"
	.byte	0x1
	.uleb128 0x364
	.string	"TWBR4 4"
	.byte	0x1
	.uleb128 0x365
	.string	"TWBR5 5"
	.byte	0x1
	.uleb128 0x366
	.string	"TWBR6 6"
	.byte	0x1
	.uleb128 0x367
	.string	"TWBR7 7"
	.byte	0x1
	.uleb128 0x369
	.string	"TWSR _SFR_MEM8(0xB9)"
	.byte	0x1
	.uleb128 0x36a
	.string	"TWPS0 0"
	.byte	0x1
	.uleb128 0x36b
	.string	"TWPS1 1"
	.byte	0x1
	.uleb128 0x36c
	.string	"TWS3 3"
	.byte	0x1
	.uleb128 0x36d
	.string	"TWS4 4"
	.byte	0x1
	.uleb128 0x36e
	.string	"TWS5 5"
	.byte	0x1
	.uleb128 0x36f
	.string	"TWS6 6"
	.byte	0x1
	.uleb128 0x370
	.string	"TWS7 7"
	.byte	0x1
	.uleb128 0x372
	.string	"TWAR _SFR_MEM8(0xBA)"
	.byte	0x1
	.uleb128 0x373
	.string	"TWGCE 0"
	.byte	0x1
	.uleb128 0x374
	.string	"TWA0 1"
	.byte	0x1
	.uleb128 0x375
	.string	"TWA1 2"
	.byte	0x1
	.uleb128 0x376
	.string	"TWA2 3"
	.byte	0x1
	.uleb128 0x377
	.string	"TWA3 4"
	.byte	0x1
	.uleb128 0x378
	.string	"TWA4 5"
	.byte	0x1
	.uleb128 0x379
	.string	"TWA5 6"
	.byte	0x1
	.uleb128 0x37a
	.string	"TWA6 7"
	.byte	0x1
	.uleb128 0x37c
	.string	"TWDR _SFR_MEM8(0xBB)"
	.byte	0x1
	.uleb128 0x37d
	.string	"TWD0 0"
	.byte	0x1
	.uleb128 0x37e
	.string	"TWD1 1"
	.byte	0x1
	.uleb128 0x37f
	.string	"TWD2 2"
	.byte	0x1
	.uleb128 0x380
	.string	"TWD3 3"
	.byte	0x1
	.uleb128 0x381
	.string	"TWD4 4"
	.byte	0x1
	.uleb128 0x382
	.string	"TWD5 5"
	.byte	0x1
	.uleb128 0x383
	.string	"TWD6 6"
	.byte	0x1
	.uleb128 0x384
	.string	"TWD7 7"
	.byte	0x1
	.uleb128 0x386
	.string	"TWCR _SFR_MEM8(0xBC)"
	.byte	0x1
	.uleb128 0x387
	.string	"TWIE 0"
	.byte	0x1
	.uleb128 0x388
	.string	"TWEN 2"
	.byte	0x1
	.uleb128 0x389
	.string	"TWWC 3"
	.byte	0x1
	.uleb128 0x38a
	.string	"TWSTO 4"
	.byte	0x1
	.uleb128 0x38b
	.string	"TWSTA 5"
	.byte	0x1
	.uleb128 0x38c
	.string	"TWEA 6"
	.byte	0x1
	.uleb128 0x38d
	.string	"TWINT 7"
	.byte	0x1
	.uleb128 0x38f
	.string	"TWAMR _SFR_MEM8(0xBD)"
	.byte	0x1
	.uleb128 0x390
	.string	"TWAM0 1"
	.byte	0x1
	.uleb128 0x391
	.string	"TWAM1 2"
	.byte	0x1
	.uleb128 0x392
	.string	"TWAM2 3"
	.byte	0x1
	.uleb128 0x393
	.string	"TWAM3 4"
	.byte	0x1
	.uleb128 0x394
	.string	"TWAM4 5"
	.byte	0x1
	.uleb128 0x395
	.string	"TWAM5 6"
	.byte	0x1
	.uleb128 0x396
	.string	"TWAM6 7"
	.byte	0x1
	.uleb128 0x398
	.string	"UCSR0A _SFR_MEM8(0xC0)"
	.byte	0x1
	.uleb128 0x399
	.string	"MPCM0 0"
	.byte	0x1
	.uleb128 0x39a
	.string	"U2X0 1"
	.byte	0x1
	.uleb128 0x39b
	.string	"UPE0 2"
	.byte	0x1
	.uleb128 0x39c
	.string	"DOR0 3"
	.byte	0x1
	.uleb128 0x39d
	.string	"FE0 4"
	.byte	0x1
	.uleb128 0x39e
	.string	"UDRE0 5"
	.byte	0x1
	.uleb128 0x39f
	.string	"TXC0 6"
	.byte	0x1
	.uleb128 0x3a0
	.string	"RXC0 7"
	.byte	0x1
	.uleb128 0x3a2
	.string	"UCSR0B _SFR_MEM8(0xC1)"
	.byte	0x1
	.uleb128 0x3a3
	.string	"TXB80 0"
	.byte	0x1
	.uleb128 0x3a4
	.string	"RXB80 1"
	.byte	0x1
	.uleb128 0x3a5
	.string	"UCSZ02 2"
	.byte	0x1
	.uleb128 0x3a6
	.string	"TXEN0 3"
	.byte	0x1
	.uleb128 0x3a7
	.string	"RXEN0 4"
	.byte	0x1
	.uleb128 0x3a8
	.string	"UDRIE0 5"
	.byte	0x1
	.uleb128 0x3a9
	.string	"TXCIE0 6"
	.byte	0x1
	.uleb128 0x3aa
	.string	"RXCIE0 7"
	.byte	0x1
	.uleb128 0x3ac
	.string	"UCSR0C _SFR_MEM8(0xC2)"
	.byte	0x1
	.uleb128 0x3ad
	.string	"UCPOL0 0"
	.byte	0x1
	.uleb128 0x3ae
	.string	"UCSZ00 1"
	.byte	0x1
	.uleb128 0x3af
	.string	"UCSZ01 2"
	.byte	0x1
	.uleb128 0x3b0
	.string	"USBS0 3"
	.byte	0x1
	.uleb128 0x3b1
	.string	"UPM00 4"
	.byte	0x1
	.uleb128 0x3b2
	.string	"UPM01 5"
	.byte	0x1
	.uleb128 0x3b3
	.string	"UMSEL00 6"
	.byte	0x1
	.uleb128 0x3b4
	.string	"UMSEL01 7"
	.byte	0x1
	.uleb128 0x3b6
	.string	"UBRR0 _SFR_MEM16(0xC4)"
	.byte	0x1
	.uleb128 0x3b8
	.string	"UBRR0L _SFR_MEM8(0xC4)"
	.byte	0x1
	.uleb128 0x3b9
	.string	"UBRR0_0 0"
	.byte	0x1
	.uleb128 0x3ba
	.string	"UBRR0_1 1"
	.byte	0x1
	.uleb128 0x3bb
	.string	"UBRR0_2 2"
	.byte	0x1
	.uleb128 0x3bc
	.string	"UBRR0_3 3"
	.byte	0x1
	.uleb128 0x3bd
	.string	"UBRR0_4 4"
	.byte	0x1
	.uleb128 0x3be
	.string	"UBRR0_5 5"
	.byte	0x1
	.uleb128 0x3bf
	.string	"UBRR0_6 6"
	.byte	0x1
	.uleb128 0x3c0
	.string	"UBRR0_7 7"
	.byte	0x1
	.uleb128 0x3c2
	.string	"UBRR0H _SFR_MEM8(0xC5)"
	.byte	0x1
	.uleb128 0x3c3
	.string	"UBRR0_8 0"
	.byte	0x1
	.uleb128 0x3c4
	.string	"UBRR0_9 1"
	.byte	0x1
	.uleb128 0x3c5
	.string	"UBRR0_10 2"
	.byte	0x1
	.uleb128 0x3c6
	.string	"UBRR0_11 3"
	.byte	0x1
	.uleb128 0x3c8
	.string	"UDR0 _SFR_MEM8(0xC6)"
	.byte	0x1
	.uleb128 0x3c9
	.string	"UDR0_0 0"
	.byte	0x1
	.uleb128 0x3ca
	.string	"UDR0_1 1"
	.byte	0x1
	.uleb128 0x3cb
	.string	"UDR0_2 2"
	.byte	0x1
	.uleb128 0x3cc
	.string	"UDR0_3 3"
	.byte	0x1
	.uleb128 0x3cd
	.string	"UDR0_4 4"
	.byte	0x1
	.uleb128 0x3ce
	.string	"UDR0_5 5"
	.byte	0x1
	.uleb128 0x3cf
	.string	"UDR0_6 6"
	.byte	0x1
	.uleb128 0x3d0
	.string	"UDR0_7 7"
	.byte	0x1
	.uleb128 0x3d2
	.string	"UCSR1A _SFR_MEM8(0xC8)"
	.byte	0x1
	.uleb128 0x3d3
	.string	"MPCM1 0"
	.byte	0x1
	.uleb128 0x3d4
	.string	"U2X1 1"
	.byte	0x1
	.uleb128 0x3d5
	.string	"UPE1 2"
	.byte	0x1
	.uleb128 0x3d6
	.string	"DOR1 3"
	.byte	0x1
	.uleb128 0x3d7
	.string	"FE1 4"
	.byte	0x1
	.uleb128 0x3d8
	.string	"UDRE1 5"
	.byte	0x1
	.uleb128 0x3d9
	.string	"TXC1 6"
	.byte	0x1
	.uleb128 0x3da
	.string	"RXC1 7"
	.byte	0x1
	.uleb128 0x3dc
	.string	"UCSR1B _SFR_MEM8(0xC9)"
	.byte	0x1
	.uleb128 0x3dd
	.string	"TXB81 0"
	.byte	0x1
	.uleb128 0x3de
	.string	"RXB81 1"
	.byte	0x1
	.uleb128 0x3df
	.string	"UCSZ12 2"
	.byte	0x1
	.uleb128 0x3e0
	.string	"TXEN1 3"
	.byte	0x1
	.uleb128 0x3e1
	.string	"RXEN1 4"
	.byte	0x1
	.uleb128 0x3e2
	.string	"UDRIE1 5"
	.byte	0x1
	.uleb128 0x3e3
	.string	"TXCIE1 6"
	.byte	0x1
	.uleb128 0x3e4
	.string	"RXCIE1 7"
	.byte	0x1
	.uleb128 0x3e6
	.string	"UCSR1C _SFR_MEM8(0xCA)"
	.byte	0x1
	.uleb128 0x3e7
	.string	"UCPOL1 0"
	.byte	0x1
	.uleb128 0x3e8
	.string	"UCSZ10 1"
	.byte	0x1
	.uleb128 0x3e9
	.string	"UCSZ11 2"
	.byte	0x1
	.uleb128 0x3ea
	.string	"USBS1 3"
	.byte	0x1
	.uleb128 0x3eb
	.string	"UPM10 4"
	.byte	0x1
	.uleb128 0x3ec
	.string	"UPM11 5"
	.byte	0x1
	.uleb128 0x3ed
	.string	"UMSEL10 6"
	.byte	0x1
	.uleb128 0x3ee
	.string	"UMSEL11 7"
	.byte	0x1
	.uleb128 0x3f0
	.string	"UBRR1 _SFR_MEM16(0xCC)"
	.byte	0x1
	.uleb128 0x3f2
	.string	"UBRR1L _SFR_MEM8(0xCC)"
	.byte	0x1
	.uleb128 0x3f3
	.string	"UBRR1_0 0"
	.byte	0x1
	.uleb128 0x3f4
	.string	"UBRR1_1 1"
	.byte	0x1
	.uleb128 0x3f5
	.string	"UBRR1_2 2"
	.byte	0x1
	.uleb128 0x3f6
	.string	"UBRR1_3 3"
	.byte	0x1
	.uleb128 0x3f7
	.string	"UBRR1_4 4"
	.byte	0x1
	.uleb128 0x3f8
	.string	"UBRR1_5 5"
	.byte	0x1
	.uleb128 0x3f9
	.string	"UBRR1_6 6"
	.byte	0x1
	.uleb128 0x3fa
	.string	"UBRR1_7 7"
	.byte	0x1
	.uleb128 0x3fc
	.string	"UBRR1H _SFR_MEM8(0xCD)"
	.byte	0x1
	.uleb128 0x3fd
	.string	"UBRR1_8 0"
	.byte	0x1
	.uleb128 0x3fe
	.string	"UBRR1_9 1"
	.byte	0x1
	.uleb128 0x3ff
	.string	"UBRR1_10 2"
	.byte	0x1
	.uleb128 0x400
	.string	"UBRR1_11 3"
	.byte	0x1
	.uleb128 0x402
	.string	"UDR1 _SFR_MEM8(0xCE)"
	.byte	0x1
	.uleb128 0x403
	.string	"UDR1_0 0"
	.byte	0x1
	.uleb128 0x404
	.string	"UDR1_1 1"
	.byte	0x1
	.uleb128 0x405
	.string	"UDR1_2 2"
	.byte	0x1
	.uleb128 0x406
	.string	"UDR1_3 3"
	.byte	0x1
	.uleb128 0x407
	.string	"UDR1_4 4"
	.byte	0x1
	.uleb128 0x408
	.string	"UDR1_5 5"
	.byte	0x1
	.uleb128 0x409
	.string	"UDR1_6 6"
	.byte	0x1
	.uleb128 0x40a
	.string	"UDR1_7 7"
	.byte	0x1
	.uleb128 0x410
	.string	"INT0_vect _VECTOR(1)"
	.byte	0x1
	.uleb128 0x411
	.string	"INT1_vect _VECTOR(2)"
	.byte	0x1
	.uleb128 0x412
	.string	"INT2_vect _VECTOR(3)"
	.byte	0x1
	.uleb128 0x413
	.string	"PCINT0_vect _VECTOR(4)"
	.byte	0x1
	.uleb128 0x414
	.string	"PCINT1_vect _VECTOR(5)"
	.byte	0x1
	.uleb128 0x415
	.string	"PCINT2_vect _VECTOR(6)"
	.byte	0x1
	.uleb128 0x416
	.string	"PCINT3_vect _VECTOR(7)"
	.byte	0x1
	.uleb128 0x417
	.string	"WDT_vect _VECTOR(8)"
	.byte	0x1
	.uleb128 0x418
	.string	"TIMER2_COMPA_vect _VECTOR(9)"
	.byte	0x1
	.uleb128 0x419
	.string	"TIMER2_COMPB_vect _VECTOR(10)"
	.byte	0x1
	.uleb128 0x41a
	.string	"TIMER2_OVF_vect _VECTOR(11)"
	.byte	0x1
	.uleb128 0x41b
	.string	"TIMER1_CAPT_vect _VECTOR(12)"
	.byte	0x1
	.uleb128 0x41c
	.string	"TIMER1_COMPA_vect _VECTOR(13)"
	.byte	0x1
	.uleb128 0x41d
	.string	"TIMER1_COMPB_vect _VECTOR(14)"
	.byte	0x1
	.uleb128 0x41e
	.string	"TIMER1_OVF_vect _VECTOR(15)"
	.byte	0x1
	.uleb128 0x41f
	.string	"TIMER0_COMPA_vect _VECTOR(16)"
	.byte	0x1
	.uleb128 0x420
	.string	"TIMER0_COMPB_vect _VECTOR(17)"
	.byte	0x1
	.uleb128 0x421
	.string	"TIMER0_OVF_vect _VECTOR(18)"
	.byte	0x1
	.uleb128 0x422
	.string	"SPI_STC_vect _VECTOR(19)"
	.byte	0x1
	.uleb128 0x423
	.string	"USART0_RX_vect _VECTOR(20)"
	.byte	0x1
	.uleb128 0x424
	.string	"USART0_UDRE_vect _VECTOR(21)"
	.byte	0x1
	.uleb128 0x425
	.string	"USART0_TX_vect _VECTOR(22)"
	.byte	0x1
	.uleb128 0x426
	.string	"ANALOG_COMP_vect _VECTOR(23)"
	.byte	0x1
	.uleb128 0x427
	.string	"ADC_vect _VECTOR(24)"
	.byte	0x1
	.uleb128 0x428
	.string	"EE_READY_vect _VECTOR(25)"
	.byte	0x1
	.uleb128 0x429
	.string	"TWI_vect _VECTOR(26)"
	.byte	0x1
	.uleb128 0x42a
	.string	"SPM_READY_vect _VECTOR(27)"
	.byte	0x1
	.uleb128 0x42b
	.string	"USART1_RX_vect _VECTOR(28)"
	.byte	0x1
	.uleb128 0x42c
	.string	"USART1_UDRE_vect _VECTOR(29)"
	.byte	0x1
	.uleb128 0x42d
	.string	"USART1_TX_vect _VECTOR(30)"
	.byte	0x1
	.uleb128 0x42e
	.string	"TIMER3_CAPT_vect _VECTOR(31)"
	.byte	0x1
	.uleb128 0x42f
	.string	"TIMER3_COMPA_vect _VECTOR(32)"
	.byte	0x1
	.uleb128 0x430
	.string	"TIMER3_COMPB_vect _VECTOR(33)"
	.byte	0x1
	.uleb128 0x431
	.string	"TIMER3_OVF_vect _VECTOR(34)"
	.byte	0x1
	.uleb128 0x433
	.string	"_VECTORS_SIZE (35 * 4)"
	.byte	0x1
	.uleb128 0x437
	.string	"SPM_PAGESIZE 256"
	.byte	0x1
	.uleb128 0x438
	.string	"RAMSTART (0x100)"
	.byte	0x1
	.uleb128 0x439
	.string	"RAMEND 0x40FF"
	.byte	0x1
	.uleb128 0x43a
	.string	"XRAMSIZE 0"
	.byte	0x1
	.uleb128 0x43b
	.string	"XRAMEND RAMEND"
	.byte	0x1
	.uleb128 0x43c
	.string	"E2END 0xFFF"
	.byte	0x1
	.uleb128 0x43d
	.string	"E2PAGESIZE 8"
	.byte	0x1
	.uleb128 0x43e
	.string	"FLASHEND 0x1FFFF"
	.byte	0x1
	.uleb128 0x442
	.string	"FUSE_MEMORY_SIZE 3"
	.byte	0x1
	.uleb128 0x445
	.string	"FUSE_CKSEL0 (unsigned char)~_BV(0)"
	.byte	0x1
	.uleb128 0x446
	.string	"FUSE_CKSEL1 (unsigned char)~_BV(1)"
	.byte	0x1
	.uleb128 0x447
	.string	"FUSE_CKSEL2 (unsigned char)~_BV(2)"
	.byte	0x1
	.uleb128 0x448
	.string	"FUSE_CKSEL3 (unsigned char)~_BV(3)"
	.byte	0x1
	.uleb128 0x449
	.string	"FUSE_SUT0 (unsigned char)~_BV(4)"
	.byte	0x1
	.uleb128 0x44a
	.string	"FUSE_SUT1 (unsigned char)~_BV(5)"
	.byte	0x1
	.uleb128 0x44b
	.string	"FUSE_CKOUT (unsigned char)~_BV(6)"
	.byte	0x1
	.uleb128 0x44c
	.string	"FUSE_CKDIV8 (unsigned char)~_BV(7)"
	.byte	0x1
	.uleb128 0x44d
	.ascii	"LFUSE_DEFAULT (FUSE_CKSEL0 & "
	.string	"FUSE_CKSEL2 & FUSE_CKSEL3 & FUSE_SUT0 & FUSE_SUT1 & FUSE_CKDIV8)"
	.byte	0x1
	.uleb128 0x450
	.string	"FUSE_BOOTRST (unsigned char)~_BV(0)"
	.byte	0x1
	.uleb128 0x451
	.string	"FUSE_BOOTSZ0 (unsigned char)~_BV(1)"
	.byte	0x1
	.uleb128 0x452
	.string	"FUSE_BOOTSZ1 (unsigned char)~_BV(2)"
	.byte	0x1
	.uleb128 0x453
	.string	"FUSE_EESAVE (unsigned char)~_BV(3)"
	.byte	0x1
	.uleb128 0x454
	.string	"FUSE_WDTON (unsigned char)~_BV(4)"
	.byte	0x1
	.uleb128 0x455
	.string	"FUSE_SPIEN (unsigned char)~_BV(5)"
	.byte	0x1
	.uleb128 0x456
	.string	"FUSE_JTAGEN (unsigned char)~_BV(6)"
	.byte	0x1
	.uleb128 0x457
	.string	"FUSE_OCDEN (unsigned char)~_BV(7)"
	.byte	0x1
	.uleb128 0x458
	.string	"HFUSE_DEFAULT (FUSE_BOOTSZ0 & FUSE_SPIEN & FUSE_JTAGEN)"
	.byte	0x1
	.uleb128 0x45b
	.string	"FUSE_BODLEVEL0 (unsigned char)~_BV(0)"
	.byte	0x1
	.uleb128 0x45c
	.string	"FUSE_BODLEVEL1 (unsigned char)~_BV(1)"
	.byte	0x1
	.uleb128 0x45d
	.string	"FUSE_BODLEVEL2 (unsigned char)~_BV(2)"
	.byte	0x1
	.uleb128 0x45e
	.string	"EFUSE_DEFAULT (0xFF)"
	.byte	0x1
	.uleb128 0x462
	.string	"__LOCK_BITS_EXIST "
	.byte	0x1
	.uleb128 0x463
	.string	"__BOOT_LOCK_BITS_0_EXIST "
	.byte	0x1
	.uleb128 0x464
	.string	"__BOOT_LOCK_BITS_1_EXIST "
	.byte	0x1
	.uleb128 0x468
	.string	"SIGNATURE_0 0x1E"
	.byte	0x1
	.uleb128 0x469
	.string	"SIGNATURE_1 0x97"
	.byte	0x1
	.uleb128 0x46a
	.string	"SIGNATURE_2 0x05"
	.byte	0x4
	.byte	0x3
	.uleb128 0x216
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x22
	.string	"_AVR_PORTPINS_H_ 1"
	.byte	0x1
	.uleb128 0x2d
	.string	"PORT7 7"
	.byte	0x1
	.uleb128 0x2e
	.string	"PORT6 6"
	.byte	0x1
	.uleb128 0x2f
	.string	"PORT5 5"
	.byte	0x1
	.uleb128 0x30
	.string	"PORT4 4"
	.byte	0x1
	.uleb128 0x31
	.string	"PORT3 3"
	.byte	0x1
	.uleb128 0x32
	.string	"PORT2 2"
	.byte	0x1
	.uleb128 0x33
	.string	"PORT1 1"
	.byte	0x1
	.uleb128 0x34
	.string	"PORT0 0"
	.byte	0x1
	.uleb128 0x37
	.string	"DD7 7"
	.byte	0x1
	.uleb128 0x38
	.string	"DD6 6"
	.byte	0x1
	.uleb128 0x39
	.string	"DD5 5"
	.byte	0x1
	.uleb128 0x3a
	.string	"DD4 4"
	.byte	0x1
	.uleb128 0x3b
	.string	"DD3 3"
	.byte	0x1
	.uleb128 0x3c
	.string	"DD2 2"
	.byte	0x1
	.uleb128 0x3d
	.string	"DD1 1"
	.byte	0x1
	.uleb128 0x3e
	.string	"DD0 0"
	.byte	0x1
	.uleb128 0x41
	.string	"PIN7 7"
	.byte	0x1
	.uleb128 0x42
	.string	"PIN6 6"
	.byte	0x1
	.uleb128 0x43
	.string	"PIN5 5"
	.byte	0x1
	.uleb128 0x44
	.string	"PIN4 4"
	.byte	0x1
	.uleb128 0x45
	.string	"PIN3 3"
	.byte	0x1
	.uleb128 0x46
	.string	"PIN2 2"
	.byte	0x1
	.uleb128 0x47
	.string	"PIN1 1"
	.byte	0x1
	.uleb128 0x48
	.string	"PIN0 0"
	.byte	0x1
	.uleb128 0x51
	.string	"PA0 PORTA0"
	.byte	0x1
	.uleb128 0x56
	.string	"PA1 PORTA1"
	.byte	0x1
	.uleb128 0x5b
	.string	"PA2 PORTA2"
	.byte	0x1
	.uleb128 0x60
	.string	"PA3 PORTA3"
	.byte	0x1
	.uleb128 0x65
	.string	"PA4 PORTA4"
	.byte	0x1
	.uleb128 0x6a
	.string	"PA5 PORTA5"
	.byte	0x1
	.uleb128 0x6f
	.string	"PA6 PORTA6"
	.byte	0x1
	.uleb128 0x74
	.string	"PA7 PORTA7"
	.byte	0x1
	.uleb128 0x7c
	.string	"PB0 PORTB0"
	.byte	0x1
	.uleb128 0x81
	.string	"PB1 PORTB1"
	.byte	0x1
	.uleb128 0x86
	.string	"PB2 PORTB2"
	.byte	0x1
	.uleb128 0x8b
	.string	"PB3 PORTB3"
	.byte	0x1
	.uleb128 0x90
	.string	"PB4 PORTB4"
	.byte	0x1
	.uleb128 0x95
	.string	"PB5 PORTB5"
	.byte	0x1
	.uleb128 0x9a
	.string	"PB6 PORTB6"
	.byte	0x1
	.uleb128 0x9f
	.string	"PB7 PORTB7"
	.byte	0x1
	.uleb128 0xa7
	.string	"PC0 PORTC0"
	.byte	0x1
	.uleb128 0xac
	.string	"PC1 PORTC1"
	.byte	0x1
	.uleb128 0xb1
	.string	"PC2 PORTC2"
	.byte	0x1
	.uleb128 0xb6
	.string	"PC3 PORTC3"
	.byte	0x1
	.uleb128 0xbb
	.string	"PC4 PORTC4"
	.byte	0x1
	.uleb128 0xc0
	.string	"PC5 PORTC5"
	.byte	0x1
	.uleb128 0xc5
	.string	"PC6 PORTC6"
	.byte	0x1
	.uleb128 0xca
	.string	"PC7 PORTC7"
	.byte	0x1
	.uleb128 0xd2
	.string	"PD0 PORTD0"
	.byte	0x1
	.uleb128 0xd7
	.string	"PD1 PORTD1"
	.byte	0x1
	.uleb128 0xdc
	.string	"PD2 PORTD2"
	.byte	0x1
	.uleb128 0xe1
	.string	"PD3 PORTD3"
	.byte	0x1
	.uleb128 0xe6
	.string	"PD4 PORTD4"
	.byte	0x1
	.uleb128 0xeb
	.string	"PD5 PORTD5"
	.byte	0x1
	.uleb128 0xf0
	.string	"PD6 PORTD6"
	.byte	0x1
	.uleb128 0xf5
	.string	"PD7 PORTD7"
	.byte	0x4
	.byte	0x3
	.uleb128 0x218
	.uleb128 0xe
	.byte	0x1
	.uleb128 0x23
	.string	"_AVR_COMMON_H "
	.byte	0x1
	.uleb128 0x51
	.string	"SPL _SFR_IO8(0x3D)"
	.byte	0x1
	.uleb128 0x59
	.string	"SP _SFR_IO16(0x3D)"
	.byte	0x1
	.uleb128 0x5c
	.string	"SPH _SFR_IO8(0x3E)"
	.byte	0x1
	.uleb128 0x67
	.string	"SREG _SFR_IO8(0x3F)"
	.byte	0x1
	.uleb128 0x6e
	.string	"SREG_C (0)"
	.byte	0x1
	.uleb128 0x71
	.string	"SREG_Z (1)"
	.byte	0x1
	.uleb128 0x74
	.string	"SREG_N (2)"
	.byte	0x1
	.uleb128 0x77
	.string	"SREG_V (3)"
	.byte	0x1
	.uleb128 0x7a
	.string	"SREG_S (4)"
	.byte	0x1
	.uleb128 0x7d
	.string	"SREG_H (5)"
	.byte	0x1
	.uleb128 0x80
	.string	"SREG_T (6)"
	.byte	0x1
	.uleb128 0x83
	.string	"SREG_I (7)"
	.byte	0x1
	.uleb128 0xcb
	.string	"XL r26"
	.byte	0x1
	.uleb128 0xcc
	.string	"XH r27"
	.byte	0x1
	.uleb128 0xcd
	.string	"YL r28"
	.byte	0x1
	.uleb128 0xce
	.string	"YH r29"
	.byte	0x1
	.uleb128 0xd0
	.string	"ZL r30"
	.byte	0x1
	.uleb128 0xd1
	.string	"ZH r31"
	.byte	0x1
	.uleb128 0xd6
	.string	"AVR_STATUS_REG SREG"
	.byte	0x1
	.uleb128 0xda
	.string	"AVR_STATUS_ADDR _SFR_IO_ADDR(SREG)"
	.byte	0x1
	.uleb128 0xe0
	.string	"AVR_STACK_POINTER_REG SP"
	.byte	0x1
	.uleb128 0xe4
	.string	"AVR_STACK_POINTER_ADDR _SFR_IO_ADDR(SP)"
	.byte	0x1
	.uleb128 0xea
	.string	"_HAVE_AVR_STACK_POINTER_HI 1"
	.byte	0x1
	.uleb128 0xeb
	.string	"AVR_STACK_POINTER_HI_REG SPH"
	.byte	0x1
	.uleb128 0xef
	.string	"AVR_STACK_POINTER_HI_ADDR _SFR_IO_ADDR(SPH)"
	.byte	0x1
	.uleb128 0xf5
	.string	"AVR_STACK_POINTER_LO_REG SPL"
	.byte	0x1
	.uleb128 0xf9
	.string	"AVR_STACK_POINTER_LO_ADDR _SFR_IO_ADDR(SPL)"
	.byte	0x1
	.uleb128 0x11d
	.string	"AVR_RAMPZ_REG RAMPZ"
	.byte	0x1
	.uleb128 0x121
	.string	"AVR_RAMPZ_ADDR _SFR_IO_ADDR(RAMPZ)"
	.byte	0x4
	.byte	0x3
	.uleb128 0x21a
	.uleb128 0xf
	.byte	0x1
	.uleb128 0x36
	.string	"_AVR_VERSION_H_ "
	.byte	0x1
	.uleb128 0x3a
	.string	"__AVR_LIBC_VERSION_STRING__ \"1.7.1\""
	.byte	0x1
	.uleb128 0x44
	.string	"__AVR_LIBC_VERSION__ 10701UL"
	.byte	0x1
	.uleb128 0x48
	.string	"__AVR_LIBC_DATE_STRING__ \"20110216\""
	.byte	0x1
	.uleb128 0x4c
	.string	"__AVR_LIBC_DATE_ 20110216UL"
	.byte	0x1
	.uleb128 0x50
	.string	"__AVR_LIBC_MAJOR__ 1"
	.byte	0x1
	.uleb128 0x54
	.string	"__AVR_LIBC_MINOR__ 7"
	.byte	0x1
	.uleb128 0x58
	.string	"__AVR_LIBC_REVISION__ 1"
	.byte	0x4
	.byte	0x3
	.uleb128 0x21d
	.uleb128 0x10
	.byte	0x1
	.uleb128 0x24
	.string	"_AVR_FUSE_H_ 1"
	.byte	0x1
	.uleb128 0xe2
	.string	"FUSEMEM __attribute__((section (\".fuse\")))"
	.byte	0x1
	.uleb128 0x10b
	.string	"FUSES __fuse_t __fuse FUSEMEM"
	.byte	0x4
	.byte	0x3
	.uleb128 0x220
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x24
	.string	"_AVR_LOCK_H_ 1"
	.byte	0x1
	.uleb128 0xbe
	.string	"LOCKMEM __attribute__((section (\".lock\")))"
	.byte	0x1
	.uleb128 0xc2
	.string	"LOCKBITS unsigned char __lock LOCKMEM"
	.byte	0x1
	.uleb128 0xca
	.string	"LB_MODE_1 (0xFF)"
	.byte	0x1
	.uleb128 0xcb
	.string	"LB_MODE_2 (0xFE)"
	.byte	0x1
	.uleb128 0xcc
	.string	"LB_MODE_3 (0xFC)"
	.byte	0x1
	.uleb128 0xd0
	.string	"BLB0_MODE_1 (0xFF)"
	.byte	0x1
	.uleb128 0xd1
	.string	"BLB0_MODE_2 (0xFB)"
	.byte	0x1
	.uleb128 0xd2
	.string	"BLB0_MODE_3 (0xF3)"
	.byte	0x1
	.uleb128 0xd3
	.string	"BLB0_MODE_4 (0xF7)"
	.byte	0x1
	.uleb128 0xd7
	.string	"BLB1_MODE_1 (0xFF)"
	.byte	0x1
	.uleb128 0xd8
	.string	"BLB1_MODE_2 (0xEF)"
	.byte	0x1
	.uleb128 0xd9
	.string	"BLB1_MODE_3 (0xCF)"
	.byte	0x1
	.uleb128 0xda
	.string	"BLB1_MODE_4 (0xDF)"
	.byte	0x1
	.uleb128 0xed
	.string	"LOCKBITS_DEFAULT (0xFF)"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x12
	.byte	0x1
	.uleb128 0x24
	.string	"_AVR_INTERRUPT_H_ "
	.byte	0x1
	.uleb128 0x2a
	.string	"__STRINGIFY(x) #x"
	.byte	0x1
	.uleb128 0x53
	.string	"sei() __asm__ __volatile__ (\"sei\" ::: \"memory\")"
	.byte	0x1
	.uleb128 0x67
	.string	"cli() __asm__ __volatile__ (\"cli\" ::: \"memory\")"
	.byte	0x1
	.uleb128 0x87
	.string	"__INTR_ATTRS used, externally_visible"
	.byte	0x1
	.uleb128 0x91
	.ascii	"ISR(vector,...) void vector (void) __att"
	.string	"ribute__ ((signal,__INTR_ATTRS)) __VA_ARGS__; void vector (void)"
	.byte	0x1
	.uleb128 0xac
	.ascii	"SIGNAL(vector) void vector ("
	.string	"void) __attribute__ ((signal, __INTR_ATTRS)); void vector (void)"
	.byte	0x1
	.uleb128 0xc6
	.ascii	"EMPTY_INTERRUPT(vector) void vector (void) __attribute__ ((s"
	.ascii	"ignal,naked,__INTR_A"
	.string	"TTRS)); void vector (void) { __asm__ __volatile__ (\"reti\" ::); }"
	.byte	0x1
	.uleb128 0xfa
	.ascii	"ISR_ALIAS(vector,tgt) void vector (void) __attribute__((sign"
	.ascii	"al, naked, __INTR_ATTRS)); v"
	.string	"oid vector (void) { asm volatile (\"jmp \" __STRINGIFY(tgt) ::); }"
	.byte	0x1
	.uleb128 0x115
	.string	"reti() __asm__ __volatile__ (\"reti\" ::)"
	.byte	0x1
	.uleb128 0x125
	.string	"BADISR_vect __vector_default"
	.byte	0x1
	.uleb128 0x165
	.string	"ISR_BLOCK "
	.byte	0x1
	.uleb128 0x166
	.string	"ISR_NOBLOCK __attribute__((interrupt))"
	.byte	0x1
	.uleb128 0x167
	.string	"ISR_NAKED __attribute__((naked))"
	.byte	0x1
	.uleb128 0x168
	.string	"ISR_ALIASOF(v) __attribute__((alias(__STRINGIFY(v))))"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1c
	.ascii	"ZERO_STRUCT(variableName,structName) uint8_t *___tmpStructCo"
	.ascii	"ntent = variableName; for (int __i = 0; "
	.string	"__i < sizeof(structName); __i++) { ___tmpStructContent[i] = 0; }"
	.byte	0x1
	.uleb128 0x22
	.string	"__CONCAT__(A,B) A ##B"
	.byte	0x1
	.uleb128 0x25
	.ascii	"DEFINE_H"
	.string	"ANDLE(name) typedef struct name ##__ { uint16_t unused; } *name;"
	.byte	0x1
	.uleb128 0x28
	.string	"LOBYTE(x) (uint8_t)((uint16_t)x)"
	.byte	0x1
	.uleb128 0x29
	.string	"HIBYTE(x) (uint8_t)(((uint16_t)x)>>8)"
	.byte	0x1
	.uleb128 0x2a
	.string	"MAKE_WORD(hi,lo) ((hi*0x100)+lo)"
	.byte	0x1
	.uleb128 0x2c
	.string	"enable_interrupts() sei()"
	.byte	0x1
	.uleb128 0x2d
	.string	"disable_interrupts() cli()"
	.byte	0x4
	.byte	0x1
	.uleb128 0x12
	.ascii	"KERNEL_INIT(functionName) void functionName ##_kernel_init()"
	.ascii	" __attribute__((naked, section(\".i"
	.string	"nit8\"))); void functionName ##_kernel_init() { functionName(); }"
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x9
	.string	"RESET_CONDITION_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x14
	.byte	0x1
	.uleb128 0x9
	.string	"LED_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x16
	.byte	0x4
	.byte	0x1
	.uleb128 0x28
	.string	"DEFINE_PIN(port,pin) Pin Pin ##port ##pin;"
	.byte	0x1
	.uleb128 0x2a
	.string	"DEFINE_PORT(port) Port Port ##port;"
	.byte	0x1
	.uleb128 0x2c
	.ascii	"INIT_PIN(port,pin) P"
	.string	"in ##port ##pin = (Pin) { &Port ##port, _BV(PIN ##port ##pin) };"
	.byte	0x1
	.uleb128 0x30
	.ascii	"INIT_PORT(port) "
	.string	"Port ##port = (Port) { &PORT ##port, &PIN ##port, &DDR ##port };"
	.byte	0x1
	.uleb128 0x34
	.ascii	"INIT_PORT_AND_PINS(port) INIT_PORT(port) INIT_PIN(port,0) IN"
	.ascii	"IT_PIN(port,1) INIT_PIN(port,2) INIT_PIN(port,3) INI"
	.string	"T_PIN(port,4) INIT_PIN(port,5) INIT_PIN(port,6) INIT_PIN(port,7)"
	.byte	0x1
	.uleb128 0x45
	.ascii	"DEFINE_PORT_AND_PINS(port) DEFINE_PORT(port) DEFINE_PIN(port"
	.ascii	",0) DEFINE_PIN(port,1) DEFINE_PIN(port,2) DEFINE_PIN(port,3)"
	.ascii	" DEFINE_PIN("
	.string	"port,4) DEFINE_PIN(port,5) DEFINE_PIN(port,6) DEFINE_PIN(port,7)"
	.byte	0x4
	.byte	0x1
	.uleb128 0x25
	.string	"DEFINE_LED(ledName) Led ledName;"
	.byte	0x1
	.uleb128 0x26
	.string	"DEFINE_LED_GROUP(groupName) LedGroup groupName;"
	.byte	0x1
	.uleb128 0x28
	.ascii	"INIT_LED(l"
	.string	"edName,pinName) ledName = (Led) { &pinName }; initLed(&ledName);"
	.byte	0x1
	.uleb128 0x2b
	.ascii	"INIT_LED_GROUP(groupName,groupArrayPoi"
	.string	"nter,count) groupName = (LedGroup) { groupArrayPointer, count };"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x9
	.string	"_TANK_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_M1284P_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x19
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x9
	.string	"TIMER_M1284P_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_H_ "
	.byte	0x1
	.uleb128 0x3c
	.string	"TIMER_NORMAL 0"
	.byte	0x1
	.uleb128 0x3d
	.string	"TIMER_ASYNCHRONOUS (1 << 1)"
	.byte	0x1
	.uleb128 0x3e
	.string	"TIMER_16bit (1 << 2)"
	.byte	0x1
	.uleb128 0x64
	.string	"DEFINE_TIMER_CONFIG(configName) TimerConfig configName;"
	.byte	0x1
	.uleb128 0x66
	.string	"DEFINE_TIMER(timerName) Timer timerName;"
	.byte	0x1
	.uleb128 0x68
	.ascii	"INIT_TIMER_CONFIG(configName,flags,regA,regB,interrReg) conf"
	.ascii	"igName = (Timer"
	.string	"Config) {flags, (uint8_t*) &regA, (uint8_t*) &regB, &interrReg};"
	.byte	0x1
	.uleb128 0x6a
	.ascii	"INIT_TIMER(timerName,configName,ocr,timerType,ocPin) timerN"
	.string	"ame = (Timer) {&configName, (uint8_t*) &ocr, timerType, &ocPin};"
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_M1284P_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x9
	.string	"_PORT_M1284P_KERNEL_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x9
	.string	"MOTOR_H_ "
	.byte	0x1
	.uleb128 0xe
	.string	"MOTOR_NORMAL 0"
	.byte	0x1
	.uleb128 0xf
	.string	"MOTOR_INVERSE_SPEED (1 << 1)"
	.byte	0x1
	.uleb128 0x10
	.string	"MOTOR_INVERSE_DIRECTION (1 << 2)"
	.byte	0x1
	.uleb128 0x11
	.string	"MOTOR_TWO_DIR_PINS (1 << 3)"
	.byte	0x1
	.uleb128 0x3a
	.string	"DEFINE_MOTOR(motorName) Motor motorName;"
	.byte	0x1
	.uleb128 0x3c
	.ascii	"INIT_MOTOR(motorName,flags,directionPin,pwmTimer) motorName "
	.ascii	"= (Mo"
	.string	"tor) { flags, &directionPin, &pwmTimer }; initMotor(&motorName);"
	.byte	0x1
	.uleb128 0x3f
	.string	"DEFINE_2DirPins_MOTOR(motorName) Motor2Pins motorName;"
	.byte	0x1
	.uleb128 0x41
	.ascii	"INIT_2DirPins_MOTOR(motorName,flags,directionPin,pwmTimer,di"
	.ascii	"rectionPin2) motorName = (Motor2Pins) { { flags | MOTOR_TWO_"
	.ascii	"DIR_PINS, &directio"
	.string	"nPin, &pwmTimer }, &directionPin2 }; initMotor2Pins(&motorName);"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.string	"TANK_MOTOR_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1a
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.string	"_BASE_KERNEL_ "
	.byte	0x1
	.uleb128 0xb
	.string	"TWI_Slave "
	.byte	0x1
	.uleb128 0xc
	.string	"TWI_BIT_RATE_VALUE 17"
	.byte	0x1
	.uleb128 0xd
	.string	"TWI_PRESCALER_MASK 0"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x3
	.string	"_TWI_KERNEL_KERNEL_ "
	.byte	0x1
	.uleb128 0x5
	.string	"TWI_Slave_Address 0x02"
	.byte	0x1
	.uleb128 0x6
	.string	"TWI_Slave_Buffer_Size 64"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x2
	.string	"_TWI_RAW_KERNEL_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RAW_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x25
	.byte	0x4
	.byte	0x1
	.uleb128 0x36
	.string	"WAIT_FOR_TWI() while (twi_running) ;"
	.byte	0x1
	.uleb128 0x3e
	.string	"NUM_TWI_OPERATIONS 3"
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x24
	.string	"_UTIL_TWI_H_ 1"
	.byte	0x1
	.uleb128 0x3d
	.string	"TW_START 0x08"
	.byte	0x1
	.uleb128 0x42
	.string	"TW_REP_START 0x10"
	.byte	0x1
	.uleb128 0x48
	.string	"TW_MT_SLA_ACK 0x18"
	.byte	0x1
	.uleb128 0x4d
	.string	"TW_MT_SLA_NACK 0x20"
	.byte	0x1
	.uleb128 0x52
	.string	"TW_MT_DATA_ACK 0x28"
	.byte	0x1
	.uleb128 0x57
	.string	"TW_MT_DATA_NACK 0x30"
	.byte	0x1
	.uleb128 0x5c
	.string	"TW_MT_ARB_LOST 0x38"
	.byte	0x1
	.uleb128 0x62
	.string	"TW_MR_ARB_LOST 0x38"
	.byte	0x1
	.uleb128 0x67
	.string	"TW_MR_SLA_ACK 0x40"
	.byte	0x1
	.uleb128 0x6c
	.string	"TW_MR_SLA_NACK 0x48"
	.byte	0x1
	.uleb128 0x71
	.string	"TW_MR_DATA_ACK 0x50"
	.byte	0x1
	.uleb128 0x76
	.string	"TW_MR_DATA_NACK 0x58"
	.byte	0x1
	.uleb128 0x7c
	.string	"TW_ST_SLA_ACK 0xA8"
	.byte	0x1
	.uleb128 0x81
	.string	"TW_ST_ARB_LOST_SLA_ACK 0xB0"
	.byte	0x1
	.uleb128 0x86
	.string	"TW_ST_DATA_ACK 0xB8"
	.byte	0x1
	.uleb128 0x8b
	.string	"TW_ST_DATA_NACK 0xC0"
	.byte	0x1
	.uleb128 0x90
	.string	"TW_ST_LAST_DATA 0xC8"
	.byte	0x1
	.uleb128 0x96
	.string	"TW_SR_SLA_ACK 0x60"
	.byte	0x1
	.uleb128 0x9b
	.string	"TW_SR_ARB_LOST_SLA_ACK 0x68"
	.byte	0x1
	.uleb128 0xa0
	.string	"TW_SR_GCALL_ACK 0x70"
	.byte	0x1
	.uleb128 0xa5
	.string	"TW_SR_ARB_LOST_GCALL_ACK 0x78"
	.byte	0x1
	.uleb128 0xaa
	.string	"TW_SR_DATA_ACK 0x80"
	.byte	0x1
	.uleb128 0xaf
	.string	"TW_SR_DATA_NACK 0x88"
	.byte	0x1
	.uleb128 0xb4
	.string	"TW_SR_GCALL_DATA_ACK 0x90"
	.byte	0x1
	.uleb128 0xb9
	.string	"TW_SR_GCALL_DATA_NACK 0x98"
	.byte	0x1
	.uleb128 0xbe
	.string	"TW_SR_STOP 0xA0"
	.byte	0x1
	.uleb128 0xc4
	.string	"TW_NO_INFO 0xF8"
	.byte	0x1
	.uleb128 0xc9
	.string	"TW_BUS_ERROR 0x00"
	.byte	0x1
	.uleb128 0xd2
	.ascii	"TW_"
	.string	"STATUS_MASK (_BV(TWS7)|_BV(TWS6)|_BV(TWS5)|_BV(TWS4)| _BV(TWS3))"
	.byte	0x1
	.uleb128 0xda
	.string	"TW_STATUS (TWSR & TW_STATUS_MASK)"
	.byte	0x1
	.uleb128 0xe5
	.string	"TW_READ 1"
	.byte	0x1
	.uleb128 0xea
	.string	"TW_WRITE 0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x3d
	.string	"twi_base TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWIE)"
	.byte	0x1
	.uleb128 0x3e
	.string	"twi_start() twi_base | _BV(TWSTA)"
	.byte	0x1
	.uleb128 0x3f
	.string	"twi_ack() twi_base | _BV(TWEA)"
	.byte	0x1
	.uleb128 0x40
	.string	"twi_continue() twi_base"
	.byte	0x1
	.uleb128 0x41
	.string	"twi_send(data) TWDR = data; twi_continue()"
	.byte	0x1
	.uleb128 0x42
	.string	"twi_send_ack(data) TWDR = data; twi_ack()"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x27
	.byte	0x1
	.uleb128 0x2
	.string	"_TANK_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x28
	.byte	0x1
	.uleb128 0x9
	.string	"_PROCESS_EXT_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x9
	.string	"PROCESS_EXT_H_ "
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x2a
	.byte	0x1
	.uleb128 0x9
	.string	"PROCESS_API_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0x4
	.byte	0x1
	.uleb128 0xe
	.string	"InvalidProcess ((Process) NULL)"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0x9
	.string	"PROCESS_INTERNAL_H_ "
	.byte	0x1
	.uleb128 0x33
	.string	"CONTEXT_STACK_SIZE 34"
	.byte	0x1
	.uleb128 0x36
	.string	"INITIAL_STACK_SIZE (CONTEXT_STACK_SIZE + 4)"
	.byte	0x1
	.uleb128 0x3b
	.ascii	"PushProcessContext() asm volatile ( \"push r0\t\t\t\t\\n\" \""
	.ascii	"in r0, __SREG__\t\t\\n\" \"cli\t\t\t\t\t\\n\" \"push r0\t\t\t"
	.ascii	"\t\\n\" \"in r0, __RAMPZ__\t\t\\n\" \"push r0\t\t\t\t\\n\" \""
	.ascii	"push r1\t\t\t\t\\n\" \"clr r1\t\t\t\t\\n\" \"push r2\t\t\t\\"
	.ascii	"n\" \"push r3\t\t\t\\n\" \"push r4\t\t\t\\n\" \"push r5\t\t\t"
	.ascii	"\\n\" \"push r6\t\t\t\\n\" \"push r7\t\t\t\\n\" \"push r8\t\t"
	.ascii	"\t\\n\" \"push r9\t\t\t\\n\" \"push r10\t\t\t\\n\" \"push r1"
	.ascii	"1\t\t\t\\n\" \"push r12\t\t\t\\n\" \"push r13\t\t\t\\n\" \"p"
	.ascii	"ush r14\t\t\t\\n\" \"push r15\t\t\t\\n\" \"push r16\t\t\t\\n"
	.ascii	"\" \"push r17\t\t\t\\n\" \"push r18\t\t\t\\n\" \"push r19\t\t"
	.ascii	"\t\\n\" \"push r20\t\t\t\\n\" \"push r21\t\t\t\\n\" \"push r"
	.ascii	"22\t\t\t\\n\" \"push r23\t\t\t\\n\" \"push r24\t\t\t\\n\" \""
	.ascii	"push r25\t\t\t\\n\" \"push r26\t\t\t\\n\" \"push r27\t\t\t\\"
	.ascii	"n\" \"p"
	.string	"ush r28\t\t\t\\n\" \"push r29\t\t\t\\n\" \"push r30\t\t\t\\n\" \"push r31\t\t\t\\n\" );"
	.byte	0x1
	.uleb128 0x67
	.ascii	"StoreContextStack() asm volatile ( \"in r0, __SP_L__\t\t\t\\"
	.ascii	"n\""
	.string	" \"st X+, r0\t\t\t\t\t\\n\" \"in r0, __SP_H__\t\t\t\\n\" \"st X+, r0\t\t\t\t\t\\n\" );"
	.byte	0x1
	.uleb128 0x71
	.ascii	"RestoreContextStack() asm volatile( \"ld r0, X+\t\t\t\t\t\\n"
	.ascii	"\" \"out "
	.string	"__SP_L__, r0\t\t\t\\n\" \"ld r0, X+\t\t\t\t\t\\n\" \"out __SP_H__, r0\t\t\t\\n\" );"
	.byte	0x1
	.uleb128 0x7d
	.ascii	"PopProcessContext() asm volatile( \"pop r31\t\t\t\\n\" \"pop"
	.ascii	" r30\t\t\t\\n\" \"pop r29\t\t\t\\n\" \"pop r28\t\t\t\\n\" \""
	.ascii	"pop r27\t\t\t\\n\" \"pop r26\t\t\t\\n\" \"pop r25\t\t\t\\n\""
	.ascii	" \"pop r24\t\t\t\\n\" \"pop r23\t\t\t\\n\" \"pop r22\t\t\t\\"
	.ascii	"n\" \"pop r21\t\t\t\\n\" \"pop r20\t\t\t\\n\" \"pop r19\t\t\t"
	.ascii	"\\n\" \"pop r18\t\t\t\\n\" \"pop r17\t\t\t\\n\" \"pop r16\t\t"
	.ascii	"\t\\n\" \"pop r15\t\t\t\\n\" \"pop r14\t\t\t\\n\" \"pop r13\t"
	.ascii	"\t\t\\n\" \"pop r12\t\t\t\\n\" \"pop r11\t\t\t\\n\" \"pop r1"
	.ascii	"0\t\t\t\\n\" \"pop r9\t\t\t\t\\n\" \"pop r8\t\t\t\t\\n\" \"p"
	.ascii	"op r7\t\t\t\t\\n\" \"pop r6\t\t\t\t\\n\" \"pop r5\t\t\t\t\\n"
	.ascii	"\" \"pop r4\t\t\t\t\\n\" \"pop r3\t\t\t\t\\n\" \"pop r2\t\t\t"
	.ascii	"\t\\n\" \"pop r1\t\t\t\t\\n\" \"pop r0\t\t\t\t\t\t\\n\" \"ou"
	.ascii	"t __RAMPZ__, r0\t\t\t"
	.string	"\\n\" \"pop r0\t\t\t\t\t\t\\n\" \"out __SREG__, r0\t\t\t\\n\" \"pop r0\t\t\t\t\t\t\\n\" );"
	.byte	0x4
	.byte	0x1
	.uleb128 0x19
	.string	"ADDITIONAL_MEMORY sizeof(PCBExt)"
	.byte	0x1
	.uleb128 0x22
	.string	"createProcess createProcessBase"
	.byte	0x1
	.uleb128 0x23
	.string	"createProcess2 createProcessBase2"
	.byte	0x1
	.uleb128 0x24
	.string	"createProcess3 createProcessBase3"
	.byte	0x1
	.uleb128 0x25
	.string	"getProcessMemory getProcessMemoryBase"
	.byte	0x1
	.uleb128 0x26
	.string	"init_process init_process_base"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x2d
	.byte	0x1
	.uleb128 0x9
	.string	"_PROCESS_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x2f
	.byte	0x1
	.uleb128 0x9
	.string	"SCHEDULER_INTERNAL_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.uleb128 0x28
	.string	"createProcess"
	.byte	0x2
	.uleb128 0x29
	.string	"createProcess2"
	.byte	0x2
	.uleb128 0x2a
	.string	"createProcess3"
	.byte	0x2
	.uleb128 0x2b
	.string	"getProcessMemory"
	.byte	0x2
	.uleb128 0x2c
	.string	"init_process"
	.byte	0x1
	.uleb128 0x2e
	.string	"ProcMem(proc) ((PPCBExt)getProcessMemoryBase((Process) proc))"
	.byte	0x1
	.uleb128 0x2f
	.string	"StackPointer(proc) ((uint8_t*)((PPCB)proc)->stackPointer)"
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x30
	.byte	0x1
	.uleb128 0x9
	.string	"_DMS_SCHEDULER_KERNEL_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x31
	.byte	0x1
	.uleb128 0x9
	.string	"_RR_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x32
	.byte	0x1
	.uleb128 0x9
	.string	"RR_API_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x33
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x2
	.string	"_IDLE_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x35
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x36
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0xa
	.string	"CLOCKISR TIMER3_COMPA_vect"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x38
	.byte	0x1
	.uleb128 0x9
	.string	"TIMED_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x9
	.string	"MILLISECOND_CLOCK_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x13
	.string	"SCHEDULER_TICK_ISR ISR(CLOCKISR, __attribute__((naked)))"
	.byte	0x1
	.uleb128 0x17
	.string	"SCHEDULER_TICK_ISR_CONTEXT_PUSHED milliseconds_running++;"
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x3a
	.byte	0x1
	.uleb128 0x9
	.string	"_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3b
	.byte	0x1
	.uleb128 0x9
	.string	"SCHEDULER_H_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x3c
	.byte	0x1
	.uleb128 0x9
	.string	"HARWARE_RESET_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x9
	.string	"KERNEL_H_ "
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x9
	.string	"TANK_BASE_H_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3f
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x40
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x3b
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x29
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x41
	.byte	0x1
	.uleb128 0xb
	.string	"DMS_API_H_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x43
	.byte	0x1
	.uleb128 0x3
	.string	"TWI_H_ "
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x24
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x44
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.text
	.type	twi_stop, @function
twi_stop:
.LFB14:
.LM1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM2:
	ldi r24,lo8(-43)
	sts 188,r24
.LM3:
	lds r24,twi_defaultSlaveBuffer
	lds r25,twi_defaultSlaveBuffer+1
	lds r26,twi_defaultSlaveBuffer+2
	lds r27,twi_defaultSlaveBuffer+3
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
.LM4:
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
/* epilogue start */
.LM5:
	ret
.LFE14:
	.size	twi_stop, .-twi_stop
	.type	twi_end, @function
twi_end:
.LFB17:
.LM6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM7:
	ldi r24,lo8(-59)
	sts 188,r24
.LM8:
	lds r24,twi_defaultSlaveBuffer
	lds r25,twi_defaultSlaveBuffer+1
	lds r26,twi_defaultSlaveBuffer+2
	lds r27,twi_defaultSlaveBuffer+3
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
.LM9:
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
/* epilogue start */
.LM10:
	ret
.LFE17:
	.size	twi_end, .-twi_end
	.type	twi_receive_byte, @function
twi_receive_byte:
.LFB19:
.LM11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM12:
	lds r18,alreadyHandled
	lds r19,alreadyHandled+1
	lds r24,187
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r18
	adc r31,r19
	st Z,r24
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	sts alreadyHandled+1,r19
	sts alreadyHandled,r18
.LM13:
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	sbiw r24,1
	cp r18,r24
	cpc r19,r25
	brsh .L4
.LM14:
	ldi r24,lo8(-59)
	rjmp .L6
.L4:
.LM15:
	ldi r24,lo8(-123)
.L6:
	sts 188,r24
	ret
.LFE19:
	.size	twi_receive_byte, .-twi_receive_byte
	.type	twi_init_receive, @function
twi_init_receive:
.LFB20:
.LM16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM17:
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	sbiw r24,0
	breq .L8
.LM18:
	ldi r24,lo8(-59)
	rjmp .L10
.L8:
.LM19:
	ldi r24,lo8(-123)
.L10:
	sts 188,r24
	ret
.LFE20:
	.size	twi_init_receive, .-twi_init_receive
.global	ProcessGraveyard
	.type	ProcessGraveyard, @function
ProcessGraveyard:
.LFB26:
.LM20:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM21:
	call processor_loop_idle
/* epilogue start */
.LM22:
	ret
.LFE26:
	.size	ProcessGraveyard, .-ProcessGraveyard
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
.LFB0:
.LM23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM24:
	in r24,84-32
	sts current_reset_status,r24
.LM25:
	out 84-32,__zero_reg__
/* epilogue start */
.LM26:
	ret
.LFE0:
	.size	init_reset_condition, .-init_reset_condition
	.section	.init8,"ax",@progbits
.global	init_reset_condition_kernel_init
	.type	init_reset_condition_kernel_init, @function
init_reset_condition_kernel_init:
.LFB1:
.LSM0:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM1:
	call init_reset_condition
/* epilogue start */
.LFE1:
	.size	init_reset_condition_kernel_init, .-init_reset_condition_kernel_init
	.text
.global	getResetStatus
	.type	getResetStatus, @function
getResetStatus:
.LFB2:
.LM27:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM28:
	lds r24,current_reset_status
/* epilogue start */
	ret
.LFE2:
	.size	getResetStatus, .-getResetStatus
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
.LFB3:
.LM29:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM30:
	ldi r26,lo8(PortA)
	ldi r27,hi8(PortA)
	ldi r30,lo8(C.50.3171)
	ldi r31,hi8(C.50.3171)
	ldi r24,lo8(6)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r26,lo8(PinA0)
	ldi r27,hi8(PinA0)
	ldi r30,lo8(C.51.3172)
	ldi r31,hi8(C.51.3172)
	ldi r24,lo8(3)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r26,lo8(PinA1)
	ldi r27,hi8(PinA1)
	ldi r30,lo8(C.52.3173)
	ldi r31,hi8(C.52.3173)
	ldi r24,lo8(3)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	ldi r26,lo8(PinA2)
	ldi r27,hi8(PinA2)
	ldi r30,lo8(C.53.3174)
	ldi r31,hi8(C.53.3174)
	ldi r24,lo8(3)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
	ldi r26,lo8(PinA3)
	ldi r27,hi8(PinA3)
	ldi r30,lo8(C.54.3175)
	ldi r31,hi8(C.54.3175)
	ldi r24,lo8(3)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
	ldi r26,lo8(PinA4)
	ldi r27,hi8(PinA4)
	ldi r30,lo8(C.55.3176)
	ldi r31,hi8(C.55.3176)
	ldi r24,lo8(3)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
	ldi r26,lo8(PinA5)
	ldi r27,hi8(PinA5)
	ldi r30,lo8(C.56.3177)
	ldi r31,hi8(C.56.3177)
	ldi r24,lo8(3)
.L22:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L22
	ldi r26,lo8(PinA6)
	ldi r27,hi8(PinA6)
	ldi r30,lo8(C.57.3178)
	ldi r31,hi8(C.57.3178)
	ldi r24,lo8(3)
.L23:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L23
	ldi r26,lo8(PinA7)
	ldi r27,hi8(PinA7)
	ldi r30,lo8(C.58.3179)
	ldi r31,hi8(C.58.3179)
	ldi r24,lo8(3)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
.LM31:
	ldi r26,lo8(PortB)
	ldi r27,hi8(PortB)
	ldi r30,lo8(C.59.3180)
	ldi r31,hi8(C.59.3180)
	ldi r24,lo8(6)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
	ldi r26,lo8(PinB0)
	ldi r27,hi8(PinB0)
	ldi r30,lo8(C.60.3181)
	ldi r31,hi8(C.60.3181)
	ldi r24,lo8(3)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
	ldi r26,lo8(PinB1)
	ldi r27,hi8(PinB1)
	ldi r30,lo8(C.61.3182)
	ldi r31,hi8(C.61.3182)
	ldi r24,lo8(3)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
	ldi r26,lo8(PinB2)
	ldi r27,hi8(PinB2)
	ldi r30,lo8(C.62.3183)
	ldi r31,hi8(C.62.3183)
	ldi r24,lo8(3)
.L28:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L28
	ldi r26,lo8(PinB3)
	ldi r27,hi8(PinB3)
	ldi r30,lo8(C.63.3184)
	ldi r31,hi8(C.63.3184)
	ldi r24,lo8(3)
.L29:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L29
	ldi r26,lo8(PinB4)
	ldi r27,hi8(PinB4)
	ldi r30,lo8(C.64.3185)
	ldi r31,hi8(C.64.3185)
	ldi r24,lo8(3)
.L30:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L30
	ldi r26,lo8(PinB5)
	ldi r27,hi8(PinB5)
	ldi r30,lo8(C.65.3186)
	ldi r31,hi8(C.65.3186)
	ldi r24,lo8(3)
.L31:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L31
	ldi r26,lo8(PinB6)
	ldi r27,hi8(PinB6)
	ldi r30,lo8(C.66.3187)
	ldi r31,hi8(C.66.3187)
	ldi r24,lo8(3)
.L32:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L32
	ldi r26,lo8(PinB7)
	ldi r27,hi8(PinB7)
	ldi r30,lo8(C.67.3188)
	ldi r31,hi8(C.67.3188)
	ldi r24,lo8(3)
.L33:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L33
.LM32:
	ldi r26,lo8(PortC)
	ldi r27,hi8(PortC)
	ldi r30,lo8(C.68.3189)
	ldi r31,hi8(C.68.3189)
	ldi r24,lo8(6)
.L34:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L34
	ldi r26,lo8(PinC0)
	ldi r27,hi8(PinC0)
	ldi r30,lo8(C.69.3190)
	ldi r31,hi8(C.69.3190)
	ldi r24,lo8(3)
.L35:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L35
	ldi r26,lo8(PinC1)
	ldi r27,hi8(PinC1)
	ldi r30,lo8(C.70.3191)
	ldi r31,hi8(C.70.3191)
	ldi r24,lo8(3)
.L36:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L36
	ldi r26,lo8(PinC2)
	ldi r27,hi8(PinC2)
	ldi r30,lo8(C.71.3192)
	ldi r31,hi8(C.71.3192)
	ldi r24,lo8(3)
.L37:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L37
	ldi r26,lo8(PinC3)
	ldi r27,hi8(PinC3)
	ldi r30,lo8(C.72.3193)
	ldi r31,hi8(C.72.3193)
	ldi r24,lo8(3)
.L38:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L38
	ldi r26,lo8(PinC4)
	ldi r27,hi8(PinC4)
	ldi r30,lo8(C.73.3194)
	ldi r31,hi8(C.73.3194)
	ldi r24,lo8(3)
.L39:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L39
	ldi r26,lo8(PinC5)
	ldi r27,hi8(PinC5)
	ldi r30,lo8(C.74.3195)
	ldi r31,hi8(C.74.3195)
	ldi r24,lo8(3)
.L40:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L40
	ldi r26,lo8(PinC6)
	ldi r27,hi8(PinC6)
	ldi r30,lo8(C.75.3196)
	ldi r31,hi8(C.75.3196)
	ldi r24,lo8(3)
.L41:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L41
	ldi r26,lo8(PinC7)
	ldi r27,hi8(PinC7)
	ldi r30,lo8(C.76.3197)
	ldi r31,hi8(C.76.3197)
	ldi r24,lo8(3)
.L42:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L42
.LM33:
	ldi r26,lo8(PortD)
	ldi r27,hi8(PortD)
	ldi r30,lo8(C.77.3198)
	ldi r31,hi8(C.77.3198)
	ldi r24,lo8(6)
.L43:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L43
	ldi r26,lo8(PinD0)
	ldi r27,hi8(PinD0)
	ldi r30,lo8(C.78.3199)
	ldi r31,hi8(C.78.3199)
	ldi r24,lo8(3)
.L44:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L44
	ldi r26,lo8(PinD1)
	ldi r27,hi8(PinD1)
	ldi r30,lo8(C.79.3200)
	ldi r31,hi8(C.79.3200)
	ldi r24,lo8(3)
.L45:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L45
	ldi r26,lo8(PinD2)
	ldi r27,hi8(PinD2)
	ldi r30,lo8(C.80.3201)
	ldi r31,hi8(C.80.3201)
	ldi r24,lo8(3)
.L46:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L46
	ldi r26,lo8(PinD3)
	ldi r27,hi8(PinD3)
	ldi r30,lo8(C.81.3202)
	ldi r31,hi8(C.81.3202)
	ldi r24,lo8(3)
.L47:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L47
	ldi r26,lo8(PinD4)
	ldi r27,hi8(PinD4)
	ldi r30,lo8(C.82.3203)
	ldi r31,hi8(C.82.3203)
	ldi r24,lo8(3)
.L48:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L48
	ldi r26,lo8(PinD5)
	ldi r27,hi8(PinD5)
	ldi r30,lo8(C.83.3204)
	ldi r31,hi8(C.83.3204)
	ldi r24,lo8(3)
.L49:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L49
	ldi r26,lo8(PinD6)
	ldi r27,hi8(PinD6)
	ldi r30,lo8(C.84.3205)
	ldi r31,hi8(C.84.3205)
	ldi r24,lo8(3)
.L50:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L50
	ldi r26,lo8(PinD7)
	ldi r27,hi8(PinD7)
	ldi r30,lo8(C.85.3206)
	ldi r31,hi8(C.85.3206)
	ldi r24,lo8(3)
.L51:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L51
/* epilogue start */
.LM34:
	ret
.LFE3:
	.size	init_ports_m1284P, .-init_ports_m1284P
	.section	.init8
.global	init_ports_m1284P_kernel_init
	.type	init_ports_m1284P_kernel_init, @function
init_ports_m1284P_kernel_init:
.LFB4:
.LSM2:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM3:
	call init_ports_m1284P
/* epilogue start */
.LFE4:
	.size	init_ports_m1284P_kernel_init, .-init_ports_m1284P_kernel_init
	.text
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
.LFB5:
.LM35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM36:
	ldi r26,lo8(Timer0)
	ldi r27,hi8(Timer0)
	ldi r30,lo8(C.38.3159)
	ldi r31,hi8(C.38.3159)
	ldi r24,lo8(7)
.L90:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L90
.LM37:
	ldi r26,lo8(Timer1)
	ldi r27,hi8(Timer1)
	ldi r30,lo8(C.39.3160)
	ldi r31,hi8(C.39.3160)
	ldi r24,lo8(7)
.L91:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L91
.LM38:
	ldi r26,lo8(Timer2)
	ldi r27,hi8(Timer2)
	ldi r30,lo8(C.40.3161)
	ldi r31,hi8(C.40.3161)
	ldi r24,lo8(7)
.L92:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L92
.LM39:
	ldi r26,lo8(Timer3)
	ldi r27,hi8(Timer3)
	ldi r30,lo8(C.41.3162)
	ldi r31,hi8(C.41.3162)
	ldi r24,lo8(7)
.L93:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L93
.LM40:
	ldi r26,lo8(Timer0A)
	ldi r27,hi8(Timer0A)
	ldi r30,lo8(C.42.3163)
	ldi r31,hi8(C.42.3163)
	ldi r24,lo8(8)
.L94:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L94
.LM41:
	ldi r26,lo8(Timer0B)
	ldi r27,hi8(Timer0B)
	ldi r30,lo8(C.43.3164)
	ldi r31,hi8(C.43.3164)
	ldi r24,lo8(8)
.L95:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L95
.LM42:
	ldi r26,lo8(Timer1A)
	ldi r27,hi8(Timer1A)
	ldi r30,lo8(C.44.3165)
	ldi r31,hi8(C.44.3165)
	ldi r24,lo8(8)
.L96:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L96
.LM43:
	ldi r26,lo8(Timer1B)
	ldi r27,hi8(Timer1B)
	ldi r30,lo8(C.45.3166)
	ldi r31,hi8(C.45.3166)
	ldi r24,lo8(8)
.L97:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L97
.LM44:
	ldi r26,lo8(Timer2A)
	ldi r27,hi8(Timer2A)
	ldi r30,lo8(C.46.3167)
	ldi r31,hi8(C.46.3167)
	ldi r24,lo8(8)
.L98:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L98
.LM45:
	ldi r26,lo8(Timer2B)
	ldi r27,hi8(Timer2B)
	ldi r30,lo8(C.47.3168)
	ldi r31,hi8(C.47.3168)
	ldi r24,lo8(8)
.L99:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L99
.LM46:
	ldi r26,lo8(Timer3A)
	ldi r27,hi8(Timer3A)
	ldi r30,lo8(C.48.3169)
	ldi r31,hi8(C.48.3169)
	ldi r24,lo8(8)
.L100:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L100
.LM47:
	ldi r26,lo8(Timer3B)
	ldi r27,hi8(Timer3B)
	ldi r30,lo8(C.49.3170)
	ldi r31,hi8(C.49.3170)
	ldi r24,lo8(8)
.L101:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L101
/* epilogue start */
.LM48:
	ret
.LFE5:
	.size	init_timer_m1284P, .-init_timer_m1284P
	.section	.init8
.global	init_timer_m1284P_kernel_init
	.type	init_timer_m1284P_kernel_init, @function
init_timer_m1284P_kernel_init:
.LFB6:
.LSM4:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM5:
	call init_timer_m1284P
/* epilogue start */
.LFE6:
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.text
.global	initMotor
	.type	initMotor, @function
initMotor:
.LFB7:
.LM49:
.LVL0:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM50:
	ldd r24,Y+3
	ldd r25,Y+4
.LVL1:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
.LM51:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
/* epilogue start */
.LM52:
	pop r29
	pop r28
.LVL2:
	ret
.LFE7:
	.size	initMotor, .-initMotor
.global	initMotor2Pins
	.type	initMotor2Pins, @function
initMotor2Pins:
.LFB8:
.LM53:
.LVL3:
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
.LM54:
	movw r14,r28
	mov r25,r15
	call initMotor
.LVL4:
.LM55:
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinOutput
.LM56:
	movw r24,r28
	call stopMotor
/* epilogue start */
.LM57:
	pop r29
	pop r28
	pop r15
	pop r14
.LVL5:
	ret
.LFE8:
	.size	initMotor2Pins, .-initMotor2Pins
.global	init_tank_motors
	.type	init_tank_motors, @function
init_tank_motors:
.LFB9:
.LM58:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM59:
	ldi r26,lo8(LeftMotor)
	ldi r27,hi8(LeftMotor)
	ldi r30,lo8(C.35.3153)
	ldi r31,hi8(C.35.3153)
	ldi r24,lo8(7)
.L118:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L118
	ldi r24,lo8(LeftMotor)
	ldi r25,hi8(LeftMotor)
	call initMotor2Pins
.LM60:
	ldi r26,lo8(RightMotor)
	ldi r27,hi8(RightMotor)
	ldi r30,lo8(C.36.3154)
	ldi r31,hi8(C.36.3154)
	ldi r24,lo8(7)
.L119:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L119
	ldi r24,lo8(RightMotor)
	ldi r25,hi8(RightMotor)
	call initMotor2Pins
/* epilogue start */
.LM61:
	ret
.LFE9:
	.size	init_tank_motors, .-init_tank_motors
	.section	.init8
.global	init_tank_motors_kernel_init
	.type	init_tank_motors_kernel_init, @function
init_tank_motors_kernel_init:
.LFB10:
.LSM6:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM7:
	call init_tank_motors
/* epilogue start */
.LFE10:
	.size	init_tank_motors_kernel_init, .-init_tank_motors_kernel_init
	.text
	.weak	twi_unexpectedCondition
	.type	twi_unexpectedCondition, @function
twi_unexpectedCondition:
.LFB11:
.LM62:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM63:
	ret
.LFE11:
	.size	twi_unexpectedCondition, .-twi_unexpectedCondition
.global	init_twi
	.type	init_twi, @function
init_twi:
.LFB12:
.LM64:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM65:
	ldi r24,lo8(5)
	sts 188,r24
.LM66:
	ldi r24,lo8(-1)
	sts 187,r24
.LM67:
	ldi r24,lo8(17)
	sts 184,r24
.LM68:
	sts 185,__zero_reg__
.LM69:
	ldi r24,lo8(2)
	sts 186,r24
/* epilogue start */
.LM70:
	ret
.LFE12:
	.size	init_twi, .-init_twi
	.section	.init8
.global	init_twi_kernel_init
	.type	init_twi_kernel_init, @function
init_twi_kernel_init:
.LFB13:
.LSM8:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM9:
	call init_twi
/* epilogue start */
.LFE13:
	.size	init_twi_kernel_init, .-init_twi_kernel_init
	.text
.global	next_twi_operation
	.type	next_twi_operation, @function
next_twi_operation:
.LFB15:
.LM71:
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 7 */
/* stack size = 9 */
.L__stack_usage = 9
.LM72:
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
.L129:
.LM73:
	lds r24,nextTwiOperation
	lds r25,nextTwiOperation+1
	movw r30,r24
	ldi r19,3
1:	lsl r30
	rol r31
	dec r19
	brne 1b
	sub r30,r24
	sbc r31,r25
	movw r26,r20
	subi r30,lo8(-(furtherOperations))
	sbci r31,hi8(-(furtherOperations))
	ldi r18,lo8(7)
.L127:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L127
	movw r30,r24
	ldi r18,3
1:	lsl r30
	rol r31
	dec r18
	brne 1b
	sub r30,r24
	sbc r31,r25
	subi r30,lo8(-(furtherOperations))
	sbci r31,hi8(-(furtherOperations))
	ldd r22,Z+4
	ldd r18,Z+5
	ldd r19,Z+6
	adiw r24,1
	sts nextTwiOperation+1,r25
	sts nextTwiOperation,r24
.LM74:
	cpi r24,3
	cpc r25,__zero_reg__
	brge .L131
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L129
.LM75:
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L130
.LM76:
	mov r24,r22
	andi r24,lo8(-3)
	sts twi_address,r24
.L130:
.LM77:
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
.LM78:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
.LM79:
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp .L128
.L131:
.LM80:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L128:
.LM81:
	movw r24,r18
/* epilogue start */
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
.LFE15:
	.size	next_twi_operation, .-next_twi_operation
	.type	twi_stop_or_next, @function
twi_stop_or_next:
.LFB16:
.LM82:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM83:
	lds r24,nextTwiOperation
	lds r25,nextTwiOperation+1
	cpi r24,3
	cpc r25,__zero_reg__
	brge .L135
.LM84:
	call next_twi_operation
	sbiw r24,0
	brne .L134
.L135:
.LM85:
	call twi_stop
.L134:
	ret
.LFE16:
	.size	twi_stop_or_next, .-twi_stop_or_next
.global	twi_start_master_operation
	.type	twi_start_master_operation, @function
twi_start_master_operation:
.LFB18:
.LM86:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM87:
	sts error+1,__zero_reg__
	sts error,__zero_reg__
.LM88:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_running+1,r25
	sts twi_running,r24
.LM89:
	sts nextTwiOperation+1,__zero_reg__
	sts nextTwiOperation,__zero_reg__
.LM90:
	call next_twi_operation
/* epilogue start */
.LM91:
	ret
.LFE18:
	.size	twi_start_master_operation, .-twi_start_master_operation
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB21:
.LM92:
	push __zero_reg__
	push r0
	in r0,__SREG__
	push r0
	in r0,91-32
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r21
	push r22
	push r23
	push r24
	push r25
	push r26
	push r27
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 16 */
.L__stack_usage = 16
.LM93:
	lds r24,185
	ldi r25,lo8(0)
	andi r24,lo8(248)
	andi r25,hi8(248)
	cpi r24,104
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L149
	cpi r24,105
	cpc r25,__zero_reg__
	brge .L157
	cpi r24,48
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L143
	cpi r24,49
	cpc r25,__zero_reg__
	brge .L158
	cpi r24,24
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L141
	cpi r24,25
	cpc r25,__zero_reg__
	brge .L159
	cpi r24,8
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L140
	cpi r24,16
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L140
.L159:
	cpi r24,32
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L146
	cpi r24,40
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L141
.L158:
	cpi r24,72
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L146
	cpi r24,73
	cpc r25,__zero_reg__
	brge .L160
	cpi r24,56
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L144
	cpi r24,64
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L149
.L160:
	cpi r24,88
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L148
	cpi r24,96
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L149
	cpi r24,80
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L150
.L157:
	cpi r24,152
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L151
	cpi r24,153
	cpc r25,__zero_reg__
	brge .L161
	cpi r24,128
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L150
	cpi r24,129
	cpc r25,__zero_reg__
	brge .L162
	cpi r24,112
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L149
	cpi r24,120
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L149
.L162:
	cpi r24,136
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L151
	cpi r24,144
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L150
.L161:
	cpi r24,176
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L153
	cpi r24,177
	cpc r25,__zero_reg__
	brge .L163
	cpi r24,160
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L152
	cpi r24,168
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L153
.L163:
	cpi r24,192
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L155
	cpi r24,200
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L156
	cpi r24,184
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L139
	rjmp .L154
.L140:
.LM94:
	lds r24,twi_address
	sts 187,r24
	rjmp .L168
.L144:
.LM95:
	ldi r24,lo8(5)
	ldi r25,hi8(5)
	rjmp .L171
.L141:
.LM96:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brsh .L148
.LM97:
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	ld r18,Z
	sts 187,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
.L168:
	ldi r24,lo8(-123)
.L169:
	sts 188,r24
	rjmp .L138
.L143:
.LM98:
	ldi r24,lo8(6)
	ldi r25,hi8(6)
.L170:
	sts error+1,r25
	sts error,r24
.LM99:
	call twi_stop
.LM100:
	rjmp .L138
.L146:
.LM101:
	ldi r24,lo8(4)
	ldi r25,hi8(4)
	rjmp .L170
.L148:
.LM102:
	call twi_stop_or_next
.LM103:
	rjmp .L138
.L153:
.LBB30:
.LBB31:
.LM104:
	sts twi_buffer,__zero_reg__
	sts twi_buffer+1,__zero_reg__
	sts twi_buffer+2,__zero_reg__
	sts twi_buffer+3,__zero_reg__
.L154:
.LBE31:
.LBE30:
.LM105:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	subi r18,lo8(-(-1))
	sbci r19,hi8(-(-1))
	lds r22,twi_buffer
	lds r23,twi_buffer+1
	movw r20,r24
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
	cp r24,r18
	cpc r25,r19
	brsh .L166
.LM106:
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	sts 187,r24
	sts alreadyHandled+1,r21
	sts alreadyHandled,r20
	ldi r24,lo8(-59)
	rjmp .L169
.L166:
.LM107:
	add r24,r22
	adc r25,r23
	movw r30,r24
	ld r24,Z
	sts 187,r24
	sts alreadyHandled+1,r21
	sts alreadyHandled,r20
	rjmp .L168
.L156:
.LM108:
	ldi r24,lo8(7)
	ldi r25,hi8(7)
	rjmp .L171
.L155:
.LM109:
	lds r18,alreadyHandled
	lds r19,alreadyHandled+1
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	cp r18,r24
	cpc r19,r25
	brsh .L151
.LM110:
	ldi r24,lo8(8)
	ldi r25,hi8(8)
	rjmp .L171
.L149:
.LM111:
	call twi_init_receive
.LM112:
	rjmp .L138
.L150:
.LM113:
	call twi_receive_byte
.LM114:
	rjmp .L138
.L152:
.LM115:
	ldi r24,lo8(9)
	ldi r25,hi8(9)
.L171:
	sts error+1,r25
	sts error,r24
.L151:
.LVL6:
.LM116:
	call twi_end
.LVL7:
.LM117:
	rjmp .L138
.L139:
.LM118:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts error+1,r25
	sts error,r24
.LM119:
	call twi_unexpectedCondition
.L138:
/* epilogue start */
.LM120:
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out 91-32,r0
	pop r0
	out __SREG__,r0
	pop r0
	pop __zero_reg__
	reti
.LFE21:
	.size	__vector_26, .-__vector_26
.global	twi_handleMasterRequest
	.type	twi_handleMasterRequest, @function
twi_handleMasterRequest:
.LFB22:
.LM121:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM122:
	ldi r22,lo8(0)
	ldi r23,lo8(0)
	ldi r24,lo8(0)
	ldi r25,lo8(0)
/* epilogue start */
	ret
.LFE22:
	.size	twi_handleMasterRequest, .-twi_handleMasterRequest
.global	twi_handleMasterTransmission
	.type	twi_handleMasterTransmission, @function
twi_handleMasterTransmission:
.LFB23:
.LM123:
.LVL8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM124:
	ret
.LFE23:
	.size	twi_handleMasterTransmission, .-twi_handleMasterTransmission
.global	init_process_base
	.type	init_process_base, @function
init_process_base:
.LFB25:
.LM125:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM126:
	ldi r24,lo8(16639)
	ldi r25,hi8(16639)
	lds r18,__default_stack_size
	lds r19,__default_stack_size+1
	sub r24,r18
	sbc r25,r19
	sts __malloc_heap_end+1,r25
	sts __malloc_heap_end,r24
.LM127:
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
.LVL9:
.LBB32:
.LBB33:
.LM128:
	lds r22,__main_process_additional_memory
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
.LVL10:
	movw r30,r24
.LVL11:
.LM129:
	sbiw r24,0
	breq .L176
.LM130:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L175
.L176:
.LM131:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
.L175:
.LBE33:
.LBE32:
.LM132:
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
.LM133:
	ret
.LFE25:
	.size	init_process_base, .-init_process_base
	.section	.fini1,"ax",@progbits
.global	MainProcessEnd
	.type	MainProcessEnd, @function
MainProcessEnd:
.LFB27:
.LSM10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB34:
.LBB35:
.LSM11:
	call processor_loop_idle
/* epilogue start */
.LBE35:
.LBE34:
.LSM12:
	ret
.LFE27:
	.size	MainProcessEnd, .-MainProcessEnd
	.text
.global	createProcessBase3
	.type	createProcessBase3, @function
createProcessBase3:
.LFB28:
.LM134:
.LVL12:
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 12 */
.L__stack_usage = 12
	mov r13,r24
	mov r12,r25
	movw r14,r22
	movw r10,r20
.LM135:
	movw r24,r20
.LVL13:
	ldi r22,lo8(1)
	ldi r23,hi8(1)
.LVL14:
	std Y+1,r18
	call calloc
.LVL15:
	movw r16,r24
.LVL16:
.LM136:
	ldd r18,Y+1
	sbiw r24,0
	breq .L183
.LM137:
	movw r20,r10
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	add r20,r24
	adc r21,r25
.LVL17:
.LM138:
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
.LVL18:
	movw r30,r20
	st Z,r24
.LM139:
	sbiw r30,1
	st Z,r25
.LM140:
	movw r30,r20
	sbiw r30,2
	st Z,r13
.LM141:
	movw r30,r20
	sbiw r30,3
	st Z,r12
.LVL19:
.LBB36:
.LBB37:
.LM142:
	mov r22,r18
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+1,r20
	std Y+2,r21
	call calloc
.LVL20:
	movw r18,r24
.LVL21:
.LM143:
	ldd r20,Y+1
	ldd r21,Y+2
	sbiw r24,0
	breq .L180
.LBE37:
.LBE36:
.LM144:
	movw r24,r20
.LVL22:
	sbiw r24,38
.LBB39:
.LBB38:
.LM145:
	movw r30,r18
	std Z+1,r25
	st Z,r24
.LBE38:
.LBE39:
.LM146:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L181
	rjmp .L185
.L180:
.LM147:
	movw r24,r16
	call free
.LVL23:
	rjmp .L183
.LVL24:
.L185:
.LM148:
	movw r14,r18
.LVL25:
.L181:
.LM149:
	movw r30,r20
	sbiw r30,30
	st Z,r14
.LM150:
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r30,r20
	st Z,r15
.LM151:
	rjmp .L179
.LVL26:
.L183:
.LM152:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L179:
.LM153:
	movw r24,r18
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
.LVL27:
	pop r15
	pop r14
.LVL28:
	pop r13
	pop r12
	pop r11
	pop r10
.LVL29:
	ret
.LFE28:
	.size	createProcessBase3, .-createProcessBase3
.global	createProcessBase2
	.type	createProcessBase2, @function
createProcessBase2:
.LFB29:
.LM154:
.LVL30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM155:
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r18,lo8(0)
	call createProcessBase3
.LVL31:
/* epilogue start */
.LM156:
	ret
.LFE29:
	.size	createProcessBase2, .-createProcessBase2
.global	createProcessBase
	.type	createProcessBase, @function
createProcessBase:
.LFB30:
.LM157:
.LVL32:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM158:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcessBase2
.LVL33:
/* epilogue start */
.LM159:
	ret
.LFE30:
	.size	createProcessBase, .-createProcessBase
.global	switchContext
	.type	switchContext, @function
switchContext:
.LFB31:
.LM160:
.LVL34:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM161:
/* #APP */
 ;  94 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
.LM162:
 ;  95 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	movw r26, r24
 ;  0 "" 2
.LM163:
 ;  96 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
.LM164:
 ;  97 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	movw r26, r22
 ;  0 "" 2
.LM165:
 ;  98 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
.LM166:
 ;  99 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
.LM167:
 ;  101 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM168:
/* #NOAPP */
	ret
.LFE31:
	.size	switchContext, .-switchContext
.global	getCurrentProcess
	.type	getCurrentProcess, @function
getCurrentProcess:
.LFB32:
.LM169:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM170:
	lds r24,__current_process
	lds r25,__current_process+1
/* epilogue start */
	ret
.LFE32:
	.size	getCurrentProcess, .-getCurrentProcess
.global	switchProcess
	.type	switchProcess, @function
switchProcess:
.LFB33:
.LM171:
.LVL35:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r22,r24
.LM172:
	lds r24,__current_process
	lds r25,__current_process+1
.LVL36:
.LM173:
	sts __current_process+1,r23
	sts __current_process,r22
.LM174:
	call switchContext
.LVL37:
/* epilogue start */
.LM175:
	ret
.LFE33:
	.size	switchProcess, .-switchProcess
.global	createProcess3
	.type	createProcess3, @function
createProcess3:
.LFB35:
.LM176:
.LVL38:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r20
.LM177:
	subi r18,lo8(-(6))
.LVL39:
	call createProcessBase3
.LVL40:
	movw r30,r24
.LVL41:
.LM178:
	sbiw r24,0
	breq .L192
.LVL42:
.LBB40:
.LBB41:
.LM179:
	movw r26,r24
	adiw r26,4
.LVL43:
.LBE41:
.LBE40:
.LM180:
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
.LVL44:
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
.LM181:
	adiw r26,2+1
	st X,r29
	st -X,r28
	sbiw r26,2
.LM182:
	ldi r18,lo8(39)
	ldi r19,hi8(39)
	sub r18,r28
	sbc r19,r29
	ld r24,Z
	ldd r25,Z+1
	add r24,r18
	adc r25,r19
	adiw r26,4+1
	st X,r25
	st -X,r24
	sbiw r26,4
.LVL45:
.L192:
.LM183:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
.LVL46:
	ret
.LFE35:
	.size	createProcess3, .-createProcess3
.global	createProcess2
	.type	createProcess2, @function
createProcess2:
.LFB36:
.LM184:
.LVL47:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM185:
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r18,lo8(0)
	call createProcess3
.LVL48:
/* epilogue start */
.LM186:
	ret
.LFE36:
	.size	createProcess2, .-createProcess2
.global	createProcess
	.type	createProcess, @function
createProcess:
.LFB37:
.LM187:
.LVL49:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM188:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcess2
.LVL50:
/* epilogue start */
.LM189:
	ret
.LFE37:
	.size	createProcess, .-createProcess
.global	freeProcess
	.type	freeProcess, @function
freeProcess:
.LFB38:
.LM190:
.LVL51:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM191:
	lds r24,__current_process
	lds r25,__current_process+1
.LVL52:
	cp r28,r24
	cpc r29,r25
	breq .L195
.LVL53:
.LBB42:
.LBB43:
.LM192:
	movw r30,r28
	adiw r30,4
.LVL54:
.LBE43:
.LBE42:
.LM193:
	ldd r24,Y+4
	ldd r25,Y+5
	sbiw r24,0
	breq .L197
.LM194:
	ldd r24,Z+4
	ldd r25,Z+5
	call free
.LVL55:
.L197:
.LM195:
	movw r24,r28
	call free
.LVL56:
.L195:
/* epilogue start */
.LM196:
	pop r29
	pop r28
.LVL57:
	ret
.LFE38:
	.size	freeProcess, .-freeProcess
.global	getProcessStackSize
	.type	getProcessStackSize, @function
getProcessStackSize:
.LFB39:
.LM197:
.LVL58:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM198:
	movw r30,r24
	ldd r24,Z+6
.LVL59:
/* epilogue start */
	ret
.LFE39:
	.size	getProcessStackSize, .-getProcessStackSize
.global	getFreeProcessStackSize
	.type	getFreeProcessStackSize, @function
getFreeProcessStackSize:
.LFB40:
.LM199:
.LVL60:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL61:
.LM200:
	ldd r18,Z+8
	ldd r19,Z+9
	ld r24,Z
	ldd r25,Z+1
.LVL62:
	sub r18,r24
	sbc r19,r25
.LM201:
	movw r24,r18
/* epilogue start */
	ret
.LFE40:
	.size	getFreeProcessStackSize, .-getFreeProcessStackSize
.global	getProcessNumber
	.type	getProcessNumber, @function
getProcessNumber:
.LFB41:
.LM202:
.LVL63:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL64:
.LM203:
	ldd r24,Z+4
.LVL65:
	ldd r25,Z+5
/* epilogue start */
	ret
.LFE41:
	.size	getProcessNumber, .-getProcessNumber
.global	getProcessMemory
	.type	getProcessMemory, @function
getProcessMemory:
.LFB42:
.LM204:
.LVL66:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM205:
	movw r18,r24
	subi r18,lo8(-(40))
	sbci r19,hi8(-(40))
.LM206:
	movw r24,r18
.LVL67:
/* epilogue start */
	ret
.LFE42:
	.size	getProcessMemory, .-getProcessMemory
.global	init_process
	.type	init_process, @function
init_process:
.LFB43:
.LM207:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM208:
	lds r24,__main_process_additional_memory
	subi r24,lo8(-(6))
	sts __main_process_additional_memory,r24
.LM209:
	call init_process_base
.LVL68:
.LBB44:
.LBB45:
.LM210:
	lds r26,__current_process
	lds r27,__current_process+1
	movw r30,r26
	adiw r30,4
.LVL69:
.LBE45:
.LBE44:
.LM211:
	adiw r26,4+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,4
.LM212:
	lds r24,__default_stack_size
	lds r25,__default_stack_size+1
	std Z+3,r25
	std Z+2,r24
.LM213:
	lds r24,__malloc_heap_end
	lds r25,__malloc_heap_end+1
	std Z+5,r25
	std Z+4,r24
/* epilogue start */
.LM214:
	ret
.LFE43:
	.size	init_process, .-init_process
.global	init_idle_scheduler
	.type	init_idle_scheduler, @function
init_idle_scheduler:
.LFB44:
.LM215:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM216:
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	ldi r20,lo8(64)
	ldi r21,hi8(64)
	ldi r18,lo8(0)
	call createProcess3
	sts __idle_process+1,r25
	sts __idle_process,r24
/* epilogue start */
.LM217:
	ret
.LFE44:
	.size	init_idle_scheduler, .-init_idle_scheduler
	.section	.init8
.global	init_idle_scheduler_kernel_init
	.type	init_idle_scheduler_kernel_init, @function
init_idle_scheduler_kernel_init:
.LFB45:
.LSM13:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM14:
	call init_idle_scheduler
/* epilogue start */
.LFE45:
	.size	init_idle_scheduler_kernel_init, .-init_idle_scheduler_kernel_init
	.text
.global	idle_schedule
	.type	idle_schedule, @function
idle_schedule:
.LFB46:
.LM218:
.LVL70:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM219:
	lds r24,__idle_process
.LVL71:
	lds r25,__idle_process+1
/* epilogue start */
	ret
.LFE46:
	.size	idle_schedule, .-idle_schedule
.global	init_scheduler
	.type	init_scheduler, @function
init_scheduler:
.LFB48:
.LM220:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL72:
.LM221:
	ldi r28,lo8(Timer3)
	ldi r29,hi8(Timer3)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
.LM222:
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
.LM223:
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
/* epilogue start */
.LM224:
	pop r29
	pop r28
	ret
.LFE48:
	.size	init_scheduler, .-init_scheduler
	.section	.init8
.global	init_scheduler_kernel_init
	.type	init_scheduler_kernel_init, @function
init_scheduler_kernel_init:
.LFB49:
.LSM15:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM16:
	call init_scheduler
/* epilogue start */
.LFE49:
	.size	init_scheduler_kernel_init, .-init_scheduler_kernel_init
	.text
.global	start_scheduler
	.type	start_scheduler, @function
start_scheduler:
.LFB50:
.LM225:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM226:
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	call enableTimerInterrupt
.LM227:
/* #APP */
 ;  27 ".././shared/scheduler.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM228:
/* #NOAPP */
	ret
.LFE50:
	.size	start_scheduler, .-start_scheduler
	.weak	before_scheduler
	.type	before_scheduler, @function
before_scheduler:
.LFB51:
.LM229:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM230:
	ret
.LFE51:
	.size	before_scheduler, .-before_scheduler
.global	schedule
	.type	schedule, @function
schedule:
.LFB52:
.LM231:
.LVL73:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM232:
	call dms_schedule
.LVL74:
	movw r18,r24
.LVL75:
.LM233:
	sbiw r24,0
	brne .L211
.LM234:
	movw r24,r28
.LVL76:
	call rr_schedule
.LVL77:
	movw r18,r24
.LVL78:
.LM235:
	sbiw r24,0
	brne .L211
.LBB46:
.LBB47:
.LM236:
	lds r18,__idle_process
	lds r19,__idle_process+1
.LVL79:
.L211:
.LBE47:
.LBE46:
.LM237:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
.LVL80:
	ret
.LFE52:
	.size	schedule, .-schedule
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
.LFB47:
.LM238:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM239:
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	push r0				
in r0, __SREG__		
cli					
push r0				
in r0, __RAMPZ__		
push r0				
push r1				
clr r1				
push r2			
push r3			
push r4			
push r5			
push r6			
push r7			
push r8			
push r9			
push r10			
push r11			
push r12			
push r13			
push r14			
push r15			
push r16			
push r17			
push r18			
push r19			
push r20			
push r21			
push r22			
push r23			
push r24			
push r25			
push r26			
push r27			
push r28			
push r29			
push r30			
push r31			

 ;  0 "" 2
.LM240:
/* #NOAPP */
	lds r24,milliseconds_running
	lds r25,milliseconds_running+1
	lds r26,milliseconds_running+2
	lds r27,milliseconds_running+3
	adiw r24,1
	adc r26,__zero_reg__
	adc r27,__zero_reg__
	sts milliseconds_running,r24
	sts milliseconds_running+1,r25
	sts milliseconds_running+2,r26
	sts milliseconds_running+3,r27
.LM241:
/* #APP */
 ;  33 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	lds r26, __current_process
 ;  0 "" 2
.LM242:
 ;  34 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	lds r27, __current_process + 1
 ;  0 "" 2
.LM243:
 ;  35 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
.LM244:
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call schedule
	sts __current_process+1,r25
	sts __current_process,r24
.LM245:
	sbiw r24,0
	brne .L213
.LM246:
	call HARDWARE_RESET
.L213:
.LM247:
/* #APP */
 ;  45 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	movw r26, r24
 ;  0 "" 2
.LM248:
 ;  46 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
.LM249:
 ;  47 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	pop r31			
pop r30			
pop r29			
pop r28			
pop r27			
pop r26			
pop r25			
pop r24			
pop r23			
pop r22			
pop r21			
pop r20			
pop r19			
pop r18			
pop r17			
pop r16			
pop r15			
pop r14			
pop r13			
pop r12			
pop r11			
pop r10			
pop r9				
pop r8				
pop r7				
pop r6				
pop r5				
pop r4				
pop r3				
pop r2				
pop r1				
pop r0						
out __RAMPZ__, r0			
pop r0						
out __SREG__, r0			
pop r0						

 ;  0 "" 2
.LM250:
 ;  50 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	reti
 ;  0 "" 2
/* epilogue start */
.LM251:
/* #NOAPP */
.LFE47:
	.size	__vector_32, .-__vector_32
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
.LFB53:
.LM252:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM253:
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
.LM254:
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
.LM255:
	ldi r30,lo8(96)
	ldi r31,hi8(96)
	ldi r24,lo8(16)
	st Z,r24
.LM256:
	ld r24,Z
	ori r24,lo8(5)
	st Z,r24
.LM257:
	call init_process
.LM258:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	call rr_captureMainProcess
.LM259:
	call before_scheduler
.LM260:
	call start_scheduler
/* epilogue start */
.LM261:
	ret
.LFE53:
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
.LFB54:
.LSM17:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM18:
	call init_kernel
/* epilogue start */
.LFE54:
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	twi_defaultSlaveBuffer
	.data
	.type	twi_defaultSlaveBuffer, @object
	.size	twi_defaultSlaveBuffer, 4
twi_defaultSlaveBuffer:
	.word	twi_defaultSlaveBufferData
	.word	64
.global	__default_stack_size
	.type	__default_stack_size, @object
	.size	__default_stack_size, 2
__default_stack_size:
	.word	512
.global	__main_process_additional_memory
.global	__main_process_additional_memory
	.section .bss
	.type	__main_process_additional_memory, @object
	.size	__main_process_additional_memory, 1
__main_process_additional_memory:
	.skip 1,0
.global	__nextProcessNumber
	.data
	.type	__nextProcessNumber, @object
	.size	__nextProcessNumber, 2
__nextProcessNumber:
	.word	1
.global	__current_process
.global	__current_process
	.section .bss
	.type	__current_process, @object
	.size	__current_process, 2
__current_process:
	.skip 2,0
.global	milliseconds_running
.global	milliseconds_running
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
	.comm PortA,6,1
	.comm PinA0,3,1
	.comm PinA1,3,1
	.comm PinA2,3,1
	.comm PinA3,3,1
	.comm PinA4,3,1
	.comm PinA5,3,1
	.comm PinA6,3,1
	.comm PinA7,3,1
	.comm PortB,6,1
	.comm PinB0,3,1
	.comm PinB1,3,1
	.comm PinB2,3,1
	.comm PinB3,3,1
	.comm PinB4,3,1
	.comm PinB5,3,1
	.comm PinB6,3,1
	.comm PinB7,3,1
	.comm PortC,6,1
	.comm PinC0,3,1
	.comm PinC1,3,1
	.comm PinC2,3,1
	.comm PinC3,3,1
	.comm PinC4,3,1
	.comm PinC5,3,1
	.comm PinC6,3,1
	.comm PinC7,3,1
	.comm PortD,6,1
	.comm PinD0,3,1
	.comm PinD1,3,1
	.comm PinD2,3,1
	.comm PinD3,3,1
	.comm PinD4,3,1
	.comm PinD5,3,1
	.comm PinD6,3,1
	.comm PinD7,3,1
	.comm Timer0,7,1
	.comm Timer1,7,1
	.comm Timer2,7,1
	.comm Timer3,7,1
	.comm Timer0A,8,1
	.comm Timer0B,8,1
	.comm Timer1A,8,1
	.comm Timer1B,8,1
	.comm Timer2A,8,1
	.comm Timer2B,8,1
	.comm Timer3A,8,1
	.comm Timer3B,8,1
	.comm LeftMotor,7,1
	.comm RightMotor,7,1
	.comm twi_running,2,1
	.comm twi_defaultSlaveBufferData,64,1
	.comm twi_address,1,1
	.comm alreadyHandled,2,1
	.comm twi_buffer,4,1
	.comm error,2,1
	.comm furtherOperations,21,1
	.comm nextTwiOperation,2,1
	.comm __idle_process,2,1
	.data
	.type	C.36.3154, @object
	.size	C.36.3154, 7
C.36.3154:
	.byte	8
	.word	PinA1
	.word	Timer1B
	.word	PinA1
	.type	C.35.3153, @object
	.size	C.35.3153, 7
C.35.3153:
	.byte	8
	.word	PinA1
	.word	Timer1A
	.word	PinA1
	.type	C.49.3170, @object
	.size	C.49.3170, 8
C.49.3170:
	.word	Timer3
	.word	154
	.word	1
	.word	PinB7
	.type	C.48.3169, @object
	.size	C.48.3169, 8
C.48.3169:
	.word	Timer3
	.word	152
	.word	0
	.word	PinB6
	.type	C.47.3168, @object
	.size	C.47.3168, 8
C.47.3168:
	.word	Timer2
	.word	180
	.word	1
	.word	PinD6
	.type	C.46.3167, @object
	.size	C.46.3167, 8
C.46.3167:
	.word	Timer2
	.word	179
	.word	0
	.word	PinD7
	.type	C.45.3166, @object
	.size	C.45.3166, 8
C.45.3166:
	.word	Timer1
	.word	138
	.word	1
	.word	PinD4
	.type	C.44.3165, @object
	.size	C.44.3165, 8
C.44.3165:
	.word	Timer1
	.word	136
	.word	0
	.word	PinD5
	.type	C.43.3164, @object
	.size	C.43.3164, 8
C.43.3164:
	.word	Timer0
	.word	72
	.word	1
	.word	PinB4
	.type	C.42.3163, @object
	.size	C.42.3163, 8
C.42.3163:
	.word	Timer0
	.word	71
	.word	0
	.word	PinB3
	.type	C.41.3162, @object
	.size	C.41.3162, 7
C.41.3162:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.40.3161, @object
	.size	C.40.3161, 7
C.40.3161:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.39.3160, @object
	.size	C.39.3160, 7
C.39.3160:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.38.3159, @object
	.size	C.38.3159, 7
C.38.3159:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.85.3206, @object
	.size	C.85.3206, 3
C.85.3206:
	.word	PortD
	.byte	-128
	.type	C.84.3205, @object
	.size	C.84.3205, 3
C.84.3205:
	.word	PortD
	.byte	64
	.type	C.83.3204, @object
	.size	C.83.3204, 3
C.83.3204:
	.word	PortD
	.byte	32
	.type	C.82.3203, @object
	.size	C.82.3203, 3
C.82.3203:
	.word	PortD
	.byte	16
	.type	C.81.3202, @object
	.size	C.81.3202, 3
C.81.3202:
	.word	PortD
	.byte	8
	.type	C.80.3201, @object
	.size	C.80.3201, 3
C.80.3201:
	.word	PortD
	.byte	4
	.type	C.79.3200, @object
	.size	C.79.3200, 3
C.79.3200:
	.word	PortD
	.byte	2
	.type	C.78.3199, @object
	.size	C.78.3199, 3
C.78.3199:
	.word	PortD
	.byte	1
	.type	C.77.3198, @object
	.size	C.77.3198, 6
C.77.3198:
	.word	43
	.word	41
	.word	42
	.type	C.76.3197, @object
	.size	C.76.3197, 3
C.76.3197:
	.word	PortC
	.byte	-128
	.type	C.75.3196, @object
	.size	C.75.3196, 3
C.75.3196:
	.word	PortC
	.byte	64
	.type	C.74.3195, @object
	.size	C.74.3195, 3
C.74.3195:
	.word	PortC
	.byte	32
	.type	C.73.3194, @object
	.size	C.73.3194, 3
C.73.3194:
	.word	PortC
	.byte	16
	.type	C.72.3193, @object
	.size	C.72.3193, 3
C.72.3193:
	.word	PortC
	.byte	8
	.type	C.71.3192, @object
	.size	C.71.3192, 3
C.71.3192:
	.word	PortC
	.byte	4
	.type	C.70.3191, @object
	.size	C.70.3191, 3
C.70.3191:
	.word	PortC
	.byte	2
	.type	C.69.3190, @object
	.size	C.69.3190, 3
C.69.3190:
	.word	PortC
	.byte	1
	.type	C.68.3189, @object
	.size	C.68.3189, 6
C.68.3189:
	.word	40
	.word	38
	.word	39
	.type	C.67.3188, @object
	.size	C.67.3188, 3
C.67.3188:
	.word	PortB
	.byte	-128
	.type	C.66.3187, @object
	.size	C.66.3187, 3
C.66.3187:
	.word	PortB
	.byte	64
	.type	C.65.3186, @object
	.size	C.65.3186, 3
C.65.3186:
	.word	PortB
	.byte	32
	.type	C.64.3185, @object
	.size	C.64.3185, 3
C.64.3185:
	.word	PortB
	.byte	16
	.type	C.63.3184, @object
	.size	C.63.3184, 3
C.63.3184:
	.word	PortB
	.byte	8
	.type	C.62.3183, @object
	.size	C.62.3183, 3
C.62.3183:
	.word	PortB
	.byte	4
	.type	C.61.3182, @object
	.size	C.61.3182, 3
C.61.3182:
	.word	PortB
	.byte	2
	.type	C.60.3181, @object
	.size	C.60.3181, 3
C.60.3181:
	.word	PortB
	.byte	1
	.type	C.59.3180, @object
	.size	C.59.3180, 6
C.59.3180:
	.word	37
	.word	35
	.word	36
	.type	C.58.3179, @object
	.size	C.58.3179, 3
C.58.3179:
	.word	PortA
	.byte	-128
	.type	C.57.3178, @object
	.size	C.57.3178, 3
C.57.3178:
	.word	PortA
	.byte	64
	.type	C.56.3177, @object
	.size	C.56.3177, 3
C.56.3177:
	.word	PortA
	.byte	32
	.type	C.55.3176, @object
	.size	C.55.3176, 3
C.55.3176:
	.word	PortA
	.byte	16
	.type	C.54.3175, @object
	.size	C.54.3175, 3
C.54.3175:
	.word	PortA
	.byte	8
	.type	C.53.3174, @object
	.size	C.53.3174, 3
C.53.3174:
	.word	PortA
	.byte	4
	.type	C.52.3173, @object
	.size	C.52.3173, 3
C.52.3173:
	.word	PortA
	.byte	2
	.type	C.51.3172, @object
	.size	C.51.3172, 3
C.51.3172:
	.word	PortA
	.byte	1
	.type	C.50.3171, @object
	.size	C.50.3171, 6
C.50.3171:
	.word	34
	.word	32
	.word	33
	.section	.debug_frame,"",@progbits
.Lframe0:
	.long	.LECIE0-.LSCIE0
.LSCIE0:
	.long	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -1
	.byte	0x24
	.byte	0xc
	.uleb128 0x20
	.uleb128 0x0
	.p2align	2
.LECIE0:
.LSFDE0:
	.long	.LEFDE0-.LASFDE0
.LASFDE0:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.p2align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.p2align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.p2align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.p2align	2
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.p2align	2
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.p2align	2
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.p2align	2
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.p2align	2
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.p2align	2
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.p2align	2
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.p2align	2
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.p2align	2
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.p2align	2
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.p2align	2
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.p2align	2
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.p2align	2
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.p2align	2
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.p2align	2
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.p2align	2
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.p2align	2
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.p2align	2
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.p2align	2
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.p2align	2
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.p2align	2
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.p2align	2
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.p2align	2
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.p2align	2
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.p2align	2
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.p2align	2
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.p2align	2
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.p2align	2
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.p2align	2
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.p2align	2
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.p2align	2
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.p2align	2
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.p2align	2
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.p2align	2
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.p2align	2
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.p2align	2
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.p2align	2
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.p2align	2
.LEFDE104:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL3
	.long	.LVL4-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL4-1
	.long	.LVL5
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL9
	.long	.LVL10-1
	.word	0x5
	.byte	0x3
	.long	__main_process_additional_memory
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL12
	.long	.LVL14
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL14
	.long	.LVL25
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL28
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL12
	.long	.LVL15-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15-1
	.long	.LVL29
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL12
	.long	.LVL15-1
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL16
	.long	.LVL18
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18
	.long	.LVL27
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL17
	.long	.LVL20-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL19
	.long	.LVL20-1
	.word	0x3
	.byte	0x84
	.sleb128 -38
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL19
	.long	.LVL20-1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL21
	.long	.LVL22
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22
	.long	.LVL23-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24
	.long	.LVL26
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL30
	.long	.LVL31-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL30
	.long	.LVL31-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL32
	.long	.LVL33-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST15:
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST16:
	.long	.LVL36
	.long	.LVL37-1
	.word	0x5
	.byte	0x3
	.long	__current_process
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL38
	.long	.LVL40-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL38
	.long	.LVL40-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL38
	.long	.LVL40-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL40-1
	.long	.LVL46
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x62
	.long	.LVL39
	.long	.LVL40-1
	.word	0x3
	.byte	0x82
	.sleb128 -6
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL41
	.long	.LVL44
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LFE35
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL43
	.long	.LVL45
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL42
	.long	.LVL44
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL44
	.long	.LVL45
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL47
	.long	.LVL48-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL47
	.long	.LVL48-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL49
	.long	.LVL50-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL51
	.long	.LVL52
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL57
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL54
	.long	.LVL55-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL53
	.long	.LVL56
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL58
	.long	.LVL59
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LFE39
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL60
	.long	.LVL62
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL61
	.long	.LVL62
	.word	0x3
	.byte	0x88
	.sleb128 4
	.byte	0x9f
	.long	.LVL62
	.long	.LFE40
	.word	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL63
	.long	.LVL65
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LFE41
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL66
	.long	.LVL67
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL67
	.long	.LFE42
	.word	0x3
	.byte	0x82
	.sleb128 -40
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL70
	.long	.LVL71
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL73
	.long	.LVL74-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL74-1
	.long	.LVL80
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL75
	.long	.LVL76
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL76
	.long	.LVL77-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL78
	.long	.LVL79
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL79
	.long	.LFE52
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x1690
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF241
	.byte	0x1
	.long	.LASF242
	.long	.LASF243
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x30
	.long	.Ldebug_line0
	.long	.Ldebug_macinfo0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x6
	.byte	0x7a
	.long	0x3f
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x6
	.byte	0x7c
	.long	0x58
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x6
	.byte	0x7e
	.long	0x71
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x3
	.long	.LASF10
	.byte	0x8
	.byte	0xd3
	.long	0x58
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.byte	0x13
	.long	0xa6
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x16
	.long	0x91
	.uleb128 0x3
	.long	.LASF14
	.byte	0x4
	.byte	0x18
	.long	0x34
	.uleb128 0x7
	.byte	0x6
	.byte	0x15
	.byte	0xd
	.long	0xef
	.uleb128 0x8
	.long	.LASF15
	.byte	0x15
	.byte	0xe
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"pin"
	.byte	0x15
	.byte	0xf
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ddr"
	.byte	0x15
	.byte	0x10
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0xf5
	.uleb128 0xb
	.long	0x34
	.uleb128 0x3
	.long	.LASF16
	.byte	0x15
	.byte	0x11
	.long	0xbc
	.uleb128 0x3
	.long	.LASF17
	.byte	0x15
	.byte	0x11
	.long	0x110
	.uleb128 0xa
	.byte	0x2
	.long	0xbc
	.uleb128 0x7
	.byte	0x3
	.byte	0x15
	.byte	0x13
	.long	0x13b
	.uleb128 0x8
	.long	.LASF15
	.byte	0x15
	.byte	0x14
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF18
	.byte	0x15
	.byte	0x15
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.string	"Pin"
	.byte	0x15
	.byte	0x16
	.long	0x116
	.uleb128 0x3
	.long	.LASF19
	.byte	0x15
	.byte	0x16
	.long	0x151
	.uleb128 0xa
	.byte	0x2
	.long	0x116
	.uleb128 0x5
	.byte	0x2
	.byte	0x1b
	.byte	0x13
	.long	0x1a2
	.uleb128 0x6
	.long	.LASF20
	.sleb128 0
	.uleb128 0x6
	.long	.LASF21
	.sleb128 1
	.uleb128 0x6
	.long	.LASF22
	.sleb128 2
	.uleb128 0x6
	.long	.LASF23
	.sleb128 3
	.uleb128 0x6
	.long	.LASF24
	.sleb128 4
	.uleb128 0x6
	.long	.LASF25
	.sleb128 5
	.uleb128 0x6
	.long	.LASF26
	.sleb128 6
	.uleb128 0x6
	.long	.LASF27
	.sleb128 7
	.uleb128 0x6
	.long	.LASF28
	.sleb128 8
	.uleb128 0x6
	.long	.LASF29
	.sleb128 9
	.uleb128 0x6
	.long	.LASF30
	.sleb128 10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.byte	0x1b
	.byte	0x2f
	.long	0x1e7
	.uleb128 0x6
	.long	.LASF31
	.sleb128 0
	.uleb128 0x6
	.long	.LASF32
	.sleb128 1
	.uleb128 0x6
	.long	.LASF33
	.sleb128 2
	.uleb128 0x6
	.long	.LASF34
	.sleb128 3
	.uleb128 0x6
	.long	.LASF35
	.sleb128 4
	.uleb128 0x6
	.long	.LASF36
	.sleb128 5
	.uleb128 0x6
	.long	.LASF37
	.sleb128 6
	.uleb128 0x6
	.long	.LASF38
	.sleb128 7
	.uleb128 0x6
	.long	.LASF39
	.sleb128 8
	.uleb128 0x6
	.long	.LASF40
	.sleb128 9
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x1b
	.byte	0x40
	.long	0x228
	.uleb128 0x8
	.long	.LASF41
	.byte	0x1b
	.byte	0x41
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF42
	.byte	0x1b
	.byte	0x42
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF43
	.byte	0x1b
	.byte	0x43
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF44
	.byte	0x1b
	.byte	0x44
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF45
	.byte	0x1b
	.byte	0x45
	.long	0x1e7
	.uleb128 0x3
	.long	.LASF46
	.byte	0x1b
	.byte	0x45
	.long	0x23e
	.uleb128 0xa
	.byte	0x2
	.long	0x1e7
	.uleb128 0x5
	.byte	0x2
	.byte	0x1b
	.byte	0x47
	.long	0x259
	.uleb128 0x6
	.long	.LASF47
	.sleb128 0
	.uleb128 0x6
	.long	.LASF48
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF49
	.byte	0x1b
	.byte	0x4a
	.long	0x244
	.uleb128 0x7
	.byte	0x8
	.byte	0x1b
	.byte	0x4c
	.long	0x2a5
	.uleb128 0x8
	.long	.LASF50
	.byte	0x1b
	.byte	0x4d
	.long	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x1b
	.byte	0x4e
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF52
	.byte	0x1b
	.byte	0x4f
	.long	0x259
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF53
	.byte	0x1b
	.byte	0x50
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x3
	.long	.LASF54
	.byte	0x1b
	.byte	0x51
	.long	0x264
	.uleb128 0x3
	.long	.LASF55
	.byte	0x1b
	.byte	0x51
	.long	0x2bb
	.uleb128 0xa
	.byte	0x2
	.long	0x264
	.uleb128 0x7
	.byte	0x5
	.byte	0x1f
	.byte	0x14
	.long	0x2f4
	.uleb128 0x8
	.long	.LASF41
	.byte	0x1f
	.byte	0x15
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x1f
	.byte	0x16
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF57
	.byte	0x1f
	.byte	0x17
	.long	0x2b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF58
	.byte	0x1f
	.byte	0x18
	.long	0x2c1
	.uleb128 0x3
	.long	.LASF59
	.byte	0x1f
	.byte	0x18
	.long	0x30a
	.uleb128 0xa
	.byte	0x2
	.long	0x2c1
	.uleb128 0x7
	.byte	0x7
	.byte	0x1f
	.byte	0x1a
	.long	0x335
	.uleb128 0x8
	.long	.LASF60
	.byte	0x1f
	.byte	0x1b
	.long	0x2f4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF61
	.byte	0x1f
	.byte	0x1c
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF62
	.byte	0x1f
	.byte	0x1d
	.long	0x310
	.uleb128 0x3
	.long	.LASF63
	.byte	0x1f
	.byte	0x1d
	.long	0x34b
	.uleb128 0xa
	.byte	0x2
	.long	0x310
	.uleb128 0x7
	.byte	0x1
	.byte	0x24
	.byte	0x7
	.long	0x368
	.uleb128 0x8
	.long	.LASF64
	.byte	0x24
	.byte	0x8
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF65
	.byte	0x24
	.byte	0x9
	.long	0x351
	.uleb128 0x7
	.byte	0x4
	.byte	0x24
	.byte	0xd
	.long	0x398
	.uleb128 0x8
	.long	.LASF66
	.byte	0x24
	.byte	0xe
	.long	0x398
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF67
	.byte	0x24
	.byte	0xf
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0xb1
	.uleb128 0x3
	.long	.LASF68
	.byte	0x24
	.byte	0x10
	.long	0x373
	.uleb128 0x5
	.byte	0x2
	.byte	0x24
	.byte	0x15
	.long	0x3c4
	.uleb128 0x6
	.long	.LASF69
	.sleb128 0
	.uleb128 0x6
	.long	.LASF70
	.sleb128 1
	.uleb128 0x6
	.long	.LASF71
	.sleb128 2
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x24
	.byte	0x12
	.long	0x3f7
	.uleb128 0x8
	.long	.LASF72
	.byte	0x24
	.byte	0x13
	.long	0x39e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF73
	.byte	0x24
	.byte	0x14
	.long	0x368
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF74
	.byte	0x24
	.byte	0x19
	.long	0x3a9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF75
	.byte	0x24
	.byte	0x1a
	.long	0x3c4
	.uleb128 0x5
	.byte	0x2
	.byte	0x24
	.byte	0x1c
	.long	0x447
	.uleb128 0x6
	.long	.LASF76
	.sleb128 0
	.uleb128 0x6
	.long	.LASF77
	.sleb128 1
	.uleb128 0x6
	.long	.LASF78
	.sleb128 2
	.uleb128 0x6
	.long	.LASF79
	.sleb128 3
	.uleb128 0x6
	.long	.LASF80
	.sleb128 4
	.uleb128 0x6
	.long	.LASF81
	.sleb128 5
	.uleb128 0x6
	.long	.LASF82
	.sleb128 6
	.uleb128 0x6
	.long	.LASF83
	.sleb128 7
	.uleb128 0x6
	.long	.LASF84
	.sleb128 8
	.uleb128 0x6
	.long	.LASF85
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.long	.LASF86
	.byte	0x24
	.byte	0x32
	.long	0x402
	.uleb128 0xd
	.long	.LASF244
	.byte	0x2
	.byte	0x2a
	.byte	0xd
	.long	0x46d
	.uleb128 0x8
	.long	.LASF87
	.byte	0x2a
	.byte	0xd
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF88
	.byte	0x2a
	.byte	0xd
	.long	0x478
	.uleb128 0xa
	.byte	0x2
	.long	0x452
	.uleb128 0x3
	.long	.LASF89
	.byte	0x2a
	.byte	0x12
	.long	0x489
	.uleb128 0xe
	.long	0x490
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x2c
	.byte	0x1c
	.long	0x4a7
	.uleb128 0x8
	.long	.LASF90
	.byte	0x2c
	.byte	0x1d
	.long	0x4a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.byte	0x2
	.uleb128 0x3
	.long	.LASF91
	.byte	0x2c
	.byte	0x20
	.long	0x4b4
	.uleb128 0xa
	.byte	0x2
	.long	0x490
	.uleb128 0x7
	.byte	0x6
	.byte	0x28
	.byte	0x11
	.long	0x4ed
	.uleb128 0x8
	.long	.LASF92
	.byte	0x28
	.byte	0x12
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF93
	.byte	0x28
	.byte	0x13
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF94
	.byte	0x28
	.byte	0x16
	.long	0x4a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF95
	.byte	0x28
	.byte	0x17
	.long	0x4f8
	.uleb128 0xa
	.byte	0x2
	.long	0x4ba
	.uleb128 0x5
	.byte	0x2
	.byte	0x32
	.byte	0x12
	.long	0x531
	.uleb128 0x6
	.long	.LASF96
	.sleb128 0
	.uleb128 0x6
	.long	.LASF97
	.sleb128 1
	.uleb128 0x6
	.long	.LASF98
	.sleb128 2
	.uleb128 0x6
	.long	.LASF99
	.sleb128 3
	.uleb128 0x6
	.long	.LASF100
	.sleb128 4
	.uleb128 0x6
	.long	.LASF101
	.sleb128 5
	.uleb128 0x6
	.long	.LASF102
	.sleb128 6
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF103
	.byte	0x22
	.byte	0xa
	.long	0x39e
	.byte	0x1
	.long	0x54e
	.uleb128 0x12
	.string	"buf"
	.byte	0x22
	.byte	0xb
	.long	0x39e
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF104
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.long	0x568
	.uleb128 0x14
	.long	.LASF105
	.byte	0x22
	.byte	0xf
	.long	0x39e
	.byte	0x0
	.uleb128 0x15
	.long	.LASF245
	.byte	0x2d
	.byte	0x13
	.byte	0x1
	.long	0x46d
	.byte	0x1
	.long	0x59b
	.uleb128 0x14
	.long	.LASF106
	.byte	0x2d
	.byte	0x13
	.long	0x34
	.uleb128 0x14
	.long	.LASF90
	.byte	0x2d
	.byte	0x13
	.long	0x4a7
	.uleb128 0x16
	.long	.LASF107
	.byte	0x2d
	.byte	0x14
	.long	0x4a9
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF246
	.byte	0x2d
	.byte	0x30
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF109
	.byte	0x2d
	.byte	0x75
	.byte	0x1
	.long	0x4a7
	.byte	0x3
	.long	0x5c2
	.uleb128 0x14
	.long	.LASF108
	.byte	0x2d
	.byte	0x75
	.long	0x46d
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF247
	.byte	0x2d
	.byte	0x6b
	.long	0x46d
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.long	.LASF110
	.byte	0x34
	.byte	0x14
	.byte	0x1
	.long	0x46d
	.byte	0x1
	.long	0x5ed
	.uleb128 0x14
	.long	.LASF111
	.byte	0x34
	.byte	0x14
	.long	0xa6
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF112
	.byte	0x23
	.byte	0x44
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF113
	.byte	0x23
	.byte	0x65
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF114
	.byte	0x23
	.byte	0x76
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF115
	.byte	0x23
	.byte	0x80
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.long	0x59b
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF116
	.byte	0x2
	.byte	0x9
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF117
	.byte	0x2
	.byte	0x10
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF169
	.byte	0x2
	.byte	0x12
	.long	0x34
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF118
	.byte	0x1d
	.byte	0xe
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF119
	.byte	0x1d
	.byte	0x14
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF120
	.byte	0x18
	.byte	0xf
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF121
	.byte	0x18
	.byte	0x1e
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF122
	.byte	0x1e
	.byte	0xf
	.byte	0x1
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x703
	.uleb128 0x1f
	.long	.LASF60
	.byte	0x1e
	.byte	0xf
	.long	0x2ff
	.long	.LLST0
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF123
	.byte	0x1e
	.byte	0x14
	.byte	0x1
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x72c
	.uleb128 0x1f
	.long	.LASF60
	.byte	0x1e
	.byte	0x14
	.long	0x340
	.long	.LLST1
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF124
	.byte	0x17
	.byte	0x10
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF125
	.byte	0x17
	.byte	0x17
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF126
	.byte	0x23
	.byte	0x1d
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF127
	.byte	0x23
	.byte	0x2e
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF128
	.byte	0x23
	.byte	0x3b
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF129
	.byte	0x23
	.byte	0x4e
	.long	0xa6
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x7bb
	.uleb128 0x21
	.long	.LASF138
	.byte	0x23
	.byte	0x4f
	.long	0x3f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF130
	.byte	0x23
	.byte	0x5f
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF131
	.byte	0x23
	.byte	0x6f
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF132
	.byte	0x23
	.byte	0x88
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x81b
	.uleb128 0x22
	.long	0x531
	.long	.LBB30
	.long	.LBE30
	.byte	0x23
	.byte	0xbb
	.uleb128 0x23
	.long	.LBB31
	.long	.LBE31
	.uleb128 0x24
	.long	0x542
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.long	0x531
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x836
	.uleb128 0x24
	.long	0x542
	.byte	0x0
	.uleb128 0x25
	.long	0x54e
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x85e
	.uleb128 0x26
	.long	0x55c
	.byte	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF133
	.byte	0x2d
	.byte	0x1b
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8ac
	.uleb128 0x22
	.long	0x568
	.long	.LBB32
	.long	.LBE32
	.byte	0x2d
	.byte	0x27
	.uleb128 0x28
	.long	0x584
	.byte	0x0
	.uleb128 0x29
	.long	0x579
	.long	.LLST2
	.uleb128 0x23
	.long	.LBB33
	.long	.LBE33
	.uleb128 0x2a
	.long	0x58f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF134
	.byte	0x2d
	.byte	0x37
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8d4
	.uleb128 0x2b
	.long	0x59b
	.long	.LBB34
	.long	.LBE34
	.byte	0x2d
	.byte	0x38
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF141
	.byte	0x2d
	.byte	0x3b
	.byte	0x1
	.long	0x46d
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x98f
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x2d
	.byte	0x3b
	.long	0x98f
	.long	.LLST3
	.uleb128 0x1f
	.long	.LASF136
	.byte	0x2d
	.byte	0x3b
	.long	0x4a7
	.long	.LLST4
	.uleb128 0x1f
	.long	.LASF93
	.byte	0x2d
	.byte	0x3b
	.long	0x4d
	.long	.LLST5
	.uleb128 0x1f
	.long	.LASF137
	.byte	0x2d
	.byte	0x3b
	.long	0x34
	.long	.LLST6
	.uleb128 0x2d
	.long	.LASF94
	.byte	0x2d
	.byte	0x40
	.long	0x995
	.long	.LLST7
	.uleb128 0x2d
	.long	.LASF139
	.byte	0x2d
	.byte	0x42
	.long	0x995
	.long	.LLST8
	.uleb128 0x21
	.long	.LASF140
	.byte	0x2d
	.byte	0x49
	.long	0x46d
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2e
	.long	0x568
	.long	.LBB36
	.long	.Ldebug_ranges0+0x0
	.byte	0x2d
	.byte	0x49
	.uleb128 0x29
	.long	0x584
	.long	.LLST9
	.uleb128 0x29
	.long	0x579
	.long	.LLST10
	.uleb128 0x2f
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x30
	.long	0x58f
	.long	.LLST11
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x47e
	.uleb128 0xa
	.byte	0x2
	.long	0x34
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF142
	.byte	0x2d
	.byte	0x54
	.byte	0x1
	.long	0x46d
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x9d7
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x2d
	.byte	0x54
	.long	0x98f
	.long	.LLST12
	.uleb128 0x1f
	.long	.LASF136
	.byte	0x2d
	.byte	0x54
	.long	0x4a7
	.long	.LLST13
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF143
	.byte	0x2d
	.byte	0x58
	.byte	0x1
	.long	0x46d
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa04
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x2d
	.byte	0x58
	.long	0x98f
	.long	.LLST14
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF144
	.byte	0x2d
	.byte	0x5d
	.byte	0x1
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa42
	.uleb128 0x31
	.long	.LASF145
	.byte	0x2d
	.byte	0x5d
	.long	0x4a9
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x31
	.long	.LASF146
	.byte	0x2d
	.byte	0x5d
	.long	0x4a9
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x1b
	.long	0x5c2
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF147
	.byte	0x2d
	.byte	0x6f
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa8b
	.uleb128 0x1f
	.long	.LASF146
	.byte	0x2d
	.byte	0x6f
	.long	0x46d
	.long	.LLST15
	.uleb128 0x2d
	.long	.LASF148
	.byte	0x2d
	.byte	0x70
	.long	0x46d
	.long	.LLST16
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF149
	.byte	0x28
	.byte	0x31
	.byte	0x1
	.long	0x46d
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb1c
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x28
	.byte	0x31
	.long	0x98f
	.long	.LLST17
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x28
	.byte	0x31
	.long	0x4a7
	.long	.LLST18
	.uleb128 0x1f
	.long	.LASF93
	.byte	0x28
	.byte	0x31
	.long	0x4d
	.long	.LLST19
	.uleb128 0x1f
	.long	.LASF106
	.byte	0x28
	.byte	0x31
	.long	0x34
	.long	.LLST20
	.uleb128 0x2d
	.long	.LASF108
	.byte	0x28
	.byte	0x32
	.long	0x46d
	.long	.LLST21
	.uleb128 0x32
	.string	"ext"
	.byte	0x28
	.byte	0x34
	.long	0x4ed
	.long	.LLST22
	.uleb128 0x22
	.long	0x5a4
	.long	.LBB40
	.long	.LBE40
	.byte	0x28
	.byte	0x34
	.uleb128 0x29
	.long	0x5b6
	.long	.LLST23
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF151
	.byte	0x28
	.byte	0x3b
	.byte	0x1
	.long	0x46d
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb58
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x28
	.byte	0x3b
	.long	0x98f
	.long	.LLST24
	.uleb128 0x1f
	.long	.LASF150
	.byte	0x28
	.byte	0x3b
	.long	0x4a7
	.long	.LLST25
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF152
	.byte	0x28
	.byte	0x3f
	.byte	0x1
	.long	0x46d
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb85
	.uleb128 0x1f
	.long	.LASF135
	.byte	0x28
	.byte	0x3f
	.long	0x98f
	.long	.LLST26
	.byte	0x0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF153
	.byte	0x28
	.byte	0x43
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xbd6
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x28
	.byte	0x43
	.long	0x46d
	.long	.LLST27
	.uleb128 0x32
	.string	"pcb"
	.byte	0x28
	.byte	0x45
	.long	0x4ed
	.long	.LLST28
	.uleb128 0x22
	.long	0x5a4
	.long	.LBB42
	.long	.LBE42
	.byte	0x28
	.byte	0x45
	.uleb128 0x29
	.long	0x5b6
	.long	.LLST29
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF154
	.byte	0x28
	.byte	0x4c
	.byte	0x1
	.long	0x34
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc03
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x28
	.byte	0x4c
	.long	0x46d
	.long	.LLST30
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF155
	.byte	0x28
	.byte	0x50
	.byte	0x1
	.long	0x4d
	.long	.LFB40
	.long	.LFE40
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc3f
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x28
	.byte	0x50
	.long	0x46d
	.long	.LLST31
	.uleb128 0x32
	.string	"pcb"
	.byte	0x28
	.byte	0x51
	.long	0x4ed
	.long	.LLST32
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF156
	.byte	0x28
	.byte	0x55
	.byte	0x1
	.long	0x4d
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc6c
	.uleb128 0x1f
	.long	.LASF107
	.byte	0x28
	.byte	0x55
	.long	0x46d
	.long	.LLST33
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF157
	.byte	0x28
	.byte	0x59
	.byte	0x1
	.long	0x4a7
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc99
	.uleb128 0x1f
	.long	.LASF108
	.byte	0x28
	.byte	0x59
	.long	0x46d
	.long	.LLST34
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF158
	.byte	0x28
	.byte	0x61
	.long	.LFB43
	.long	.LFE43
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xcdf
	.uleb128 0x21
	.long	.LASF159
	.byte	0x28
	.byte	0x66
	.long	0x4ed
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x22
	.long	0x5a4
	.long	.LBB44
	.long	.LBE44
	.byte	0x28
	.byte	0x66
	.uleb128 0x26
	.long	0x5b6
	.byte	0x5
	.byte	0x3
	.long	__current_process
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF160
	.byte	0x34
	.byte	0xe
	.long	.LFB44
	.long	.LFE44
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF161
	.byte	0x34
	.byte	0x12
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x25
	.long	0x5cf
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd26
	.uleb128 0x29
	.long	0x5e1
	.long	.LLST35
	.byte	0x0
	.uleb128 0x27
	.byte	0x1
	.long	.LASF162
	.byte	0x27
	.byte	0xd
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd63
	.uleb128 0x21
	.long	.LASF163
	.byte	0x27
	.byte	0xe
	.long	0x233
	.byte	0x6
	.byte	0x3
	.long	Timer3
	.byte	0x9f
	.uleb128 0x21
	.long	.LASF50
	.byte	0x27
	.byte	0xf
	.long	0x2b0
	.byte	0x6
	.byte	0x3
	.long	Timer3A
	.byte	0x9f
	.byte	0x0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF164
	.byte	0x27
	.byte	0x16
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF165
	.byte	0x27
	.byte	0x18
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF166
	.byte	0x21
	.byte	0x16
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF167
	.byte	0x21
	.byte	0x1b
	.byte	0x1
	.long	0x46d
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xdee
	.uleb128 0x1f
	.long	.LASF168
	.byte	0x21
	.byte	0x1b
	.long	0xa6
	.long	.LLST36
	.uleb128 0x32
	.string	"p"
	.byte	0x21
	.byte	0x1c
	.long	0x46d
	.long	.LLST37
	.uleb128 0x22
	.long	0x5cf
	.long	.LBB46
	.long	.LBE46
	.byte	0x21
	.byte	0x1e
	.uleb128 0x33
	.long	0x5e1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.byte	0x1
	.long	.LASF170
	.byte	0x3a
	.byte	0x16
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF171
	.byte	0x21
	.byte	0x23
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF172
	.byte	0x21
	.byte	0x3a
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x35
	.long	.LASF173
	.byte	0x7
	.word	0x12e
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF174
	.byte	0x7
	.word	0x138
	.long	0xe47
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x2
	.long	0xe4d
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF175
	.uleb128 0x36
	.long	.LASF176
	.byte	0x2
	.byte	0x7
	.long	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF177
	.byte	0x1c
	.byte	0xd
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF178
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF179
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF180
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF181
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF182
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF183
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF184
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF185
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF186
	.byte	0x1c
	.byte	0xe
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF187
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF188
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF189
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF190
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF191
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF192
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF193
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF194
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF195
	.byte	0x1c
	.byte	0xf
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF196
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF197
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF198
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF199
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF200
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF201
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF202
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF203
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF204
	.byte	0x1c
	.byte	0x10
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF205
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF206
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF207
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF208
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF209
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF210
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF211
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF212
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF213
	.byte	0x1a
	.byte	0xe
	.long	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF214
	.byte	0x1a
	.byte	0xf
	.long	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF215
	.byte	0x1a
	.byte	0x10
	.long	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF216
	.byte	0x1a
	.byte	0x11
	.long	0x228
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF217
	.byte	0x1a
	.byte	0x13
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF218
	.byte	0x1a
	.byte	0x14
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF219
	.byte	0x1a
	.byte	0x15
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF220
	.byte	0x1a
	.byte	0x16
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF221
	.byte	0x1a
	.byte	0x17
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF222
	.byte	0x1a
	.byte	0x18
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF223
	.byte	0x1a
	.byte	0x19
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF224
	.byte	0x1a
	.byte	0x1a
	.long	0x2a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF225
	.byte	0x20
	.byte	0xe
	.long	0x335
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF226
	.byte	0x20
	.byte	0xf
	.long	0x335
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF227
	.byte	0x24
	.byte	0x34
	.long	0x10f8
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa6
	.uleb128 0x37
	.long	0xb1
	.long	0x110d
	.uleb128 0x38
	.long	0x58
	.byte	0x3f
	.byte	0x0
	.uleb128 0x36
	.long	.LASF228
	.byte	0x23
	.byte	0x13
	.long	0x10fd
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF229
	.byte	0x23
	.byte	0x14
	.long	0x39e
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF230
	.byte	0x23
	.byte	0x27
	.long	0x368
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF231
	.byte	0x23
	.byte	0x28
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF105
	.byte	0x23
	.byte	0x29
	.long	0x39e
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF232
	.byte	0x23
	.byte	0x2a
	.long	0x447
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	0x3f7
	.long	0x116b
	.uleb128 0x38
	.long	0x58
	.byte	0x2
	.byte	0x0
	.uleb128 0x36
	.long	.LASF233
	.byte	0x23
	.byte	0x2b
	.long	0x115b
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF234
	.byte	0x23
	.byte	0x2c
	.long	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF235
	.byte	0x2c
	.byte	0x10
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF236
	.byte	0x2c
	.byte	0x14
	.long	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF237
	.byte	0x2c
	.byte	0x23
	.long	0x46d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF238
	.byte	0x28
	.byte	0xe
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF239
	.byte	0x34
	.byte	0xc
	.long	0x46d
	.byte	0x1
	.byte	0x1
	.uleb128 0x36
	.long	.LASF240
	.byte	0x39
	.byte	0xf
	.long	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF173
	.byte	0x7
	.word	0x12e
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	.LASF174
	.byte	0x7
	.word	0x138
	.long	0xe47
	.byte	0x1
	.byte	0x1
	.uleb128 0x39
	.long	.LASF176
	.byte	0x2
	.byte	0x7
	.long	0x34
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_reset_status
	.uleb128 0x39
	.long	.LASF177
	.byte	0x1c
	.byte	0xd
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA
	.uleb128 0x39
	.long	.LASF178
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0
	.uleb128 0x39
	.long	.LASF179
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1
	.uleb128 0x39
	.long	.LASF180
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2
	.uleb128 0x39
	.long	.LASF181
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3
	.uleb128 0x39
	.long	.LASF182
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4
	.uleb128 0x39
	.long	.LASF183
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5
	.uleb128 0x39
	.long	.LASF184
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6
	.uleb128 0x39
	.long	.LASF185
	.byte	0x1c
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7
	.uleb128 0x39
	.long	.LASF186
	.byte	0x1c
	.byte	0xe
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB
	.uleb128 0x39
	.long	.LASF187
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0
	.uleb128 0x39
	.long	.LASF188
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1
	.uleb128 0x39
	.long	.LASF189
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2
	.uleb128 0x39
	.long	.LASF190
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3
	.uleb128 0x39
	.long	.LASF191
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4
	.uleb128 0x39
	.long	.LASF192
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5
	.uleb128 0x39
	.long	.LASF193
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6
	.uleb128 0x39
	.long	.LASF194
	.byte	0x1c
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7
	.uleb128 0x39
	.long	.LASF195
	.byte	0x1c
	.byte	0xf
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC
	.uleb128 0x39
	.long	.LASF196
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0
	.uleb128 0x39
	.long	.LASF197
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1
	.uleb128 0x39
	.long	.LASF198
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2
	.uleb128 0x39
	.long	.LASF199
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3
	.uleb128 0x39
	.long	.LASF200
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4
	.uleb128 0x39
	.long	.LASF201
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5
	.uleb128 0x39
	.long	.LASF202
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6
	.uleb128 0x39
	.long	.LASF203
	.byte	0x1c
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7
	.uleb128 0x39
	.long	.LASF204
	.byte	0x1c
	.byte	0x10
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD
	.uleb128 0x39
	.long	.LASF205
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0
	.uleb128 0x39
	.long	.LASF206
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1
	.uleb128 0x39
	.long	.LASF207
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2
	.uleb128 0x39
	.long	.LASF208
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3
	.uleb128 0x39
	.long	.LASF209
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4
	.uleb128 0x39
	.long	.LASF210
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5
	.uleb128 0x39
	.long	.LASF211
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6
	.uleb128 0x39
	.long	.LASF212
	.byte	0x1c
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7
	.uleb128 0x39
	.long	.LASF213
	.byte	0x1a
	.byte	0xe
	.long	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0
	.uleb128 0x39
	.long	.LASF214
	.byte	0x1a
	.byte	0xf
	.long	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1
	.uleb128 0x39
	.long	.LASF215
	.byte	0x1a
	.byte	0x10
	.long	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2
	.uleb128 0x39
	.long	.LASF216
	.byte	0x1a
	.byte	0x11
	.long	0x228
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3
	.uleb128 0x39
	.long	.LASF217
	.byte	0x1a
	.byte	0x13
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A
	.uleb128 0x39
	.long	.LASF218
	.byte	0x1a
	.byte	0x14
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B
	.uleb128 0x39
	.long	.LASF219
	.byte	0x1a
	.byte	0x15
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A
	.uleb128 0x39
	.long	.LASF220
	.byte	0x1a
	.byte	0x16
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B
	.uleb128 0x39
	.long	.LASF221
	.byte	0x1a
	.byte	0x17
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A
	.uleb128 0x39
	.long	.LASF222
	.byte	0x1a
	.byte	0x18
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B
	.uleb128 0x39
	.long	.LASF223
	.byte	0x1a
	.byte	0x19
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A
	.uleb128 0x39
	.long	.LASF224
	.byte	0x1a
	.byte	0x1a
	.long	0x2a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B
	.uleb128 0x39
	.long	.LASF225
	.byte	0x20
	.byte	0xe
	.long	0x335
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotor
	.uleb128 0x39
	.long	.LASF226
	.byte	0x20
	.byte	0xf
	.long	0x335
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotor
	.uleb128 0x39
	.long	.LASF227
	.byte	0x23
	.byte	0x26
	.long	0x10f8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_running
	.uleb128 0x39
	.long	.LASF228
	.byte	0x23
	.byte	0x13
	.long	0x10fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_defaultSlaveBufferData
	.uleb128 0x39
	.long	.LASF229
	.byte	0x23
	.byte	0x14
	.long	0x39e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_defaultSlaveBuffer
	.uleb128 0x39
	.long	.LASF230
	.byte	0x23
	.byte	0x27
	.long	0x368
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_address
	.uleb128 0x39
	.long	.LASF231
	.byte	0x23
	.byte	0x28
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	alreadyHandled
	.uleb128 0x39
	.long	.LASF105
	.byte	0x23
	.byte	0x29
	.long	0x39e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_buffer
	.uleb128 0x39
	.long	.LASF232
	.byte	0x23
	.byte	0x2a
	.long	0x447
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	error
	.uleb128 0x39
	.long	.LASF233
	.byte	0x23
	.byte	0x2b
	.long	0x115b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	furtherOperations
	.uleb128 0x39
	.long	.LASF234
	.byte	0x23
	.byte	0x2c
	.long	0x46
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nextTwiOperation
	.uleb128 0x39
	.long	.LASF235
	.byte	0x2c
	.byte	0x10
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__default_stack_size
	.uleb128 0x39
	.long	.LASF236
	.byte	0x2c
	.byte	0x14
	.long	0x34
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__main_process_additional_memory
	.uleb128 0x39
	.long	.LASF237
	.byte	0x2d
	.byte	0x11
	.long	0x46d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__current_process
	.uleb128 0x39
	.long	.LASF238
	.byte	0x28
	.byte	0xe
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__nextProcessNumber
	.uleb128 0x39
	.long	.LASF239
	.byte	0x34
	.byte	0xc
	.long	0x46d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__idle_process
	.uleb128 0x39
	.long	.LASF240
	.byte	0x39
	.byte	0xf
	.long	0x66
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	milliseconds_running
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x6
	.uleb128 0x43
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0x7c3
	.word	0x2
	.long	.Ldebug_info0
	.long	0x1694
	.long	0x639
	.string	"ProcessGraveyard"
	.long	0x64a
	.string	"init_reset_condition"
	.long	0x65e
	.string	"init_reset_condition_kernel_init"
	.long	0x672
	.string	"getResetStatus"
	.long	0x68a
	.string	"init_ports_m1284P"
	.long	0x69e
	.string	"init_ports_m1284P_kernel_init"
	.long	0x6b2
	.string	"init_timer_m1284P"
	.long	0x6c6
	.string	"init_timer_m1284P_kernel_init"
	.long	0x6da
	.string	"initMotor"
	.long	0x703
	.string	"initMotor2Pins"
	.long	0x72c
	.string	"init_tank_motors"
	.long	0x740
	.string	"init_tank_motors_kernel_init"
	.long	0x754
	.string	"twi_unexpectedCondition"
	.long	0x768
	.string	"init_twi"
	.long	0x77c
	.string	"init_twi_kernel_init"
	.long	0x790
	.string	"next_twi_operation"
	.long	0x7ce
	.string	"twi_start_master_operation"
	.long	0x7e2
	.string	"__vector_26"
	.long	0x81b
	.string	"twi_handleMasterRequest"
	.long	0x836
	.string	"twi_handleMasterTransmission"
	.long	0x85e
	.string	"init_process_base"
	.long	0x8ac
	.string	"MainProcessEnd"
	.long	0x8d4
	.string	"createProcessBase3"
	.long	0x99b
	.string	"createProcessBase2"
	.long	0x9d7
	.string	"createProcessBase"
	.long	0xa04
	.string	"switchContext"
	.long	0xa42
	.string	"getCurrentProcess"
	.long	0xa53
	.string	"switchProcess"
	.long	0xa8b
	.string	"createProcess3"
	.long	0xb1c
	.string	"createProcess2"
	.long	0xb58
	.string	"createProcess"
	.long	0xb85
	.string	"freeProcess"
	.long	0xbd6
	.string	"getProcessStackSize"
	.long	0xc03
	.string	"getFreeProcessStackSize"
	.long	0xc3f
	.string	"getProcessNumber"
	.long	0xc6c
	.string	"getProcessMemory"
	.long	0xc99
	.string	"init_process"
	.long	0xcdf
	.string	"init_idle_scheduler"
	.long	0xcf3
	.string	"init_idle_scheduler_kernel_init"
	.long	0xd07
	.string	"idle_schedule"
	.long	0xd26
	.string	"init_scheduler"
	.long	0xd63
	.string	"init_scheduler_kernel_init"
	.long	0xd77
	.string	"start_scheduler"
	.long	0xd8b
	.string	"before_scheduler"
	.long	0xd9f
	.string	"schedule"
	.long	0xdee
	.string	"__vector_32"
	.long	0xe03
	.string	"init_kernel"
	.long	0xe17
	.string	"init_kernel_kernel_init"
	.long	0x11ef
	.string	"current_reset_status"
	.long	0x1201
	.string	"PortA"
	.long	0x1213
	.string	"PinA0"
	.long	0x1225
	.string	"PinA1"
	.long	0x1237
	.string	"PinA2"
	.long	0x1249
	.string	"PinA3"
	.long	0x125b
	.string	"PinA4"
	.long	0x126d
	.string	"PinA5"
	.long	0x127f
	.string	"PinA6"
	.long	0x1291
	.string	"PinA7"
	.long	0x12a3
	.string	"PortB"
	.long	0x12b5
	.string	"PinB0"
	.long	0x12c7
	.string	"PinB1"
	.long	0x12d9
	.string	"PinB2"
	.long	0x12eb
	.string	"PinB3"
	.long	0x12fd
	.string	"PinB4"
	.long	0x130f
	.string	"PinB5"
	.long	0x1321
	.string	"PinB6"
	.long	0x1333
	.string	"PinB7"
	.long	0x1345
	.string	"PortC"
	.long	0x1357
	.string	"PinC0"
	.long	0x1369
	.string	"PinC1"
	.long	0x137b
	.string	"PinC2"
	.long	0x138d
	.string	"PinC3"
	.long	0x139f
	.string	"PinC4"
	.long	0x13b1
	.string	"PinC5"
	.long	0x13c3
	.string	"PinC6"
	.long	0x13d5
	.string	"PinC7"
	.long	0x13e7
	.string	"PortD"
	.long	0x13f9
	.string	"PinD0"
	.long	0x140b
	.string	"PinD1"
	.long	0x141d
	.string	"PinD2"
	.long	0x142f
	.string	"PinD3"
	.long	0x1441
	.string	"PinD4"
	.long	0x1453
	.string	"PinD5"
	.long	0x1465
	.string	"PinD6"
	.long	0x1477
	.string	"PinD7"
	.long	0x1489
	.string	"Timer0"
	.long	0x149b
	.string	"Timer1"
	.long	0x14ad
	.string	"Timer2"
	.long	0x14bf
	.string	"Timer3"
	.long	0x14d1
	.string	"Timer0A"
	.long	0x14e3
	.string	"Timer0B"
	.long	0x14f5
	.string	"Timer1A"
	.long	0x1507
	.string	"Timer1B"
	.long	0x1519
	.string	"Timer2A"
	.long	0x152b
	.string	"Timer2B"
	.long	0x153d
	.string	"Timer3A"
	.long	0x154f
	.string	"Timer3B"
	.long	0x1561
	.string	"LeftMotor"
	.long	0x1573
	.string	"RightMotor"
	.long	0x1585
	.string	"twi_running"
	.long	0x1597
	.string	"twi_defaultSlaveBufferData"
	.long	0x15a9
	.string	"twi_defaultSlaveBuffer"
	.long	0x15bb
	.string	"twi_address"
	.long	0x15cd
	.string	"alreadyHandled"
	.long	0x15df
	.string	"twi_buffer"
	.long	0x15f1
	.string	"error"
	.long	0x1603
	.string	"furtherOperations"
	.long	0x1615
	.string	"nextTwiOperation"
	.long	0x1627
	.string	"__default_stack_size"
	.long	0x1639
	.string	"__main_process_additional_memory"
	.long	0x164b
	.string	"__current_process"
	.long	0x165d
	.string	"__nextProcessNumber"
	.long	0x166f
	.string	"__idle_process"
	.long	0x1681
	.string	"milliseconds_running"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x16d
	.word	0x2
	.long	.Ldebug_info0
	.long	0x1694
	.long	0x34
	.string	"uint8_t"
	.long	0x4d
	.string	"uint16_t"
	.long	0x66
	.string	"uint32_t"
	.long	0x86
	.string	"size_t"
	.long	0xa6
	.string	"BOOL"
	.long	0xb1
	.string	"byte"
	.long	0xfa
	.string	"Port"
	.long	0x105
	.string	"PPort"
	.long	0x13b
	.string	"Pin"
	.long	0x146
	.string	"PPin"
	.long	0x228
	.string	"TimerConfig"
	.long	0x233
	.string	"PTimerConfig"
	.long	0x259
	.string	"TIMER_TYPE"
	.long	0x2a5
	.string	"Timer"
	.long	0x2b0
	.string	"PTimer"
	.long	0x2f4
	.string	"Motor"
	.long	0x2ff
	.string	"PMotor"
	.long	0x335
	.string	"Motor2Pins"
	.long	0x340
	.string	"PMotor2Pins"
	.long	0x368
	.string	"TWIDevice"
	.long	0x39e
	.string	"TWIBuffer"
	.long	0x3f7
	.string	"TWIOperation"
	.long	0x447
	.string	"TWIError"
	.long	0x452
	.string	"Process__"
	.long	0x46d
	.string	"Process"
	.long	0x47e
	.string	"ProcessEntryPoint"
	.long	0x4a9
	.string	"PPCB"
	.long	0x4ed
	.string	"PPCBExt"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB27
	.long	.LFE27-.LFB27
	.long	.LFB45
	.long	.LFE45-.LFB45
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB54
	.long	.LFE54-.LFB54
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB36
	.long	.LBE36
	.long	.LBB39
	.long	.LBE39
	.long	0x0
	.long	0x0
	.long	.LBB37
	.long	.LBE37
	.long	.LBB38
	.long	.LBE38
	.long	0x0
	.long	0x0
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB4
	.long	.LFE4
	.long	.LFB6
	.long	.LFE6
	.long	.LFB10
	.long	.LFE10
	.long	.LFB13
	.long	.LFE13
	.long	.LFB27
	.long	.LFE27
	.long	.LFB45
	.long	.LFE45
	.long	.LFB49
	.long	.LFE49
	.long	.LFB54
	.long	.LFE54
	.long	0x0
	.long	0x0
	.section	.debug_line
	.long	.LELT0-.LSLT0
.LSLT0:
	.word	0x2
	.long	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"../."
	.byte	0
	.ascii	".././shared"
	.byte	0
	.ascii	".././shared/.."
	.byte	0
	.ascii	".././shared/../shared"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/TWI"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/TWI/../.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/devices"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/../.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/../.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/DMS"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/DMS/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/RoundRobin"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/RoundRobin/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/idle"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/idle/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/idle/../.."
	.byte	0
	.ascii	"c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions"
	.ascii	"\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr"
	.ascii	"/4.5.1/../../../../avr/include"
	.byte	0
	.ascii	"c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions"
	.ascii	"\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr"
	.ascii	"/4.5.1/../../../../avr/include/avr"
	.byte	0
	.ascii	"c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions"
	.ascii	"\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr"
	.ascii	"/4.5.1/../../../../avr/include/util"
	.byte	0
	.ascii	"c:\\program files (x86)\\atmel\\atmel studio 6.0\\extensions"
	.ascii	"\\atmel\\avrgcc\\3.3.2.31\\avrtoolchain\\bin\\../lib/gcc/avr"
	.ascii	"/4.5.1/include"
	.byte	0
	.byte	0x0
	.string	"tank_kernel_MASTER.c"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"reset_condition.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"kernel_init.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"../anton_std.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x1a
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdlib.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"stddef.h"
	.uleb128 0x1a
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/io.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/sfr_defs.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"inttypes.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/iom1284p.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/portpins.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/common.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/version.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/fuse.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/lock.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/interrupt.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"reset_condition.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"led.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"port.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"../../anton_std.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"tank_motor.kernel.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_m1284P.kernel.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel_init.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_m1284P.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.kernel.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor.kernel.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"tank_motor.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"base.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"../twi.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/twi_raw.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/twi_raw.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/../../anton_std.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/twi.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"process_ext.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"process_ext.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"process.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"../../anton_std.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"process_internal.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"process.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel_init.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler_internal.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/dms_scheduler.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"RoundRobin/rr_scheduler.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"RoundRobin/rr_api.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"RoundRobin/../process.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/idle_scheduler.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/../process.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/../process_internal.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/../../kernel_init.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"timed_scheduler.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"../millisecond_clock.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.kernel.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"../hardware_reset.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"../shared/kernel_base.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"millisecond_clock.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"anton_std.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/dms_api.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/../process.h"
	.uleb128 0xd
	.uleb128 0x0
	.uleb128 0x0
	.string	"../shared/twi.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"../tank_motor.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x4
	.uleb128 0x23
	.byte	0x57
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x2d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x4
	.uleb128 0x2d
	.byte	0x3
	.sleb128 -84
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x4
	.uleb128 0x1d
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM34
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM35
	.byte	0x4
	.uleb128 0x18
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x4
	.uleb128 0x1e
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM56
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x4
	.uleb128 0x17
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x4
	.uleb128 0x23
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x4
	.uleb128 0x22
	.byte	0x3
	.sleb128 -227
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
	.byte	0x4
	.uleb128 0x2d
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x26
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x4c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM162
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM163
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM164
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM165
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x4
	.uleb128 0x28
	.byte	0x3
	.sleb128 -66
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x4
	.uleb128 0x2d
	.byte	0x57
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x4
	.uleb128 0x28
	.byte	0x3
	.sleb128 -65
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM183
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM189
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x4
	.uleb128 0x2d
	.byte	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x4
	.uleb128 0x28
	.byte	0x3
	.sleb128 -48
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
	.byte	0x4
	.uleb128 0x2d
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM211
	.byte	0x4
	.uleb128 0x28
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x4
	.uleb128 0x34
	.byte	0x3
	.sleb128 -92
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM218
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x4
	.uleb128 0x27
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM225
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
	.byte	0x4
	.uleb128 0x21
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM231
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM236
	.byte	0x4
	.uleb128 0x34
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM237
	.byte	0x4
	.uleb128 0x21
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0x4
	.uleb128 0x3a
	.byte	0xa
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM239
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM243
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM244
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM245
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM246
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM249
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM250
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x4
	.uleb128 0x21
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM254
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM255
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM256
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM257
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM258
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM259
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM260
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM261
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM0
	.byte	0x4
	.uleb128 0x2
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE1
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x4
	.uleb128 0x1d
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE4
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x4
	.uleb128 0x18
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE6
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x4
	.uleb128 0x17
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE10
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x4
	.uleb128 0x23
	.byte	0x4e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE13
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x4
	.uleb128 0x2d
	.byte	0x4a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE27
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x4
	.uleb128 0x34
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE45
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x4
	.uleb128 0x27
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE49
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x4
	.uleb128 0x21
	.byte	0x4d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE54
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_macinfo
	.byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF143:
	.string	"createProcessBase"
.LASF68:
	.string	"TWIBuffer"
.LASF127:
	.string	"init_twi"
.LASF47:
	.string	"TIMER_A"
.LASF48:
	.string	"TIMER_B"
.LASF235:
	.string	"__default_stack_size"
.LASF228:
	.string	"twi_defaultSlaveBufferData"
.LASF70:
	.string	"TWI_Receive"
.LASF213:
	.string	"Timer0"
.LASF214:
	.string	"Timer1"
.LASF10:
	.string	"size_t"
.LASF34:
	.string	"prescale_32"
.LASF118:
	.string	"init_ports_m1284P"
.LASF197:
	.string	"PinC1"
.LASF134:
	.string	"MainProcessEnd"
.LASF103:
	.string	"twi_handleMasterRequest"
.LASF188:
	.string	"PinB1"
.LASF189:
	.string	"PinB2"
.LASF56:
	.string	"direction"
.LASF152:
	.string	"createProcess"
.LASF52:
	.string	"type"
.LASF78:
	.string	"TWI_Bus_Error"
.LASF194:
	.string	"PinB7"
.LASF17:
	.string	"PPort"
.LASF90:
	.string	"stackPointer"
.LASF9:
	.string	"long long unsigned int"
.LASF57:
	.string	"pwmTimer"
.LASF125:
	.string	"init_tank_motors_kernel_init"
.LASF151:
	.string	"createProcess2"
.LASF149:
	.string	"createProcess3"
.LASF234:
	.string	"nextTwiOperation"
.LASF239:
	.string	"__idle_process"
.LASF196:
	.string	"PinC0"
.LASF159:
	.string	"initialProcess"
.LASF229:
	.string	"twi_defaultSlaveBuffer"
.LASF198:
	.string	"PinC2"
.LASF200:
	.string	"PinC4"
.LASF85:
	.string	"TWI_Slave_NotEnoughDataReceived"
.LASF20:
	.string	"wgm_normal"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF231:
	.string	"alreadyHandled"
.LASF98:
	.string	"PrioBelowNormal"
.LASF114:
	.string	"twi_receive_byte"
.LASF97:
	.string	"PrioLow"
.LASF121:
	.string	"init_timer_m1284P_kernel_init"
.LASF51:
	.string	"outputCompareRegister"
.LASF129:
	.string	"next_twi_operation"
.LASF240:
	.string	"milliseconds_running"
.LASF128:
	.string	"init_twi_kernel_init"
.LASF225:
	.string	"LeftMotor"
.LASF170:
	.string	"__vector_32"
.LASF173:
	.string	"__malloc_margin"
.LASF95:
	.string	"PPCBExt"
.LASF5:
	.string	"long int"
.LASF199:
	.string	"PinC3"
.LASF38:
	.string	"prescale_1024"
.LASF201:
	.string	"PinC5"
.LASF202:
	.string	"PinC6"
.LASF203:
	.string	"PinC7"
.LASF233:
	.string	"furtherOperations"
.LASF136:
	.string	"parameter"
.LASF169:
	.string	"getResetStatus"
.LASF172:
	.string	"init_kernel_kernel_init"
.LASF3:
	.string	"uint16_t"
.LASF19:
	.string	"PPin"
.LASF236:
	.string	"__main_process_additional_memory"
.LASF107:
	.string	"process"
.LASF120:
	.string	"init_timer_m1284P"
.LASF88:
	.string	"Process"
.LASF112:
	.string	"twi_stop"
.LASF84:
	.string	"TWI_Slave_TooMuchDataTransmitted"
.LASF130:
	.string	"twi_stop_or_next"
.LASF83:
	.string	"TWI_Slave_NotEnoughDataTransmitted"
.LASF39:
	.string	"external_falling_edge"
.LASF14:
	.string	"byte"
.LASF28:
	.string	"pwm_fast_9bit"
.LASF18:
	.string	"mask"
.LASF174:
	.string	"__malloc_heap_end"
.LASF144:
	.string	"switchContext"
.LASF177:
	.string	"PortA"
.LASF186:
	.string	"PortB"
.LASF142:
	.string	"createProcessBase2"
.LASF92:
	.string	"processNumber"
.LASF15:
	.string	"port"
.LASF94:
	.string	"stackTop"
.LASF156:
	.string	"getProcessNumber"
.LASF206:
	.string	"PinD1"
.LASF4:
	.string	"unsigned int"
.LASF208:
	.string	"PinD3"
.LASF209:
	.string	"PinD4"
.LASF210:
	.string	"PinD5"
.LASF211:
	.string	"PinD6"
.LASF79:
	.string	"TWI_Illegal_Status"
.LASF165:
	.string	"start_scheduler"
.LASF76:
	.string	"TWI_No_Error"
.LASF45:
	.string	"TimerConfig"
.LASF69:
	.string	"TWI_IllegalOperation"
.LASF7:
	.string	"long unsigned int"
.LASF25:
	.string	"pwm_fast"
.LASF110:
	.string	"idle_schedule"
.LASF99:
	.string	"PrioNormal"
.LASF167:
	.string	"schedule"
.LASF104:
	.string	"twi_handleMasterTransmission"
.LASF40:
	.string	"external_rising_edge"
.LASF162:
	.string	"init_scheduler"
.LASF66:
	.string	"data"
.LASF111:
	.string	"invokedFromTimer"
.LASF67:
	.string	"size"
.LASF73:
	.string	"device"
.LASF91:
	.string	"PPCB"
.LASF139:
	.string	"stackBottom"
.LASF96:
	.string	"PrioLowest"
.LASF46:
	.string	"PTimerConfig"
.LASF212:
	.string	"PinD7"
.LASF36:
	.string	"prescale_128"
.LASF35:
	.string	"prescale_64"
.LASF59:
	.string	"PMotor"
.LASF122:
	.string	"initMotor"
.LASF205:
	.string	"PinD0"
.LASF55:
	.string	"PTimer"
.LASF32:
	.string	"prescale_1"
.LASF148:
	.string	"oldCurrentProcess"
.LASF207:
	.string	"PinD2"
.LASF247:
	.string	"getCurrentProcess"
.LASF215:
	.string	"Timer2"
.LASF33:
	.string	"prescale_8"
.LASF13:
	.string	"BOOL"
.LASF163:
	.string	"timerConf"
.LASF245:
	.string	"initializeProcessInternal"
.LASF82:
	.string	"TWI_Master_TooMuchDataTransmitted"
.LASF166:
	.string	"before_scheduler"
.LASF58:
	.string	"Motor"
.LASF147:
	.string	"switchProcess"
.LASF219:
	.string	"Timer1A"
.LASF54:
	.string	"Timer"
.LASF87:
	.string	"unused"
.LASF81:
	.string	"TWI_Arbitration_Lost"
.LASF64:
	.string	"address"
.LASF135:
	.string	"entryPoint"
.LASF22:
	.string	"pwm_fast_FF"
.LASF226:
	.string	"RightMotor"
.LASF176:
	.string	"current_reset_status"
.LASF123:
	.string	"initMotor2Pins"
.LASF50:
	.string	"timer"
.LASF75:
	.string	"TWIOperation"
.LASF133:
	.string	"init_process_base"
.LASF218:
	.string	"Timer0B"
.LASF160:
	.string	"init_idle_scheduler"
.LASF108:
	.string	"proc"
.LASF227:
	.string	"twi_running"
.LASF113:
	.string	"twi_end"
.LASF29:
	.string	"pwm_fast_10bit"
.LASF178:
	.string	"PinA0"
.LASF109:
	.string	"getProcessMemoryBase"
.LASF150:
	.string	"processArgument"
.LASF137:
	.string	"additionalMem"
.LASF11:
	.string	"FALSE"
.LASF60:
	.string	"motor"
.LASF181:
	.string	"PinA3"
.LASF116:
	.string	"init_reset_condition"
.LASF132:
	.string	"__vector_26"
.LASF77:
	.string	"TWI_No_Info_Interrupt"
.LASF164:
	.string	"init_scheduler_kernel_init"
.LASF158:
	.string	"init_process"
.LASF49:
	.string	"TIMER_TYPE"
.LASF37:
	.string	"prescale_256"
.LASF1:
	.string	"unsigned char"
.LASF153:
	.string	"freeProcess"
.LASF53:
	.string	"outputComparePin"
.LASF24:
	.string	"pwm_phase_correct"
.LASF237:
	.string	"__current_process"
.LASF217:
	.string	"Timer0A"
.LASF27:
	.string	"pwm_phase_correct_10bit"
.LASF220:
	.string	"Timer1B"
.LASF126:
	.string	"twi_unexpectedCondition"
.LASF26:
	.string	"pwm_phase_correct_9bit"
.LASF12:
	.string	"TRUE"
.LASF168:
	.string	"fromTimer"
.LASF62:
	.string	"Motor2Pins"
.LASF6:
	.string	"uint32_t"
.LASF42:
	.string	"controlRegisterA"
.LASF43:
	.string	"controlRegisterB"
.LASF141:
	.string	"createProcessBase3"
.LASF100:
	.string	"PrioAboveNormal"
.LASF175:
	.string	"char"
.LASF216:
	.string	"Timer3"
.LASF93:
	.string	"stackSize"
.LASF101:
	.string	"PrioHigh"
.LASF157:
	.string	"getProcessMemory"
.LASF238:
	.string	"__nextProcessNumber"
.LASF117:
	.string	"init_reset_condition_kernel_init"
.LASF171:
	.string	"init_kernel"
.LASF23:
	.string	"pwm_phase_correct_FF"
.LASF72:
	.string	"buffer"
.LASF65:
	.string	"TWIDevice"
.LASF80:
	.string	"TWI_SlaveAddress_NoAck"
.LASF71:
	.string	"TWI_Send"
.LASF106:
	.string	"additionalMemory"
.LASF44:
	.string	"interruptMaskRegister"
.LASF154:
	.string	"getProcessStackSize"
.LASF31:
	.string	"no_clock"
.LASF21:
	.string	"clear_timer_on_match"
.LASF16:
	.string	"Port"
.LASF246:
	.string	"ProcessGraveyard"
.LASF145:
	.string	"oldProcess"
.LASF230:
	.string	"twi_address"
.LASF195:
	.string	"PortC"
.LASF204:
	.string	"PortD"
.LASF187:
	.string	"PinB0"
.LASF102:
	.string	"PrioHighest"
.LASF221:
	.string	"Timer2A"
.LASF86:
	.string	"TWIError"
.LASF222:
	.string	"Timer2B"
.LASF190:
	.string	"PinB3"
.LASF146:
	.string	"newProcess"
.LASF191:
	.string	"PinB4"
.LASF30:
	.string	"pwm_phase_and_frequency_correct"
.LASF192:
	.string	"PinB5"
.LASF193:
	.string	"PinB6"
.LASF232:
	.string	"error"
.LASF89:
	.string	"ProcessEntryPoint"
.LASF2:
	.string	"uint8_t"
.LASF115:
	.string	"twi_init_receive"
.LASF41:
	.string	"flags"
.LASF179:
	.string	"PinA1"
.LASF63:
	.string	"PMotor2Pins"
.LASF241:
	.string	"GNU C 4.5.1"
.LASF131:
	.string	"twi_start_master_operation"
.LASF180:
	.string	"PinA2"
.LASF124:
	.string	"init_tank_motors"
.LASF182:
	.string	"PinA4"
.LASF183:
	.string	"PinA5"
.LASF184:
	.string	"PinA6"
.LASF185:
	.string	"PinA7"
.LASF105:
	.string	"twi_buffer"
.LASF223:
	.string	"Timer3A"
.LASF224:
	.string	"Timer3B"
.LASF61:
	.string	"direction2"
.LASF161:
	.string	"init_idle_scheduler_kernel_init"
.LASF140:
	.string	"result"
.LASF242:
	.string	".././tank_kernel_MASTER.c"
.LASF119:
	.string	"init_ports_m1284P_kernel_init"
.LASF155:
	.string	"getFreeProcessStackSize"
.LASF243:
	.string	"C:\\\\Dev\\\\NIBObee\\\\NIBObee\\\\Kernel-Tank-MASTER\\\\Debug"
.LASF244:
	.string	"Process__"
.LASF74:
	.string	"operationMode"
.LASF138:
	.string	"current"
.global __do_copy_data
.global __do_clear_bss
