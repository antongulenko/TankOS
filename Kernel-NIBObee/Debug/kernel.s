	.file	"kernel.c"
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
	.uleb128 0x12
	.uleb128 0x2
	.byte	0x1
	.uleb128 0x2
	.string	"_INIT_RESET_CONDITION_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
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
	.uleb128 0x24
	.string	"_UTIL_DELAY_H_ 1"
	.byte	0x1
	.uleb128 0x27
	.string	"__HAS_DELAY_CYCLES 1"
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0xa
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
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x23
	.string	"_UTIL_DELAY_BASIC_H_ 1"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x61
	.string	"_AVR_IO_H_ "
	.byte	0x3
	.uleb128 0x63
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x24
	.string	"_AVR_SFR_DEFS_H_ 1"
	.byte	0x1
	.uleb128 0x79
	.string	"_SFR_ASM_COMPAT 0"
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x12
	.uleb128 0x14
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
	.uleb128 0x1d
	.ascii	"ZERO_STRUCT(variableName,structName) uint8_t *___tmpStructCo"
	.ascii	"ntent = variableName; for (int __i = 0; "
	.string	"__i < sizeof(structName); __i++) { ___tmpStructContent[i] = 0; }"
	.byte	0x1
	.uleb128 0x23
	.string	"__CONCAT__(A,B) A ##B"
	.byte	0x1
	.uleb128 0x26
	.ascii	"DEFINE_H"
	.string	"ANDLE(name) typedef struct name ##__ { uint16_t unused; } *name;"
	.byte	0x1
	.uleb128 0x29
	.string	"LOBYTE(x) (uint8_t)((uint16_t)x)"
	.byte	0x1
	.uleb128 0x2a
	.string	"HIBYTE(x) (uint8_t)(((uint16_t)x)>>8)"
	.byte	0x1
	.uleb128 0x2b
	.string	"MAKE_WORD(hi,lo) ((hi*0x100)+lo)"
	.byte	0x1
	.uleb128 0x2c
	.string	"AS_WORD(b) MAKE_WORD(b, 0)"
	.byte	0x1
	.uleb128 0x2e
	.string	"enable_interrupts() sei()"
	.byte	0x1
	.uleb128 0x2f
	.string	"disable_interrupts() cli()"
	.byte	0x1
	.uleb128 0x31
	.string	"delay(x) _delay_ms(x)"
	.byte	0x4
	.byte	0x1
	.uleb128 0x12
	.ascii	"KERNEL_INIT(functionName) void functionName ##_kernel_init()"
	.ascii	" __attribute__((naked, section(\".i"
	.string	"nit8\"))); void functionName ##_kernel_init() { functionName(); }"
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x9
	.string	"RESET_CONDITION_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x16
	.byte	0x1
	.uleb128 0x9
	.string	"LED_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x17
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x18
	.byte	0x4
	.byte	0x1
	.uleb128 0x28
	.ascii	"DEFINE_PIN(port,pin) Pin Pin ##port"
	.string	" ##pin ##_; const PPin Pin ##port ##pin = &Pin ##port ##pin ##_;"
	.byte	0x1
	.uleb128 0x2b
	.ascii	"DEFINE_PORT(port) P"
	.string	"ort Port ##port ##_; const PPort Port ##port = &Port ##port ##_;"
	.byte	0x1
	.uleb128 0x2e
	.ascii	"INIT_PIN(port,pin) Pin "
	.string	"##port ##pin ##_ = (Pin) { Port ##port, _BV(PIN ##port ##pin) };"
	.byte	0x1
	.uleb128 0x30
	.ascii	"INIT_PORT(port) Port"
	.string	" ##port ##_ = (Port) { &PORT ##port, &PIN ##port, &DDR ##port };"
	.byte	0x1
	.uleb128 0x32
	.ascii	"INIT_PORT_AND_PINS(port) INIT_PORT(port) INIT_PIN(port,0) IN"
	.ascii	"IT_PIN(port,1) INIT_PIN(port,2) INIT_PIN(port,3) INI"
	.string	"T_PIN(port,4) INIT_PIN(port,5) INIT_PIN(port,6) INIT_PIN(port,7)"
	.byte	0x1
	.uleb128 0x43
	.ascii	"DEFINE_PORT_AND_PINS(port) DEFINE_PORT(port) DEFINE_PIN(port"
	.ascii	",0) DEFINE_PIN(port,1) DEFINE_PIN(port,2) DEFINE_PIN(port,3)"
	.ascii	" DEFINE_PIN("
	.string	"port,4) DEFINE_PIN(port,5) DEFINE_PIN(port,6) DEFINE_PIN(port,7)"
	.byte	0x4
	.byte	0x1
	.uleb128 0x2e
	.ascii	"DEFINE_"
	.string	"LED(ledName) Led ledName ##_; const PLed ledName = &ledName ##_;"
	.byte	0x1
	.uleb128 0x31
	.ascii	"DEFINE_LED_GROUP(groupName) Led"
	.string	"Group groupName ##_; const PLedGroup groupName = &groupName ##_;"
	.byte	0x1
	.uleb128 0x34
	.ascii	"INIT_LED(led"
	.string	"Name,pinName) ledName ##_ = (Led) { pinName }; initLed(ledName);"
	.byte	0x1
	.uleb128 0x37
	.ascii	"INIT_LED_GROUP(groupName,groupArrayPointer"
	.string	",count) groupName ##_ = (LedGroup) { groupArrayPointer, count };"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x27
	.string	"_AVR_WDT_H_ "
	.byte	0x1
	.uleb128 0x63
	.string	"wdt_reset() __asm__ __volatile__ (\"wdr\")"
	.byte	0x1
	.uleb128 0x67
	.string	"_WD_PS3_MASK _BV(WDP3)"
	.byte	0x1
	.uleb128 0x6d
	.string	"_WD_CONTROL_REG WDTCSR"
	.byte	0x1
	.uleb128 0x75
	.string	"_WD_CHANGE_BIT WDCE"
	.byte	0x1
	.uleb128 0x146
	.ascii	"wdt_enable(value) __asm__ __volatile__ ( \"in __tmp_reg__,__"
	.ascii	"SREG__\" \"\\n\\t\" \"cli\" \"\\n\\t\" \"wdr\" \"\\n\\t\" \""
	.ascii	"sts %0,%1\" \"\\n\\t\" \"out __SREG__,__tmp_reg__\" \"\\n\\t"
	.ascii	"\" \"sts %0,%2\" \"\\n\\t\" : : \"M\" (_SFR_MEM_ADDR(_WD_CON"
	.ascii	"TROL_REG)), \"r\" (_BV(_WD_CHANGE_BIT) | _BV(WDE)), \"r\" (("
	.ascii	"uint8_t) ((value & 0x0"
	.string	"8 ? _WD_PS3_MASK : 0x00) | _BV(WDE) | (value & 0x07)) ) : \"r0\" )"
	.byte	0x1
	.uleb128 0x156
	.ascii	"wdt_disable() __asm__ __volatile__ ( \"in __tmp_reg__, __SRE"
	.ascii	"G__\" \"\\n\\t\" \"cli\" \"\\n\\t\" \"sts %0, %1\" \"\\n\\t\""
	.ascii	" \"sts %0, __zero_reg__\" \"\\n\\t\" \"out __SREG__,__tmp_re"
	.ascii	"g__\" \"\\n\\t\" : : \"M\" (_SFR_MEM_ADDR(_WD_CONTROL"
	.string	"_REG)), \"r\" ((uint8_t)(_BV(_WD_CHANGE_BIT) | _BV(WDE))) : \"r0\" )"
	.byte	0x1
	.uleb128 0x1a5
	.string	"WDTO_15MS 0"
	.byte	0x1
	.uleb128 0x1a9
	.string	"WDTO_30MS 1"
	.byte	0x1
	.uleb128 0x1ad
	.string	"WDTO_60MS 2"
	.byte	0x1
	.uleb128 0x1b1
	.string	"WDTO_120MS 3"
	.byte	0x1
	.uleb128 0x1b5
	.string	"WDTO_250MS 4"
	.byte	0x1
	.uleb128 0x1b9
	.string	"WDTO_500MS 5"
	.byte	0x1
	.uleb128 0x1bd
	.string	"WDTO_1S 6"
	.byte	0x1
	.uleb128 0x1c1
	.string	"WDTO_2S 7"
	.byte	0x1
	.uleb128 0x1d8
	.string	"WDTO_4S 8"
	.byte	0x1
	.uleb128 0x1f1
	.string	"WDTO_8S 9"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x9
	.string	"_BASE_BEFORE_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_H_ "
	.byte	0x1
	.uleb128 0xd
	.string	"TWI_DELAY 1"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x9
	.string	"KERNEL_BASE_H_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x9
	.string	"MILLISECOND_CLOCK_H_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.string	"MUTEX_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_BUTTON_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x9
	.string	"BUTTON_H_ "
	.byte	0x1
	.uleb128 0xe
	.string	"BUTTON_NORMAL 0"
	.byte	0x1
	.uleb128 0xf
	.string	"BUTTON_INVERTED _BV(0)"
	.byte	0x1
	.uleb128 0x10
	.string	"BUTTON_NEEDS_PULLUP _BV(1)"
	.byte	0x1
	.uleb128 0x11
	.string	"BUTTON_USE_PIN_CHANGE_INTERRUPT _BV(2)"
	.byte	0x1
	.uleb128 0x1d
	.ascii	"DEFINE_BUTTON(buttonName) Bu"
	.string	"tton buttonName ##_; const PButton buttonName = &buttonName ##_;"
	.byte	0x1
	.uleb128 0x20
	.ascii	"INIT_BUTTON(buttonName,pinName,flags,interruptNumber) button"
	.ascii	"Name ##_ = (Butt"
	.string	"on) { flags, pinName, interruptNumber }; initButton(buttonName);"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_LED_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_MOTOR_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x9
	.string	"TIMER_M1284P_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_H_ "
	.byte	0x1
	.uleb128 0x3a
	.string	"TIMER_NORMAL 0"
	.byte	0x1
	.uleb128 0x3b
	.string	"TIMER_ASYNCHRONOUS (1 << 1)"
	.byte	0x1
	.uleb128 0x3c
	.string	"TIMER_16bit (1 << 2)"
	.byte	0x1
	.uleb128 0x41
	.string	"TIMER_RESOLUTION_9bit (1 << 4)"
	.byte	0x1
	.uleb128 0x42
	.string	"TIMER_RESOLUTION_10bit (1 << 5)"
	.byte	0x1
	.uleb128 0x69
	.ascii	"DEFINE_TIMER_CONFIG(configName) TimerPai"
	.string	"r configName ##_; const PTimerPair configName = &configName ##_;"
	.byte	0x1
	.uleb128 0x6c
	.ascii	"DEFINE_TIMER(timerNam"
	.string	"e) Timer timerName ##_; const PTimer timerName = &timerName ##_;"
	.byte	0x1
	.uleb128 0x6f
	.ascii	"INIT_TIMER_CONFIG(configName,flags,regA,regB,interrReg) conf"
	.ascii	"igName ##_ = (Tim"
	.string	"erPair) {flags, (uint8_t*) &regA, (uint8_t*) &regB, &interrReg};"
	.byte	0x1
	.uleb128 0x71
	.ascii	"INIT_TIMER(timerName,configName,ocr,timerType,ocPin) timerNa"
	.ascii	"m"
	.string	"e ##_ = (Timer) {configName, (uint8_t*) &ocr, timerType, ocPin};"
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x27
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_M1284P_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x28
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
	.uleb128 0x40
	.ascii	"DEFINE_MOTOR(motorNam"
	.string	"e) Motor motorName ##_; const PMotor motorName = &motorName ##_;"
	.byte	0x1
	.uleb128 0x43
	.ascii	"INIT_MOTOR(motorName,flags,directionPin,pwmTimer) motorName "
	.ascii	"##_ = (Motor) { f"
	.string	"lags, directionPin, pwmTimer, 0, 0xFFFF }; initMotor(motorName);"
	.byte	0x1
	.uleb128 0x46
	.ascii	"DEFINE_2DirPins_MOTOR(motorName) Motor2Pins "
	.string	"motorName ##_; const PMotor motorName = (PMotor) &motorName ##_;"
	.byte	0x1
	.uleb128 0x49
	.ascii	"INIT_2DirPins_MOTOR(motorName,flags,directionPin,pwmTimer,di"
	.ascii	"rectionPin2) motorName ##_ = (Motor2Pins) { { flags | MOTOR_"
	.ascii	"TWO_DIR_PINS, directionP"
	.string	"in, pwmTimer }, directionPin2 }; initMotor2Pins(&motorName ##_);"
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x9
	.string	"MOTOR_SMOOTH_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x28
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2a
	.byte	0x4
	.byte	0x1
	.uleb128 0x2c
	.ascii	"DEFINE_SMOOTH_MOTOR(motorName) SmoothMot"
	.string	"or motorName ##_; const PSmoothMotor motorName = &motorName ##_;"
	.byte	0x1
	.uleb128 0x2f
	.ascii	"INIT_SMOOTH_MOTOR(motorName,realMotor,adjustmentStep) motorN"
	.ascii	"ame ##_ = (SmoothMotor) { realMotor, 0, FORWARD, 0, "
	.string	"FORWARD, FALSE, adjustmentStep, 0 }; initSmoothMotor(motorName);"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x2b
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_BGX1_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RAW_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2d
	.byte	0x4
	.byte	0x1
	.uleb128 0x44
	.string	"NUM_TWI_OPERATIONS 3"
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.string	"TWI_DEVICE bgx1"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RPC_CLIENT_H_ "
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x2f
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RPC_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x1a
	.ascii	"TWI_RPC_FUNCTION_VAR(funcName,operationByte,ArgStruct,ResStr"
	.ascii	"uct) void funcName(ArgStruct *parameters, uint16_t argSize, "
	.ascii	"ResStruct *out_result, uint16_t resultSize) { TWIBuffer argB"
	.ascii	"uf = (TWIBuffer) { (byte*) parameters, argSize }; TWIBuffer "
	.ascii	"resBuf = (TWIBuffer) { (byte*) out_result, resultSize }; twi"
	.ascii	"_r"
	.string	"pc(TWI_DEVICE, operationByte, argBuf, resBuf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x22
	.ascii	"TWI_RPC_FUNCTION_VARARGS(funcName,operationByte,ArgStruct,Re"
	.ascii	"sStruct) ResStruct funcName(ArgStruct *parameters, uint16_t "
	.ascii	"argSize) { TWIBuffer argBuf = (TWIBuffer) { (byte*) paramete"
	.ascii	"rs, argSize }; ResStruct result; TWIBuffer resBuf = (TWIBuff"
	.ascii	"er) { (byte*) &result, sizeof(ResStruct) }; twi_rpc(TWI_DEVI"
	.ascii	"CE, "
	.string	"operationByte, argBuf, resBuf); WAIT_FOR_TWI(); return result; }"
	.byte	0x1
	.uleb128 0x2c
	.ascii	"TWI_RPC_FUNCTION_VARRES(funcName,operationByte,ArgStruct,Res"
	.ascii	"Struct) void funcName(ArgStruct parameters, ResStruct *out_r"
	.ascii	"esult, uint16_t resultSize) { TWIBuffer argBuf = (TWIBuffer)"
	.ascii	" { (byte*) &parameters, sizeof(ArgStruct) }; TWIBuffer resBu"
	.ascii	"f = (TWIBuffer) { (byte*) out_result, resultSize }; twi_r"
	.string	"pc(TWI_DEVICE, operationByte, argBuf, resBuf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x34
	.ascii	"TWI_RPC_FUNCTION(funcName,operationByte,ArgStruct,ResStruct)"
	.ascii	" ResStruct funcName(ArgStruct parameters) { TWIBuffer argBuf"
	.ascii	" = (TWIBuffer) { (byte*) &parameters, sizeof(ArgStruct) }; R"
	.ascii	"esStruct result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &r"
	.ascii	"esult, sizeof(ResStruct) }; twi_rpc(TWI_DEVICE, "
	.string	"operationByte, argBuf, resBuf); WAIT_FOR_TWI(); return result; }"
	.byte	0x1
	.uleb128 0x42
	.ascii	"TWI_RPC_FUNCTION_VOID_VAR(funcName,operationByte,ArgStruct) "
	.ascii	"void funcName(ArgStruct *parameters, uint16_t argSize) { TWI"
	.ascii	"Buffer buf = (TWIBuffer) { (byte*) parameters, argSize }; t"
	.string	"wi_rpc_oneway(TWI_DEVICE, operationByte, buf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x49
	.ascii	"TWI_RPC_FUNCTION_VOID(funcName,operationByte,ArgStruct) void"
	.ascii	" funcName(ArgStruct parameters) { TWIBuffer buf = (TWIBuffer"
	.ascii	") { (byte*) &parameters, sizeof(ArgStruct) }; t"
	.string	"wi_rpc_oneway(TWI_DEVICE, operationByte, buf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x50
	.ascii	"TWI_RPC_FUNCTION_PVOID(funcName,operationByte,ArgStruct) voi"
	.ascii	"d funcName(ArgStruct parameters) { TWIBuffer buf = (TWIBuffe"
	.ascii	"r) { (byte*) &parameters, sizeof(ArgStruct) }; twi_rpc_"
	.string	"pseudo_oneway(TWI_DEVICE, operationByte, buf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x57
	.ascii	"TWI_RPC_FUNCTION_PVOID_VAR(funcName,operationByte,ArgStruct)"
	.ascii	" void funcName(ArgStruct *parameters, uint16_t argSize) { TW"
	.ascii	"IBuffer buf = (TWIBuffer) { (byte*) parameters, argSize }; t"
	.ascii	"wi_rpc_"
	.string	"pseudo_oneway(TWI_DEVICE, operationByte, buf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x63
	.ascii	"TWI_RPC_FUNCTION_NOARGS(funcName,operationByte,ResStruct) Re"
	.ascii	"sStruct funcName() { ResStruct result; TWIBuffer argBuf = (T"
	.ascii	"WIBuffer) { (byte*) NULL, 0 }; TWIBuffer resBuf = (TWIBuffer"
	.ascii	") { (byte*) &result, sizeof(ResStruct) }; twi_rpc(TWI_DEVICE"
	.ascii	", "
	.string	"operationByte, argBuf, resBuf); WAIT_FOR_TWI(); return result; }"
	.byte	0x1
	.uleb128 0x6d
	.ascii	"TWI_RPC_FUNCTION_NOARGS_VAR(funcName,operationByte,ResStruct"
	.ascii	") void funcName(ResStruct *out_result, uint16_t resultSize) "
	.ascii	"{ TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 }; TWIBuf"
	.ascii	"fer resBuf = (TWIBuffer) { (byte*) out_result, resultSize };"
	.ascii	" twi_r"
	.string	"pc(TWI_DEVICE, operationByte, argBuf, resBuf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x79
	.ascii	"TWI_RPC_FUNCTION_NOTIFY(funcName,operationByte) void funcNam"
	.ascii	"e() { TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 }; tw"
	.ascii	"i_"
	.string	"rpc_oneway(TWI_DEVICE, operationByte, argBuf); WAIT_FOR_TWI(); }"
	.byte	0x1
	.uleb128 0x80
	.ascii	"TWI_RPC_FUNCTION_PNOTIFY(funcName,operationByte) void funcNa"
	.ascii	"me() { TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 }; t"
	.ascii	"wi_rpc_pse"
	.string	"udo_oneway(TWI_DEVICE, operationByte, argBuf); WAIT_FOR_TWI(); }"
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x30
	.byte	0x1
	.uleb128 0x53
	.string	"__PGMSPACE_H_ 1"
	.byte	0x1
	.uleb128 0x55
	.string	"__need_size_t "
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x8
	.byte	0x2
	.uleb128 0xe9
	.string	"__need_size_t"
	.byte	0x2
	.uleb128 0x196
	.string	"__need_NULL"
	.byte	0x4
	.byte	0x1
	.uleb128 0x5f
	.string	"__ATTR_PROGMEM__ __attribute__((__progmem__))"
	.byte	0x1
	.uleb128 0x6d
	.string	"PROGMEM __ATTR_PROGMEM__"
	.byte	0x1
	.uleb128 0xff
	.ascii	"PSTR(s) (_"
	.string	"_extension__({static const char __c[] PROGMEM = (s); &__c[0];}))"
	.byte	0x1
	.uleb128 0x102
	.ascii	"__LPM_classic__(addr) (__extension__({ uint16_t __addr16 = ("
	.ascii	"uint16_t)(addr); uint8_t __result; __asm__ ( \"lpm\" \"\\n\\"
	.ascii	"t\" \"mov %0, r0\" \""
	.string	"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) : \"r0\" ); __result; }))"
	.byte	0x1
	.uleb128 0x111
	.ascii	"__LPM_enhanced__(addr) (__extension__({ uint16_t __addr16 = "
	.ascii	"(uint16_t)(addr); uint8_t __result; __asm__ ( \"lpm %"
	.string	"0, Z\" \"\\n\\t\" : \"=r\" (__result) : \"z\" (__addr16) ); __result; }))"
	.byte	0x1
	.uleb128 0x11e
	.ascii	"__LPM_word_classic__(addr) (__extension__({ uint16_t __addr1"
	.ascii	"6 = (uint16_t)(addr); uint16_t __result; __asm__ ( \"lpm\" \""
	.ascii	"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t"
	.ascii	"\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (_"
	.ascii	"_r"
	.string	"esult), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
	.byte	0x1
	.uleb128 0x130
	.ascii	"__LPM_word_enhanced__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint16_t __result; __asm__ ( \"lpm %A"
	.ascii	"0, Z+\" \"\\n\\t\" \"lpm %B0, Z\" \"\\n\\t\" : \"="
	.string	"r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
	.byte	0x1
	.uleb128 0x13e
	.ascii	"__LPM_dword_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); uint32_t __result; __asm__ ( \"lpm\" "
	.ascii	"\"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\"
	.ascii	"t\" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30"
	.ascii	", 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t"
	.ascii	"\" \"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, "
	.ascii	"r0\" \"\\n\\t\" : \"=r\" (__r"
	.string	"esult), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
	.byte	0x1
	.uleb128 0x156
	.ascii	"__LPM_dword_enhanced__(addr) (__extension__({ uint16_t __add"
	.ascii	"r16 = (uint16_t)(addr); uint32_t __result; __asm__ ( \"lpm %"
	.ascii	"A0, Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+"
	.ascii	"\" \"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"="
	.string	"r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
	.byte	0x1
	.uleb128 0x166
	.ascii	"__LPM_float_classic__(addr) (__extension__({ uint16_t __addr"
	.ascii	"16 = (uint16_t)(addr); float __result; __asm__ ( \"lpm\" \"\\"
	.ascii	"n\\t\" \"mov %A0, r0\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\""
	.ascii	" \"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"adiw r30, 1"
	.ascii	"\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %C0, r0\" \"\\n\\t\" "
	.ascii	"\"adiw r30, 1\" \"\\n\\t\" \"lpm\" \"\\n\\t\" \"mov %D0, r0\""
	.ascii	" \"\\n\\t\" : \"=r\" (__r"
	.string	"esult), \"=z\" (__addr16) : \"1\" (__addr16) : \"r0\" ); __result; }))"
	.byte	0x1
	.uleb128 0x17e
	.ascii	"__LPM_float_enhanced__(addr) (__extension__({ uint16_t __add"
	.ascii	"r16 = (uint16_t)(addr); float __result; __asm__ ( \"lpm %A0,"
	.ascii	" Z+\" \"\\n\\t\" \"lpm %B0, Z+\" \"\\n\\t\" \"lpm %C0, Z+\" "
	.ascii	"\"\\n\\t\" \"lpm %D0, Z\" \"\\n\\t\" : \"="
	.string	"r\" (__result), \"=z\" (__addr16) : \"1\" (__addr16) ); __result; }))"
	.byte	0x1
	.uleb128 0x18f
	.string	"__LPM(addr) __LPM_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x190
	.string	"__LPM_word(addr) __LPM_word_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x191
	.string	"__LPM_dword(addr) __LPM_dword_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x192
	.string	"__LPM_float(addr) __LPM_float_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x1a0
	.ascii	"pg"
	.string	"m_read_byte_near(address_short) __LPM((uint16_t)(address_short))"
	.byte	0x1
	.uleb128 0x1a8
	.ascii	"pgm_rea"
	.string	"d_word_near(address_short) __LPM_word((uint16_t)(address_short))"
	.byte	0x1
	.uleb128 0x1b0
	.ascii	"pgm_read_"
	.string	"dword_near(address_short) __LPM_dword((uint16_t)(address_short))"
	.byte	0x1
	.uleb128 0x1b9
	.ascii	"pgm_read_"
	.string	"float_near(address_short) __LPM_float((uint16_t)(address_short))"
	.byte	0x1
	.uleb128 0x1c4
	.ascii	"__ELPM_classic__(addr) (__extension__({ uint32_t __addr32 = "
	.ascii	"(uint32_t)(addr); uint8_t __result; __asm__ ( \"out %2, %C1\""
	.ascii	" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" \"mov r30, %A1\" \"\\"
	.ascii	"n\\t\" \"elpm\" \"\\n\\t\" \"mov %0, r0\" \"\\n\\t\" : \"=r\""
	.ascii	" (__result) : \"r\" (__addr32),"
	.string	" \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x1d7
	.ascii	"__ELPM_enhanced__(addr) (__extension__({ uint32_t __addr32 ="
	.ascii	" (uint32_t)(addr); uint8_t __result; __asm__ ( \"out %2, %C1"
	.ascii	"\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %0, Z+\" \""
	.ascii	"\\n\\t\" : \"=r\" (__result) : \"r\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x1e8
	.ascii	"__ELPM_xmega__(addr) (__extension__({ uint32_t __addr32 = (u"
	.ascii	"int32_t)(addr); uint8_t __result; __asm__ ( \"in __tmp_reg__"
	.ascii	", %2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r30, %1\""
	.ascii	" \"\\n\\t\" \"elpm %0, Z+\" \"\\n\\t\" \"out %2, __tmp_reg__"
	.ascii	"\" : \"=r\" (__result) : \"r\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x1fb
	.ascii	"__ELPM_word_classic__(addr) (__extension__({ uint32_t __addr"
	.ascii	"32 = (uint32_t)(addr); uint16_t __result; __asm__ ( \"out %2"
	.ascii	", %C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" \"mov r30, %A"
	.ascii	"1\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\""
	.ascii	" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r"
	.ascii	"0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"elp"
	.ascii	"m\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" : \"=r\" (__result"
	.ascii	") : \"r\" (__addr32),"
	.string	" \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x214
	.ascii	"__ELPM_word_enhanced__(addr) (__extension__({ uint32_t __add"
	.ascii	"r32 = (uint32_t)(addr); uint16_t __result; __asm__ ( \"out %"
	.ascii	"2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, "
	.ascii	"Z+\" \"\\n\\t\" \"elpm %B0, Z\" \"\\n\\t\" : \"=r\" (__resul"
	.ascii	"t) : \"r\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x226
	.ascii	"__ELPM_word_xmega__(addr) (__extension__({ uint32_t __addr32"
	.ascii	" = (uint32_t)(addr); uint16_t __result; __asm__ ( \"in __tmp"
	.ascii	"_reg__, %2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r3"
	.ascii	"0, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z"
	.ascii	"\" \"\\n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : "
	.ascii	"\"r\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x23a
	.ascii	"__ELPM_dword_classic__(addr) (__extension__({ uint32_t __add"
	.ascii	"r32 = (uint32_t)(addr); uint32_t __result; __asm__ ( \"out %"
	.ascii	"2, %C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" \"mov r30, %"
	.ascii	"A1\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t"
	.ascii	"\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc"
	.ascii	" r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"e"
	.ascii	"lpm\" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"in r0, %2\" \""
	.ascii	"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __zero_reg__\""
	.ascii	" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \""
	.ascii	"mov %C0, r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30"
	.ascii	", 1\" \"\\n\\t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %"
	.ascii	"2, r0\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n"
	.ascii	"\\t\" : \"=r\" (__result) : \"r\" (__addr32),"
	.string	" \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x25f
	.ascii	"__ELPM_dword_enhanced__(addr) (__extension__({ uint32_t __ad"
	.ascii	"dr32 = (uint32_t)(addr); uint32_t __result; __asm__ ( \"out "
	.ascii	"%2, %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0,"
	.ascii	" Z+\" \"\\n\\t\" \"elpm %B0, Z+\" \"\\n\\t\" \"elpm %C0, Z+\""
	.ascii	" \"\\n\\t\" \"elpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result) :"
	.ascii	" \"r\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x273
	.ascii	"__ELPM_dword_xmega__(addr) (__extension__({ uint32_t __addr3"
	.ascii	"2 = (uint32_t)(addr); uint32_t __result; __asm__ ( \"in __tm"
	.ascii	"p_reg__, %2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r"
	.ascii	"30, %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, "
	.ascii	"Z+\" \"\\n\\t\" \"elpm %C0, Z+\" \"\\n\\t\" \"elpm %D0, Z\" "
	.ascii	"\"\\n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : \"r"
	.ascii	"\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x289
	.ascii	"__ELPM_float_classic__(addr) (__extension__({ uint32_t __add"
	.ascii	"r32 = (uint32_t)(addr); float __result; __asm__ ( \"out %2, "
	.ascii	"%C1\" \"\\n\\t\" \"mov r31, %B1\" \"\\n\\t\" \"mov r30, %A1\""
	.ascii	" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %A0, r0\" \"\\n\\t\" \""
	.ascii	"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, "
	.ascii	"__zero_reg__\" \"\\n\\t\" \"out %2, r0\" \"\\n\\t\" \"elpm\""
	.ascii	" \"\\n\\t\" \"mov %B0, r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\"
	.ascii	"t\" \"adiw r30, 1\" \"\\n\\t\" \"adc r0, __zero_reg__\" \"\\"
	.ascii	"n\\t\" \"out %2, r0\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %"
	.ascii	"C0, r0\" \"\\n\\t\" \"in r0, %2\" \"\\n\\t\" \"adiw r30, 1\""
	.ascii	" \"\\n\\t\" \"adc r0, __zero_reg__\" \"\\n\\t\" \"out %2, r0"
	.ascii	"\" \"\\n\\t\" \"elpm\" \"\\n\\t\" \"mov %D0, r0\" \"\\n\\t\""
	.ascii	" : \"=r\" (__result) : \"r\" (__addr32),"
	.string	" \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r0\", \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x2ae
	.ascii	"__ELPM_float_enhanced__(addr) (__extension__({ uint32_t __ad"
	.ascii	"dr32 = (uint32_t)(addr); float __result; __asm__ ( \"out %2,"
	.ascii	" %C1\" \"\\n\\t\" \"movw r30, %1\" \"\\n\\t\" \"elpm %A0, Z+"
	.ascii	"\" \"\\n\\t\" \"elpm %B0, Z+\" \"\\n\\t\" \"elpm %C0, Z+\" \""
	.ascii	"\\n\\t\" \"elpm %D0, Z\" \"\\n\\t\" : \"=r\" (__result) : \""
	.ascii	"r\" (__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x2c2
	.ascii	"__ELPM_float_xmega__(addr) (__extension__({ uint32_t __addr3"
	.ascii	"2 = (uint32_t)(addr); float __result; __asm__ ( \"in __tmp_r"
	.ascii	"eg__, %2\" \"\\n\\t\" \"out %2, %C1\" \"\\n\\t\" \"movw r30,"
	.ascii	" %1\" \"\\n\\t\" \"elpm %A0, Z+\" \"\\n\\t\" \"elpm %B0, Z+\""
	.ascii	" \"\\n\\t\" \"elpm %C0, Z+\" \"\\n\\t\" \"elpm %D0, Z\" \"\\"
	.ascii	"n\\t\" \"out %2, __tmp_reg__\" : \"=r\" (__result) : \"r\" ("
	.ascii	"__ad"
	.string	"dr32), \"I\" (_SFR_IO_ADDR(RAMPZ)) : \"r30\", \"r31\" ); __result; }))"
	.byte	0x1
	.uleb128 0x2e8
	.string	"__ELPM(addr) __ELPM_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x2e9
	.string	"__ELPM_word(addr) __ELPM_word_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x2ea
	.string	"__ELPM_dword(addr) __ELPM_dword_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x2eb
	.string	"__ELPM_float(addr) __ELPM_float_enhanced__(addr)"
	.byte	0x1
	.uleb128 0x300
	.string	"pgm_read_byte_far(address_long) __ELPM((uint32_t)(address_long))"
	.byte	0x1
	.uleb128 0x309
	.ascii	"pgm_r"
	.string	"ead_word_far(address_long) __ELPM_word((uint32_t)(address_long))"
	.byte	0x1
	.uleb128 0x312
	.ascii	"pgm_rea"
	.string	"d_dword_far(address_long) __ELPM_dword((uint32_t)(address_long))"
	.byte	0x1
	.uleb128 0x31b
	.ascii	"pgm_rea"
	.string	"d_float_far(address_long) __ELPM_float((uint32_t)(address_long))"
	.byte	0x1
	.uleb128 0x326
	.string	"pgm_read_byte(address_short) pgm_read_byte_near(address_short)"
	.byte	0x1
	.uleb128 0x32f
	.string	"pgm_read_word(address_short) pgm_read_word_near(address_short)"
	.byte	0x1
	.uleb128 0x338
	.string	"pgm_read_dword(address_short) pgm_read_dword_near(address_short)"
	.byte	0x1
	.uleb128 0x341
	.string	"pgm_read_float(address_short) pgm_read_float_near(address_short)"
	.byte	0x1
	.uleb128 0x34a
	.string	"PGM_P const prog_char *"
	.byte	0x1
	.uleb128 0x353
	.string	"PGM_VOID_P const prog_void *"
	.byte	0x1
	.uleb128 0x378
	.ascii	"pgm_get_far_address(var) ({ uint_farptr_t tmp; __asm__ __vol"
	.ascii	"atile__( \"ldi\t%A0, lo8(%1)\" \"\\n\\t\" \"ldi\t%B0, hi8(%1"
	.ascii	")\" \"\\n\\t\" \"ldi\t%C0, hh8(%1)"
	.string	"\" \"\\n\\t\" \"clr\t%D0\" \"\\n\\t\" : \"=d\" (tmp) : \"p\" (&(var)) ); tmp; })"
	.byte	0x4
	.byte	0x1
	.uleb128 0x12
	.string	"BGX1_VERSION 0x0103"
	.byte	0x1
	.uleb128 0x71
	.string	"BGX1_BTN_1 _BV(0)"
	.byte	0x1
	.uleb128 0x72
	.string	"BGX1_BTN_2 _BV(1)"
	.byte	0x1
	.uleb128 0x73
	.string	"BGX1_BTN_3 _BV(2)"
	.byte	0x1
	.uleb128 0x74
	.string	"BGX1_BTN_4 _BV(3)"
	.byte	0x1
	.uleb128 0x76
	.string	"BGX1_LED_1 _BV(0)"
	.byte	0x1
	.uleb128 0x77
	.string	"BGX1_LED_2 _BV(1)"
	.byte	0x1
	.uleb128 0x78
	.string	"BGX1_LED_3 _BV(2)"
	.byte	0x1
	.uleb128 0x79
	.string	"BGX1_LED_4 _BV(3)"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x11
	.string	"TWI_BIT_RATE_VALUE 17"
	.byte	0x1
	.uleb128 0x14
	.string	"TWI_PRESCALER_MASK 0"
	.byte	0x1
	.uleb128 0x15
	.string	"TWI_Buffer_Size 255"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x31
	.byte	0x1
	.uleb128 0x2
	.string	"_TIMER_KERNEL_KERNEL_ "
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x32
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_M1284P_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x33
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x25
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x9
	.string	"_PORT_M1284P_KERNEL_ "
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x9
	.string	"CLOCKISR_A TIMER3_COMPA_vect"
	.byte	0x1
	.uleb128 0xa
	.string	"CLOCKISR_B TIMER3_COMPB_vect"
	.byte	0x1
	.uleb128 0xb
	.string	"CLOCKTIMER_A Timer3A"
	.byte	0x1
	.uleb128 0xc
	.string	"CLOCKTIMER_B Timer3B"
	.byte	0x1
	.uleb128 0x13
	.string	"MILLISECOND_TIMER_VALUE ((uint16_t) 2500)"
	.byte	0x4
	.byte	0x1
	.uleb128 0x1c
	.string	"CLOCKISR CLOCKISR_A"
	.byte	0x1
	.uleb128 0x1d
	.string	"TIMER_INTERRUPT_A "
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x35
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_BASE_KERNEL_ "
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x4
	.byte	0x1
	.uleb128 0x18
	.string	"TIMER_TICK_ISR_NAKED ISR(CLOCKISR, __attribute__((naked)))"
	.byte	0x1
	.uleb128 0x19
	.string	"TIMER_TICK_ISR ISR(CLOCKISR)"
	.byte	0x1
	.uleb128 0x20
	.string	"TIMER_TICK_ACTION milliseconds_running++; in_timer_tick();"
	.byte	0x4
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x36
	.byte	0x1
	.uleb128 0x2
	.string	"_SIMPLE_TIMER_KERNEL_ "
	.byte	0x4
	.byte	0x1
	.uleb128 0x25
	.string	"INITIALIZE_SCHEDULER "
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x37
	.byte	0x1
	.uleb128 0x9
	.string	"_ATOMIC_MUTEX_KERNEL_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x38
	.byte	0x1
	.uleb128 0x2
	.string	"_SLEEP_AFTER_MAIN_KERNEL_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x2
	.string	"IDLE_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x3a
	.byte	0x1
	.uleb128 0x9
	.string	"_NIBOBEE_LED_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3b
	.byte	0x1
	.uleb128 0x9
	.string	"_LED_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x3c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x9
	.string	"_NIBOBEE_BUTTON_KERNEL_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x9
	.string	"_BUTTON_KERNEL_ "
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x3f
	.byte	0x1
	.uleb128 0x9
	.string	"EXTERNAL_INTERRUPTS_H_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x40
	.byte	0x4
	.byte	0x1
	.uleb128 0x11
	.string	"NIBOBEE_BUTTON (BUTTON_NEEDS_PULLUP | BUTTON_INVERTED)"
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x9
	.string	"_NIBOBEE_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x42
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_KERNEL_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x43
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x44
	.byte	0x1
	.uleb128 0x2
	.string	"_MOTOR_SMOOTH_KERNEL_KERNEL_ "
	.byte	0x1
	.uleb128 0x4
	.string	"SMOOTH_MOTOR_A LeftMotor"
	.byte	0x1
	.uleb128 0x5
	.string	"SMOOTH_MOTOR_B RightMotor"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x45
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_SMOOTH_PAIR_KERNEL_ "
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x46
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_SMOOTH_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x10
	.string	"TIMER_INTERRUPT_B "
	.byte	0x1
	.uleb128 0x19
	.string	"MOTOR_ADJUSTMENT_STEP 300"
	.byte	0x4
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x47
	.byte	0x1
	.uleb128 0x2
	.string	"_TWI_RPC_KERNEL_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x2
	.string	"_TWI_RAW_KERNEL_ "
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x49
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
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x4a
	.byte	0x1
	.uleb128 0x23
	.string	"_UTIL_ATOMIC_H_ 1"
	.byte	0x1
	.uleb128 0xcd
	.ascii	"ATOMIC_BLOCK("
	.string	"type) for ( type, __ToDo = __iCliRetVal(); __ToDo ; __ToDo = 0 )"
	.byte	0x1
	.uleb128 0xe2
	.ascii	"NONATOMIC_BLOCK("
	.string	"type) for ( type, __ToDo = __iSeiRetVal(); __ToDo ; __ToDo = 0 )"
	.byte	0x1
	.uleb128 0xf4
	.ascii	"ATOMIC_RESTORESTATE u"
	.string	"int8_t sreg_save __attribute__((__cleanup__(__iRestore))) = SREG"
	.byte	0x1
	.uleb128 0x109
	.ascii	"ATOMIC_FORCEON"
	.string	" uint8_t sreg_save __attribute__((__cleanup__(__iSeiParam))) = 0"
	.byte	0x1
	.uleb128 0x11b
	.ascii	"NONATOMIC_RESTORESTATE u"
	.string	"int8_t sreg_save __attribute__((__cleanup__(__iRestore))) = SREG"
	.byte	0x1
	.uleb128 0x130
	.ascii	"NONATOMIC_FORCEOFF"
	.string	" uint8_t sreg_save __attribute__((__cleanup__(__iCliParam))) = 0"
	.byte	0x4
	.byte	0x1
	.uleb128 0x13
	.string	"TWI_DEBUG_ERROR(error_code) "
	.byte	0x1
	.uleb128 0x16
	.string	"TWI_DEBUG_BYTE_RECEIVED(data) "
	.byte	0x1
	.uleb128 0x19
	.string	"TWI_DEBUG_BYTE_SENT(data) "
	.byte	0x1
	.uleb128 0x1c
	.string	"TWI_DEBUG_INTERRUPT(status) "
	.byte	0x1
	.uleb128 0x51
	.string	"twi_base TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWIE)"
	.byte	0x1
	.uleb128 0x52
	.string	"twi_start() twi_base | _BV(TWSTA)"
	.byte	0x1
	.uleb128 0x53
	.string	"twi_ack() twi_base | _BV(TWEA)"
	.byte	0x1
	.uleb128 0x54
	.string	"twi_continue() twi_base"
	.byte	0x1
	.uleb128 0x55
	.string	"twi_send_ack(data) TWDR = data; twi_ack()"
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x4b
	.byte	0x1
	.uleb128 0x29
	.string	"_STRING_H_ 1"
	.byte	0x1
	.uleb128 0x2b
	.string	"__need_NULL "
	.byte	0x1
	.uleb128 0x2c
	.string	"__need_size_t "
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x2
	.uleb128 0xe9
	.string	"__need_size_t"
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
	.uleb128 0x5b
	.ascii	"_FFS(x) (1 + (((x) & 1) == 0) + (((x) & 3) == 0) + (((x) & 7"
	.ascii	") == 0) + (((x) & 017) == 0) + (((x) & 037) == 0) + (((x) & "
	.ascii	"077) == 0) + (((x) & 0177) == 0) + (((x) & 0377) == 0) + ((("
	.ascii	"x) & 0777) == 0) + (((x) & 01777) == 0) + (((x) & 03777) == "
	.ascii	"0) + (((x) & 07777) == 0) + (((x) & 017777) == 0) + (((x) & "
	.ascii	"0377"
	.string	"77) == 0) + (((x) & 077777) == 0) - (((x) & 0177777) == 0) * 16)"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x4c
	.byte	0x4
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x4d
	.byte	0x1
	.uleb128 0x9
	.string	"_BASE_AFTER_KERNEL_ "
	.byte	0x4
	.byte	0x4
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.text
	.type	twi_stop, @function
twi_stop:
.LFB74:
.LM1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM2:
	ldi r24,lo8(-107)
	sts 188,r24
.LM3:
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
/* epilogue start */
.LM4:
	ret
.LFE74:
	.size	twi_stop, .-twi_stop
	.type	twi_ack_receive, @function
twi_ack_receive:
.LFB79:
.LM5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM6:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	adiw r24,1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brsh .L3
.LM7:
	ldi r24,lo8(-59)
	rjmp .L5
.L3:
.LM8:
	ldi r24,lo8(-123)
.L5:
	sts 188,r24
	ret
.LFE79:
	.size	twi_ack_receive, .-twi_ack_receive
	.type	twi_read_byte, @function
twi_read_byte:
.LFB80:
.LM9:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM10:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brsh .L6
.LM11:
	lds r18,187
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	st Z,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
.L6:
	ret
.LFE80:
	.size	twi_read_byte, .-twi_read_byte
	.type	fillSendBuffer, @function
fillSendBuffer:
.LFB88:
.LM12:
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM13:
	movw r18,r22
.LM14:
	lds r30,sendBuffer
	lds r31,sendBuffer+1
	st Z,r24
.LM15:
	movw r24,r22
.LVL1:
	adiw r24,1
	sts sendBuffer+2+1,r25
	sts sendBuffer+2,r24
.LM16:
	lds r30,sendBuffer
	lds r31,sendBuffer+1
	adiw r30,1
	movw r24,r30
	movw r22,r20
	movw r20,r18
.LVL2:
	call memcpy
.LVL3:
/* epilogue start */
.LM17:
	ret
.LFE88:
	.size	fillSendBuffer, .-fillSendBuffer
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
.LFB4:
.LM18:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM19:
	in r24,84-32
	sts current_reset_status,r24
.LM20:
	out 84-32,__zero_reg__
.LM21:
	ldi r24,lo8(24)
/* #APP */
 ;  25 "..\..\AntonAvrLib/kernel/reset_condition.kernel.h" 1
	in __tmp_reg__, __SREG__
	cli
	sts 96, r24
	sts 96, __zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
/* epilogue start */
.LM22:
/* #NOAPP */
	ret
.LFE4:
	.size	init_reset_condition, .-init_reset_condition
	.section	.init8,"ax",@progbits
.global	init_reset_condition_kernel_init
	.type	init_reset_condition_kernel_init, @function
init_reset_condition_kernel_init:
.LFB5:
.LSM0:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM1:
	call init_reset_condition
/* epilogue start */
.LFE5:
	.size	init_reset_condition_kernel_init, .-init_reset_condition_kernel_init
	.text
.global	getResetStatus
	.type	getResetStatus, @function
getResetStatus:
.LFB6:
.LM23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM24:
	lds r24,current_reset_status
/* epilogue start */
	ret
.LFE6:
	.size	getResetStatus, .-getResetStatus
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
.LFB31:
.LM25:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM26:
	ldi r26,lo8(PortA_)
	ldi r27,hi8(PortA_)
	ldi r30,lo8(C.53.4066)
	ldi r31,hi8(C.53.4066)
	ldi r24,lo8(6)
.L14:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L14
	ldi r24,lo8(PortA_)
	ldi r25,hi8(PortA_)
	sts PinA0_+1,r25
	sts PinA0_,r24
	ldi r18,lo8(1)
	sts PinA0_+2,r18
	sts PinA1_+1,r25
	sts PinA1_,r24
	ldi r18,lo8(2)
	sts PinA1_+2,r18
	sts PinA2_+1,r25
	sts PinA2_,r24
	ldi r18,lo8(4)
	sts PinA2_+2,r18
	sts PinA3_+1,r25
	sts PinA3_,r24
	ldi r18,lo8(8)
	sts PinA3_+2,r18
	sts PinA4_+1,r25
	sts PinA4_,r24
	ldi r18,lo8(16)
	sts PinA4_+2,r18
	sts PinA5_+1,r25
	sts PinA5_,r24
	ldi r18,lo8(32)
	sts PinA5_+2,r18
	sts PinA6_+1,r25
	sts PinA6_,r24
	ldi r18,lo8(64)
	sts PinA6_+2,r18
	sts PinA7_+1,r25
	sts PinA7_,r24
	ldi r24,lo8(-128)
	sts PinA7_+2,r24
.LM27:
	ldi r26,lo8(PortB_)
	ldi r27,hi8(PortB_)
	ldi r30,lo8(C.54.4067)
	ldi r31,hi8(C.54.4067)
	ldi r24,lo8(6)
.L15:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L15
	ldi r24,lo8(PortB_)
	ldi r25,hi8(PortB_)
	sts PinB0_+1,r25
	sts PinB0_,r24
	ldi r18,lo8(1)
	sts PinB0_+2,r18
	sts PinB1_+1,r25
	sts PinB1_,r24
	ldi r18,lo8(2)
	sts PinB1_+2,r18
	sts PinB2_+1,r25
	sts PinB2_,r24
	ldi r18,lo8(4)
	sts PinB2_+2,r18
	sts PinB3_+1,r25
	sts PinB3_,r24
	ldi r18,lo8(8)
	sts PinB3_+2,r18
	sts PinB4_+1,r25
	sts PinB4_,r24
	ldi r18,lo8(16)
	sts PinB4_+2,r18
	sts PinB5_+1,r25
	sts PinB5_,r24
	ldi r18,lo8(32)
	sts PinB5_+2,r18
	sts PinB6_+1,r25
	sts PinB6_,r24
	ldi r18,lo8(64)
	sts PinB6_+2,r18
	sts PinB7_+1,r25
	sts PinB7_,r24
	ldi r24,lo8(-128)
	sts PinB7_+2,r24
.LM28:
	ldi r26,lo8(PortC_)
	ldi r27,hi8(PortC_)
	ldi r30,lo8(C.55.4068)
	ldi r31,hi8(C.55.4068)
	ldi r24,lo8(6)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r24,lo8(PortC_)
	ldi r25,hi8(PortC_)
	sts PinC0_+1,r25
	sts PinC0_,r24
	ldi r18,lo8(1)
	sts PinC0_+2,r18
	sts PinC1_+1,r25
	sts PinC1_,r24
	ldi r18,lo8(2)
	sts PinC1_+2,r18
	sts PinC2_+1,r25
	sts PinC2_,r24
	ldi r18,lo8(4)
	sts PinC2_+2,r18
	sts PinC3_+1,r25
	sts PinC3_,r24
	ldi r18,lo8(8)
	sts PinC3_+2,r18
	sts PinC4_+1,r25
	sts PinC4_,r24
	ldi r18,lo8(16)
	sts PinC4_+2,r18
	sts PinC5_+1,r25
	sts PinC5_,r24
	ldi r18,lo8(32)
	sts PinC5_+2,r18
	sts PinC6_+1,r25
	sts PinC6_,r24
	ldi r18,lo8(64)
	sts PinC6_+2,r18
	sts PinC7_+1,r25
	sts PinC7_,r24
	ldi r24,lo8(-128)
	sts PinC7_+2,r24
.LM29:
	ldi r26,lo8(PortD_)
	ldi r27,hi8(PortD_)
	ldi r30,lo8(C.56.4069)
	ldi r31,hi8(C.56.4069)
	ldi r24,lo8(6)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r24,lo8(PortD_)
	ldi r25,hi8(PortD_)
	sts PinD0_+1,r25
	sts PinD0_,r24
	ldi r18,lo8(1)
	sts PinD0_+2,r18
	sts PinD1_+1,r25
	sts PinD1_,r24
	ldi r18,lo8(2)
	sts PinD1_+2,r18
	sts PinD2_+1,r25
	sts PinD2_,r24
	ldi r18,lo8(4)
	sts PinD2_+2,r18
	sts PinD3_+1,r25
	sts PinD3_,r24
	ldi r18,lo8(8)
	sts PinD3_+2,r18
	sts PinD4_+1,r25
	sts PinD4_,r24
	ldi r18,lo8(16)
	sts PinD4_+2,r18
	sts PinD5_+1,r25
	sts PinD5_,r24
	ldi r18,lo8(32)
	sts PinD5_+2,r18
	sts PinD6_+1,r25
	sts PinD6_,r24
	ldi r18,lo8(64)
	sts PinD6_+2,r18
	sts PinD7_+1,r25
	sts PinD7_,r24
	ldi r24,lo8(-128)
	sts PinD7_+2,r24
/* epilogue start */
.LM30:
	ret
.LFE31:
	.size	init_ports_m1284P, .-init_ports_m1284P
	.section	.init8
.global	init_ports_m1284P_kernel_init
	.type	init_ports_m1284P_kernel_init, @function
init_ports_m1284P_kernel_init:
.LFB32:
.LSM2:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM3:
	call init_ports_m1284P
/* epilogue start */
.LFE32:
	.size	init_ports_m1284P_kernel_init, .-init_ports_m1284P_kernel_init
	.text
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
.LFB33:
.LM31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM32:
	ldi r26,lo8(Timer0_)
	ldi r27,hi8(Timer0_)
	ldi r30,lo8(C.49.4062)
	ldi r31,hi8(C.49.4062)
	ldi r24,lo8(7)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
.LM33:
	ldi r26,lo8(Timer1_)
	ldi r27,hi8(Timer1_)
	ldi r30,lo8(C.50.4063)
	ldi r31,hi8(C.50.4063)
	ldi r24,lo8(7)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
.LM34:
	ldi r26,lo8(Timer2_)
	ldi r27,hi8(Timer2_)
	ldi r30,lo8(C.51.4064)
	ldi r31,hi8(C.51.4064)
	ldi r24,lo8(7)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
.LM35:
	ldi r26,lo8(Timer3_)
	ldi r27,hi8(Timer3_)
	ldi r30,lo8(C.52.4065)
	ldi r31,hi8(C.52.4065)
	ldi r24,lo8(7)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
.LM36:
	ldi r24,lo8(Timer0_)
	ldi r25,hi8(Timer0_)
	sts Timer0A_+1,r25
	sts Timer0A_,r24
	ldi r18,lo8(71)
	ldi r19,hi8(71)
	sts Timer0A_+2+1,r19
	sts Timer0A_+2,r18
	sts Timer0A_+4+1,__zero_reg__
	sts Timer0A_+4,__zero_reg__
	ldi r18,lo8(PinB3_)
	ldi r19,hi8(PinB3_)
	sts Timer0A_+6+1,r19
	sts Timer0A_+6,r18
.LM37:
	sts Timer0B_+1,r25
	sts Timer0B_,r24
	ldi r24,lo8(72)
	ldi r25,hi8(72)
	sts Timer0B_+2+1,r25
	sts Timer0B_+2,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts Timer0B_+4+1,r25
	sts Timer0B_+4,r24
	ldi r18,lo8(PinB4_)
	ldi r19,hi8(PinB4_)
	sts Timer0B_+6+1,r19
	sts Timer0B_+6,r18
.LM38:
	ldi r18,lo8(Timer1_)
	ldi r19,hi8(Timer1_)
	sts Timer1A_+1,r19
	sts Timer1A_,r18
	ldi r20,lo8(136)
	ldi r21,hi8(136)
	sts Timer1A_+2+1,r21
	sts Timer1A_+2,r20
	sts Timer1A_+4+1,__zero_reg__
	sts Timer1A_+4,__zero_reg__
	ldi r20,lo8(PinD5_)
	ldi r21,hi8(PinD5_)
	sts Timer1A_+6+1,r21
	sts Timer1A_+6,r20
.LM39:
	sts Timer1B_+1,r19
	sts Timer1B_,r18
	ldi r18,lo8(138)
	ldi r19,hi8(138)
	sts Timer1B_+2+1,r19
	sts Timer1B_+2,r18
	sts Timer1B_+4+1,r25
	sts Timer1B_+4,r24
	ldi r18,lo8(PinD4_)
	ldi r19,hi8(PinD4_)
	sts Timer1B_+6+1,r19
	sts Timer1B_+6,r18
.LM40:
	ldi r18,lo8(Timer2_)
	ldi r19,hi8(Timer2_)
	sts Timer2A_+1,r19
	sts Timer2A_,r18
	ldi r20,lo8(179)
	ldi r21,hi8(179)
	sts Timer2A_+2+1,r21
	sts Timer2A_+2,r20
	sts Timer2A_+4+1,__zero_reg__
	sts Timer2A_+4,__zero_reg__
	ldi r20,lo8(PinD7_)
	ldi r21,hi8(PinD7_)
	sts Timer2A_+6+1,r21
	sts Timer2A_+6,r20
.LM41:
	sts Timer2B_+1,r19
	sts Timer2B_,r18
	ldi r18,lo8(180)
	ldi r19,hi8(180)
	sts Timer2B_+2+1,r19
	sts Timer2B_+2,r18
	sts Timer2B_+4+1,r25
	sts Timer2B_+4,r24
	ldi r18,lo8(PinD6_)
	ldi r19,hi8(PinD6_)
	sts Timer2B_+6+1,r19
	sts Timer2B_+6,r18
.LM42:
	ldi r18,lo8(Timer3_)
	ldi r19,hi8(Timer3_)
	sts Timer3A_+1,r19
	sts Timer3A_,r18
	ldi r20,lo8(152)
	ldi r21,hi8(152)
	sts Timer3A_+2+1,r21
	sts Timer3A_+2,r20
	sts Timer3A_+4+1,__zero_reg__
	sts Timer3A_+4,__zero_reg__
	ldi r20,lo8(PinB6_)
	ldi r21,hi8(PinB6_)
	sts Timer3A_+6+1,r21
	sts Timer3A_+6,r20
.LM43:
	sts Timer3B_+1,r19
	sts Timer3B_,r18
	ldi r18,lo8(154)
	ldi r19,hi8(154)
	sts Timer3B_+2+1,r19
	sts Timer3B_+2,r18
	sts Timer3B_+4+1,r25
	sts Timer3B_+4,r24
	ldi r24,lo8(PinB7_)
	ldi r25,hi8(PinB7_)
	sts Timer3B_+6+1,r25
	sts Timer3B_+6,r24
/* epilogue start */
.LM44:
	ret
.LFE33:
	.size	init_timer_m1284P, .-init_timer_m1284P
	.section	.init8
.global	init_timer_m1284P_kernel_init
	.type	init_timer_m1284P_kernel_init, @function
init_timer_m1284P_kernel_init:
.LFB34:
.LSM4:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM5:
	call init_timer_m1284P
/* epilogue start */
.LFE34:
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.text
.global	init_timer
	.type	init_timer, @function
init_timer:
.LFB35:
.LM45:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LM46:
	ldi r28,lo8(Timer3_)
	ldi r29,hi8(Timer3_)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
.LM47:
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
.LM48:
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
.LM49:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	ldi r22,lo8(-15536)
	ldi r23,hi8(-15536)
	call setTimerCompareValue
/* epilogue start */
.LM50:
	pop r29
	pop r28
	ret
.LFE35:
	.size	init_timer, .-init_timer
	.section	.init8
.global	init_timer_kernel_init
	.type	init_timer_kernel_init, @function
init_timer_kernel_init:
.LFB36:
.LSM6:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM7:
	call init_timer
/* epilogue start */
.LFE36:
	.size	init_timer_kernel_init, .-init_timer_kernel_init
	.text
	.weak	in_timer_tick
	.type	in_timer_tick, @function
in_timer_tick:
.LFB37:
.LM51:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM52:
	ret
.LFE37:
	.size	in_timer_tick, .-in_timer_tick
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
.LFB38:
.LM53:
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
.LM54:
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
	call in_timer_tick
/* epilogue start */
.LM55:
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
.LFE38:
	.size	__vector_32, .-__vector_32
.global	mutex_create
	.type	mutex_create, @function
mutex_create:
.LFB39:
.LM56:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM57:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	call malloc
/* epilogue start */
.LM58:
	ret
.LFE39:
	.size	mutex_create, .-mutex_create
.global	mutex_lock
	.type	mutex_lock, @function
mutex_lock:
.LFB40:
.LM59:
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM60:
	in r18,__SREG__
	ldi r19,lo8(0)
	andi r18,lo8(128)
	andi r19,hi8(128)
	movw r30,r24
	std Z+1,r19
	st Z,r18
.LM61:
/* #APP */
 ;  24 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* epilogue start */
.LM62:
/* #NOAPP */
	ret
.LFE40:
	.size	mutex_lock, .-mutex_lock
.global	mutex_trylock
	.type	mutex_trylock, @function
mutex_trylock:
.LFB41:
.LM63:
.LVL5:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM64:
	call mutex_lock
.LVL6:
.LM65:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
/* epilogue start */
	ret
.LFE41:
	.size	mutex_trylock, .-mutex_trylock
.global	mutex_release
	.type	mutex_release, @function
mutex_release:
.LFB42:
.LM66:
.LVL7:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM67:
/* #APP */
 ;  34 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM68:
/* #NOAPP */
	ret
.LFE42:
	.size	mutex_release, .-mutex_release
	.section	.fini1,"ax",@progbits
.global	MainProcessEnd
	.type	MainProcessEnd, @function
MainProcessEnd:
.LFB43:
.LSM8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM9:
	call processor_loop_idle
/* epilogue start */
.LSM10:
	ret
.LFE43:
	.size	MainProcessEnd, .-MainProcessEnd
	.text
.global	init_nibobee_leds
	.type	init_nibobee_leds, @function
init_nibobee_leds:
.LFB45:
.LM69:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM70:
	ldi r24,lo8(PinB0_)
	ldi r25,hi8(PinB0_)
	sts LeftYellow_+1,r25
	sts LeftYellow_,r24
.LVL8:
.LBB28:
.LBB29:
.LM71:
	call setPinOutput
.LBE29:
.LBE28:
.LM72:
	ldi r24,lo8(PinB1_)
	ldi r25,hi8(PinB1_)
	sts LeftRed_+1,r25
	sts LeftRed_,r24
.LVL9:
.LBB30:
.LBB31:
.LM73:
	call setPinOutput
.LBE31:
.LBE30:
.LM74:
	ldi r24,lo8(PinB2_)
	ldi r25,hi8(PinB2_)
	sts RightRed_+1,r25
	sts RightRed_,r24
.LVL10:
.LBB32:
.LBB33:
.LM75:
	call setPinOutput
.LBE33:
.LBE32:
.LM76:
	ldi r24,lo8(PinB3_)
	ldi r25,hi8(PinB3_)
	sts RightYellow_+1,r25
	sts RightYellow_,r24
.LVL11:
.LBB34:
.LBB35:
.LM77:
	call setPinOutput
.LBE35:
.LBE34:
.LM78:
	ldi r26,lo8(RedLeds_)
	ldi r27,hi8(RedLeds_)
	ldi r30,lo8(C.38.4040)
	ldi r31,hi8(C.38.4040)
	ldi r24,lo8(3)
.L43:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L43
.LM79:
	ldi r26,lo8(YellowLeds_)
	ldi r27,hi8(YellowLeds_)
	ldi r30,lo8(C.39.4041)
	ldi r31,hi8(C.39.4041)
	ldi r24,lo8(3)
.L44:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L44
.LM80:
	ldi r26,lo8(RightLeds_)
	ldi r27,hi8(RightLeds_)
	ldi r30,lo8(C.40.4042)
	ldi r31,hi8(C.40.4042)
	ldi r24,lo8(3)
.L45:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L45
.LM81:
	ldi r26,lo8(LeftLeds_)
	ldi r27,hi8(LeftLeds_)
	ldi r30,lo8(C.41.4043)
	ldi r31,hi8(C.41.4043)
	ldi r24,lo8(3)
.L46:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L46
.LM82:
	ldi r26,lo8(AllLeds_)
	ldi r27,hi8(AllLeds_)
	ldi r30,lo8(C.42.4044)
	ldi r31,hi8(C.42.4044)
	ldi r24,lo8(3)
.L47:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L47
/* epilogue start */
.LM83:
	ret
.LFE45:
	.size	init_nibobee_leds, .-init_nibobee_leds
	.section	.init8
.global	init_nibobee_leds_kernel_init
	.type	init_nibobee_leds_kernel_init, @function
init_nibobee_leds_kernel_init:
.LFB46:
.LSM11:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM12:
	call init_nibobee_leds
/* epilogue start */
.LFE46:
	.size	init_nibobee_leds_kernel_init, .-init_nibobee_leds_kernel_init
	.text
.global	initButton
	.type	initButton, @function
initButton:
.LFB47:
.LM84:
.LVL12:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM85:
	ldd r24,Y+1
	ldd r25,Y+2
.LVL13:
	call setPinInput
.LM86:
	ld r24,Y
	sbrs r24,1
	rjmp .L55
.LM87:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
.L55:
.LM88:
	ld r24,Y
	sbrs r24,2
	rjmp .L54
.LM89:
	ldd r24,Y+3
	call enablePinChangeInterrupt
.L54:
/* epilogue start */
.LM90:
	pop r29
	pop r28
.LVL14:
	ret
.LFE47:
	.size	initButton, .-initButton
.global	init_nibobee_buttons
	.type	init_nibobee_buttons, @function
init_nibobee_buttons:
.LFB48:
.LM91:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LM92:
	ldi r17,lo8(3)
	sts ButtonLeftBackward_,r17
	ldi r24,lo8(PinC5_)
	ldi r25,hi8(PinC5_)
	sts ButtonLeftBackward_+1+1,r25
	sts ButtonLeftBackward_+1,r24
	ldi r24,lo8(21)
	sts ButtonLeftBackward_+3,r24
	ldi r24,lo8(ButtonLeftBackward_)
	ldi r25,hi8(ButtonLeftBackward_)
	call initButton
.LM93:
	sts ButtonLeftForward_,r17
	ldi r24,lo8(PinC4_)
	ldi r25,hi8(PinC4_)
	sts ButtonLeftForward_+1+1,r25
	sts ButtonLeftForward_+1,r24
	ldi r24,lo8(20)
	sts ButtonLeftForward_+3,r24
	ldi r24,lo8(ButtonLeftForward_)
	ldi r25,hi8(ButtonLeftForward_)
	call initButton
.LM94:
	sts ButtonRightBackward_,r17
	ldi r24,lo8(PinC7_)
	ldi r25,hi8(PinC7_)
	sts ButtonRightBackward_+1+1,r25
	sts ButtonRightBackward_+1,r24
	ldi r24,lo8(22)
	sts ButtonRightBackward_+3,r24
	ldi r24,lo8(ButtonRightBackward_)
	ldi r25,hi8(ButtonRightBackward_)
	call initButton
.LM95:
	sts ButtonRightForward_,r17
	ldi r24,lo8(PinC6_)
	ldi r25,hi8(PinC6_)
	sts ButtonRightForward_+1+1,r25
	sts ButtonRightForward_+1,r24
	ldi r24,lo8(23)
	sts ButtonRightForward_+3,r24
	ldi r24,lo8(ButtonRightForward_)
	ldi r25,hi8(ButtonRightForward_)
	call initButton
/* epilogue start */
.LM96:
	pop r17
	ret
.LFE48:
	.size	init_nibobee_buttons, .-init_nibobee_buttons
	.section	.init8
.global	init_nibobee_buttons_kernel_init
	.type	init_nibobee_buttons_kernel_init, @function
init_nibobee_buttons_kernel_init:
.LFB49:
.LSM13:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM14:
	call init_nibobee_buttons
/* epilogue start */
.LFE49:
	.size	init_nibobee_buttons_kernel_init, .-init_nibobee_buttons_kernel_init
	.text
.global	initMotor
	.type	initMotor, @function
initMotor:
.LFB50:
.LM97:
.LVL15:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM98:
	ldi r24,lo8(Timer1_)
	ldi r25,hi8(Timer1_)
.LVL16:
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
.LM99:
	ldd r30,Y+3
	ldd r31,Y+4
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call setWaveformGenerationMode
.LM100:
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
.LM101:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
.LM102:
	ld r24,Y
	sbrc r24,3
	rjmp .L59
.LM103:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
.L59:
/* epilogue start */
.LM104:
	pop r29
	pop r28
.LVL17:
	ret
.LFE50:
	.size	initMotor, .-initMotor
.global	initMotor2Pins
	.type	initMotor2Pins, @function
initMotor2Pins:
.LFB51:
.LM105:
.LVL18:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM106:
	call initMotor
.LVL19:
.LM107:
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinOutput
.LM108:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
.LM109:
	ldd r24,Y+9
	ldd r25,Y+10
	call setPinZero
/* epilogue start */
.LM110:
	pop r29
	pop r28
.LVL20:
	ret
.LFE51:
	.size	initMotor2Pins, .-initMotor2Pins
.global	init_nibobee_motors
	.type	init_nibobee_motors, @function
init_nibobee_motors:
.LFB52:
.LM111:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LM112:
	lds r24,Timer1_
	ori r24,lo8(16)
	sts Timer1_,r24
.LM113:
	sts LeftMotorBase_,__zero_reg__
	ldi r24,lo8(PinD6_)
	ldi r25,hi8(PinD6_)
	sts LeftMotorBase_+1+1,r25
	sts LeftMotorBase_+1,r24
	ldi r24,lo8(Timer1A_)
	ldi r25,hi8(Timer1A_)
	sts LeftMotorBase_+3+1,r25
	sts LeftMotorBase_+3,r24
	sts LeftMotorBase_+5+1,__zero_reg__
	sts LeftMotorBase_+5,__zero_reg__
	ldi r28,lo8(-1)
	ldi r29,hi8(-1)
	sts LeftMotorBase_+7+1,r29
	sts LeftMotorBase_+7,r28
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	call initMotor
.LM114:
	ldi r24,lo8(4)
	sts RightMotorBase_,r24
	ldi r24,lo8(PinD7_)
	ldi r25,hi8(PinD7_)
	sts RightMotorBase_+1+1,r25
	sts RightMotorBase_+1,r24
	ldi r24,lo8(Timer1B_)
	ldi r25,hi8(Timer1B_)
	sts RightMotorBase_+3+1,r25
	sts RightMotorBase_+3,r24
	sts RightMotorBase_+5+1,__zero_reg__
	sts RightMotorBase_+5,__zero_reg__
	sts RightMotorBase_+7+1,r29
	sts RightMotorBase_+7,r28
	ldi r24,lo8(RightMotorBase_)
	ldi r25,hi8(RightMotorBase_)
	call initMotor
.LM115:
	lds r30,RightMotorBase_+3
	lds r31,RightMotorBase_+3+1
	ldd r24,Z+6
	ldd r25,Z+7
	call setPinOne
.LM116:
	lds r30,LeftMotorBase_+3
	lds r31,LeftMotorBase_+3+1
	ldd r24,Z+6
	ldd r25,Z+7
	call setPinOne
/* epilogue start */
.LM117:
	pop r29
	pop r28
	ret
.LFE52:
	.size	init_nibobee_motors, .-init_nibobee_motors
	.section	.init8
.global	init_nibobee_motors_kernel_init
	.type	init_nibobee_motors_kernel_init, @function
init_nibobee_motors_kernel_init:
.LFB53:
.LSM15:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM16:
	call init_nibobee_motors
/* epilogue start */
.LFE53:
	.size	init_nibobee_motors_kernel_init, .-init_nibobee_motors_kernel_init
	.text
.global	initSmoothMotor
	.type	initSmoothMotor, @function
initSmoothMotor:
.LFB54:
.LM118:
.LVL21:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM119:
	call mutex_create
.LVL22:
	std Y+15,r25
	std Y+14,r24
/* epilogue start */
.LM120:
	pop r29
	pop r28
.LVL23:
	ret
.LFE54:
	.size	initSmoothMotor, .-initSmoothMotor
.global	smooth_motor_tick
	.type	smooth_motor_tick, @function
smooth_motor_tick:
.LFB58:
.LM121:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM122:
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	breq .L66
.LM123:
	ldi r24,lo8(LeftMotor_)
	ldi r25,hi8(LeftMotor_)
	call motor_smooth_tick
.L66:
.LM124:
	lds r24,motor_B_running
	lds r25,motor_B_running+1
	sbiw r24,0
	breq .L65
.LM125:
	ldi r24,lo8(RightMotor_)
	ldi r25,hi8(RightMotor_)
	call motor_smooth_tick
.L65:
	ret
.LFE58:
	.size	smooth_motor_tick, .-smooth_motor_tick
.global	smooth_enable_tick
	.type	smooth_enable_tick, @function
smooth_enable_tick:
.LFB59:
.LM126:
.LVL24:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM127:
	sbiw r24,0
	breq .L69
.LM128:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
.LVL25:
	call enableTimerInterrupt
	ret
.LVL26:
.L69:
.LM129:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
.LVL27:
	call disableTimerInterrupt
	ret
.LFE59:
	.size	smooth_enable_tick, .-smooth_enable_tick
	.type	control_smooth_motor, @function
control_smooth_motor:
.LFB55:
.LM130:
.LVL28:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM131:
	ldi r18,hi8(LeftMotor_)
	cpi r24,lo8(LeftMotor_)
	cpc r25,r18
	brne .L72
.LM132:
	sts motor_A_running+1,r23
	sts motor_A_running,r22
	rjmp .L73
.L72:
.LM133:
	ldi r18,hi8(RightMotor_)
	cpi r24,lo8(RightMotor_)
	cpc r25,r18
	brne .L71
.LM134:
	sts motor_B_running+1,r23
	sts motor_B_running,r22
.L73:
.LM135:
	lds r24,motor_A_running
	lds r25,motor_A_running+1
.LVL29:
	sbiw r24,0
	brne .L77
.LM136:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	lds r18,motor_B_running
	lds r19,motor_B_running+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L75
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	rjmp .L75
.L77:
.LM137:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.L75:
.LM138:
	call smooth_enable_tick
.LVL30:
.L71:
	ret
.LFE55:
	.size	control_smooth_motor, .-control_smooth_motor
.global	motor_smooth_stop_tick
	.type	motor_smooth_stop_tick, @function
motor_smooth_stop_tick:
.LFB57:
.LM139:
.LVL31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM140:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call control_smooth_motor
.LVL32:
/* epilogue start */
.LM141:
	ret
.LFE57:
	.size	motor_smooth_stop_tick, .-motor_smooth_stop_tick
.global	motor_smooth_start_tick
	.type	motor_smooth_start_tick, @function
motor_smooth_start_tick:
.LFB56:
.LM142:
.LVL33:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM143:
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call control_smooth_motor
.LVL34:
/* epilogue start */
.LM144:
	ret
.LFE56:
	.size	motor_smooth_start_tick, .-motor_smooth_start_tick
.global	__vector_33
	.type	__vector_33, @function
__vector_33:
.LFB60:
.LM145:
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
.LM146:
	call smooth_motor_tick
/* epilogue start */
.LM147:
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
.LFE60:
	.size	__vector_33, .-__vector_33
.global	init_smooth_motors
	.type	init_smooth_motors, @function
init_smooth_motors:
.LFB61:
.LM148:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
.LM149:
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	sts LeftMotor_+1,r25
	sts LeftMotor_,r24
	sts LeftMotor_+2+1,__zero_reg__
	sts LeftMotor_+2,__zero_reg__
	ldi r28,lo8(1)
	ldi r29,hi8(1)
	sts LeftMotor_+4+1,r29
	sts LeftMotor_+4,r28
	sts LeftMotor_+6+1,__zero_reg__
	sts LeftMotor_+6,__zero_reg__
	sts LeftMotor_+8+1,r29
	sts LeftMotor_+8,r28
	sts LeftMotor_+10+1,__zero_reg__
	sts LeftMotor_+10,__zero_reg__
	ldi r16,lo8(300)
	ldi r17,hi8(300)
	sts LeftMotor_+12+1,r17
	sts LeftMotor_+12,r16
	sts LeftMotor_+14+1,__zero_reg__
	sts LeftMotor_+14,__zero_reg__
.LVL35:
.LBB36:
.LBB37:
.LM150:
	call mutex_create
	sts LeftMotor_+14+1,r25
	sts LeftMotor_+14,r24
.LBE37:
.LBE36:
.LM151:
	ldi r24,lo8(RightMotorBase_)
	ldi r25,hi8(RightMotorBase_)
	sts RightMotor_+1,r25
	sts RightMotor_,r24
	sts RightMotor_+2+1,__zero_reg__
	sts RightMotor_+2,__zero_reg__
	sts RightMotor_+4+1,r29
	sts RightMotor_+4,r28
	sts RightMotor_+6+1,__zero_reg__
	sts RightMotor_+6,__zero_reg__
	sts RightMotor_+8+1,r29
	sts RightMotor_+8,r28
	sts RightMotor_+10+1,__zero_reg__
	sts RightMotor_+10,__zero_reg__
	sts RightMotor_+12+1,r17
	sts RightMotor_+12,r16
	sts RightMotor_+14+1,__zero_reg__
	sts RightMotor_+14,__zero_reg__
.LVL36:
.LBB38:
.LBB39:
.LM152:
	call mutex_create
	sts RightMotor_+14+1,r25
	sts RightMotor_+14,r24
/* epilogue start */
.LBE39:
.LBE38:
.LM153:
	pop r29
	pop r28
	pop r17
	pop r16
	ret
.LFE61:
	.size	init_smooth_motors, .-init_smooth_motors
	.section	.init8
.global	init_smooth_motors_kernel_init
	.type	init_smooth_motors_kernel_init, @function
init_smooth_motors_kernel_init:
.LFB62:
.LSM17:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM18:
	call init_smooth_motors
/* epilogue start */
.LFE62:
	.size	init_smooth_motors_kernel_init, .-init_smooth_motors_kernel_init
	.text
.global	twi_handleMasterRequest
	.type	twi_handleMasterRequest, @function
twi_handleMasterRequest:
.LFB68:
.LM154:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM155:
	ldi r22,lo8(0)
	ldi r23,lo8(0)
	ldi r24,lo8(0)
	ldi r25,lo8(0)
/* epilogue start */
	ret
.LFE68:
	.size	twi_handleMasterRequest, .-twi_handleMasterRequest
.global	twi_handleMasterTransmission
	.type	twi_handleMasterTransmission, @function
twi_handleMasterTransmission:
.LFB69:
.LM156:
.LVL37:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM157:
	ret
.LFE69:
	.size	twi_handleMasterTransmission, .-twi_handleMasterTransmission
	.weak	twi_unexpectedCondition
	.type	twi_unexpectedCondition, @function
twi_unexpectedCondition:
.LFB70:
.LM158:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM159:
	ret
.LFE70:
	.size	twi_unexpectedCondition, .-twi_unexpectedCondition
.global	init_twi
	.type	init_twi, @function
init_twi:
.LFB71:
.LM160:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM161:
	ldi r24,lo8(5)
	sts 188,r24
.LM162:
	ldi r24,lo8(-1)
	sts 187,r24
.LM163:
	ldi r24,lo8(17)
	sts 184,r24
.LM164:
	sts 185,__zero_reg__
/* epilogue start */
.LM165:
	ret
.LFE71:
	.size	init_twi, .-init_twi
	.section	.init8
.global	init_twi_kernel_init
	.type	init_twi_kernel_init, @function
init_twi_kernel_init:
.LFB72:
.LSM19:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM20:
	call init_twi
/* epilogue start */
.LFE72:
	.size	init_twi_kernel_init, .-init_twi_kernel_init
	.text
.global	next_twi_operation
	.type	next_twi_operation, @function
next_twi_operation:
.LFB75:
.LM166:
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
.LM167:
	lds r24,nextTwiOperation
	lds r25,nextTwiOperation+1
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .+2
	rjmp .L97
.LM168:
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
.L98:
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
.L90:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L90
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
.LM169:
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L91
.LM170:
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .L101
	rjmp .L97
.L91:
.LM171:
	cpi r24,3
	cpc r25,__zero_reg__
	brlt .L98
	rjmp .L97
.L101:
.LM172:
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L94
.LM173:
	andi r22,lo8(-2)
	rjmp .L102
.L94:
.LM174:
	cpi r18,1
	cpc r19,__zero_reg__
	brne .L95
.LM175:
	ori r22,lo8(1)
.L102:
	sts twi_address,r22
.L95:
.LM176:
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
.LM177:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
.LM178:
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp .L89
.L97:
.LM179:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L89:
.LM180:
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
.LFE75:
	.size	next_twi_operation, .-next_twi_operation
	.type	twi_stop_or_next, @function
twi_stop_or_next:
.LFB76:
.LM181:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM182:
	call next_twi_operation
	sbiw r24,0
	brne .L104
.LM183:
	call twi_stop
	ret
.L104:
.LM184:
	ldi r24,lo8(-91)
	sts 188,r24
	ret
.LFE76:
	.size	twi_stop_or_next, .-twi_stop_or_next
.global	twi_start_master_operation
	.type	twi_start_master_operation, @function
twi_start_master_operation:
.LFB78:
.LM185:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM186:
	sts twi_error+1,__zero_reg__
	sts twi_error,__zero_reg__
.LM187:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_running+1,r25
	sts twi_running,r24
.LM188:
	sts nextTwiOperation+1,__zero_reg__
	sts nextTwiOperation,__zero_reg__
.LM189:
	call next_twi_operation
	sbiw r24,0
	breq .L106
.LM190:
	ldi r24,lo8(-91)
	sts 188,r24
.L106:
	ret
.LFE78:
	.size	twi_start_master_operation, .-twi_start_master_operation
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB81:
.LM191:
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
.LM192:
	lds r24,185
	ldi r25,lo8(0)
	andi r24,lo8(248)
	andi r25,hi8(248)
	cpi r24,48
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L114
	cpi r24,49
	cpc r25,__zero_reg__
	brge .L121
	cpi r24,16
	cpc r25,__zero_reg__
	breq .L111
	cpi r24,17
	cpc r25,__zero_reg__
	brge .L122
	sbiw r24,0
	brne .+2
	rjmp .L110
	cpi r24,8
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L109
	rjmp .L111
.L122:
	cpi r24,32
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L117
	cpi r24,40
	cpc r25,__zero_reg__
	breq .L112
	cpi r24,24
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L109
	rjmp .L112
.L121:
	cpi r24,72
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L117
	cpi r24,73
	cpc r25,__zero_reg__
	brge .L123
	cpi r24,56
	cpc r25,__zero_reg__
	breq .L115
	cpi r24,64
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L109
	rjmp .L129
.L123:
	cpi r24,88
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L119
	cpi r24,248
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L120
	cpi r24,80
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L109
	rjmp .L131
.L111:
.LM193:
	lds r24,twi_address
.LVL38:
.LBB40:
.LBB41:
.LM194:
	sts 187,r24
	rjmp .L127
.LVL39:
.L115:
.LBE41:
.LBE40:
.LM195:
	ldi r24,lo8(5)
	ldi r25,hi8(5)
	sts twi_error+1,r25
	sts twi_error,r24
.LBB42:
.LBB43:
.LM196:
	ldi r24,lo8(-123)
	sts 188,r24
.LM197:
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L108
.L112:
.LBE43:
.LBE42:
.LM198:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brsh .L128
.LM199:
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	ld r18,Z
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
.LVL40:
.LBB44:
.LBB45:
.LM200:
	sts 187,r18
.LVL41:
.L127:
.LM201:
	ldi r24,lo8(-123)
	sts 188,r24
	rjmp .L108
.L114:
.LBE45:
.LBE44:
.LM202:
	ldi r24,lo8(6)
	ldi r25,hi8(6)
	rjmp .L130
.L131:
.LM203:
	call twi_read_byte
.L129:
.LM204:
	call twi_ack_receive
.LM205:
	rjmp .L108
.L117:
.LM206:
	ldi r24,lo8(4)
	ldi r25,hi8(4)
.L130:
	sts twi_error+1,r25
	sts twi_error,r24
.LM207:
	call twi_stop
.LM208:
	rjmp .L108
.L119:
.LM209:
	call twi_read_byte
.L128:
.LM210:
	call twi_stop_or_next
.LM211:
	rjmp .L108
.L120:
.LM212:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	rjmp .L126
.L110:
.LM213:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	rjmp .L126
.L109:
.LM214:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
.L126:
	sts twi_error+1,r25
	sts twi_error,r24
.LM215:
	call twi_unexpectedCondition
.L108:
/* epilogue start */
.LM216:
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
.LFE81:
	.size	__vector_26, .-__vector_26
.global	twiMultipleOperations
	.type	twiMultipleOperations, @function
twiMultipleOperations:
.LFB85:
.LM217:
.LVL42:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL43:
.LM218:
	ldi r20,lo8(0)
	ldi r21,hi8(0)
.LM219:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.LM220:
	rjmp .L133
.LVL44:
.L137:
.LM221:
	movw r26,r20
	subi r26,lo8(-(furtherOperations))
	sbci r27,hi8(-(furtherOperations))
	movw r30,r22
	add r30,r20
	adc r31,r21
	ldi r17,lo8(7)
.L134:
	ld r0,Z+
	st X+,r0
	subi r17,lo8(-(-1))
	brne .L134
.LM222:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
.LVL45:
	subi r20,lo8(-(7))
	sbci r21,hi8(-(7))
.LVL46:
.L133:
	cp r18,r24
	cpc r19,r25
	brlt .L135
.L138:
.LM223:
	movw r30,r18
	ldi r20,3
1:	lsl r30
	rol r31
	dec r20
	brne 1b
	sub r30,r18
	sbc r31,r19
	subi r30,lo8(-(furtherOperations+5))
	sbci r31,hi8(-(furtherOperations+5))
	rjmp .L136
.L135:
.LM224:
	cpi r18,3
	cpc r19,__zero_reg__
	brne .L137
	rjmp .L138
.L139:
.LM225:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.LM226:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
.LVL47:
	adiw r30,7
.L136:
.LM227:
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .L139
.LM228:
	call twi_start_master_operation
.LVL48:
/* epilogue start */
.LM229:
	pop r17
	ret
.LFE85:
	.size	twiMultipleOperations, .-twiMultipleOperations
.global	twiSendReceive
	.type	twiSendReceive, @function
twiSendReceive:
.LFB84:
.LM230:
.LVL49:
	push r16
	push r17
	push r29
	push r28
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 14 */
/* stack size = 18 */
.L__stack_usage = 18
.LM231:
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(14)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL50:
	std Y+7,r21
	std Y+6,r20
	std Y+8,r16
	std Y+9,r17
	std Y+10,r18
	std Y+11,r19
	std Y+12,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL51:
	std Y+14,r25
	std Y+13,r24
.LM232:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	movw r22,r30
	call twiMultipleOperations
/* epilogue start */
.LM233:
	adiw r28,14
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	pop r17
	pop r16
.LVL52:
	ret
.LFE84:
	.size	twiSendReceive, .-twiSendReceive
.global	twiReceive
	.type	twiReceive, @function
twiReceive:
.LFB83:
.LM234:
.LVL53:
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
.LM235:
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(7)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL54:
	std Y+7,r25
	std Y+6,r24
.LM236:
	movw r22,r30
	call twiMultipleOperations
.LVL55:
/* epilogue start */
.LM237:
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
.LFE83:
	.size	twiReceive, .-twiReceive
.global	twiSend
	.type	twiSend, @function
twiSend:
.LFB82:
.LM238:
.LVL56:
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
.LM239:
	movw r30,r28
	adiw r30,1
	ldi r25,lo8(7)
	movw r26,r30
	st X+,__zero_reg__
        dec r25
	brne .-6
	std Y+1,r20
	std Y+2,r21
	std Y+3,r22
	std Y+4,r23
	std Y+5,r24
	ldi r24,lo8(2)
	ldi r25,hi8(2)
.LVL57:
	std Y+7,r25
	std Y+6,r24
.LM240:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	movw r22,r30
	call twiMultipleOperations
.LVL58:
/* epilogue start */
.LM241:
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
.LFE82:
	.size	twiSend, .-twiSend
.global	WAIT_FOR_TWI
	.type	WAIT_FOR_TWI, @function
WAIT_FOR_TWI:
.LFB86:
.LM242:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L145:
.LVL59:
.LBB46:
.LBB47:
.LBB48:
.LBB49:
.LM243:
/* #APP */
 ;  50 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL60:
/* #NOAPP */
.LBE49:
.LBE48:
.LM244:
	lds r24,twi_running
	lds r25,twi_running+1
.LVL61:
.LBB50:
.LBB51:
.LM245:
/* #APP */
 ;  56 "c:\program files (x86)\atmel\atmel studio 6.0\extensions\atmel\avrgcc\3.3.2.31\avrtoolchain\bin\../lib/gcc/avr/4.5.1/../../../../avr/include/util/atomic.h" 1
	sei
 ;  0 "" 2
.LM246:
/* #NOAPP */
.LBE51:
.LBE50:
.LBE47:
.LM247:
	tst r24
	brne .L145
.LVL62:
.LBB52:
.LBB53:
.LM248:
	 ldi r24,lo8(4999)
    ldi r25,hi8(4999)
    1:sbiw r24,1
    brne 1b
.LVL63:
	rjmp .
	nop
/* epilogue start */
.LBE53:
.LBE52:
.LBE46:
.LM249:
	ret
.LFE86:
	.size	WAIT_FOR_TWI, .-WAIT_FOR_TWI
.global	turn_word
	.type	turn_word, @function
turn_word:
.LFB87:
.LM250:
.LVL64:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM251:
	movw r30,r24
	ld r24,Z
.LVL65:
.LM252:
	ldd r25,Z+1
	st Z,r25
.LM253:
	std Z+1,r24
/* epilogue start */
.LM254:
	ret
.LFE87:
	.size	turn_word, .-turn_word
.global	twi_rpc_oneway
	.type	twi_rpc_oneway, @function
twi_rpc_oneway:
.LFB89:
.LM255:
.LVL66:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r17,r24
	mov r24,r22
.LVL67:
	movw r22,r20
	movw r20,r18
.LM256:
	call fillSendBuffer
.LVL68:
.LM257:
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	lds r22,sendBuffer+2
	lds r23,sendBuffer+3
	mov r24,r17
.LVL69:
	call twiSend
/* epilogue start */
.LM258:
	pop r17
.LVL70:
	ret
.LFE89:
	.size	twi_rpc_oneway, .-twi_rpc_oneway
.global	twi_rpc_pseudo_oneway
	.type	twi_rpc_pseudo_oneway, @function
twi_rpc_pseudo_oneway:
.LFB90:
.LM259:
.LVL71:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r17,r24
	mov r24,r22
.LVL72:
	movw r22,r20
	movw r20,r18
.LM260:
	call fillSendBuffer
.LVL73:
.LM261:
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	lds r22,sendBuffer+2
	lds r23,sendBuffer+3
	mov r24,r17
.LVL74:
	ldi r16,lo8(0)
	ldi r17,hi8(0)
	movw r18,r16
	call twiSendReceive
/* epilogue start */
.LM262:
	pop r17
.LVL75:
	pop r16
	ret
.LFE90:
	.size	twi_rpc_pseudo_oneway, .-twi_rpc_pseudo_oneway
.global	bgx1_setIllumination
	.type	bgx1_setIllumination, @function
bgx1_setIllumination:
.LFB30:
.LM263:
.LVL76:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
.LM264:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL77:
	lds r24,bgx1
.LVL78:
	ldi r22,lo8(67)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE30:
	.size	bgx1_setIllumination, .-bgx1_setIllumination
.global	bgx1_termScroll
	.type	bgx1_termScroll, @function
bgx1_termScroll:
.LFB25:
.LM265:
.LVL79:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
.LM266:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL80:
	lds r24,bgx1
.LVL81:
	ldi r22,lo8(50)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE25:
	.size	bgx1_termScroll, .-bgx1_termScroll
.global	bgx1_termGoto_base
	.type	bgx1_termGoto_base, @function
bgx1_termGoto_base:
.LFB24:
.LM267:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
.LM268:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL82:
	lds r24,bgx1
	ldi r22,lo8(49)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE24:
	.size	bgx1_termGoto_base, .-bgx1_termGoto_base
.global	bgx1_termClear
	.type	bgx1_termClear, @function
bgx1_termClear:
.LFB23:
.LM269:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM270:
	lds r24,bgx1
	ldi r22,lo8(48)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	ret
.LFE23:
	.size	bgx1_termClear, .-bgx1_termClear
.global	bgx1_selectFont
	.type	bgx1_selectFont, @function
bgx1_selectFont:
.LFB16:
.LM271:
.LVL83:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
.LM272:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL84:
	lds r24,bgx1
.LVL85:
	ldi r22,lo8(21)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE16:
	.size	bgx1_selectFont, .-bgx1_selectFont
.global	bgx1_fillAll
	.type	bgx1_fillAll, @function
bgx1_fillAll:
.LFB13:
.LM273:
.LVL86:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
.LM274:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL87:
	lds r24,bgx1
.LVL88:
	ldi r22,lo8(18)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE13:
	.size	bgx1_fillAll, .-bgx1_fillAll
.global	bgx1_mode
	.type	bgx1_mode, @function
bgx1_mode:
.LFB12:
.LM275:
.LVL89:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
.LM276:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL90:
	lds r24,bgx1
.LVL91:
	ldi r22,lo8(17)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE12:
	.size	bgx1_mode, .-bgx1_mode
.global	bgx1_move_base
	.type	bgx1_move_base, @function
bgx1_move_base:
.LFB11:
.LM277:
	push r29
	push r28
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+2,r25
	std Y+1,r24
.LM278:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL92:
	lds r24,bgx1
	ldi r22,lo8(16)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE11:
	.size	bgx1_move_base, .-bgx1_move_base
.global	bgx1_setStatus
	.type	bgx1_setStatus, @function
bgx1_setStatus:
.LFB10:
.LM279:
.LVL93:
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 3 */
.L__stack_usage = 3
	std Y+1,r24
.LM280:
	movw r18,r28
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL94:
	lds r24,bgx1
.LVL95:
	ldi r22,lo8(3)
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	ret
.LFE10:
	.size	bgx1_setStatus, .-bgx1_setStatus
.global	bgx1_reset
	.type	bgx1_reset, @function
bgx1_reset:
.LFB7:
.LM281:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM282:
	lds r24,bgx1
	ldi r22,lo8(0)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_pseudo_oneway
	call WAIT_FOR_TWI
/* epilogue start */
	ret
.LFE7:
	.size	bgx1_reset, .-bgx1_reset
.global	twi_rpc
	.type	twi_rpc, @function
twi_rpc:
.LFB91:
.LM283:
.LVL96:
	push r13
	push r14
	push r15
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	mov r13,r24
	mov r24,r22
.LVL97:
	movw r22,r20
	movw r20,r18
.LM284:
	call fillSendBuffer
.LVL98:
.LM285:
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	lds r22,sendBuffer+2
	lds r23,sendBuffer+3
	mov r24,r13
.LVL99:
	movw r18,r16
	movw r16,r14
	call twiSendReceive
/* epilogue start */
.LM286:
	pop r17
	pop r16
	pop r15
	pop r14
.LVL100:
	pop r13
.LVL101:
	ret
.LFE91:
	.size	twi_rpc, .-twi_rpc
.global	bgx1_syncInterface
	.type	bgx1_syncInterface, @function
bgx1_syncInterface:
.LFB29:
.LM287:
.LVL102:
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
/* stack size = 8 */
.L__stack_usage = 8
	std Y+2,r24
.LM288:
	movw r18,r28
	subi r18,lo8(-(2))
	sbci r19,hi8(-(2))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL103:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL104:
	lds r24,bgx1
.LVL105:
	ldi r22,lo8(66)
	call twi_rpc
	call WAIT_FOR_TWI
.LVL106:
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE29:
	.size	bgx1_syncInterface, .-bgx1_syncInterface
.global	bgx1_getAnalog_base
	.type	bgx1_getAnalog_base, @function
bgx1_getAnalog_base:
.LFB28:
.LM289:
.LVL107:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
.LM290:
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL108:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL109:
	lds r24,bgx1
.LVL110:
	ldi r22,lo8(65)
	call twi_rpc
	call WAIT_FOR_TWI
.LVL111:
	ldd r24,Y+1
.LVL112:
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE28:
	.size	bgx1_getAnalog_base, .-bgx1_getAnalog_base
.global	bgx1_syncPort_base
	.type	bgx1_syncPort_base, @function
bgx1_syncPort_base:
.LFB27:
.LM291:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r25
	std Y+2,r24
.LM292:
	movw r18,r28
	subi r18,lo8(-(2))
	sbci r19,hi8(-(2))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL113:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL114:
	lds r24,bgx1
	ldi r22,lo8(64)
	call twi_rpc
	call WAIT_FOR_TWI
.LVL115:
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE27:
	.size	bgx1_syncPort_base, .-bgx1_syncPort_base
.global	bgx1_termPrint_base
	.type	bgx1_termPrint_base, @function
bgx1_termPrint_base:
.LFB26:
.LM293:
.LVL116:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
.LM294:
	movw r18,r24
.LVL117:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL118:
	lds r24,bgx1
.LVL119:
	ldi r22,lo8(51)
.LVL120:
	call twi_rpc
.LVL121:
	call WAIT_FOR_TWI
.LVL122:
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE26:
	.size	bgx1_termPrint_base, .-bgx1_termPrint_base
.global	bgx1_lineTo_base
	.type	bgx1_lineTo_base, @function
bgx1_lineTo_base:
.LFB22:
.LM295:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
.LM296:
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL123:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL124:
	lds r24,bgx1
	ldi r22,lo8(27)
	call twi_rpc
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE22:
	.size	bgx1_lineTo_base, .-bgx1_lineTo_base
.global	bgx1_embeddedImage
	.type	bgx1_embeddedImage, @function
bgx1_embeddedImage:
.LFB21:
.LM297:
.LVL125:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
.LM298:
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL126:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL127:
	lds r24,bgx1
.LVL128:
	ldi r22,lo8(26)
	call twi_rpc
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE21:
	.size	bgx1_embeddedImage, .-bgx1_embeddedImage
.global	bgx1_drawBitmap_base
	.type	bgx1_drawBitmap_base, @function
bgx1_drawBitmap_base:
.LFB20:
.LM299:
.LVL129:
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
/* stack size = 8 */
.L__stack_usage = 8
.LM300:
	movw r18,r24
.LVL130:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL131:
	lds r24,bgx1
.LVL132:
	ldi r22,lo8(25)
.LVL133:
	call twi_rpc
.LVL134:
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE20:
	.size	bgx1_drawBitmap_base, .-bgx1_drawBitmap_base
.global	bgx1_box_base
	.type	bgx1_box_base, @function
bgx1_box_base:
.LFB19:
.LM301:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	std Y+4,r25
	std Y+3,r24
.LM302:
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(2)
	ldi r21,hi8(2)
.LVL135:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL136:
	lds r24,bgx1
	ldi r22,lo8(24)
	call twi_rpc
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE19:
	.size	bgx1_box_base, .-bgx1_box_base
.global	bgx1_vLine
	.type	bgx1_vLine, @function
bgx1_vLine:
.LFB18:
.LM303:
.LVL137:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
.LM304:
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL138:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL139:
	lds r24,bgx1
.LVL140:
	ldi r22,lo8(23)
	call twi_rpc
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE18:
	.size	bgx1_vLine, .-bgx1_vLine
.global	bgx1_hLine
	.type	bgx1_hLine, @function
bgx1_hLine:
.LFB17:
.LM305:
.LVL141:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	rcall .
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 3 */
/* stack size = 9 */
.L__stack_usage = 9
	std Y+3,r24
.LM306:
	movw r18,r28
	subi r18,lo8(-(3))
	sbci r19,hi8(-(3))
	ldi r20,lo8(1)
	ldi r21,hi8(1)
.LVL142:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL143:
	lds r24,bgx1
.LVL144:
	ldi r22,lo8(22)
	call twi_rpc
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE17:
	.size	bgx1_hLine, .-bgx1_hLine
.global	bgx1_textWidth_base
	.type	bgx1_textWidth_base, @function
bgx1_textWidth_base:
.LFB15:
.LM307:
.LVL145:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
.LM308:
	movw r18,r24
.LVL146:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL147:
	lds r24,bgx1
.LVL148:
	ldi r22,lo8(20)
.LVL149:
	call twi_rpc
.LVL150:
	call WAIT_FOR_TWI
.LVL151:
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE15:
	.size	bgx1_textWidth_base, .-bgx1_textWidth_base
.global	bgx1_print_base
	.type	bgx1_print_base, @function
bgx1_print_base:
.LFB14:
.LM309:
.LVL152:
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
/* stack size = 8 */
.L__stack_usage = 8
.LM310:
	movw r18,r24
.LVL153:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL154:
	lds r24,bgx1
.LVL155:
	ldi r22,lo8(19)
.LVL156:
	call twi_rpc
.LVL157:
	call WAIT_FOR_TWI
	ldd r24,Y+1
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE14:
	.size	bgx1_print_base, .-bgx1_print_base
.global	bgx1_getStatus
	.type	bgx1_getStatus, @function
bgx1_getStatus:
.LFB9:
.LM311:
	push r14
	push r15
	push r16
	push r17
	push r29
	push r28
	push __tmp_reg__
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 1 */
/* stack size = 7 */
.L__stack_usage = 7
.LM312:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL158:
	lds r24,bgx1
	ldi r22,lo8(2)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
	call WAIT_FOR_TWI
.LVL159:
	ldd r24,Y+1
/* epilogue start */
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE9:
	.size	bgx1_getStatus, .-bgx1_getStatus
.global	bgx1_getVersion_base
	.type	bgx1_getVersion_base, @function
bgx1_getVersion_base:
.LFB8:
.LM313:
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
/* stack size = 8 */
.L__stack_usage = 8
.LM314:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL160:
	lds r24,bgx1
	ldi r22,lo8(1)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
	call WAIT_FOR_TWI
.LVL161:
	ldd r24,Y+1
.LVL162:
	ldd r25,Y+2
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
	pop r15
	pop r14
	ret
.LFE8:
	.size	bgx1_getVersion_base, .-bgx1_getVersion_base
	.weak	before_timer
	.type	before_timer, @function
before_timer:
.LFB92:
.LM315:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM316:
	ret
.LFE92:
	.size	before_timer, .-before_timer
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
.LFB93:
.LM317:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM318:
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
.LM319:
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
.LM320:
	call before_timer
.LM321:
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	call enableTimerInterrupt
.LM322:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	call enableTimerInterrupt
.LM323:
/* #APP */
 ;  37 ".././shared/base_after.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM324:
/* #NOAPP */
	ret
.LFE93:
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
.LFB94:
.LSM21:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM22:
	call init_kernel
/* epilogue start */
.LFE94:
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	milliseconds_running
.global	milliseconds_running
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
.global	ButtonRightBackward
	.data
	.type	ButtonRightBackward, @object
	.size	ButtonRightBackward, 2
ButtonRightBackward:
	.word	ButtonRightBackward_
.global	ButtonRightForward
	.type	ButtonRightForward, @object
	.size	ButtonRightForward, 2
ButtonRightForward:
	.word	ButtonRightForward_
.global	ButtonLeftBackward
	.type	ButtonLeftBackward, @object
	.size	ButtonLeftBackward, 2
ButtonLeftBackward:
	.word	ButtonLeftBackward_
.global	ButtonLeftForward
	.type	ButtonLeftForward, @object
	.size	ButtonLeftForward, 2
ButtonLeftForward:
	.word	ButtonLeftForward_
.global	LeftYellow
	.type	LeftYellow, @object
	.size	LeftYellow, 2
LeftYellow:
	.word	LeftYellow_
.global	LeftRed
	.type	LeftRed, @object
	.size	LeftRed, 2
LeftRed:
	.word	LeftRed_
.global	RightRed
	.type	RightRed, @object
	.size	RightRed, 2
RightRed:
	.word	RightRed_
.global	RightYellow
	.type	RightYellow, @object
	.size	RightYellow, 2
RightYellow:
	.word	RightYellow_
.global	RedLeds
	.type	RedLeds, @object
	.size	RedLeds, 2
RedLeds:
	.word	RedLeds_
.global	YellowLeds
	.type	YellowLeds, @object
	.size	YellowLeds, 2
YellowLeds:
	.word	YellowLeds_
.global	RightLeds
	.type	RightLeds, @object
	.size	RightLeds, 2
RightLeds:
	.word	RightLeds_
.global	LeftLeds
	.type	LeftLeds, @object
	.size	LeftLeds, 2
LeftLeds:
	.word	LeftLeds_
.global	AllLeds
	.type	AllLeds, @object
	.size	AllLeds, 2
AllLeds:
	.word	AllLeds_
.global	PortA
	.type	PortA, @object
	.size	PortA, 2
PortA:
	.word	PortA_
.global	PinA0
	.type	PinA0, @object
	.size	PinA0, 2
PinA0:
	.word	PinA0_
.global	PinA1
	.type	PinA1, @object
	.size	PinA1, 2
PinA1:
	.word	PinA1_
.global	PinA2
	.type	PinA2, @object
	.size	PinA2, 2
PinA2:
	.word	PinA2_
.global	PinA3
	.type	PinA3, @object
	.size	PinA3, 2
PinA3:
	.word	PinA3_
.global	PinA4
	.type	PinA4, @object
	.size	PinA4, 2
PinA4:
	.word	PinA4_
.global	PinA5
	.type	PinA5, @object
	.size	PinA5, 2
PinA5:
	.word	PinA5_
.global	PinA6
	.type	PinA6, @object
	.size	PinA6, 2
PinA6:
	.word	PinA6_
.global	PinA7
	.type	PinA7, @object
	.size	PinA7, 2
PinA7:
	.word	PinA7_
.global	PortB
	.type	PortB, @object
	.size	PortB, 2
PortB:
	.word	PortB_
.global	PinB0
	.type	PinB0, @object
	.size	PinB0, 2
PinB0:
	.word	PinB0_
.global	PinB1
	.type	PinB1, @object
	.size	PinB1, 2
PinB1:
	.word	PinB1_
.global	PinB2
	.type	PinB2, @object
	.size	PinB2, 2
PinB2:
	.word	PinB2_
.global	PinB3
	.type	PinB3, @object
	.size	PinB3, 2
PinB3:
	.word	PinB3_
.global	PinB4
	.type	PinB4, @object
	.size	PinB4, 2
PinB4:
	.word	PinB4_
.global	PinB5
	.type	PinB5, @object
	.size	PinB5, 2
PinB5:
	.word	PinB5_
.global	PinB6
	.type	PinB6, @object
	.size	PinB6, 2
PinB6:
	.word	PinB6_
.global	PinB7
	.type	PinB7, @object
	.size	PinB7, 2
PinB7:
	.word	PinB7_
.global	PortC
	.type	PortC, @object
	.size	PortC, 2
PortC:
	.word	PortC_
.global	PinC0
	.type	PinC0, @object
	.size	PinC0, 2
PinC0:
	.word	PinC0_
.global	PinC1
	.type	PinC1, @object
	.size	PinC1, 2
PinC1:
	.word	PinC1_
.global	PinC2
	.type	PinC2, @object
	.size	PinC2, 2
PinC2:
	.word	PinC2_
.global	PinC3
	.type	PinC3, @object
	.size	PinC3, 2
PinC3:
	.word	PinC3_
.global	PinC4
	.type	PinC4, @object
	.size	PinC4, 2
PinC4:
	.word	PinC4_
.global	PinC5
	.type	PinC5, @object
	.size	PinC5, 2
PinC5:
	.word	PinC5_
.global	PinC6
	.type	PinC6, @object
	.size	PinC6, 2
PinC6:
	.word	PinC6_
.global	PinC7
	.type	PinC7, @object
	.size	PinC7, 2
PinC7:
	.word	PinC7_
.global	PortD
	.type	PortD, @object
	.size	PortD, 2
PortD:
	.word	PortD_
.global	PinD0
	.type	PinD0, @object
	.size	PinD0, 2
PinD0:
	.word	PinD0_
.global	PinD1
	.type	PinD1, @object
	.size	PinD1, 2
PinD1:
	.word	PinD1_
.global	PinD2
	.type	PinD2, @object
	.size	PinD2, 2
PinD2:
	.word	PinD2_
.global	PinD3
	.type	PinD3, @object
	.size	PinD3, 2
PinD3:
	.word	PinD3_
.global	PinD4
	.type	PinD4, @object
	.size	PinD4, 2
PinD4:
	.word	PinD4_
.global	PinD5
	.type	PinD5, @object
	.size	PinD5, 2
PinD5:
	.word	PinD5_
.global	PinD6
	.type	PinD6, @object
	.size	PinD6, 2
PinD6:
	.word	PinD6_
.global	PinD7
	.type	PinD7, @object
	.size	PinD7, 2
PinD7:
	.word	PinD7_
.global	Timer0
	.type	Timer0, @object
	.size	Timer0, 2
Timer0:
	.word	Timer0_
.global	Timer1
	.type	Timer1, @object
	.size	Timer1, 2
Timer1:
	.word	Timer1_
.global	Timer2
	.type	Timer2, @object
	.size	Timer2, 2
Timer2:
	.word	Timer2_
.global	Timer3
	.type	Timer3, @object
	.size	Timer3, 2
Timer3:
	.word	Timer3_
.global	Timer0A
	.type	Timer0A, @object
	.size	Timer0A, 2
Timer0A:
	.word	Timer0A_
.global	Timer0B
	.type	Timer0B, @object
	.size	Timer0B, 2
Timer0B:
	.word	Timer0B_
.global	Timer1A
	.type	Timer1A, @object
	.size	Timer1A, 2
Timer1A:
	.word	Timer1A_
.global	Timer1B
	.type	Timer1B, @object
	.size	Timer1B, 2
Timer1B:
	.word	Timer1B_
.global	Timer2A
	.type	Timer2A, @object
	.size	Timer2A, 2
Timer2A:
	.word	Timer2A_
.global	Timer2B
	.type	Timer2B, @object
	.size	Timer2B, 2
Timer2B:
	.word	Timer2B_
.global	Timer3A
	.type	Timer3A, @object
	.size	Timer3A, 2
Timer3A:
	.word	Timer3A_
.global	Timer3B
	.type	Timer3B, @object
	.size	Timer3B, 2
Timer3B:
	.word	Timer3B_
.global	LeftMotorBase
	.type	LeftMotorBase, @object
	.size	LeftMotorBase, 2
LeftMotorBase:
	.word	LeftMotorBase_
.global	RightMotorBase
	.type	RightMotorBase, @object
	.size	RightMotorBase, 2
RightMotorBase:
	.word	RightMotorBase_
.global	LeftMotor
	.type	LeftMotor, @object
	.size	LeftMotor, 2
LeftMotor:
	.word	LeftMotor_
.global	RightMotor
	.type	RightMotor, @object
	.size	RightMotor, 2
RightMotor:
	.word	RightMotor_
.global	bgx1
	.type	bgx1, @object
	.size	bgx1, 1
bgx1:
	.byte	22
.global	redLedsArray
	.type	redLedsArray, @object
	.size	redLedsArray, 4
redLedsArray:
	.word	LeftRed_
	.word	RightRed_
.global	yellowLedsArray
	.type	yellowLedsArray, @object
	.size	yellowLedsArray, 4
yellowLedsArray:
	.word	LeftYellow_
	.word	RightYellow_
.global	rightLedsArray
	.type	rightLedsArray, @object
	.size	rightLedsArray, 4
rightLedsArray:
	.word	RightYellow_
	.word	RightRed_
.global	leftLedsArray
	.type	leftLedsArray, @object
	.size	leftLedsArray, 4
leftLedsArray:
	.word	LeftYellow_
	.word	LeftRed_
.global	allLedsArray
	.type	allLedsArray, @object
	.size	allLedsArray, 8
allLedsArray:
	.word	LeftYellow_
	.word	LeftRed_
	.word	RightRed_
	.word	RightYellow_
.global	motor_A_running
.global	motor_A_running
	.section .bss
	.type	motor_A_running, @object
	.size	motor_A_running, 2
motor_A_running:
	.skip 2,0
.global	motor_B_running
.global	motor_B_running
	.type	motor_B_running, @object
	.size	motor_B_running, 2
motor_B_running:
	.skip 2,0
.global	TWIBroadcast
.global	TWIBroadcast
	.type	TWIBroadcast, @object
	.size	TWIBroadcast, 1
TWIBroadcast:
	.skip 1,0
.global	sendBuffer
	.data
	.type	sendBuffer, @object
	.size	sendBuffer, 4
sendBuffer:
	.word	sendBufferData
	.word	255
	.comm ButtonRightBackward_,4,1
	.comm ButtonRightForward_,4,1
	.comm ButtonLeftBackward_,4,1
	.comm ButtonLeftForward_,4,1
	.comm LeftYellow_,2,1
	.comm LeftRed_,2,1
	.comm RightRed_,2,1
	.comm RightYellow_,2,1
	.comm RedLeds_,3,1
	.comm YellowLeds_,3,1
	.comm RightLeds_,3,1
	.comm LeftLeds_,3,1
	.comm AllLeds_,3,1
	.comm PortA_,6,1
	.comm PinA0_,3,1
	.comm PinA1_,3,1
	.comm PinA2_,3,1
	.comm PinA3_,3,1
	.comm PinA4_,3,1
	.comm PinA5_,3,1
	.comm PinA6_,3,1
	.comm PinA7_,3,1
	.comm PortB_,6,1
	.comm PinB0_,3,1
	.comm PinB1_,3,1
	.comm PinB2_,3,1
	.comm PinB3_,3,1
	.comm PinB4_,3,1
	.comm PinB5_,3,1
	.comm PinB6_,3,1
	.comm PinB7_,3,1
	.comm PortC_,6,1
	.comm PinC0_,3,1
	.comm PinC1_,3,1
	.comm PinC2_,3,1
	.comm PinC3_,3,1
	.comm PinC4_,3,1
	.comm PinC5_,3,1
	.comm PinC6_,3,1
	.comm PinC7_,3,1
	.comm PortD_,6,1
	.comm PinD0_,3,1
	.comm PinD1_,3,1
	.comm PinD2_,3,1
	.comm PinD3_,3,1
	.comm PinD4_,3,1
	.comm PinD5_,3,1
	.comm PinD6_,3,1
	.comm PinD7_,3,1
	.comm Timer0_,7,1
	.comm Timer1_,7,1
	.comm Timer2_,7,1
	.comm Timer3_,7,1
	.comm Timer0A_,8,1
	.comm Timer0B_,8,1
	.comm Timer1A_,8,1
	.comm Timer1B_,8,1
	.comm Timer2A_,8,1
	.comm Timer2B_,8,1
	.comm Timer3A_,8,1
	.comm Timer3B_,8,1
	.comm LeftMotorBase_,9,1
	.comm RightMotorBase_,9,1
	.comm LeftMotor_,16,1
	.comm RightMotor_,16,1
	.comm twi_running,2,1
	.comm twi_error,2,1
	.comm twi_address,1,1
	.comm alreadyHandled,2,1
	.comm twi_buffer,4,1
	.comm furtherOperations,21,1
	.comm nextTwiOperation,2,1
	.comm sendBufferData,255,1
	.type	C.42.4044, @object
	.size	C.42.4044, 3
C.42.4044:
	.word	allLedsArray
	.byte	4
	.type	C.41.4043, @object
	.size	C.41.4043, 3
C.41.4043:
	.word	leftLedsArray
	.byte	2
	.type	C.40.4042, @object
	.size	C.40.4042, 3
C.40.4042:
	.word	rightLedsArray
	.byte	2
	.type	C.39.4041, @object
	.size	C.39.4041, 3
C.39.4041:
	.word	yellowLedsArray
	.byte	2
	.type	C.38.4040, @object
	.size	C.38.4040, 3
C.38.4040:
	.word	redLedsArray
	.byte	2
	.type	C.52.4065, @object
	.size	C.52.4065, 7
C.52.4065:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.51.4064, @object
	.size	C.51.4064, 7
C.51.4064:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.50.4063, @object
	.size	C.50.4063, 7
C.50.4063:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.49.4062, @object
	.size	C.49.4062, 7
C.49.4062:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.56.4069, @object
	.size	C.56.4069, 6
C.56.4069:
	.word	43
	.word	41
	.word	42
	.type	C.55.4068, @object
	.size	C.55.4068, 6
C.55.4068:
	.word	40
	.word	38
	.word	39
	.type	C.54.4067, @object
	.size	C.54.4067, 6
C.54.4067:
	.word	37
	.word	35
	.word	36
	.type	C.53.4066, @object
	.size	C.53.4066, 6
C.53.4066:
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
	.long	.LFB74
	.long	.LFE74-.LFB74
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB80
	.long	.LFE80-.LFB80
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB88
	.long	.LFE88-.LFB88
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.p2align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.p2align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.p2align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.p2align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.p2align	2
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.p2align	2
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.p2align	2
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.p2align	2
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.p2align	2
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.p2align	2
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.p2align	2
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.p2align	2
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.p2align	2
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.p2align	2
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.p2align	2
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.p2align	2
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.p2align	2
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.p2align	2
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.p2align	2
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.p2align	2
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.p2align	2
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.p2align	2
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB58
	.long	.LFE58-.LFB58
	.p2align	2
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB59
	.long	.LFE59-.LFB59
	.p2align	2
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.p2align	2
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
	.p2align	2
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.p2align	2
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB60
	.long	.LFE60-.LFB60
	.p2align	2
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB61
	.long	.LFE61-.LFB61
	.p2align	2
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.p2align	2
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.p2align	2
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.p2align	2
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.p2align	2
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.p2align	2
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.p2align	2
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.p2align	2
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.p2align	2
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.p2align	2
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB81
	.long	.LFE81-.LFB81
	.p2align	2
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB85
	.long	.LFE85-.LFB85
	.p2align	2
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB84
	.long	.LFE84-.LFB84
	.p2align	2
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB83
	.long	.LFE83-.LFB83
	.p2align	2
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB82
	.long	.LFE82-.LFB82
	.p2align	2
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB86
	.long	.LFE86-.LFB86
	.p2align	2
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB87
	.long	.LFE87-.LFB87
	.p2align	2
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB89
	.long	.LFE89-.LFB89
	.p2align	2
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.p2align	2
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.p2align	2
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.p2align	2
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.p2align	2
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.p2align	2
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.p2align	2
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.p2align	2
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.p2align	2
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.p2align	2
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.p2align	2
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.p2align	2
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.p2align	2
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.p2align	2
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.p2align	2
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.p2align	2
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.p2align	2
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.p2align	2
.LEFDE142:
.LSFDE144:
	.long	.LEFDE144-.LASFDE144
.LASFDE144:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.p2align	2
.LEFDE144:
.LSFDE146:
	.long	.LEFDE146-.LASFDE146
.LASFDE146:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.p2align	2
.LEFDE146:
.LSFDE148:
	.long	.LEFDE148-.LASFDE148
.LASFDE148:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.p2align	2
.LEFDE148:
.LSFDE150:
	.long	.LEFDE150-.LASFDE150
.LASFDE150:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.p2align	2
.LEFDE150:
.LSFDE152:
	.long	.LEFDE152-.LASFDE152
.LASFDE152:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.p2align	2
.LEFDE152:
.LSFDE154:
	.long	.LEFDE154-.LASFDE154
.LASFDE154:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.p2align	2
.LEFDE154:
.LSFDE156:
	.long	.LEFDE156-.LASFDE156
.LASFDE156:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE156:
.LSFDE158:
	.long	.LEFDE158-.LASFDE158
.LASFDE158:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE158:
.LSFDE160:
	.long	.LEFDE160-.LASFDE160
.LASFDE160:
	.long	.Lframe0
	.long	.LFB92
	.long	.LFE92-.LFB92
	.p2align	2
.LEFDE160:
.LSFDE162:
	.long	.LEFDE162-.LASFDE162
.LASFDE162:
	.long	.Lframe0
	.long	.LFB93
	.long	.LFE93-.LFB93
	.p2align	2
.LEFDE162:
.LSFDE164:
	.long	.LEFDE164-.LASFDE164
.LASFDE164:
	.long	.Lframe0
	.long	.LFB94
	.long	.LFE94-.LFB94
	.p2align	2
.LEFDE164:
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LVL3-1
	.word	0x7
	.byte	0x3
	.long	sendBuffer
	.byte	0x94
	.byte	0x2
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL0
	.long	.LVL2
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST2:
	.long	.LVL5
	.long	.LVL6-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
	.long	.LVL13
	.long	.LVL14
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL18
	.long	.LVL19-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL19-1
	.long	.LVL20
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL21
	.long	.LVL22-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL22-1
	.long	.LVL23
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL28
	.long	.LVL30-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL31
	.long	.LVL32-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL38
	.long	.LVL39
	.word	0x5
	.byte	0x3
	.long	twi_address
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL40
	.long	.LVL41
	.word	0x2
	.byte	0x8e
	.sleb128 0
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL42
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
.LLST15:
	.long	.LVL42
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
.LLST16:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL45
	.long	.LVL46
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL47
	.long	.LVL48-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL49
	.long	.LVL51
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST18:
	.long	.LVL49
	.long	.LVL50
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL49
	.long	.LVL52
	.word	0xc
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL53
	.long	.LVL54
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL53
	.long	.LVL55-1
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL56
	.long	.LVL58-1
	.word	0xc
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL61
	.long	.LVL63
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL60
	.long	.LVL61
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL61
	.long	.LFE86
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL64
	.long	.LVL65
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LFE87
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL66
	.long	.LVL67
	.word	0x1
	.byte	0x68
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL66
	.long	.LVL68-1
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL66
	.long	.LVL68-1
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL71
	.long	.LVL72
	.word	0x1
	.byte	0x68
	.long	.LVL74
	.long	.LVL75
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL71
	.long	.LVL73-1
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL71
	.long	.LVL73-1
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL76
	.long	.LVL78
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL78
	.long	.LFE30
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL79
	.long	.LVL81
	.word	0x1
	.byte	0x68
	.long	.LVL81
	.long	.LFE25
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL83
	.long	.LVL85
	.word	0x1
	.byte	0x68
	.long	.LVL85
	.long	.LFE16
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL86
	.long	.LVL88
	.word	0x1
	.byte	0x68
	.long	.LVL88
	.long	.LFE13
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL89
	.long	.LVL91
	.word	0x1
	.byte	0x68
	.long	.LVL91
	.long	.LFE12
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL93
	.long	.LVL95
	.word	0x1
	.byte	0x68
	.long	.LVL95
	.long	.LFE10
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL96
	.long	.LVL97
	.word	0x1
	.byte	0x68
	.long	.LVL99
	.long	.LVL101
	.word	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL96
	.long	.LVL98-1
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL96
	.long	.LVL98-1
	.word	0xc
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL96
	.long	.LVL100
	.word	0xc
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL102
	.long	.LVL105
	.word	0x1
	.byte	0x68
	.long	.LVL105
	.long	.LFE29
	.word	0x2
	.byte	0x8c
	.sleb128 2
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL107
	.long	.LVL110
	.word	0x1
	.byte	0x68
	.long	.LVL110
	.long	.LFE28
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL112
	.long	.LFE28
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL116
	.long	.LVL119
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL119
	.long	.LVL121-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST47:
	.long	.LVL116
	.long	.LVL120
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL120
	.long	.LVL121-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL125
	.long	.LVL128
	.word	0x1
	.byte	0x68
	.long	.LVL128
	.long	.LFE21
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	0x0
	.long	0x0
.LLST49:
	.long	.LVL129
	.long	.LVL132
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL132
	.long	.LVL134-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST50:
	.long	.LVL129
	.long	.LVL133
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL133
	.long	.LVL134-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST51:
	.long	.LVL137
	.long	.LVL140
	.word	0x1
	.byte	0x68
	.long	.LVL140
	.long	.LFE18
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL141
	.long	.LVL144
	.word	0x1
	.byte	0x68
	.long	.LVL144
	.long	.LFE17
	.word	0x2
	.byte	0x8c
	.sleb128 3
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL145
	.long	.LVL148
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL148
	.long	.LVL150-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST54:
	.long	.LVL145
	.long	.LVL149
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL149
	.long	.LVL150-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST55:
	.long	.LVL152
	.long	.LVL155
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL155
	.long	.LVL157-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST56:
	.long	.LVL152
	.long	.LVL156
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL156
	.long	.LVL157-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST57:
	.long	.LVL162
	.long	.LFE8
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x29bd
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF409
	.byte	0x1
	.long	.LASF410
	.long	.LASF411
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x0
	.long	.Ldebug_line0
	.long	.Ldebug_macinfo0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x6
	.byte	0x79
	.long	0x38
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x6
	.byte	0x7a
	.long	0x4a
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x6
	.byte	0x7c
	.long	0x63
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x6
	.byte	0x7e
	.long	0x7c
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.byte	0x14
	.long	0xa6
	.uleb128 0x6
	.long	.LASF11
	.sleb128 0
	.uleb128 0x6
	.long	.LASF12
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF13
	.byte	0x4
	.byte	0x17
	.long	0x91
	.uleb128 0x2
	.long	.LASF14
	.byte	0x4
	.byte	0x19
	.long	0x3f
	.uleb128 0x7
	.byte	0x6
	.byte	0x17
	.byte	0xd
	.long	0xef
	.uleb128 0x8
	.long	.LASF15
	.byte	0x17
	.byte	0xe
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"pin"
	.byte	0x17
	.byte	0xf
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ddr"
	.byte	0x17
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
	.long	0x3f
	.uleb128 0x2
	.long	.LASF16
	.byte	0x17
	.byte	0x11
	.long	0xbc
	.uleb128 0x2
	.long	.LASF17
	.byte	0x17
	.byte	0x11
	.long	0x110
	.uleb128 0xa
	.byte	0x2
	.long	0xbc
	.uleb128 0x7
	.byte	0x3
	.byte	0x17
	.byte	0x13
	.long	0x13b
	.uleb128 0x8
	.long	.LASF15
	.byte	0x17
	.byte	0x14
	.long	0x105
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF18
	.byte	0x17
	.byte	0x15
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.string	"Pin"
	.byte	0x17
	.byte	0x16
	.long	0x116
	.uleb128 0x2
	.long	.LASF19
	.byte	0x17
	.byte	0x16
	.long	0x151
	.uleb128 0xa
	.byte	0x2
	.long	0x116
	.uleb128 0x7
	.byte	0x2
	.byte	0x16
	.byte	0xe
	.long	0x16e
	.uleb128 0x9
	.string	"pin"
	.byte	0x16
	.byte	0xf
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.string	"Led"
	.byte	0x16
	.byte	0x10
	.long	0x157
	.uleb128 0x2
	.long	.LASF20
	.byte	0x16
	.byte	0x10
	.long	0x184
	.uleb128 0xa
	.byte	0x2
	.long	0x157
	.uleb128 0x7
	.byte	0x3
	.byte	0x16
	.byte	0x12
	.long	0x1af
	.uleb128 0x8
	.long	.LASF21
	.byte	0x16
	.byte	0x13
	.long	0x1af
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF22
	.byte	0x16
	.byte	0x14
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x179
	.uleb128 0x2
	.long	.LASF23
	.byte	0x16
	.byte	0x15
	.long	0x18a
	.uleb128 0x2
	.long	.LASF24
	.byte	0x16
	.byte	0x15
	.long	0x1cb
	.uleb128 0xa
	.byte	0x2
	.long	0x18a
	.uleb128 0xd
	.long	.LASF412
	.byte	0x2
	.byte	0x1e
	.byte	0xe
	.long	0x1ec
	.uleb128 0x8
	.long	.LASF25
	.byte	0x1e
	.byte	0xe
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF26
	.byte	0x1e
	.byte	0xe
	.long	0x1f7
	.uleb128 0xa
	.byte	0x2
	.long	0x1d1
	.uleb128 0x7
	.byte	0x4
	.byte	0x22
	.byte	0x13
	.long	0x230
	.uleb128 0x8
	.long	.LASF27
	.byte	0x22
	.byte	0x14
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"pin"
	.byte	0x22
	.byte	0x15
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF28
	.byte	0x22
	.byte	0x16
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x2
	.long	.LASF29
	.byte	0x22
	.byte	0x17
	.long	0x1fd
	.uleb128 0x2
	.long	.LASF30
	.byte	0x22
	.byte	0x17
	.long	0x246
	.uleb128 0xa
	.byte	0x2
	.long	0x1fd
	.uleb128 0x5
	.byte	0x2
	.byte	0x26
	.byte	0x13
	.long	0x27f
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
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.byte	0x26
	.byte	0x2d
	.long	0x2c4
	.uleb128 0x6
	.long	.LASF38
	.sleb128 0
	.uleb128 0x6
	.long	.LASF39
	.sleb128 1
	.uleb128 0x6
	.long	.LASF40
	.sleb128 2
	.uleb128 0x6
	.long	.LASF41
	.sleb128 3
	.uleb128 0x6
	.long	.LASF42
	.sleb128 4
	.uleb128 0x6
	.long	.LASF43
	.sleb128 5
	.uleb128 0x6
	.long	.LASF44
	.sleb128 6
	.uleb128 0x6
	.long	.LASF45
	.sleb128 7
	.uleb128 0x6
	.long	.LASF46
	.sleb128 8
	.uleb128 0x6
	.long	.LASF47
	.sleb128 9
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x26
	.byte	0x44
	.long	0x305
	.uleb128 0x8
	.long	.LASF27
	.byte	0x26
	.byte	0x45
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF48
	.byte	0x26
	.byte	0x46
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF49
	.byte	0x26
	.byte	0x47
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF50
	.byte	0x26
	.byte	0x48
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x26
	.byte	0x49
	.long	0x2c4
	.uleb128 0x2
	.long	.LASF52
	.byte	0x26
	.byte	0x49
	.long	0x31b
	.uleb128 0xa
	.byte	0x2
	.long	0x2c4
	.uleb128 0x5
	.byte	0x2
	.byte	0x26
	.byte	0x4b
	.long	0x336
	.uleb128 0x6
	.long	.LASF53
	.sleb128 0
	.uleb128 0x6
	.long	.LASF54
	.sleb128 1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF55
	.byte	0x26
	.byte	0x4e
	.long	0x321
	.uleb128 0x7
	.byte	0x8
	.byte	0x26
	.byte	0x50
	.long	0x382
	.uleb128 0x8
	.long	.LASF56
	.byte	0x26
	.byte	0x51
	.long	0x310
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF57
	.byte	0x26
	.byte	0x52
	.long	0xef
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF58
	.byte	0x26
	.byte	0x53
	.long	0x336
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF59
	.byte	0x26
	.byte	0x54
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x2
	.long	.LASF60
	.byte	0x26
	.byte	0x55
	.long	0x341
	.uleb128 0x2
	.long	.LASF61
	.byte	0x26
	.byte	0x55
	.long	0x398
	.uleb128 0xa
	.byte	0x2
	.long	0x341
	.uleb128 0x7
	.byte	0x9
	.byte	0x28
	.byte	0x14
	.long	0x3ed
	.uleb128 0x8
	.long	.LASF27
	.byte	0x28
	.byte	0x15
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF62
	.byte	0x28
	.byte	0x16
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF63
	.byte	0x28
	.byte	0x17
	.long	0x38d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF64
	.byte	0x28
	.byte	0x1c
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.long	.LASF65
	.byte	0x28
	.byte	0x1d
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0x0
	.uleb128 0x2
	.long	.LASF66
	.byte	0x28
	.byte	0x1e
	.long	0x39e
	.uleb128 0x2
	.long	.LASF67
	.byte	0x28
	.byte	0x1e
	.long	0x403
	.uleb128 0xa
	.byte	0x2
	.long	0x39e
	.uleb128 0x7
	.byte	0xb
	.byte	0x28
	.byte	0x20
	.long	0x42e
	.uleb128 0x8
	.long	.LASF68
	.byte	0x28
	.byte	0x21
	.long	0x3ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x28
	.byte	0x22
	.long	0x146
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0x0
	.uleb128 0x2
	.long	.LASF70
	.byte	0x28
	.byte	0x23
	.long	0x439
	.uleb128 0xa
	.byte	0x2
	.long	0x409
	.uleb128 0x5
	.byte	0x2
	.byte	0x28
	.byte	0x25
	.long	0x45a
	.uleb128 0x6
	.long	.LASF71
	.sleb128 0
	.uleb128 0x6
	.long	.LASF72
	.sleb128 1
	.uleb128 0x6
	.long	.LASF73
	.sleb128 2
	.byte	0x0
	.uleb128 0x2
	.long	.LASF74
	.byte	0x28
	.byte	0x29
	.long	0x43f
	.uleb128 0x7
	.byte	0x10
	.byte	0x29
	.byte	0x10
	.long	0x4de
	.uleb128 0x8
	.long	.LASF68
	.byte	0x29
	.byte	0x11
	.long	0x3f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF75
	.byte	0x29
	.byte	0x14
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF76
	.byte	0x29
	.byte	0x15
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF77
	.byte	0x29
	.byte	0x18
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF78
	.byte	0x29
	.byte	0x19
	.long	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF79
	.byte	0x29
	.byte	0x1c
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF80
	.byte	0x29
	.byte	0x1d
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF81
	.byte	0x29
	.byte	0x1e
	.long	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0x0
	.uleb128 0x2
	.long	.LASF82
	.byte	0x29
	.byte	0x1f
	.long	0x465
	.uleb128 0x2
	.long	.LASF83
	.byte	0x29
	.byte	0x1f
	.long	0x4f4
	.uleb128 0xa
	.byte	0x2
	.long	0x465
	.uleb128 0x7
	.byte	0x1
	.byte	0x2c
	.byte	0x7
	.long	0x511
	.uleb128 0x8
	.long	.LASF84
	.byte	0x2c
	.byte	0x8
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF85
	.byte	0x2c
	.byte	0x9
	.long	0x4fa
	.uleb128 0x7
	.byte	0x4
	.byte	0x2c
	.byte	0xd
	.long	0x541
	.uleb128 0x8
	.long	.LASF86
	.byte	0x2c
	.byte	0xe
	.long	0x541
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF87
	.byte	0x2c
	.byte	0xf
	.long	0x58
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0xb1
	.uleb128 0x2
	.long	.LASF88
	.byte	0x2c
	.byte	0x10
	.long	0x51c
	.uleb128 0x5
	.byte	0x2
	.byte	0x2c
	.byte	0x15
	.long	0x56d
	.uleb128 0x6
	.long	.LASF89
	.sleb128 0
	.uleb128 0x6
	.long	.LASF90
	.sleb128 1
	.uleb128 0x6
	.long	.LASF91
	.sleb128 2
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x2c
	.byte	0x12
	.long	0x5a0
	.uleb128 0x8
	.long	.LASF92
	.byte	0x2c
	.byte	0x13
	.long	0x547
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF93
	.byte	0x2c
	.byte	0x14
	.long	0x511
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF94
	.byte	0x2c
	.byte	0x19
	.long	0x552
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x2
	.long	.LASF95
	.byte	0x2c
	.byte	0x1a
	.long	0x56d
	.uleb128 0x5
	.byte	0x2
	.byte	0x2c
	.byte	0x1c
	.long	0x5f0
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
	.uleb128 0x6
	.long	.LASF103
	.sleb128 7
	.uleb128 0x6
	.long	.LASF104
	.sleb128 8
	.uleb128 0x6
	.long	.LASF105
	.sleb128 9
	.byte	0x0
	.uleb128 0x2
	.long	.LASF106
	.byte	0x2c
	.byte	0x32
	.long	0x5ab
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF107
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF107
	.uleb128 0x5
	.byte	0x2
	.byte	0x2b
	.byte	0x15
	.long	0x6ad
	.uleb128 0x6
	.long	.LASF108
	.sleb128 0
	.uleb128 0x6
	.long	.LASF109
	.sleb128 1
	.uleb128 0x6
	.long	.LASF110
	.sleb128 2
	.uleb128 0x6
	.long	.LASF111
	.sleb128 3
	.uleb128 0x6
	.long	.LASF112
	.sleb128 16
	.uleb128 0x6
	.long	.LASF113
	.sleb128 17
	.uleb128 0x6
	.long	.LASF114
	.sleb128 18
	.uleb128 0x6
	.long	.LASF115
	.sleb128 19
	.uleb128 0x6
	.long	.LASF116
	.sleb128 20
	.uleb128 0x6
	.long	.LASF117
	.sleb128 21
	.uleb128 0x6
	.long	.LASF118
	.sleb128 22
	.uleb128 0x6
	.long	.LASF119
	.sleb128 23
	.uleb128 0x6
	.long	.LASF120
	.sleb128 24
	.uleb128 0x6
	.long	.LASF121
	.sleb128 25
	.uleb128 0x6
	.long	.LASF122
	.sleb128 26
	.uleb128 0x6
	.long	.LASF123
	.sleb128 27
	.uleb128 0x6
	.long	.LASF124
	.sleb128 48
	.uleb128 0x6
	.long	.LASF125
	.sleb128 49
	.uleb128 0x6
	.long	.LASF126
	.sleb128 50
	.uleb128 0x6
	.long	.LASF127
	.sleb128 51
	.uleb128 0x6
	.long	.LASF128
	.sleb128 64
	.uleb128 0x6
	.long	.LASF129
	.sleb128 65
	.uleb128 0x6
	.long	.LASF130
	.sleb128 66
	.uleb128 0x6
	.long	.LASF131
	.sleb128 67
	.uleb128 0x6
	.long	.LASF132
	.sleb128 255
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x2b
	.byte	0x41
	.long	0x6ce
	.uleb128 0x9
	.string	"x"
	.byte	0x2b
	.byte	0x42
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x2b
	.byte	0x43
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF133
	.byte	0x2b
	.byte	0x44
	.long	0x6ad
	.uleb128 0x2
	.long	.LASF134
	.byte	0x2b
	.byte	0x44
	.long	0x6ad
	.uleb128 0x7
	.byte	0x2
	.byte	0x2b
	.byte	0x46
	.long	0x709
	.uleb128 0x8
	.long	.LASF135
	.byte	0x2b
	.byte	0x47
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF136
	.byte	0x2b
	.byte	0x48
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF137
	.byte	0x2b
	.byte	0x4b
	.long	0x6e4
	.uleb128 0x2
	.long	.LASF138
	.byte	0x2b
	.byte	0x4e
	.long	0x71f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF139
	.uleb128 0x7
	.byte	0x2
	.byte	0x2b
	.byte	0x66
	.long	0x74b
	.uleb128 0x9
	.string	"ddr"
	.byte	0x2b
	.byte	0x67
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF15
	.byte	0x2b
	.byte	0x68
	.long	0x3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x2
	.long	.LASF140
	.byte	0x2b
	.byte	0x69
	.long	0x726
	.uleb128 0x7
	.byte	0x2
	.byte	0x37
	.byte	0xe
	.long	0x76d
	.uleb128 0x8
	.long	.LASF141
	.byte	0x37
	.byte	0xf
	.long	0xa6
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x2
	.long	.LASF142
	.byte	0x37
	.byte	0x10
	.long	0x756
	.uleb128 0xe
	.long	.LASF143
	.byte	0x4a
	.byte	0x36
	.byte	0x1
	.byte	0x3
	.long	0x791
	.uleb128 0xf
	.string	"__s"
	.byte	0x4a
	.byte	0x36
	.long	0x791
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x797
	.uleb128 0x10
	.long	0x3f
	.uleb128 0xe
	.long	.LASF144
	.byte	0x3b
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.long	0x7b5
	.uleb128 0xf
	.string	"led"
	.byte	0x3b
	.byte	0xe
	.long	0x179
	.byte	0x0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF151
	.byte	0x46
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.long	0x7cf
	.uleb128 0x12
	.long	.LASF68
	.byte	0x46
	.byte	0x14
	.long	0x4e9
	.byte	0x0
	.uleb128 0xe
	.long	.LASF145
	.byte	0x48
	.byte	0x57
	.byte	0x1
	.byte	0x3
	.long	0x7e8
	.uleb128 0x12
	.long	.LASF86
	.byte	0x48
	.byte	0x57
	.long	0x3f
	.byte	0x0
	.uleb128 0x13
	.long	.LASF413
	.byte	0x48
	.byte	0x86
	.byte	0x3
	.uleb128 0x14
	.long	.LASF155
	.byte	0x4a
	.byte	0x30
	.byte	0x1
	.long	0x3f
	.byte	0x3
	.uleb128 0xe
	.long	.LASF146
	.byte	0x9
	.byte	0x84
	.byte	0x1
	.byte	0x3
	.long	0x877
	.uleb128 0x12
	.long	.LASF147
	.byte	0x9
	.byte	0x84
	.long	0x877
	.uleb128 0x15
	.long	.LASF148
	.byte	0x9
	.byte	0x86
	.long	0x58
	.uleb128 0x15
	.long	.LASF149
	.byte	0x9
	.byte	0x87
	.long	0x877
	.uleb128 0x15
	.long	.LASF150
	.byte	0x9
	.byte	0x89
	.long	0x71
	.uleb128 0x16
	.byte	0x1
	.long	.LASF152
	.byte	0x9
	.byte	0x8a
	.byte	0x1
	.byte	0x1
	.long	0x84a
	.uleb128 0x17
	.long	0x7c
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF176
	.byte	0x4e
	.byte	0x0
	.byte	0x1
	.long	0x877
	.byte	0x1
	.long	0x862
	.uleb128 0x17
	.long	0x877
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF153
	.byte	0x4e
	.byte	0x0
	.byte	0x1
	.long	0x877
	.byte	0x1
	.uleb128 0x17
	.long	0x877
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.long	.LASF154
	.uleb128 0x1a
	.long	.LASF156
	.byte	0x48
	.byte	0x5d
	.long	.LFB74
	.long	.LFE74
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF157
	.byte	0x48
	.byte	0x99
	.long	.LFB79
	.long	.LFE79
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1a
	.long	.LASF158
	.byte	0x48
	.byte	0xa4
	.long	.LFB80
	.long	.LFE80
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.long	.LASF190
	.byte	0x47
	.byte	0x2b
	.byte	0x1
	.long	.LFB88
	.long	.LFE88
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8ee
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x47
	.byte	0x2b
	.long	0xb1
	.long	.LLST0
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x47
	.byte	0x2b
	.long	0x547
	.long	.LLST1
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF161
	.byte	0x2
	.byte	0x12
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF162
	.byte	0x2
	.byte	0x1c
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF170
	.byte	0x2
	.byte	0x1e
	.long	0x3f
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF163
	.byte	0x34
	.byte	0xe
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF164
	.byte	0x34
	.byte	0x14
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF165
	.byte	0x32
	.byte	0xf
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF166
	.byte	0x32
	.byte	0x1e
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF167
	.byte	0x31
	.byte	0xe
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF168
	.byte	0x31
	.byte	0x18
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF169
	.byte	0x35
	.byte	0x1d
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF171
	.byte	0x36
	.byte	0x7
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF172
	.byte	0x37
	.byte	0x12
	.long	0x1ec
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF173
	.byte	0x37
	.byte	0x16
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa13
	.uleb128 0x21
	.long	.LASF81
	.byte	0x37
	.byte	0x16
	.long	0x1ec
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF239
	.byte	0x37
	.byte	0x1b
	.byte	0x1
	.long	0xa6
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa40
	.uleb128 0x1c
	.long	.LASF81
	.byte	0x37
	.byte	0x1b
	.long	0x1ec
	.long	.LLST2
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF174
	.byte	0x37
	.byte	0x20
	.byte	0x1
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa6c
	.uleb128 0x21
	.long	.LASF81
	.byte	0x37
	.byte	0x20
	.long	0x1ec
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF175
	.byte	0x38
	.byte	0x8
	.long	.LFB43
	.long	.LFE43
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF177
	.byte	0x3a
	.byte	0x16
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb15
	.uleb128 0x24
	.long	0x79c
	.long	.LBB28
	.long	.LBE28
	.byte	0x3a
	.byte	0x17
	.long	0xab8
	.uleb128 0x25
	.long	0x7a9
	.byte	0x6
	.byte	0x3
	.long	LeftYellow_
	.byte	0x9f
	.byte	0x0
	.uleb128 0x24
	.long	0x79c
	.long	.LBB30
	.long	.LBE30
	.byte	0x3a
	.byte	0x18
	.long	0xad8
	.uleb128 0x25
	.long	0x7a9
	.byte	0x6
	.byte	0x3
	.long	LeftRed_
	.byte	0x9f
	.byte	0x0
	.uleb128 0x24
	.long	0x79c
	.long	.LBB32
	.long	.LBE32
	.byte	0x3a
	.byte	0x19
	.long	0xaf8
	.uleb128 0x25
	.long	0x7a9
	.byte	0x6
	.byte	0x3
	.long	RightRed_
	.byte	0x9f
	.byte	0x0
	.uleb128 0x26
	.long	0x79c
	.long	.LBB34
	.long	.LBE34
	.byte	0x3a
	.byte	0x1a
	.uleb128 0x25
	.long	0x7a9
	.byte	0x6
	.byte	0x3
	.long	RightYellow_
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF178
	.byte	0x3a
	.byte	0x22
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF179
	.byte	0x3e
	.byte	0x12
	.byte	0x1
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb52
	.uleb128 0x1c
	.long	.LASF180
	.byte	0x3e
	.byte	0x12
	.long	0x23b
	.long	.LLST3
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF181
	.byte	0x3d
	.byte	0x10
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF182
	.byte	0x3d
	.byte	0x17
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF183
	.byte	0x42
	.byte	0xe
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xba3
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x42
	.byte	0xe
	.long	0x3f8
	.long	.LLST4
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF184
	.byte	0x42
	.byte	0x1a
	.byte	0x1
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xbcc
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x42
	.byte	0x1a
	.long	0x42e
	.long	.LLST5
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF185
	.byte	0x41
	.byte	0x10
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF186
	.byte	0x41
	.byte	0x1d
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x27
	.long	0x7b5
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc13
	.uleb128 0x28
	.long	0x7c3
	.long	.LLST6
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF187
	.byte	0x45
	.byte	0x2c
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF188
	.byte	0x44
	.byte	0xa
	.byte	0x1
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc50
	.uleb128 0x1c
	.long	.LASF189
	.byte	0x44
	.byte	0xa
	.long	0xa6
	.long	.LLST7
	.byte	0x0
	.uleb128 0x1b
	.long	.LASF191
	.byte	0x45
	.byte	0x19
	.byte	0x1
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc87
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x45
	.byte	0x19
	.long	0x4e9
	.long	.LLST8
	.uleb128 0x1c
	.long	.LASF192
	.byte	0x45
	.byte	0x19
	.long	0xa6
	.long	.LLST9
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF193
	.byte	0x45
	.byte	0x28
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xcb0
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x45
	.byte	0x28
	.long	0x4e9
	.long	.LLST10
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF194
	.byte	0x45
	.byte	0x24
	.byte	0x1
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xcd9
	.uleb128 0x1c
	.long	.LASF68
	.byte	0x45
	.byte	0x24
	.long	0x4e9
	.long	.LLST11
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF195
	.byte	0x44
	.byte	0x13
	.byte	0x1
	.long	.LFB60
	.long	.LFE60
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF196
	.byte	0x44
	.byte	0x18
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd43
	.uleb128 0x24
	.long	0x7b5
	.long	.LBB36
	.long	.LBE36
	.byte	0x44
	.byte	0x1b
	.long	0xd26
	.uleb128 0x25
	.long	0x7c3
	.byte	0x6
	.byte	0x3
	.long	LeftMotor_
	.byte	0x9f
	.byte	0x0
	.uleb128 0x26
	.long	0x7b5
	.long	.LBB38
	.long	.LBE38
	.byte	0x44
	.byte	0x1c
	.uleb128 0x25
	.long	0x7c3
	.byte	0x6
	.byte	0x3
	.long	RightMotor_
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF197
	.byte	0x44
	.byte	0x1e
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.long	.LASF198
	.byte	0x48
	.byte	0x28
	.long	0x547
	.long	.LFB68
	.long	.LFE68
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF199
	.byte	0x48
	.byte	0x29
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xda1
	.uleb128 0x21
	.long	.LASF200
	.byte	0x48
	.byte	0x29
	.long	0x547
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
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF201
	.byte	0x48
	.byte	0x2f
	.long	.LFB70
	.long	.LFE70
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF202
	.byte	0x48
	.byte	0x42
	.long	.LFB71
	.long	.LFE71
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF203
	.byte	0x48
	.byte	0x4f
	.long	.LFB72
	.long	.LFE72
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF204
	.byte	0x48
	.byte	0x67
	.long	0xa6
	.long	.LFB75
	.long	.LFE75
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xe08
	.uleb128 0x2a
	.long	.LASF210
	.byte	0x48
	.byte	0x68
	.long	0x5a0
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x1a
	.long	.LASF205
	.byte	0x48
	.byte	0x7d
	.long	.LFB76
	.long	.LFE76
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF206
	.byte	0x48
	.byte	0x90
	.long	.LFB78
	.long	.LFE78
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF207
	.byte	0x48
	.byte	0xaf
	.byte	0x1
	.long	.LFB81
	.long	.LFE81
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xe8e
	.uleb128 0x24
	.long	0x7cf
	.long	.LBB40
	.long	.LBE40
	.byte	0x48
	.byte	0xb7
	.long	0xe65
	.uleb128 0x28
	.long	0x7dc
	.long	.LLST12
	.byte	0x0
	.uleb128 0x2b
	.long	0x7e8
	.long	.LBB42
	.long	.LBE42
	.byte	0x48
	.byte	0xbb
	.uleb128 0x26
	.long	0x7cf
	.long	.LBB44
	.long	.LBE44
	.byte	0x48
	.byte	0xc3
	.uleb128 0x28
	.long	0x7dc
	.long	.LLST13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF208
	.byte	0x48
	.word	0x133
	.byte	0x1
	.long	.LFB85
	.long	.LFE85
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xed7
	.uleb128 0x2d
	.long	.LASF22
	.byte	0x48
	.word	0x133
	.long	0x51
	.long	.LLST14
	.uleb128 0x2d
	.long	.LASF209
	.byte	0x48
	.word	0x133
	.long	0xed7
	.long	.LLST15
	.uleb128 0x2e
	.string	"i"
	.byte	0x48
	.word	0x134
	.long	0x51
	.long	.LLST16
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x5a0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF211
	.byte	0x48
	.word	0x12b
	.byte	0x1
	.long	.LFB84
	.long	.LFE84
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xf37
	.uleb128 0x2d
	.long	.LASF212
	.byte	0x48
	.word	0x12b
	.long	0x511
	.long	.LLST17
	.uleb128 0x2d
	.long	.LASF213
	.byte	0x48
	.word	0x12b
	.long	0x547
	.long	.LLST18
	.uleb128 0x2d
	.long	.LASF214
	.byte	0x48
	.word	0x12b
	.long	0x547
	.long	.LLST19
	.uleb128 0x2f
	.string	"ops"
	.byte	0x48
	.word	0x12c
	.long	0xf37
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x30
	.long	0x5a0
	.long	0xf47
	.uleb128 0x31
	.long	0x63
	.byte	0x1
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF215
	.byte	0x48
	.word	0x126
	.byte	0x1
	.long	.LFB83
	.long	.LFE83
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xf90
	.uleb128 0x2d
	.long	.LASF212
	.byte	0x48
	.word	0x126
	.long	0x511
	.long	.LLST20
	.uleb128 0x2d
	.long	.LASF214
	.byte	0x48
	.word	0x126
	.long	0x547
	.long	.LLST21
	.uleb128 0x2f
	.string	"op"
	.byte	0x48
	.word	0x127
	.long	0xf90
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x30
	.long	0x5a0
	.long	0xfa0
	.uleb128 0x31
	.long	0x63
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF216
	.byte	0x48
	.word	0x121
	.byte	0x1
	.long	.LFB82
	.long	.LFE82
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xfe9
	.uleb128 0x2d
	.long	.LASF212
	.byte	0x48
	.word	0x121
	.long	0x511
	.long	.LLST22
	.uleb128 0x2d
	.long	.LASF86
	.byte	0x48
	.word	0x121
	.long	0x547
	.long	.LLST23
	.uleb128 0x2f
	.string	"op"
	.byte	0x48
	.word	0x122
	.long	0xf90
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF217
	.byte	0x48
	.word	0x13e
	.long	.LFB86
	.long	.LFE86
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x10a3
	.uleb128 0x33
	.long	.LBB46
	.long	.LBE46
	.uleb128 0x34
	.long	.LASF218
	.byte	0x48
	.word	0x140
	.long	0x3f
	.long	.LLST24
	.uleb128 0x35
	.long	.LBB47
	.long	.LBE47
	.long	0x1066
	.uleb128 0x36
	.long	.LASF219
	.byte	0x48
	.word	0x141
	.long	0x3f
	.byte	0x0
	.uleb128 0x34
	.long	.LASF220
	.byte	0x48
	.word	0x141
	.long	0x3f
	.long	.LLST25
	.uleb128 0x37
	.long	0x7f0
	.long	.LBB48
	.long	.LBE48
	.byte	0x48
	.word	0x141
	.uleb128 0x37
	.long	0x778
	.long	.LBB50
	.long	.LBE50
	.byte	0x48
	.word	0x141
	.byte	0x0
	.uleb128 0x38
	.long	0x7fd
	.long	.LBB52
	.long	.LBE52
	.byte	0x48
	.word	0x148
	.uleb128 0x39
	.long	0x80a
	.byte	0x4
	.long	0x3f800000
	.uleb128 0x33
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x3a
	.long	0x815
	.uleb128 0x3b
	.long	0x820
	.byte	0x4
	.long	0x469c4000
	.uleb128 0x3c
	.long	0x82b
	.word	0x4e20
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF221
	.byte	0x48
	.word	0x14f
	.byte	0x1
	.long	.LFB87
	.long	.LFE87
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x10dd
	.uleb128 0x2d
	.long	.LASF222
	.byte	0x48
	.word	0x14f
	.long	0x10dd
	.long	.LLST26
	.uleb128 0x3d
	.long	.LASF223
	.byte	0x48
	.word	0x150
	.long	0x3f
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x58
	.uleb128 0x20
	.byte	0x1
	.long	.LASF224
	.byte	0x47
	.byte	0x31
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x112a
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x47
	.byte	0x31
	.long	0x511
	.long	.LLST27
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x47
	.byte	0x31
	.long	0xb1
	.long	.LLST28
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x47
	.byte	0x31
	.long	0x547
	.long	.LLST29
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF225
	.byte	0x47
	.byte	0x36
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1171
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x47
	.byte	0x36
	.long	0x511
	.long	.LLST30
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x47
	.byte	0x36
	.long	0xb1
	.long	.LLST31
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x47
	.byte	0x36
	.long	0x547
	.long	.LLST32
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF226
	.byte	0x2b
	.byte	0x6f
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x11a5
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x6f
	.long	0x58
	.long	.LLST33
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x6f
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF227
	.byte	0x2b
	.byte	0x61
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x11d9
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x61
	.long	0x2d
	.long	.LLST34
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x61
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF228
	.byte	0x2b
	.byte	0x60
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x120c
	.uleb128 0x21
	.long	.LASF160
	.byte	0x2b
	.byte	0x60
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x60
	.long	0x547
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF229
	.byte	0x2b
	.byte	0x5f
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1230
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x5f
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF231
	.byte	0x2b
	.byte	0x56
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1264
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x56
	.long	0x3f
	.long	.LLST35
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x56
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF232
	.byte	0x2b
	.byte	0x53
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1298
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x53
	.long	0x3f
	.long	.LLST36
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x53
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF233
	.byte	0x2b
	.byte	0x52
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x12cc
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x52
	.long	0x3f
	.long	.LLST37
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x52
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF234
	.byte	0x2b
	.byte	0x51
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x12ff
	.uleb128 0x21
	.long	.LASF160
	.byte	0x2b
	.byte	0x51
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x51
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF235
	.byte	0x2b
	.byte	0x3f
	.byte	0x1
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1333
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x3f
	.long	0x3f
	.long	.LLST38
	.uleb128 0x3e
	.string	"buf"
	.byte	0x2b
	.byte	0x3f
	.long	0x547
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF236
	.byte	0x2b
	.byte	0x3c
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1357
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x3c
	.long	0x547
	.byte	0x0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF237
	.byte	0x47
	.byte	0x3b
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x13ad
	.uleb128 0x1c
	.long	.LASF93
	.byte	0x47
	.byte	0x3b
	.long	0x511
	.long	.LLST39
	.uleb128 0x1c
	.long	.LASF159
	.byte	0x47
	.byte	0x3b
	.long	0xb1
	.long	.LLST40
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x47
	.byte	0x3b
	.long	0x547
	.long	.LLST41
	.uleb128 0x1c
	.long	.LASF238
	.byte	0x47
	.byte	0x3b
	.long	0x547
	.long	.LLST42
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF240
	.byte	0x2b
	.byte	0x6e
	.byte	0x1
	.long	0x3f
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x13fe
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x6e
	.long	0x3f
	.long	.LLST43
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x6e
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x6e
	.long	0x3f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x6e
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF243
	.byte	0x2b
	.byte	0x6d
	.byte	0x1
	.long	0x58
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1450
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x6d
	.long	0x3f
	.long	.LLST44
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x6d
	.long	0x547
	.uleb128 0x3f
	.long	.LASF241
	.byte	0x2b
	.byte	0x6d
	.long	0x58
	.long	.LLST45
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x6d
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF244
	.byte	0x2b
	.byte	0x6c
	.byte	0x1
	.long	0x3f
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x14a0
	.uleb128 0x21
	.long	.LASF160
	.byte	0x2b
	.byte	0x6c
	.long	0x74b
	.byte	0x2
	.byte	0x8c
	.sleb128 2
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x6c
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x6c
	.long	0x3f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x6c
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF245
	.byte	0x2b
	.byte	0x64
	.byte	0x1
	.long	0xb1
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1500
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x64
	.long	0x1500
	.long	.LLST46
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x2b
	.byte	0x64
	.long	0x58
	.long	.LLST47
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x64
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x64
	.long	0xb1
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x64
	.long	0x547
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x714
	.uleb128 0x22
	.byte	0x1
	.long	.LASF247
	.byte	0x2b
	.byte	0x5c
	.byte	0x1
	.long	0x6ce
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1556
	.uleb128 0x21
	.long	.LASF160
	.byte	0x2b
	.byte	0x5c
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x5c
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x5c
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x5c
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF248
	.byte	0x2b
	.byte	0x5b
	.byte	0x1
	.long	0x6ce
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x15a7
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x5b
	.long	0x3f
	.long	.LLST48
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x5b
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x5b
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x5b
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF249
	.byte	0x2b
	.byte	0x5a
	.byte	0x1
	.long	0x6ce
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1607
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x5a
	.long	0x1607
	.long	.LLST49
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x2b
	.byte	0x5a
	.long	0x58
	.long	.LLST50
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x5a
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x5a
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x5a
	.long	0x547
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x709
	.uleb128 0x22
	.byte	0x1
	.long	.LASF250
	.byte	0x2b
	.byte	0x59
	.byte	0x1
	.long	0x6ce
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x165d
	.uleb128 0x21
	.long	.LASF160
	.byte	0x2b
	.byte	0x59
	.long	0x6d9
	.byte	0x2
	.byte	0x8c
	.sleb128 3
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x59
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x59
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x59
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF251
	.byte	0x2b
	.byte	0x58
	.byte	0x1
	.long	0x6ce
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x16ae
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x58
	.long	0x3f
	.long	.LLST51
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x58
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x58
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x58
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF252
	.byte	0x2b
	.byte	0x57
	.byte	0x1
	.long	0x6ce
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x16ff
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x57
	.long	0x3f
	.long	.LLST52
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x57
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x57
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x57
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF253
	.byte	0x2b
	.byte	0x55
	.byte	0x1
	.long	0x3f
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x175f
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x55
	.long	0x1500
	.long	.LLST53
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x2b
	.byte	0x55
	.long	0x58
	.long	.LLST54
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x55
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x55
	.long	0x3f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x55
	.long	0x547
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF254
	.byte	0x2b
	.byte	0x54
	.byte	0x1
	.long	0x6ce
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x17bf
	.uleb128 0x1c
	.long	.LASF160
	.byte	0x2b
	.byte	0x54
	.long	0x1500
	.long	.LLST55
	.uleb128 0x1c
	.long	.LASF246
	.byte	0x2b
	.byte	0x54
	.long	0x58
	.long	.LLST56
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x54
	.long	0x547
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x54
	.long	0x6ce
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x54
	.long	0x547
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF255
	.byte	0x2b
	.byte	0x3e
	.long	0x3f
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1800
	.uleb128 0x2a
	.long	.LASF241
	.byte	0x2b
	.byte	0x3e
	.long	0x3f
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x3e
	.long	0x547
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x3e
	.long	0x547
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF256
	.byte	0x2b
	.byte	0x3d
	.long	0x58
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1842
	.uleb128 0x3f
	.long	.LASF241
	.byte	0x2b
	.byte	0x3d
	.long	0x58
	.long	.LLST57
	.uleb128 0x15
	.long	.LASF230
	.byte	0x2b
	.byte	0x3d
	.long	0x547
	.uleb128 0x15
	.long	.LASF242
	.byte	0x2b
	.byte	0x3d
	.long	0x547
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF257
	.byte	0x4d
	.byte	0xe
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF258
	.byte	0x4d
	.byte	0x11
	.long	.LFB93
	.long	.LFE93
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF259
	.byte	0x4d
	.byte	0x27
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x40
	.long	.LASF260
	.byte	0x2
	.byte	0x10
	.long	0x3f
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF261
	.byte	0x1d
	.byte	0xf
	.long	0x1898
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x71
	.uleb128 0x40
	.long	.LASF262
	.byte	0x21
	.byte	0xd
	.long	0x230
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF263
	.byte	0x21
	.byte	0xd
	.long	0x18b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x23b
	.uleb128 0x40
	.long	.LASF264
	.byte	0x21
	.byte	0xe
	.long	0x230
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF265
	.byte	0x21
	.byte	0xe
	.long	0x18b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF266
	.byte	0x21
	.byte	0xf
	.long	0x230
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF267
	.byte	0x21
	.byte	0xf
	.long	0x18b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF268
	.byte	0x21
	.byte	0x10
	.long	0x230
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF269
	.byte	0x21
	.byte	0x10
	.long	0x18b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF270
	.byte	0x23
	.byte	0xd
	.long	0x16e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF271
	.byte	0x23
	.byte	0xd
	.long	0x1924
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x179
	.uleb128 0x40
	.long	.LASF272
	.byte	0x23
	.byte	0xe
	.long	0x16e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF273
	.byte	0x23
	.byte	0xe
	.long	0x1924
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF274
	.byte	0x23
	.byte	0xf
	.long	0x16e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF275
	.byte	0x23
	.byte	0xf
	.long	0x1924
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF276
	.byte	0x23
	.byte	0x10
	.long	0x16e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF277
	.byte	0x23
	.byte	0x10
	.long	0x1924
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF278
	.byte	0x23
	.byte	0x11
	.long	0x1b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF279
	.byte	0x23
	.byte	0x12
	.long	0x1b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF280
	.byte	0x23
	.byte	0x13
	.long	0x1b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF281
	.byte	0x23
	.byte	0x14
	.long	0x1b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF282
	.byte	0x23
	.byte	0x15
	.long	0x1b5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF283
	.byte	0x27
	.byte	0xd
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF284
	.byte	0x27
	.byte	0xd
	.long	0x19d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x105
	.uleb128 0x40
	.long	.LASF285
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF286
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF287
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF288
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF289
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF290
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF291
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF292
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF293
	.byte	0x27
	.byte	0xe
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF294
	.byte	0x27
	.byte	0xe
	.long	0x19d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF295
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF296
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x146
	.uleb128 0x40
	.long	.LASF297
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF298
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF299
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF300
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF301
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF302
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF303
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF304
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF305
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF306
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF307
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF308
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF309
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF310
	.byte	0x27
	.byte	0xf
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF311
	.byte	0x27
	.byte	0xf
	.long	0x19d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF312
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF313
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF314
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF315
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF316
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF317
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF318
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF319
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF320
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF321
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF322
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF323
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF324
	.byte	0x27
	.byte	0x10
	.long	0xfa
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF325
	.byte	0x27
	.byte	0x10
	.long	0x19d2
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF326
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF327
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF328
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF329
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF330
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF331
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF332
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF333
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF334
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF335
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF336
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF337
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF338
	.byte	0x25
	.byte	0xe
	.long	0x305
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF339
	.byte	0x25
	.byte	0xe
	.long	0x1ca7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x310
	.uleb128 0x40
	.long	.LASF340
	.byte	0x25
	.byte	0xf
	.long	0x305
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF341
	.byte	0x25
	.byte	0xf
	.long	0x1ca7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF342
	.byte	0x25
	.byte	0x10
	.long	0x305
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF343
	.byte	0x25
	.byte	0x10
	.long	0x1ca7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF344
	.byte	0x25
	.byte	0x11
	.long	0x305
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF345
	.byte	0x25
	.byte	0x11
	.long	0x1ca7
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF346
	.byte	0x25
	.byte	0x13
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF347
	.byte	0x25
	.byte	0x14
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF348
	.byte	0x25
	.byte	0x15
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF349
	.byte	0x25
	.byte	0x15
	.long	0x1d2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x38d
	.uleb128 0x40
	.long	.LASF350
	.byte	0x25
	.byte	0x16
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF351
	.byte	0x25
	.byte	0x16
	.long	0x1d2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF352
	.byte	0x25
	.byte	0x17
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF353
	.byte	0x25
	.byte	0x18
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF354
	.byte	0x25
	.byte	0x19
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF355
	.byte	0x25
	.byte	0x19
	.long	0x1d2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF356
	.byte	0x25
	.byte	0x1a
	.long	0x382
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF357
	.byte	0x25
	.byte	0x1a
	.long	0x1d2e
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF358
	.byte	0x24
	.byte	0xf
	.long	0x3ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF359
	.byte	0x24
	.byte	0xf
	.long	0x1db5
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x3f8
	.uleb128 0x40
	.long	.LASF360
	.byte	0x24
	.byte	0x10
	.long	0x3ed
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF361
	.byte	0x24
	.byte	0x10
	.long	0x1db5
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF362
	.byte	0x24
	.byte	0x11
	.long	0x4de
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF363
	.byte	0x24
	.byte	0x11
	.long	0x1dee
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.long	0x4e9
	.uleb128 0x40
	.long	.LASF364
	.byte	0x24
	.byte	0x12
	.long	0x4de
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF365
	.byte	0x24
	.byte	0x12
	.long	0x1dee
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF366
	.byte	0x2c
	.byte	0x35
	.long	0x1e1a
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0xa6
	.uleb128 0x40
	.long	.LASF367
	.byte	0x2c
	.byte	0x36
	.long	0x5f0
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF368
	.byte	0x2b
	.byte	0x6
	.long	0x511
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x179
	.long	0x1e49
	.uleb128 0x31
	.long	0x63
	.byte	0x1
	.byte	0x0
	.uleb128 0x40
	.long	.LASF369
	.byte	0x3a
	.byte	0x10
	.long	0x1e39
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF370
	.byte	0x3a
	.byte	0x11
	.long	0x1e39
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF371
	.byte	0x3a
	.byte	0x12
	.long	0x1e39
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF372
	.byte	0x3a
	.byte	0x13
	.long	0x1e39
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x179
	.long	0x1e8d
	.uleb128 0x31
	.long	0x63
	.byte	0x3
	.byte	0x0
	.uleb128 0x40
	.long	.LASF373
	.byte	0x3a
	.byte	0x14
	.long	0x1e7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF374
	.byte	0x45
	.byte	0x16
	.long	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF375
	.byte	0x45
	.byte	0x17
	.long	0xa6
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF376
	.byte	0x48
	.byte	0x3b
	.long	0x511
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF377
	.byte	0x48
	.byte	0x3c
	.long	0x58
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF200
	.byte	0x48
	.byte	0x3d
	.long	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0x5a0
	.long	0x1eeb
	.uleb128 0x31
	.long	0x63
	.byte	0x2
	.byte	0x0
	.uleb128 0x40
	.long	.LASF378
	.byte	0x48
	.byte	0x3f
	.long	0x1edb
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF379
	.byte	0x48
	.byte	0x40
	.long	0x51
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.long	0xb1
	.long	0x1f15
	.uleb128 0x31
	.long	0x63
	.byte	0xfe
	.byte	0x0
	.uleb128 0x40
	.long	.LASF380
	.byte	0x47
	.byte	0xc
	.long	0x1f05
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.long	.LASF381
	.byte	0x47
	.byte	0xd
	.long	0x547
	.byte	0x1
	.byte	0x1
	.uleb128 0x41
	.long	.LASF260
	.byte	0x2
	.byte	0x10
	.long	0x3f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_reset_status
	.uleb128 0x41
	.long	.LASF261
	.byte	0x1d
	.byte	0xf
	.long	0x1898
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	milliseconds_running
	.uleb128 0x41
	.long	.LASF262
	.byte	0x21
	.byte	0xd
	.long	0x230
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonRightBackward_
	.uleb128 0x41
	.long	.LASF263
	.byte	0x21
	.byte	0xd
	.long	0x18b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonRightBackward
	.uleb128 0x41
	.long	.LASF264
	.byte	0x21
	.byte	0xe
	.long	0x230
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonRightForward_
	.uleb128 0x41
	.long	.LASF265
	.byte	0x21
	.byte	0xe
	.long	0x18b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonRightForward
	.uleb128 0x41
	.long	.LASF266
	.byte	0x21
	.byte	0xf
	.long	0x230
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonLeftBackward_
	.uleb128 0x41
	.long	.LASF267
	.byte	0x21
	.byte	0xf
	.long	0x18b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonLeftBackward
	.uleb128 0x41
	.long	.LASF268
	.byte	0x21
	.byte	0x10
	.long	0x230
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonLeftForward_
	.uleb128 0x41
	.long	.LASF269
	.byte	0x21
	.byte	0x10
	.long	0x18b7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonLeftForward
	.uleb128 0x41
	.long	.LASF270
	.byte	0x23
	.byte	0xd
	.long	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftYellow_
	.uleb128 0x41
	.long	.LASF271
	.byte	0x23
	.byte	0xd
	.long	0x1924
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftYellow
	.uleb128 0x41
	.long	.LASF272
	.byte	0x23
	.byte	0xe
	.long	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftRed_
	.uleb128 0x41
	.long	.LASF273
	.byte	0x23
	.byte	0xe
	.long	0x1924
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftRed
	.uleb128 0x41
	.long	.LASF274
	.byte	0x23
	.byte	0xf
	.long	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightRed_
	.uleb128 0x41
	.long	.LASF275
	.byte	0x23
	.byte	0xf
	.long	0x1924
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightRed
	.uleb128 0x41
	.long	.LASF276
	.byte	0x23
	.byte	0x10
	.long	0x16e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightYellow_
	.uleb128 0x41
	.long	.LASF277
	.byte	0x23
	.byte	0x10
	.long	0x1924
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightYellow
	.uleb128 0x41
	.long	.LASF278
	.byte	0x23
	.byte	0x11
	.long	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RedLeds_
	.uleb128 0x41
	.long	.LASF382
	.byte	0x23
	.byte	0x11
	.long	0x2097
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RedLeds
	.uleb128 0x10
	.long	0x1c0
	.uleb128 0x41
	.long	.LASF279
	.byte	0x23
	.byte	0x12
	.long	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	YellowLeds_
	.uleb128 0x41
	.long	.LASF383
	.byte	0x23
	.byte	0x12
	.long	0x2097
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	YellowLeds
	.uleb128 0x41
	.long	.LASF280
	.byte	0x23
	.byte	0x13
	.long	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightLeds_
	.uleb128 0x41
	.long	.LASF384
	.byte	0x23
	.byte	0x13
	.long	0x2097
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightLeds
	.uleb128 0x41
	.long	.LASF281
	.byte	0x23
	.byte	0x14
	.long	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftLeds_
	.uleb128 0x41
	.long	.LASF385
	.byte	0x23
	.byte	0x14
	.long	0x2097
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftLeds
	.uleb128 0x41
	.long	.LASF282
	.byte	0x23
	.byte	0x15
	.long	0x1b5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	AllLeds_
	.uleb128 0x41
	.long	.LASF386
	.byte	0x23
	.byte	0x15
	.long	0x2097
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	AllLeds
	.uleb128 0x41
	.long	.LASF283
	.byte	0x27
	.byte	0xd
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA_
	.uleb128 0x41
	.long	.LASF284
	.byte	0x27
	.byte	0xd
	.long	0x19d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA
	.uleb128 0x41
	.long	.LASF285
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0_
	.uleb128 0x41
	.long	.LASF387
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0
	.uleb128 0x41
	.long	.LASF286
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1_
	.uleb128 0x41
	.long	.LASF388
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1
	.uleb128 0x41
	.long	.LASF287
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2_
	.uleb128 0x41
	.long	.LASF389
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2
	.uleb128 0x41
	.long	.LASF288
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3_
	.uleb128 0x41
	.long	.LASF390
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3
	.uleb128 0x41
	.long	.LASF289
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4_
	.uleb128 0x41
	.long	.LASF391
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4
	.uleb128 0x41
	.long	.LASF290
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5_
	.uleb128 0x41
	.long	.LASF392
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5
	.uleb128 0x41
	.long	.LASF291
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6_
	.uleb128 0x41
	.long	.LASF393
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6
	.uleb128 0x41
	.long	.LASF292
	.byte	0x27
	.byte	0xd
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7_
	.uleb128 0x41
	.long	.LASF394
	.byte	0x27
	.byte	0xd
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7
	.uleb128 0x41
	.long	.LASF293
	.byte	0x27
	.byte	0xe
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB_
	.uleb128 0x41
	.long	.LASF294
	.byte	0x27
	.byte	0xe
	.long	0x19d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB
	.uleb128 0x41
	.long	.LASF295
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0_
	.uleb128 0x41
	.long	.LASF296
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0
	.uleb128 0x41
	.long	.LASF297
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1_
	.uleb128 0x41
	.long	.LASF298
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1
	.uleb128 0x41
	.long	.LASF299
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2_
	.uleb128 0x41
	.long	.LASF300
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2
	.uleb128 0x41
	.long	.LASF301
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3_
	.uleb128 0x41
	.long	.LASF302
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3
	.uleb128 0x41
	.long	.LASF303
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4_
	.uleb128 0x41
	.long	.LASF304
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4
	.uleb128 0x41
	.long	.LASF305
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5_
	.uleb128 0x41
	.long	.LASF395
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5
	.uleb128 0x41
	.long	.LASF306
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6_
	.uleb128 0x41
	.long	.LASF307
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6
	.uleb128 0x41
	.long	.LASF308
	.byte	0x27
	.byte	0xe
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7_
	.uleb128 0x41
	.long	.LASF309
	.byte	0x27
	.byte	0xe
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7
	.uleb128 0x41
	.long	.LASF310
	.byte	0x27
	.byte	0xf
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC_
	.uleb128 0x41
	.long	.LASF311
	.byte	0x27
	.byte	0xf
	.long	0x19d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC
	.uleb128 0x41
	.long	.LASF312
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0_
	.uleb128 0x41
	.long	.LASF396
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0
	.uleb128 0x41
	.long	.LASF313
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1_
	.uleb128 0x41
	.long	.LASF397
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1
	.uleb128 0x41
	.long	.LASF314
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2_
	.uleb128 0x41
	.long	.LASF398
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2
	.uleb128 0x41
	.long	.LASF315
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3_
	.uleb128 0x41
	.long	.LASF399
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3
	.uleb128 0x41
	.long	.LASF316
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4_
	.uleb128 0x41
	.long	.LASF317
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4
	.uleb128 0x41
	.long	.LASF318
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5_
	.uleb128 0x41
	.long	.LASF319
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5
	.uleb128 0x41
	.long	.LASF320
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6_
	.uleb128 0x41
	.long	.LASF321
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6
	.uleb128 0x41
	.long	.LASF322
	.byte	0x27
	.byte	0xf
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7_
	.uleb128 0x41
	.long	.LASF323
	.byte	0x27
	.byte	0xf
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7
	.uleb128 0x41
	.long	.LASF324
	.byte	0x27
	.byte	0x10
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD_
	.uleb128 0x41
	.long	.LASF325
	.byte	0x27
	.byte	0x10
	.long	0x19d2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD
	.uleb128 0x41
	.long	.LASF326
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0_
	.uleb128 0x41
	.long	.LASF400
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0
	.uleb128 0x41
	.long	.LASF327
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1_
	.uleb128 0x41
	.long	.LASF401
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1
	.uleb128 0x41
	.long	.LASF328
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2_
	.uleb128 0x41
	.long	.LASF402
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2
	.uleb128 0x41
	.long	.LASF329
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3_
	.uleb128 0x41
	.long	.LASF403
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3
	.uleb128 0x41
	.long	.LASF330
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4_
	.uleb128 0x41
	.long	.LASF331
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4
	.uleb128 0x41
	.long	.LASF332
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5_
	.uleb128 0x41
	.long	.LASF333
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5
	.uleb128 0x41
	.long	.LASF334
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6_
	.uleb128 0x41
	.long	.LASF335
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6
	.uleb128 0x41
	.long	.LASF336
	.byte	0x27
	.byte	0x10
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7_
	.uleb128 0x41
	.long	.LASF337
	.byte	0x27
	.byte	0x10
	.long	0x1a73
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7
	.uleb128 0x41
	.long	.LASF338
	.byte	0x25
	.byte	0xe
	.long	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0_
	.uleb128 0x41
	.long	.LASF339
	.byte	0x25
	.byte	0xe
	.long	0x1ca7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0
	.uleb128 0x41
	.long	.LASF340
	.byte	0x25
	.byte	0xf
	.long	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1_
	.uleb128 0x41
	.long	.LASF341
	.byte	0x25
	.byte	0xf
	.long	0x1ca7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1
	.uleb128 0x41
	.long	.LASF342
	.byte	0x25
	.byte	0x10
	.long	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2_
	.uleb128 0x41
	.long	.LASF343
	.byte	0x25
	.byte	0x10
	.long	0x1ca7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2
	.uleb128 0x41
	.long	.LASF344
	.byte	0x25
	.byte	0x11
	.long	0x305
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3_
	.uleb128 0x41
	.long	.LASF345
	.byte	0x25
	.byte	0x11
	.long	0x1ca7
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3
	.uleb128 0x41
	.long	.LASF346
	.byte	0x25
	.byte	0x13
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A_
	.uleb128 0x41
	.long	.LASF404
	.byte	0x25
	.byte	0x13
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A
	.uleb128 0x41
	.long	.LASF347
	.byte	0x25
	.byte	0x14
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B_
	.uleb128 0x41
	.long	.LASF405
	.byte	0x25
	.byte	0x14
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B
	.uleb128 0x41
	.long	.LASF348
	.byte	0x25
	.byte	0x15
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A_
	.uleb128 0x41
	.long	.LASF349
	.byte	0x25
	.byte	0x15
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A
	.uleb128 0x41
	.long	.LASF350
	.byte	0x25
	.byte	0x16
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B_
	.uleb128 0x41
	.long	.LASF351
	.byte	0x25
	.byte	0x16
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B
	.uleb128 0x41
	.long	.LASF352
	.byte	0x25
	.byte	0x17
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A_
	.uleb128 0x41
	.long	.LASF406
	.byte	0x25
	.byte	0x17
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A
	.uleb128 0x41
	.long	.LASF353
	.byte	0x25
	.byte	0x18
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B_
	.uleb128 0x41
	.long	.LASF407
	.byte	0x25
	.byte	0x18
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B
	.uleb128 0x41
	.long	.LASF354
	.byte	0x25
	.byte	0x19
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A_
	.uleb128 0x41
	.long	.LASF355
	.byte	0x25
	.byte	0x19
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A
	.uleb128 0x41
	.long	.LASF356
	.byte	0x25
	.byte	0x1a
	.long	0x382
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B_
	.uleb128 0x41
	.long	.LASF357
	.byte	0x25
	.byte	0x1a
	.long	0x1d2e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B
	.uleb128 0x41
	.long	.LASF358
	.byte	0x24
	.byte	0xf
	.long	0x3ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotorBase_
	.uleb128 0x41
	.long	.LASF359
	.byte	0x24
	.byte	0xf
	.long	0x1db5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotorBase
	.uleb128 0x41
	.long	.LASF360
	.byte	0x24
	.byte	0x10
	.long	0x3ed
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotorBase_
	.uleb128 0x41
	.long	.LASF361
	.byte	0x24
	.byte	0x10
	.long	0x1db5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotorBase
	.uleb128 0x41
	.long	.LASF362
	.byte	0x24
	.byte	0x11
	.long	0x4de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotor_
	.uleb128 0x41
	.long	.LASF363
	.byte	0x24
	.byte	0x11
	.long	0x1dee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotor
	.uleb128 0x41
	.long	.LASF364
	.byte	0x24
	.byte	0x12
	.long	0x4de
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotor_
	.uleb128 0x41
	.long	.LASF365
	.byte	0x24
	.byte	0x12
	.long	0x1dee
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotor
	.uleb128 0x41
	.long	.LASF408
	.byte	0x48
	.byte	0x1f
	.long	0x511
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TWIBroadcast
	.uleb128 0x41
	.long	.LASF366
	.byte	0x48
	.byte	0x3a
	.long	0x1e1a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_running
	.uleb128 0x41
	.long	.LASF367
	.byte	0x48
	.byte	0x3e
	.long	0x5f0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_error
	.uleb128 0x41
	.long	.LASF368
	.byte	0x2b
	.byte	0x6
	.long	0x511
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bgx1
	.uleb128 0x41
	.long	.LASF369
	.byte	0x3a
	.byte	0x10
	.long	0x1e39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	redLedsArray
	.uleb128 0x41
	.long	.LASF370
	.byte	0x3a
	.byte	0x11
	.long	0x1e39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	yellowLedsArray
	.uleb128 0x41
	.long	.LASF371
	.byte	0x3a
	.byte	0x12
	.long	0x1e39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rightLedsArray
	.uleb128 0x41
	.long	.LASF372
	.byte	0x3a
	.byte	0x13
	.long	0x1e39
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	leftLedsArray
	.uleb128 0x41
	.long	.LASF373
	.byte	0x3a
	.byte	0x14
	.long	0x1e7d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	allLedsArray
	.uleb128 0x41
	.long	.LASF374
	.byte	0x45
	.byte	0x16
	.long	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	motor_A_running
	.uleb128 0x41
	.long	.LASF375
	.byte	0x45
	.byte	0x17
	.long	0xa6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	motor_B_running
	.uleb128 0x41
	.long	.LASF376
	.byte	0x48
	.byte	0x3b
	.long	0x511
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_address
	.uleb128 0x41
	.long	.LASF377
	.byte	0x48
	.byte	0x3c
	.long	0x58
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	alreadyHandled
	.uleb128 0x41
	.long	.LASF200
	.byte	0x48
	.byte	0x3d
	.long	0x547
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_buffer
	.uleb128 0x41
	.long	.LASF378
	.byte	0x48
	.byte	0x3f
	.long	0x1edb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	furtherOperations
	.uleb128 0x41
	.long	.LASF379
	.byte	0x48
	.byte	0x40
	.long	0x51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nextTwiOperation
	.uleb128 0x41
	.long	.LASF380
	.byte	0x47
	.byte	0xc
	.long	0x1f05
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sendBufferData
	.uleb128 0x41
	.long	.LASF381
	.byte	0x47
	.byte	0xd
	.long	0x547
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sendBuffer
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
	.uleb128 0x3
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x5
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
	.uleb128 0x10
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x0
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x0
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.byte	0x1
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
	.uleb128 0x1c
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
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x5
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x38
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x3d
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.long	0xe67
	.word	0x2
	.long	.Ldebug_info0
	.long	0x29c1
	.long	0x8ee
	.string	"init_reset_condition"
	.long	0x902
	.string	"init_reset_condition_kernel_init"
	.long	0x916
	.string	"getResetStatus"
	.long	0x92e
	.string	"init_ports_m1284P"
	.long	0x942
	.string	"init_ports_m1284P_kernel_init"
	.long	0x956
	.string	"init_timer_m1284P"
	.long	0x96a
	.string	"init_timer_m1284P_kernel_init"
	.long	0x97e
	.string	"init_timer"
	.long	0x992
	.string	"init_timer_kernel_init"
	.long	0x9a6
	.string	"in_timer_tick"
	.long	0x9ba
	.string	"__vector_32"
	.long	0x9cf
	.string	"mutex_create"
	.long	0x9e7
	.string	"mutex_lock"
	.long	0xa13
	.string	"mutex_trylock"
	.long	0xa40
	.string	"mutex_release"
	.long	0xa6c
	.string	"MainProcessEnd"
	.long	0xa80
	.string	"init_nibobee_leds"
	.long	0xb15
	.string	"init_nibobee_leds_kernel_init"
	.long	0xb29
	.string	"initButton"
	.long	0xb52
	.string	"init_nibobee_buttons"
	.long	0xb66
	.string	"init_nibobee_buttons_kernel_init"
	.long	0xb7a
	.string	"initMotor"
	.long	0xba3
	.string	"initMotor2Pins"
	.long	0xbcc
	.string	"init_nibobee_motors"
	.long	0xbe0
	.string	"init_nibobee_motors_kernel_init"
	.long	0xbf4
	.string	"initSmoothMotor"
	.long	0xc13
	.string	"smooth_motor_tick"
	.long	0xc27
	.string	"smooth_enable_tick"
	.long	0xc87
	.string	"motor_smooth_stop_tick"
	.long	0xcb0
	.string	"motor_smooth_start_tick"
	.long	0xcd9
	.string	"__vector_33"
	.long	0xcee
	.string	"init_smooth_motors"
	.long	0xd43
	.string	"init_smooth_motors_kernel_init"
	.long	0xd57
	.string	"twi_handleMasterRequest"
	.long	0xd6f
	.string	"twi_handleMasterTransmission"
	.long	0xda1
	.string	"twi_unexpectedCondition"
	.long	0xdb5
	.string	"init_twi"
	.long	0xdc9
	.string	"init_twi_kernel_init"
	.long	0xddd
	.string	"next_twi_operation"
	.long	0xe1b
	.string	"twi_start_master_operation"
	.long	0xe2f
	.string	"__vector_26"
	.long	0xe8e
	.string	"twiMultipleOperations"
	.long	0xedd
	.string	"twiSendReceive"
	.long	0xf47
	.string	"twiReceive"
	.long	0xfa0
	.string	"twiSend"
	.long	0xfe9
	.string	"WAIT_FOR_TWI"
	.long	0x10a3
	.string	"turn_word"
	.long	0x10e3
	.string	"twi_rpc_oneway"
	.long	0x112a
	.string	"twi_rpc_pseudo_oneway"
	.long	0x1171
	.string	"bgx1_setIllumination"
	.long	0x11a5
	.string	"bgx1_termScroll"
	.long	0x11d9
	.string	"bgx1_termGoto_base"
	.long	0x120c
	.string	"bgx1_termClear"
	.long	0x1230
	.string	"bgx1_selectFont"
	.long	0x1264
	.string	"bgx1_fillAll"
	.long	0x1298
	.string	"bgx1_mode"
	.long	0x12cc
	.string	"bgx1_move_base"
	.long	0x12ff
	.string	"bgx1_setStatus"
	.long	0x1333
	.string	"bgx1_reset"
	.long	0x1357
	.string	"twi_rpc"
	.long	0x13ad
	.string	"bgx1_syncInterface"
	.long	0x13fe
	.string	"bgx1_getAnalog_base"
	.long	0x1450
	.string	"bgx1_syncPort_base"
	.long	0x14a0
	.string	"bgx1_termPrint_base"
	.long	0x1506
	.string	"bgx1_lineTo_base"
	.long	0x1556
	.string	"bgx1_embeddedImage"
	.long	0x15a7
	.string	"bgx1_drawBitmap_base"
	.long	0x160d
	.string	"bgx1_box_base"
	.long	0x165d
	.string	"bgx1_vLine"
	.long	0x16ae
	.string	"bgx1_hLine"
	.long	0x16ff
	.string	"bgx1_textWidth_base"
	.long	0x175f
	.string	"bgx1_print_base"
	.long	0x17bf
	.string	"bgx1_getStatus"
	.long	0x1800
	.string	"bgx1_getVersion_base"
	.long	0x1842
	.string	"before_timer"
	.long	0x1856
	.string	"init_kernel"
	.long	0x186a
	.string	"init_kernel_kernel_init"
	.long	0x1f2f
	.string	"current_reset_status"
	.long	0x1f41
	.string	"milliseconds_running"
	.long	0x1f53
	.string	"ButtonRightBackward_"
	.long	0x1f65
	.string	"ButtonRightBackward"
	.long	0x1f77
	.string	"ButtonRightForward_"
	.long	0x1f89
	.string	"ButtonRightForward"
	.long	0x1f9b
	.string	"ButtonLeftBackward_"
	.long	0x1fad
	.string	"ButtonLeftBackward"
	.long	0x1fbf
	.string	"ButtonLeftForward_"
	.long	0x1fd1
	.string	"ButtonLeftForward"
	.long	0x1fe3
	.string	"LeftYellow_"
	.long	0x1ff5
	.string	"LeftYellow"
	.long	0x2007
	.string	"LeftRed_"
	.long	0x2019
	.string	"LeftRed"
	.long	0x202b
	.string	"RightRed_"
	.long	0x203d
	.string	"RightRed"
	.long	0x204f
	.string	"RightYellow_"
	.long	0x2061
	.string	"RightYellow"
	.long	0x2073
	.string	"RedLeds_"
	.long	0x2085
	.string	"RedLeds"
	.long	0x209c
	.string	"YellowLeds_"
	.long	0x20ae
	.string	"YellowLeds"
	.long	0x20c0
	.string	"RightLeds_"
	.long	0x20d2
	.string	"RightLeds"
	.long	0x20e4
	.string	"LeftLeds_"
	.long	0x20f6
	.string	"LeftLeds"
	.long	0x2108
	.string	"AllLeds_"
	.long	0x211a
	.string	"AllLeds"
	.long	0x212c
	.string	"PortA_"
	.long	0x213e
	.string	"PortA"
	.long	0x2150
	.string	"PinA0_"
	.long	0x2162
	.string	"PinA0"
	.long	0x2174
	.string	"PinA1_"
	.long	0x2186
	.string	"PinA1"
	.long	0x2198
	.string	"PinA2_"
	.long	0x21aa
	.string	"PinA2"
	.long	0x21bc
	.string	"PinA3_"
	.long	0x21ce
	.string	"PinA3"
	.long	0x21e0
	.string	"PinA4_"
	.long	0x21f2
	.string	"PinA4"
	.long	0x2204
	.string	"PinA5_"
	.long	0x2216
	.string	"PinA5"
	.long	0x2228
	.string	"PinA6_"
	.long	0x223a
	.string	"PinA6"
	.long	0x224c
	.string	"PinA7_"
	.long	0x225e
	.string	"PinA7"
	.long	0x2270
	.string	"PortB_"
	.long	0x2282
	.string	"PortB"
	.long	0x2294
	.string	"PinB0_"
	.long	0x22a6
	.string	"PinB0"
	.long	0x22b8
	.string	"PinB1_"
	.long	0x22ca
	.string	"PinB1"
	.long	0x22dc
	.string	"PinB2_"
	.long	0x22ee
	.string	"PinB2"
	.long	0x2300
	.string	"PinB3_"
	.long	0x2312
	.string	"PinB3"
	.long	0x2324
	.string	"PinB4_"
	.long	0x2336
	.string	"PinB4"
	.long	0x2348
	.string	"PinB5_"
	.long	0x235a
	.string	"PinB5"
	.long	0x236c
	.string	"PinB6_"
	.long	0x237e
	.string	"PinB6"
	.long	0x2390
	.string	"PinB7_"
	.long	0x23a2
	.string	"PinB7"
	.long	0x23b4
	.string	"PortC_"
	.long	0x23c6
	.string	"PortC"
	.long	0x23d8
	.string	"PinC0_"
	.long	0x23ea
	.string	"PinC0"
	.long	0x23fc
	.string	"PinC1_"
	.long	0x240e
	.string	"PinC1"
	.long	0x2420
	.string	"PinC2_"
	.long	0x2432
	.string	"PinC2"
	.long	0x2444
	.string	"PinC3_"
	.long	0x2456
	.string	"PinC3"
	.long	0x2468
	.string	"PinC4_"
	.long	0x247a
	.string	"PinC4"
	.long	0x248c
	.string	"PinC5_"
	.long	0x249e
	.string	"PinC5"
	.long	0x24b0
	.string	"PinC6_"
	.long	0x24c2
	.string	"PinC6"
	.long	0x24d4
	.string	"PinC7_"
	.long	0x24e6
	.string	"PinC7"
	.long	0x24f8
	.string	"PortD_"
	.long	0x250a
	.string	"PortD"
	.long	0x251c
	.string	"PinD0_"
	.long	0x252e
	.string	"PinD0"
	.long	0x2540
	.string	"PinD1_"
	.long	0x2552
	.string	"PinD1"
	.long	0x2564
	.string	"PinD2_"
	.long	0x2576
	.string	"PinD2"
	.long	0x2588
	.string	"PinD3_"
	.long	0x259a
	.string	"PinD3"
	.long	0x25ac
	.string	"PinD4_"
	.long	0x25be
	.string	"PinD4"
	.long	0x25d0
	.string	"PinD5_"
	.long	0x25e2
	.string	"PinD5"
	.long	0x25f4
	.string	"PinD6_"
	.long	0x2606
	.string	"PinD6"
	.long	0x2618
	.string	"PinD7_"
	.long	0x262a
	.string	"PinD7"
	.long	0x263c
	.string	"Timer0_"
	.long	0x264e
	.string	"Timer0"
	.long	0x2660
	.string	"Timer1_"
	.long	0x2672
	.string	"Timer1"
	.long	0x2684
	.string	"Timer2_"
	.long	0x2696
	.string	"Timer2"
	.long	0x26a8
	.string	"Timer3_"
	.long	0x26ba
	.string	"Timer3"
	.long	0x26cc
	.string	"Timer0A_"
	.long	0x26de
	.string	"Timer0A"
	.long	0x26f0
	.string	"Timer0B_"
	.long	0x2702
	.string	"Timer0B"
	.long	0x2714
	.string	"Timer1A_"
	.long	0x2726
	.string	"Timer1A"
	.long	0x2738
	.string	"Timer1B_"
	.long	0x274a
	.string	"Timer1B"
	.long	0x275c
	.string	"Timer2A_"
	.long	0x276e
	.string	"Timer2A"
	.long	0x2780
	.string	"Timer2B_"
	.long	0x2792
	.string	"Timer2B"
	.long	0x27a4
	.string	"Timer3A_"
	.long	0x27b6
	.string	"Timer3A"
	.long	0x27c8
	.string	"Timer3B_"
	.long	0x27da
	.string	"Timer3B"
	.long	0x27ec
	.string	"LeftMotorBase_"
	.long	0x27fe
	.string	"LeftMotorBase"
	.long	0x2810
	.string	"RightMotorBase_"
	.long	0x2822
	.string	"RightMotorBase"
	.long	0x2834
	.string	"LeftMotor_"
	.long	0x2846
	.string	"LeftMotor"
	.long	0x2858
	.string	"RightMotor_"
	.long	0x286a
	.string	"RightMotor"
	.long	0x287c
	.string	"TWIBroadcast"
	.long	0x288e
	.string	"twi_running"
	.long	0x28a0
	.string	"twi_error"
	.long	0x28b2
	.string	"bgx1"
	.long	0x28c4
	.string	"redLedsArray"
	.long	0x28d6
	.string	"yellowLedsArray"
	.long	0x28e8
	.string	"rightLedsArray"
	.long	0x28fa
	.string	"leftLedsArray"
	.long	0x290c
	.string	"allLedsArray"
	.long	0x291e
	.string	"motor_A_running"
	.long	0x2930
	.string	"motor_B_running"
	.long	0x2942
	.string	"twi_address"
	.long	0x2954
	.string	"alreadyHandled"
	.long	0x2966
	.string	"twi_buffer"
	.long	0x2978
	.string	"furtherOperations"
	.long	0x298a
	.string	"nextTwiOperation"
	.long	0x299c
	.string	"sendBufferData"
	.long	0x29ae
	.string	"sendBuffer"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x1f8
	.word	0x2
	.long	.Ldebug_info0
	.long	0x29c1
	.long	0x2d
	.string	"int8_t"
	.long	0x3f
	.string	"uint8_t"
	.long	0x58
	.string	"uint16_t"
	.long	0x71
	.string	"uint32_t"
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
	.long	0x16e
	.string	"Led"
	.long	0x179
	.string	"PLed"
	.long	0x1b5
	.string	"LedGroup"
	.long	0x1c0
	.string	"PLedGroup"
	.long	0x1d1
	.string	"Mutex__"
	.long	0x1ec
	.string	"Mutex"
	.long	0x230
	.string	"Button"
	.long	0x23b
	.string	"PButton"
	.long	0x305
	.string	"TimerPair"
	.long	0x310
	.string	"PTimerPair"
	.long	0x336
	.string	"TIMER_TYPE"
	.long	0x382
	.string	"Timer"
	.long	0x38d
	.string	"PTimer"
	.long	0x3ed
	.string	"Motor"
	.long	0x3f8
	.string	"PMotor"
	.long	0x42e
	.string	"PMotor2Pins"
	.long	0x45a
	.string	"MotorDirection"
	.long	0x4de
	.string	"SmoothMotor"
	.long	0x4e9
	.string	"PSmoothMotor"
	.long	0x511
	.string	"TWIDevice"
	.long	0x547
	.string	"TWIBuffer"
	.long	0x5a0
	.string	"TWIOperation"
	.long	0x5f0
	.string	"TWIError"
	.long	0x6ce
	.string	"Point"
	.long	0x6d9
	.string	"Rect"
	.long	0x709
	.string	"BitmapArguments"
	.long	0x714
	.string	"StringArg"
	.long	0x74b
	.string	"SyncPortArgs"
	.long	0x76d
	.string	"AtomicMutex"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x74
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.Ltext0
	.long	.Letext0-.Ltext0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB32
	.long	.LFE32-.LFB32
	.long	.LFB34
	.long	.LFE34-.LFB34
	.long	.LFB36
	.long	.LFE36-.LFB36
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB46
	.long	.LFE46-.LFB46
	.long	.LFB49
	.long	.LFE49-.LFB49
	.long	.LFB53
	.long	.LFE53-.LFB53
	.long	.LFB62
	.long	.LFE62-.LFB62
	.long	.LFB72
	.long	.LFE72-.LFB72
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB5
	.long	.LFE5
	.long	.LFB32
	.long	.LFE32
	.long	.LFB34
	.long	.LFE34
	.long	.LFB36
	.long	.LFE36
	.long	.LFB43
	.long	.LFE43
	.long	.LFB46
	.long	.LFE46
	.long	.LFB49
	.long	.LFE49
	.long	.LFB53
	.long	.LFE53
	.long	.LFB62
	.long	.LFE62
	.long	.LFB72
	.long	.LFE72
	.long	.LFB94
	.long	.LFE94
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
	.ascii	"..\\..\\AntonAvrLib/kernel/../misc"
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
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/../processes/mutex"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/mutex"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/mutex/../../.."
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
	.string	"kernel.c"
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
	.uleb128 0x14
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdlib.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"stddef.h"
	.uleb128 0x14
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"inttypes.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay_basic.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/io.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/sfr_defs.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/iom1284p.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/portpins.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/common.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/version.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/fuse.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/lock.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/interrupt.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"reset_condition.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"led.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"port.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../../anton_std.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/wdt.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"base_before.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"kernel.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"shared/kernel_base.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"millisecond_clock.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"mutex.h"
	.uleb128 0xf
	.uleb128 0x0
	.uleb128 0x0
	.string	"../../../anton_std.h"
	.uleb128 0xf
	.uleb128 0x0
	.uleb128 0x0
	.string	"anton_std.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_button.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"button.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_led.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_motor.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_m1284P.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../processes/mutex/mutex.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"shared/twi_bgx1.h"
	.uleb128 0x3
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
	.string	"TWI/twi_rpc_client.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/twi_rpc.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/pgmspace.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_m1284P.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel_init.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_base.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"simple_timer.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"atomic_mutex.kernel.h"
	.uleb128 0xf
	.uleb128 0x0
	.uleb128 0x0
	.string	"sleep_after_main.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"../misc/idle.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_led.kernel.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"led.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_led.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_button.kernel.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"button.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"external_interrupts.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_button.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_motor.kernel.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_motor.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth_pair.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/twi_rpc.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/twi_raw.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/twi.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/atomic.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"string.h"
	.uleb128 0x11
	.uleb128 0x0
	.uleb128 0x0
	.string	"twi_bgx1.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"base_after.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"<built-in>"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM1
	.byte	0x4
	.uleb128 0x48
	.byte	0x70
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x4
	.uleb128 0x47
	.byte	0x3
	.sleb128 -129
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x4
	.uleb128 0x34
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM31
	.byte	0x4
	.uleb128 0x32
	.byte	0x10
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x16
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
	.byte	0x15
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
	.byte	0x4
	.uleb128 0x31
	.byte	0x3
	.sleb128 -15
	.byte	0x1
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
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM50
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM51
	.byte	0x4
	.uleb128 0x35
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x4
	.uleb128 0x36
	.byte	0x3
	.sleb128 -22
	.byte	0x1
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
	.byte	0x4
	.uleb128 0x37
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM57
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM58
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x4
	.uleb128 0x3a
	.byte	0x3
	.sleb128 -13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x4
	.uleb128 0x3b
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x4
	.uleb128 0x3a
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x4
	.uleb128 0x3b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x4
	.uleb128 0x3a
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x4
	.uleb128 0x3b
	.byte	0xa
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x4
	.uleb128 0x3a
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x4
	.uleb128 0x3b
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x4
	.uleb128 0x3a
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM79
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM80
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x4
	.uleb128 0x3e
	.byte	0x3
	.sleb128 -15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM91
	.byte	0x4
	.uleb128 0x3d
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x4
	.uleb128 0x42
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM101
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x4
	.uleb128 0x41
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM112
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM113
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM114
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM115
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x4
	.uleb128 0x46
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x4
	.uleb128 0x45
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0x4
	.uleb128 0x44
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
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
	.byte	0x4
	.uleb128 0x45
	.byte	0x21
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x1b
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
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x4
	.uleb128 0x44
	.byte	0x3
	.sleb128 -19
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x4
	.uleb128 0x46
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x4
	.uleb128 0x44
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x4
	.uleb128 0x46
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x4
	.uleb128 0x44
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x4
	.uleb128 0x48
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x25
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
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x2d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x19
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
	.byte	0x16
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
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM183
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x3
	.sleb128 -94
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x75
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x3
	.sleb128 -47
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x49
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
	.byte	0x3
	.sleb128 -106
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x87
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM211
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM218
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM225
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM230
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM231
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x3
	.sleb128 -11
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM237
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM239
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
	.byte	0x2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM243
	.byte	0x4
	.uleb128 0x4a
	.byte	0x3
	.sleb128 -268
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM244
	.byte	0x4
	.uleb128 0x48
	.byte	0x3
	.sleb128 272
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM245
	.byte	0x4
	.uleb128 0x4a
	.byte	0x3
	.sleb128 -266
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM246
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0x4
	.uleb128 0x48
	.byte	0x3
	.sleb128 267
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
	.byte	0x4
	.uleb128 0x9
	.byte	0x3
	.sleb128 -172
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM249
	.byte	0x4
	.uleb128 0x48
	.byte	0xc9
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM250
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM254
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM255
	.byte	0x4
	.uleb128 0x47
	.byte	0x3
	.sleb128 -290
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM256
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM257
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM258
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM259
	.byte	0x16
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
	.long	.LM262
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM263
	.byte	0x4
	.uleb128 0x2b
	.byte	0x4a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM264
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM265
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM266
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM267
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM268
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM269
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM270
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM271
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM272
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM273
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM274
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM275
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM276
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM277
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM278
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM279
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM280
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM281
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM282
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM283
	.byte	0x4
	.uleb128 0x47
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM284
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM285
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM286
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM287
	.byte	0x4
	.uleb128 0x2b
	.byte	0x44
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM288
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM289
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM290
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM291
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM292
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM293
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM294
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM295
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM296
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM297
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM298
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM299
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM300
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM301
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM302
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM303
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM304
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM305
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM306
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM307
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM308
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM309
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM310
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM311
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM312
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM313
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM314
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM315
	.byte	0x4
	.uleb128 0x4d
	.byte	0x3
	.sleb128 -47
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM316
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM317
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM318
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM319
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM320
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM321
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM322
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM323
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM324
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
	.byte	0x2f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE5
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x4
	.uleb128 0x34
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE32
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x4
	.uleb128 0x32
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE34
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM6
	.byte	0x4
	.uleb128 0x31
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE36
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x4
	.uleb128 0x38
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE43
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x4
	.uleb128 0x3a
	.byte	0x35
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE46
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x4
	.uleb128 0x3d
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
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
	.long	.LSM15
	.byte	0x4
	.uleb128 0x41
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE53
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x4
	.uleb128 0x44
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE62
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x4
	.uleb128 0x48
	.byte	0x62
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE72
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x4
	.uleb128 0x4d
	.byte	0x3a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE94
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_macinfo
	.byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF303:
	.string	"PinB4_"
.LASF213:
	.string	"sendData"
.LASF62:
	.string	"direction"
.LASF252:
	.string	"bgx1_hLine"
.LASF294:
	.string	"PortB"
.LASF320:
	.string	"PinC6_"
.LASF326:
	.string	"PinD0_"
.LASF364:
	.string	"RightMotor_"
.LASF288:
	.string	"PinA3_"
.LASF226:
	.string	"bgx1_setIllumination"
.LASF382:
	.string	"RedLeds"
.LASF159:
	.string	"operation"
.LASF51:
	.string	"TimerPair"
.LASF100:
	.string	"TWI_SlaveAddress_NoAck"
.LASF379:
	.string	"nextTwiOperation"
.LASF237:
	.string	"twi_rpc"
.LASF44:
	.string	"prescale_256"
.LASF195:
	.string	"__vector_33"
.LASF386:
	.string	"AllLeds"
.LASF277:
	.string	"RightYellow"
.LASF42:
	.string	"prescale_64"
.LASF103:
	.string	"TWI_Slave_NotEnoughDataTransmitted"
.LASF358:
	.string	"LeftMotorBase_"
.LASF162:
	.string	"init_reset_condition_kernel_init"
.LASF27:
	.string	"flags"
.LASF112:
	.string	"CMD_Move"
.LASF92:
	.string	"buffer"
.LASF74:
	.string	"MotorDirection"
.LASF75:
	.string	"currentSpeed"
.LASF39:
	.string	"prescale_1"
.LASF262:
	.string	"ButtonRightBackward_"
.LASF145:
	.string	"twi_send"
.LASF5:
	.string	"unsigned int"
.LASF384:
	.string	"RightLeds"
.LASF40:
	.string	"prescale_8"
.LASF172:
	.string	"mutex_create"
.LASF366:
	.string	"twi_running"
.LASF289:
	.string	"PinA4_"
.LASF275:
	.string	"RightRed"
.LASF133:
	.string	"Point"
.LASF215:
	.string	"twiReceive"
.LASF97:
	.string	"TWI_No_Info_Interrupt"
.LASF365:
	.string	"RightMotor"
.LASF156:
	.string	"twi_stop"
.LASF140:
	.string	"SyncPortArgs"
.LASF117:
	.string	"CMD_SelectFont"
.LASF194:
	.string	"motor_smooth_start_tick"
.LASF361:
	.string	"RightMotorBase"
.LASF187:
	.string	"smooth_motor_tick"
.LASF167:
	.string	"init_timer"
.LASF255:
	.string	"bgx1_getStatus"
.LASF251:
	.string	"bgx1_vLine"
.LASF41:
	.string	"prescale_32"
.LASF342:
	.string	"Timer2_"
.LASF111:
	.string	"CMD_SetStatus"
.LASF313:
	.string	"PinC1_"
.LASF165:
	.string	"init_timer_m1284P"
.LASF157:
	.string	"twi_ack_receive"
.LASF204:
	.string	"next_twi_operation"
.LASF328:
	.string	"PinD2_"
.LASF199:
	.string	"twi_handleMasterTransmission"
.LASF243:
	.string	"bgx1_getAnalog_base"
.LASF290:
	.string	"PinA5_"
.LASF33:
	.string	"pwm_fast_FF"
.LASF191:
	.string	"control_smooth_motor"
.LASF400:
	.string	"PinD0"
.LASF235:
	.string	"bgx1_setStatus"
.LASF83:
	.string	"PSmoothMotor"
.LASF269:
	.string	"ButtonLeftForward"
.LASF120:
	.string	"CMD_Box"
.LASF166:
	.string	"init_timer_m1284P_kernel_init"
.LASF278:
	.string	"RedLeds_"
.LASF164:
	.string	"init_ports_m1284P_kernel_init"
.LASF93:
	.string	"device"
.LASF190:
	.string	"fillSendBuffer"
.LASF209:
	.string	"operations"
.LASF7:
	.string	"uint32_t"
.LASF0:
	.string	"int8_t"
.LASF12:
	.string	"TRUE"
.LASF72:
	.string	"FORWARD"
.LASF87:
	.string	"size"
.LASF248:
	.string	"bgx1_embeddedImage"
.LASF124:
	.string	"CMD_TermClear"
.LASF55:
	.string	"TIMER_TYPE"
.LASF61:
	.string	"PTimer"
.LASF271:
	.string	"LeftYellow"
.LASF241:
	.string	"result"
.LASF81:
	.string	"mutex"
.LASF291:
	.string	"PinA6_"
.LASF347:
	.string	"Timer0B_"
.LASF295:
	.string	"PinB0_"
.LASF218:
	.string	"still_running"
.LASF22:
	.string	"count"
.LASF211:
	.string	"twiSendReceive"
.LASF60:
	.string	"Timer"
.LASF129:
	.string	"CMD_GetAnalog"
.LASF264:
	.string	"ButtonRightForward_"
.LASF13:
	.string	"BOOL"
.LASF99:
	.string	"TWI_Illegal_Status"
.LASF408:
	.string	"TWIBroadcast"
.LASF10:
	.string	"long long unsigned int"
.LASF228:
	.string	"bgx1_termGoto_base"
.LASF374:
	.string	"motor_A_running"
.LASF96:
	.string	"TWI_No_Error"
.LASF363:
	.string	"LeftMotor"
.LASF306:
	.string	"PinB6_"
.LASF341:
	.string	"Timer1"
.LASF343:
	.string	"Timer2"
.LASF345:
	.string	"Timer3"
.LASF38:
	.string	"no_clock"
.LASF385:
	.string	"LeftLeds"
.LASF330:
	.string	"PinD4_"
.LASF69:
	.string	"direction2"
.LASF37:
	.string	"pwm_phase_and_frequency_correct"
.LASF297:
	.string	"PinB1_"
.LASF32:
	.string	"clear_timer_on_match"
.LASF352:
	.string	"Timer2A_"
.LASF353:
	.string	"Timer2B_"
.LASF273:
	.string	"LeftRed"
.LASF230:
	.string	"argBuf"
.LASF375:
	.string	"motor_B_running"
.LASF246:
	.string	"argSize"
.LASF137:
	.string	"BitmapArguments"
.LASF322:
	.string	"PinC7_"
.LASF125:
	.string	"CMD_TermGoto"
.LASF109:
	.string	"CMD_GetVersion"
.LASF52:
	.string	"PTimerPair"
.LASF135:
	.string	"width"
.LASF24:
	.string	"PLedGroup"
.LASF53:
	.string	"TIMER_A"
.LASF54:
	.string	"TIMER_B"
.LASF128:
	.string	"CMD_SyncPort"
.LASF138:
	.string	"StringArg"
.LASF327:
	.string	"PinD1_"
.LASF180:
	.string	"button"
.LASF16:
	.string	"Port"
.LASF212:
	.string	"targetDevice"
.LASF299:
	.string	"PinB2_"
.LASF266:
	.string	"ButtonLeftBackward_"
.LASF118:
	.string	"CMD_HLine"
.LASF150:
	.string	"__ticks_dc"
.LASF181:
	.string	"init_nibobee_buttons"
.LASF151:
	.string	"initSmoothMotor"
.LASF26:
	.string	"Mutex"
.LASF196:
	.string	"init_smooth_motors"
.LASF236:
	.string	"bgx1_reset"
.LASF36:
	.string	"pwm_fast"
.LASF283:
	.string	"PortA_"
.LASF270:
	.string	"LeftYellow_"
.LASF407:
	.string	"Timer2B"
.LASF257:
	.string	"before_timer"
.LASF65:
	.string	"maxValue"
.LASF193:
	.string	"motor_smooth_stop_tick"
.LASF68:
	.string	"motor"
.LASF334:
	.string	"PinD6_"
.LASF139:
	.string	"char"
.LASF142:
	.string	"AtomicMutex"
.LASF409:
	.string	"GNU C 4.5.1"
.LASF301:
	.string	"PinB3_"
.LASF258:
	.string	"init_kernel"
.LASF214:
	.string	"receiveBuffer"
.LASF369:
	.string	"redLedsArray"
.LASF153:
	.string	"fabs"
.LASF261:
	.string	"milliseconds_running"
.LASF48:
	.string	"controlRegisterA"
.LASF49:
	.string	"controlRegisterB"
.LASF208:
	.string	"twiMultipleOperations"
.LASF86:
	.string	"data"
.LASF381:
	.string	"sendBuffer"
.LASF43:
	.string	"prescale_128"
.LASF244:
	.string	"bgx1_syncPort_base"
.LASF19:
	.string	"PPin"
.LASF293:
	.string	"PortB_"
.LASF1:
	.string	"uint8_t"
.LASF239:
	.string	"mutex_trylock"
.LASF184:
	.string	"initMotor2Pins"
.LASF247:
	.string	"bgx1_lineTo_base"
.LASF168:
	.string	"init_timer_kernel_init"
.LASF147:
	.string	"__ms"
.LASF362:
	.string	"LeftMotor_"
.LASF177:
	.string	"init_nibobee_leds"
.LASF380:
	.string	"sendBufferData"
.LASF242:
	.string	"resBuf"
.LASF126:
	.string	"CMD_TermScroll"
.LASF46:
	.string	"external_falling_edge"
.LASF336:
	.string	"PinD7_"
.LASF119:
	.string	"CMD_VLine"
.LASF47:
	.string	"external_rising_edge"
.LASF148:
	.string	"__ticks"
.LASF89:
	.string	"TWI_IllegalOperation"
.LASF79:
	.string	"tickRunning"
.LASF9:
	.string	"long long int"
.LASF339:
	.string	"Timer0"
.LASF346:
	.string	"Timer0A_"
.LASF198:
	.string	"twi_handleMasterRequest"
.LASF115:
	.string	"CMD_Print"
.LASF371:
	.string	"rightLedsArray"
.LASF160:
	.string	"parameters"
.LASF310:
	.string	"PortC_"
.LASF173:
	.string	"mutex_lock"
.LASF94:
	.string	"operationMode"
.LASF123:
	.string	"CMD_LineTo"
.LASF174:
	.string	"mutex_release"
.LASF276:
	.string	"RightYellow_"
.LASF183:
	.string	"initMotor"
.LASF134:
	.string	"Rect"
.LASF67:
	.string	"PMotor"
.LASF305:
	.string	"PinB5_"
.LASF73:
	.string	"MOTOR_STOPPED"
.LASF233:
	.string	"bgx1_mode"
.LASF131:
	.string	"CMD_SetIllumination"
.LASF30:
	.string	"PButton"
.LASF66:
	.string	"Motor"
.LASF186:
	.string	"init_nibobee_motors_kernel_init"
.LASF387:
	.string	"PinA0"
.LASF163:
	.string	"init_ports_m1284P"
.LASF107:
	.string	"__unknown__"
.LASF250:
	.string	"bgx1_box_base"
.LASF18:
	.string	"mask"
.LASF127:
	.string	"CMD_TermPrint"
.LASF217:
	.string	"WAIT_FOR_TWI"
.LASF324:
	.string	"PortD_"
.LASF136:
	.string	"height"
.LASF71:
	.string	"BACKWARD"
.LASF389:
	.string	"PinA2"
.LASF357:
	.string	"Timer3B"
.LASF391:
	.string	"PinA4"
.LASF20:
	.string	"PLed"
.LASF146:
	.string	"_delay_ms"
.LASF259:
	.string	"init_kernel_kernel_init"
.LASF388:
	.string	"PinA1"
.LASF373:
	.string	"allLedsArray"
.LASF390:
	.string	"PinA3"
.LASF152:
	.string	"__builtin_avr_delay_cycles"
.LASF392:
	.string	"PinA5"
.LASF393:
	.string	"PinA6"
.LASF394:
	.string	"PinA7"
.LASF267:
	.string	"ButtonLeftBackward"
.LASF21:
	.string	"leds"
.LASF197:
	.string	"init_smooth_motors_kernel_init"
.LASF219:
	.string	"sreg_save"
.LASF405:
	.string	"Timer0B"
.LASF312:
	.string	"PinC0_"
.LASF253:
	.string	"bgx1_textWidth_base"
.LASF279:
	.string	"YellowLeds_"
.LASF200:
	.string	"twi_buffer"
.LASF4:
	.string	"uint16_t"
.LASF59:
	.string	"outputComparePin"
.LASF141:
	.string	"interruptsWereEnabled"
.LASF338:
	.string	"Timer0_"
.LASF188:
	.string	"smooth_enable_tick"
.LASF238:
	.string	"resultBuffer"
.LASF185:
	.string	"init_nibobee_motors"
.LASF372:
	.string	"leftLedsArray"
.LASF161:
	.string	"init_reset_condition"
.LASF298:
	.string	"PinB1"
.LASF300:
	.string	"PinB2"
.LASF302:
	.string	"PinB3"
.LASF304:
	.string	"PinB4"
.LASF395:
	.string	"PinB5"
.LASF307:
	.string	"PinB6"
.LASF309:
	.string	"PinB7"
.LASF189:
	.string	"enabled"
.LASF315:
	.string	"PinC3_"
.LASF285:
	.string	"PinA0_"
.LASF78:
	.string	"targetDirection"
.LASF256:
	.string	"bgx1_getVersion_base"
.LASF88:
	.string	"TWIBuffer"
.LASF245:
	.string	"bgx1_termPrint_base"
.LASF308:
	.string	"PinB7_"
.LASF274:
	.string	"RightRed_"
.LASF6:
	.string	"long int"
.LASF110:
	.string	"CMD_GetStatus"
.LASF354:
	.string	"Timer3A_"
.LASF130:
	.string	"CMD_SyncInterface"
.LASF383:
	.string	"YellowLeds"
.LASF85:
	.string	"TWIDevice"
.LASF265:
	.string	"ButtonRightForward"
.LASF223:
	.string	"temp"
.LASF90:
	.string	"TWI_Receive"
.LASF340:
	.string	"Timer1_"
.LASF50:
	.string	"interruptMaskRegister"
.LASF296:
	.string	"PinB0"
.LASF272:
	.string	"LeftRed_"
.LASF11:
	.string	"FALSE"
.LASF222:
	.string	"word"
.LASF396:
	.string	"PinC0"
.LASF397:
	.string	"PinC1"
.LASF398:
	.string	"PinC2"
.LASF399:
	.string	"PinC3"
.LASF317:
	.string	"PinC4"
.LASF319:
	.string	"PinC5"
.LASF321:
	.string	"PinC6"
.LASF323:
	.string	"PinC7"
.LASF329:
	.string	"PinD3_"
.LASF332:
	.string	"PinD5_"
.LASF281:
	.string	"LeftLeds_"
.LASF176:
	.string	"ceil"
.LASF80:
	.string	"adjustmentStep"
.LASF406:
	.string	"Timer2A"
.LASF413:
	.string	"twi_end"
.LASF98:
	.string	"TWI_Bus_Error"
.LASF314:
	.string	"PinC2_"
.LASF232:
	.string	"bgx1_fillAll"
.LASF229:
	.string	"bgx1_termClear"
.LASF356:
	.string	"Timer3B_"
.LASF203:
	.string	"init_twi_kernel_init"
.LASF282:
	.string	"AllLeds_"
.LASF376:
	.string	"twi_address"
.LASF367:
	.string	"twi_error"
.LASF202:
	.string	"init_twi"
.LASF76:
	.string	"currentDirection"
.LASF114:
	.string	"CMD_FillAll"
.LASF95:
	.string	"TWIOperation"
.LASF82:
	.string	"SmoothMotor"
.LASF8:
	.string	"long unsigned int"
.LASF84:
	.string	"address"
.LASF63:
	.string	"pwmTimer"
.LASF401:
	.string	"PinD1"
.LASF402:
	.string	"PinD2"
.LASF403:
	.string	"PinD3"
.LASF331:
	.string	"PinD4"
.LASF25:
	.string	"unused"
.LASF23:
	.string	"LedGroup"
.LASF410:
	.string	".././kernel.c"
.LASF234:
	.string	"bgx1_move_base"
.LASF316:
	.string	"PinC4_"
.LASF15:
	.string	"port"
.LASF178:
	.string	"init_nibobee_leds_kernel_init"
.LASF404:
	.string	"Timer0A"
.LASF227:
	.string	"bgx1_termScroll"
.LASF14:
	.string	"byte"
.LASF355:
	.string	"Timer3A"
.LASF91:
	.string	"TWI_Send"
.LASF216:
	.string	"twiSend"
.LASF260:
	.string	"current_reset_status"
.LASF144:
	.string	"initLed"
.LASF58:
	.string	"type"
.LASF3:
	.string	"unsigned char"
.LASF311:
	.string	"PortC"
.LASF231:
	.string	"bgx1_selectFont"
.LASF325:
	.string	"PortD"
.LASF70:
	.string	"PMotor2Pins"
.LASF64:
	.string	"minValue"
.LASF77:
	.string	"targetSpeed"
.LASF344:
	.string	"Timer3_"
.LASF280:
	.string	"RightLeds_"
.LASF104:
	.string	"TWI_Slave_TooMuchDataTransmitted"
.LASF17:
	.string	"PPort"
.LASF171:
	.string	"__vector_32"
.LASF225:
	.string	"twi_rpc_pseudo_oneway"
.LASF377:
	.string	"alreadyHandled"
.LASF170:
	.string	"getResetStatus"
.LASF57:
	.string	"outputCompareRegister"
.LASF113:
	.string	"CMD_Mode"
.LASF240:
	.string	"bgx1_syncInterface"
.LASF101:
	.string	"TWI_Arbitration_Lost"
.LASF368:
	.string	"bgx1"
.LASF116:
	.string	"CMD_TextWidth"
.LASF158:
	.string	"twi_read_byte"
.LASF105:
	.string	"TWI_Slave_NotEnoughDataReceived"
.LASF286:
	.string	"PinA1_"
.LASF348:
	.string	"Timer1A_"
.LASF268:
	.string	"ButtonLeftForward_"
.LASF254:
	.string	"bgx1_print_base"
.LASF292:
	.string	"PinA7_"
.LASF169:
	.string	"in_timer_tick"
.LASF28:
	.string	"pinChangeInterruptNumber"
.LASF143:
	.string	"__iSeiParam"
.LASF2:
	.string	"signed char"
.LASF411:
	.string	"C:\\\\Dev\\\\NIBObee\\\\NIBObee\\\\Kernel-NIBObee\\\\Debug"
.LASF122:
	.string	"CMD_EmbeddedImage"
.LASF34:
	.string	"pwm_phase_correct_FF"
.LASF284:
	.string	"PortA"
.LASF206:
	.string	"twi_start_master_operation"
.LASF108:
	.string	"CMD_Reset"
.LASF175:
	.string	"MainProcessEnd"
.LASF149:
	.string	"__tmp"
.LASF102:
	.string	"TWI_Master_TooMuchDataTransmitted"
.LASF210:
	.string	"current"
.LASF249:
	.string	"bgx1_drawBitmap_base"
.LASF155:
	.string	"__iCliRetVal"
.LASF349:
	.string	"Timer1A"
.LASF220:
	.string	"__ToDo"
.LASF351:
	.string	"Timer1B"
.LASF378:
	.string	"furtherOperations"
.LASF154:
	.string	"double"
.LASF263:
	.string	"ButtonRightBackward"
.LASF318:
	.string	"PinC5_"
.LASF192:
	.string	"running"
.LASF121:
	.string	"CMD_Bitmap"
.LASF287:
	.string	"PinA2_"
.LASF132:
	.string	"CMD_INVALID"
.LASF412:
	.string	"Mutex__"
.LASF350:
	.string	"Timer1B_"
.LASF29:
	.string	"Button"
.LASF56:
	.string	"timer"
.LASF182:
	.string	"init_nibobee_buttons_kernel_init"
.LASF35:
	.string	"pwm_phase_correct"
.LASF224:
	.string	"twi_rpc_oneway"
.LASF370:
	.string	"yellowLedsArray"
.LASF207:
	.string	"__vector_26"
.LASF179:
	.string	"initButton"
.LASF31:
	.string	"wgm_normal"
.LASF45:
	.string	"prescale_1024"
.LASF201:
	.string	"twi_unexpectedCondition"
.LASF359:
	.string	"LeftMotorBase"
.LASF333:
	.string	"PinD5"
.LASF335:
	.string	"PinD6"
.LASF337:
	.string	"PinD7"
.LASF221:
	.string	"turn_word"
.LASF205:
	.string	"twi_stop_or_next"
.LASF360:
	.string	"RightMotorBase_"
.LASF106:
	.string	"TWIError"
.global __do_copy_data
.global __do_clear_bss
