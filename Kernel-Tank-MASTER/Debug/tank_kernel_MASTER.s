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
	.uleb128 0x2d
	.string	"enable_interrupts() sei()"
	.byte	0x1
	.uleb128 0x2e
	.string	"disable_interrupts() cli()"
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
	.uleb128 0x25
	.ascii	"DEFINE_"
	.string	"LED(ledName) Led ledName ##_; const PLed ledName = &ledName ##_;"
	.byte	0x1
	.uleb128 0x28
	.ascii	"DEFINE_LED_GROUP(groupName) Led"
	.string	"Group groupName ##_; const PLedGroup groupName = &groupName ##_;"
	.byte	0x1
	.uleb128 0x2b
	.ascii	"INIT_LED(led"
	.string	"Name,pinName) ledName ##_ = (Led) { pinName }; initLed(ledName);"
	.byte	0x1
	.uleb128 0x2e
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
	.uleb128 0xa
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x9
	.string	"_TANK_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_M1284P_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1c
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x9
	.string	"TIMER_M1284P_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1e
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
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_M1284P_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.string	"_PORT_M1284P_KERNEL_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x22
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
	.ascii	"DEFINE_MOTOR(motorNam"
	.string	"e) Motor motorName ##_; const PMotor motorName = &motorName ##_;"
	.byte	0x1
	.uleb128 0x3d
	.ascii	"INIT_MOTOR(motorName,flags,directionPin,pwmTimer) motorName "
	.ascii	"##_ = "
	.string	"(Motor) { flags, directionPin, pwmTimer }; initMotor(motorName);"
	.byte	0x1
	.uleb128 0x40
	.ascii	"DEFINE_2DirPins_MOTOR(motorName) Motor2Pins "
	.string	"motorName ##_; const PMotor motorName = (PMotor) &motorName ##_;"
	.byte	0x1
	.uleb128 0x43
	.ascii	"INIT_2DirPins_MOTOR(motorName,flags,directionPin,pwmTimer,di"
	.ascii	"rectionPin2) motorName ##_ = (Motor2Pins) { { flags | MOTOR_"
	.ascii	"TWO_DIR_PINS, directionP"
	.string	"in, pwmTimer }, directionPin2 }; initMotor2Pins(&motorName ##_);"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x9
	.string	"TANK_MOTOR_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x22
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x9
	.string	"MOTOR_SMOOTH_H_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x9
	.string	"MUTEX_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x2d
	.ascii	"DEFINE_SMOOTH_MOTOR(motorName) SmoothMot"
	.string	"or motorName ##_; const PSmoothMotor motorName = &motorName ##_;"
	.byte	0x1
	.uleb128 0x30
	.ascii	"INIT_SMOOTH_MOTOR(motorName,realMotor,adjustmentFreq,adjustm"
	.ascii	"entStep) motorName ##_ = (SmoothMotor) { realMotor, 0, FORWA"
	.ascii	"RD, 0, FORWARD, FALSE, "
	.string	"adjustmentFreq, adjustmentStep, 0 }; initSmoothMotor(motorName);"
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x27
	.byte	0x1
	.uleb128 0x9
	.string	"_BASE_BEFORE_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x1
	.uleb128 0x9
	.string	"KERNEL_H_ "
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x9
	.string	"KERNEL_BASE_H_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2a
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
	.uleb128 0x2b
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x2d
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_BGX1_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2f
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RAW_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x30
	.byte	0x4
	.byte	0x1
	.uleb128 0x37
	.string	"WAIT_FOR_TWI() while (twi_running) ;"
	.byte	0x1
	.uleb128 0x3f
	.string	"NUM_TWI_OPERATIONS 3"
	.byte	0x4
	.byte	0x1
	.uleb128 0xd
	.string	"TWI_DEVICE bgx1"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x31
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RPC_HASH_CLIENT_H_ "
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x32
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_RPC_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x2f
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x14
	.ascii	"TWI_RPC_FUNCTION_VAR(funcName,operationByte,ArgStruct,ResStr"
	.ascii	"uct) void funcName(ArgStruct *parameters, uint16_t argSize, "
	.ascii	"ResStruct *out_result, uint16_t resultSize) { TWIBuffer argB"
	.ascii	"uf = (TWIBuffer) { (byte*) parameters, argSize }; TWIBuffer "
	.ascii	"resBuf = (TWIBuffer) { (byte*) out_result, resultSize }; twi"
	.ascii	"_"
	.string	"rpc(TWI_DEVICE, operationByte, argBuf, resBuf); WAIT_FOR_TWI() }"
	.byte	0x1
	.uleb128 0x1c
	.ascii	"TWI_RPC_FUNCTION_VARARGS(funcName,operationByte,ArgStruct,Re"
	.ascii	"sStruct) ResStruct funcName(ArgStruct *parameters, uint16_t "
	.ascii	"argSize) { TWIBuffer argBuf = (TWIBuffer) { (byte*) paramete"
	.ascii	"rs, argSize }; ResStruct result; TWIBuffer resBuf = (TWIBuff"
	.ascii	"er) { (byte*) &result, sizeof(ResStruct) }; twi_rpc(TWI_DEVI"
	.ascii	"CE,"
	.string	" operationByte, argBuf, resBuf); WAIT_FOR_TWI() return result; }"
	.byte	0x1
	.uleb128 0x26
	.ascii	"TWI_RPC_FUNCTION_VARRES(funcName,operationByte,ArgStruct,Res"
	.ascii	"Struct) void funcName(ArgStruct *parameters, uint16_t argSiz"
	.ascii	"e, ResStruct *out_result, uint16_t resultSize) { TWIBuffer a"
	.ascii	"rgBuf = (TWIBuffer) { (byte*) parameters, argSize }; TWIBuff"
	.ascii	"er resBuf = (TWIBuffer) { (byte*) out_result, resultSize }; "
	.ascii	"twi_"
	.string	"rpc(TWI_DEVICE, operationByte, argBuf, resBuf); WAIT_FOR_TWI() }"
	.byte	0x1
	.uleb128 0x2e
	.ascii	"TWI_RPC_FUNCTION(funcName,operationByte,ArgStruct,ResStruct)"
	.ascii	" ResStruct funcName(ArgStruct *parameters) { TWIBuffer argBu"
	.ascii	"f = (TWIBuffer) { (byte*) parameters, sizeof(ArgStruct) }; R"
	.ascii	"esStruct result; TWIBuffer resBuf = (TWIBuffer) { (byte*) &r"
	.ascii	"esult, sizeof(ResStruct) }; twi_rpc(TWI_DEVICE,"
	.string	" operationByte, argBuf, resBuf); WAIT_FOR_TWI() return result; }"
	.byte	0x1
	.uleb128 0x3c
	.ascii	"TWI_RPC_FUNCTION_VOID_VAR(funcName,operationByte,ArgStruct) "
	.ascii	"void funcName(ArgStruct *parameters, uint16_t argSize) { TWI"
	.ascii	"Buffer buf = (TWIBuffer) { (byte*) parameters, argSize }; "
	.string	"twi_rpc_oneway(TWI_DEVICE, operationByte, buf); WAIT_FOR_TWI() }"
	.byte	0x1
	.uleb128 0x43
	.ascii	"TWI_RPC_FUNCTION_VOID(funcName,operationByte,ArgStruct) void"
	.ascii	" funcName(ArgStruct *parameters) { TWIBuffer buf = (TWIBuffe"
	.ascii	"r) { (byte*) parameters, sizeof(ArgStruct) }; "
	.string	"twi_rpc_oneway(TWI_DEVICE, operationByte, buf); WAIT_FOR_TWI() }"
	.byte	0x1
	.uleb128 0x4e
	.ascii	"TWI_RPC_FUNCTION_NOARGS(funcName,operationByte,ResStruct) Re"
	.ascii	"sStruct funcName() { ResStruct result; TWIBuffer argBuf = (T"
	.ascii	"WIBuffer) { (byte*) NULL, 0 }; TWIBuffer resBuf = (TWIBuffer"
	.ascii	") { (byte*) &result, sizeof(ResStruct) }; twi_rpc(TWI_DEVICE"
	.ascii	","
	.string	" operationByte, argBuf, resBuf); WAIT_FOR_TWI() return result; }"
	.byte	0x1
	.uleb128 0x58
	.ascii	"TWI_RPC_FUNCTION_NOARGS_VAR(funcName,operationByte,ResStruct"
	.ascii	") void funcName(ResStruct *out_result, uint16_t resultSize) "
	.ascii	"{ TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 }; TWIBuf"
	.ascii	"fer resBuf = (TWIBuffer) { (byte*) out_result, resultSize };"
	.ascii	" twi_"
	.string	"rpc(TWI_DEVICE, operationByte, argBuf, resBuf); WAIT_FOR_TWI() }"
	.byte	0x1
	.uleb128 0x64
	.ascii	"TWI_RPC_FUNCTION_NOTIFY(funcName,operationByte) void funcNam"
	.ascii	"e() { TWIBuffer argBuf = (TWIBuffer) { (byte*) NULL, 0 }; tw"
	.ascii	"i"
	.string	"_rpc_oneway(TWI_DEVICE, operationByte, argBuf); WAIT_FOR_TWI() }"
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x33
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
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x2
	.string	"TWI_TANK_IO_H_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x35
	.byte	0x1
	.uleb128 0x2
	.string	"TANK_IO_PROTOCOL_H_ "
	.byte	0x1
	.uleb128 0x4
	.string	"TANK_IO_ADDRESS (11 << 2)"
	.byte	0x4
	.byte	0x2
	.uleb128 0xd
	.string	"TWI_DEVICE"
	.byte	0x1
	.uleb128 0xf
	.string	"TWI_DEVICE tank_IO"
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x10
	.string	"TWI_BIT_RATE_VALUE 17"
	.byte	0x1
	.uleb128 0x11
	.string	"TWI_PRESCALER_MASK 0"
	.byte	0x1
	.uleb128 0x12
	.string	"TWI_Buffer_Size 255"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x36
	.byte	0x1
	.uleb128 0x2
	.string	"_TIMER_KERNEL_KERNEL_ "
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
	.byte	0x4
	.byte	0x1
	.uleb128 0x19
	.string	"CLOCKISR CLOCKISR_A"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x37
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_BASE_KERNEL_ "
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x2a
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
	.uleb128 0x20
	.uleb128 0x38
	.byte	0x1
	.uleb128 0x2
	.string	"_SIMPLE_TIMER_KERNEL_ "
	.byte	0x4
	.byte	0x1
	.uleb128 0x21
	.string	"INITIALIZE_SCHEDULER "
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x39
	.byte	0x1
	.uleb128 0x9
	.string	"_ATOMIC_MUTEX_KERNEL_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3a
	.byte	0x1
	.uleb128 0x2
	.string	"_MOTOR_SMOOTH_KERNEL_KERNEL_ "
	.byte	0x1
	.uleb128 0x4
	.string	"SMOOTH_TICK_FREQ 1000"
	.byte	0x1
	.uleb128 0x5
	.string	"SMOOTH_MOTOR_A LeftMotor"
	.byte	0x1
	.uleb128 0x6
	.string	"SMOOTH_MOTOR_B RightMotor"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x3b
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_SMOOTH_PAIR_KERNEL_ "
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x3c
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_SMOOTH_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x2
	.string	"_TWI_RPC_KERNEL_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x2
	.string	"_TWI_RAW_KERNEL_ "
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3f
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
	.uleb128 0x3f
	.string	"twi_base TWCR = _BV(TWEN) | _BV(TWINT) | _BV(TWIE)"
	.byte	0x1
	.uleb128 0x40
	.string	"twi_start() twi_base | _BV(TWSTA)"
	.byte	0x1
	.uleb128 0x41
	.string	"twi_ack() twi_base | _BV(TWEA)"
	.byte	0x1
	.uleb128 0x42
	.string	"twi_continue() twi_base"
	.byte	0x1
	.uleb128 0x43
	.string	"twi_send(data) TWDR = data; twi_continue()"
	.byte	0x1
	.uleb128 0x44
	.string	"twi_send_ack(data) TWDR = data; twi_ack()"
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x40
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
	.uleb128 0xe
	.uleb128 0x41
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x42
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x43
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
.LFB61:
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
.LFE61:
	.size	twi_stop, .-twi_stop
	.type	fillSendBuffer, @function
fillSendBuffer:
.LFB73:
.LM5:
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	mov r27,r21
	mov r26,r22
	mov r21,r23
.LM6:
	lds r30,sendBuffer
	lds r31,sendBuffer+1
	st Z,r24
.LM7:
	sts sendBuffer+2,r22
	sts sendBuffer+3,r23
.LM8:
	lds r18,sendBuffer
	lds r19,sendBuffer+1
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
	movw r24,r18
.LVL1:
	mov r18,r20
	mov r19,r27
	movw r22,r18
	mov r20,r26
.LVL2:
	call memcpy
.LVL3:
/* epilogue start */
.LM9:
	ret
.LFE73:
	.size	fillSendBuffer, .-fillSendBuffer
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
.LFB4:
.LM10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM11:
	in r24,84-32
	sts current_reset_status,r24
.LM12:
	out 84-32,__zero_reg__
.LM13:
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
.LM14:
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
.LM15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM16:
	lds r24,current_reset_status
/* epilogue start */
	ret
.LFE6:
	.size	getResetStatus, .-getResetStatus
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
.LFB7:
.LM17:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM18:
	ldi r26,lo8(PortA_)
	ldi r27,hi8(PortA_)
	ldi r30,lo8(C.76.3964)
	ldi r31,hi8(C.76.3964)
	ldi r24,lo8(6)
.L8:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L8
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
.LM19:
	ldi r26,lo8(PortB_)
	ldi r27,hi8(PortB_)
	ldi r30,lo8(C.77.3965)
	ldi r31,hi8(C.77.3965)
	ldi r24,lo8(6)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
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
.LM20:
	ldi r26,lo8(PortC_)
	ldi r27,hi8(PortC_)
	ldi r30,lo8(C.78.3966)
	ldi r31,hi8(C.78.3966)
	ldi r24,lo8(6)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
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
.LM21:
	ldi r26,lo8(PortD_)
	ldi r27,hi8(PortD_)
	ldi r30,lo8(C.79.3967)
	ldi r31,hi8(C.79.3967)
	ldi r24,lo8(6)
.L11:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L11
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
.LM22:
	ret
.LFE7:
	.size	init_ports_m1284P, .-init_ports_m1284P
	.section	.init8
.global	init_ports_m1284P_kernel_init
	.type	init_ports_m1284P_kernel_init, @function
init_ports_m1284P_kernel_init:
.LFB8:
.LSM2:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM3:
	call init_ports_m1284P
/* epilogue start */
.LFE8:
	.size	init_ports_m1284P_kernel_init, .-init_ports_m1284P_kernel_init
	.text
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
.LFB9:
.LM23:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM24:
	ldi r26,lo8(Timer0_)
	ldi r27,hi8(Timer0_)
	ldi r30,lo8(C.72.3960)
	ldi r31,hi8(C.72.3960)
	ldi r24,lo8(7)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
.LM25:
	ldi r26,lo8(Timer1_)
	ldi r27,hi8(Timer1_)
	ldi r30,lo8(C.73.3961)
	ldi r31,hi8(C.73.3961)
	ldi r24,lo8(7)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
.LM26:
	ldi r26,lo8(Timer2_)
	ldi r27,hi8(Timer2_)
	ldi r30,lo8(C.74.3962)
	ldi r31,hi8(C.74.3962)
	ldi r24,lo8(7)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
.LM27:
	ldi r26,lo8(Timer3_)
	ldi r27,hi8(Timer3_)
	ldi r30,lo8(C.75.3963)
	ldi r31,hi8(C.75.3963)
	ldi r24,lo8(7)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
.LM28:
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
.LM29:
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
.LM30:
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
.LM31:
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
.LM32:
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
.LM33:
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
.LM34:
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
.LM35:
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
.LM36:
	ret
.LFE9:
	.size	init_timer_m1284P, .-init_timer_m1284P
	.section	.init8
.global	init_timer_m1284P_kernel_init
	.type	init_timer_m1284P_kernel_init, @function
init_timer_m1284P_kernel_init:
.LFB10:
.LSM4:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM5:
	call init_timer_m1284P
/* epilogue start */
.LFE10:
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.text
.global	initMotor
	.type	initMotor, @function
initMotor:
.LFB11:
.LM37:
.LVL4:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM38:
	ldi r24,lo8(Timer1_)
	ldi r25,hi8(Timer1_)
.LVL5:
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setTimerClockSelect
.LM39:
	ldd r30,Y+3
	ldd r31,Y+4
	ld r24,Z
	ldd r25,Z+1
	ldi r22,lo8(4)
	ldi r23,hi8(4)
	call setWaveformGenerationMode
.LM40:
	ldd r24,Y+3
	ldd r25,Y+4
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
.LM41:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
.LM42:
	ld r24,Y
	sbrc r24,3
	rjmp .L27
.LM43:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOne
.L27:
/* epilogue start */
.LM44:
	pop r29
	pop r28
.LVL6:
	ret
.LFE11:
	.size	initMotor, .-initMotor
.global	initMotor2Pins
	.type	initMotor2Pins, @function
initMotor2Pins:
.LFB12:
.LM45:
.LVL7:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM46:
	call initMotor
.LVL8:
.LM47:
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinOutput
.LM48:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinZero
.LM49:
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinZero
/* epilogue start */
.LM50:
	pop r29
	pop r28
.LVL9:
	ret
.LFE12:
	.size	initMotor2Pins, .-initMotor2Pins
.global	init_tank_motors
	.type	init_tank_motors, @function
init_tank_motors:
.LFB13:
.LM51:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LM52:
	ldi r17,lo8(8)
	sts LeftMotorBase_,r17
	ldi r24,lo8(PinC4_)
	ldi r25,hi8(PinC4_)
	sts LeftMotorBase_+1+1,r25
	sts LeftMotorBase_+1,r24
	ldi r24,lo8(Timer1B_)
	ldi r25,hi8(Timer1B_)
	sts LeftMotorBase_+3+1,r25
	sts LeftMotorBase_+3,r24
	ldi r24,lo8(PinC5_)
	ldi r25,hi8(PinC5_)
	sts LeftMotorBase_+5+1,r25
	sts LeftMotorBase_+5,r24
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	call initMotor2Pins
.LM53:
	sts RightMotorBase_,r17
	ldi r24,lo8(PinC2_)
	ldi r25,hi8(PinC2_)
	sts RightMotorBase_+1+1,r25
	sts RightMotorBase_+1,r24
	ldi r24,lo8(Timer1A_)
	ldi r25,hi8(Timer1A_)
	sts RightMotorBase_+3+1,r25
	sts RightMotorBase_+3,r24
	ldi r24,lo8(PinC3_)
	ldi r25,hi8(PinC3_)
	sts RightMotorBase_+5+1,r25
	sts RightMotorBase_+5,r24
	ldi r24,lo8(RightMotorBase_)
	ldi r25,hi8(RightMotorBase_)
	call initMotor2Pins
/* epilogue start */
.LM54:
	pop r17
	ret
.LFE13:
	.size	init_tank_motors, .-init_tank_motors
	.section	.init8
.global	init_tank_motors_kernel_init
	.type	init_tank_motors_kernel_init, @function
init_tank_motors_kernel_init:
.LFB14:
.LSM6:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM7:
	call init_tank_motors
/* epilogue start */
.LFE14:
	.size	init_tank_motors_kernel_init, .-init_tank_motors_kernel_init
	.text
.global	init_timer
	.type	init_timer, @function
init_timer:
.LFB41:
.LM55:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LM56:
	ldi r28,lo8(Timer3_)
	ldi r29,hi8(Timer3_)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
.LM57:
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
.LM58:
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
.LM59:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
/* epilogue start */
.LM60:
	pop r29
	pop r28
	ret
.LFE41:
	.size	init_timer, .-init_timer
	.section	.init8
.global	init_timer_kernel_init
	.type	init_timer_kernel_init, @function
init_timer_kernel_init:
.LFB42:
.LSM8:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM9:
	call init_timer
/* epilogue start */
.LFE42:
	.size	init_timer_kernel_init, .-init_timer_kernel_init
	.text
	.weak	in_timer_tick
	.type	in_timer_tick, @function
in_timer_tick:
.LFB43:
.LM61:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM62:
	ret
.LFE43:
	.size	in_timer_tick, .-in_timer_tick
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
.LFB44:
.LM63:
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
.LM64:
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
.LM65:
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
.LFE44:
	.size	__vector_32, .-__vector_32
.global	mutex_create
	.type	mutex_create, @function
mutex_create:
.LFB45:
.LM66:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM67:
	ldi r24,lo8(0)
	ldi r25,hi8(0)
/* epilogue start */
	ret
.LFE45:
	.size	mutex_create, .-mutex_create
.global	mutex_lock
	.type	mutex_lock, @function
mutex_lock:
.LFB46:
.LM68:
.LVL10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM69:
/* #APP */
 ;  19 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
/* epilogue start */
.LM70:
/* #NOAPP */
	ret
.LFE46:
	.size	mutex_lock, .-mutex_lock
.global	mutex_trylock
	.type	mutex_trylock, @function
mutex_trylock:
.LFB47:
.LM71:
.LVL11:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM72:
/* #APP */
 ;  23 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	cli
 ;  0 "" 2
.LM73:
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL12:
/* epilogue start */
	ret
.LFE47:
	.size	mutex_trylock, .-mutex_trylock
.global	mutex_release
	.type	mutex_release, @function
mutex_release:
.LFB48:
.LM74:
.LVL13:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM75:
/* #APP */
 ;  28 "..\..\AntonAvrLib/kernel/processes/mutex/atomic_mutex.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM76:
/* #NOAPP */
	ret
.LFE48:
	.size	mutex_release, .-mutex_release
.global	initSmoothMotor
	.type	initSmoothMotor, @function
initSmoothMotor:
.LFB49:
.LM77:
.LVL14:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM78:
	movw r30,r24
	std Z+17,__zero_reg__
	std Z+16,__zero_reg__
/* epilogue start */
.LM79:
	ret
.LFE49:
	.size	initSmoothMotor, .-initSmoothMotor
.global	smooth_millisecond_tick
	.type	smooth_millisecond_tick, @function
smooth_millisecond_tick:
.LFB51:
.LM80:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM81:
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	breq .L42
.LM82:
	lds r24,smooth_ticks
	lds r25,smooth_ticks+1
	lds r22,target_motor_A
	lds r23,target_motor_A+1
	call __udivmodhi4
	sbiw r24,0
	brne .L42
.LM83:
	ldi r24,lo8(LeftMotor_)
	ldi r25,hi8(LeftMotor_)
	call motor_smooth_tick
.L42:
.LM84:
	lds r24,motor_B_running
	lds r25,motor_B_running+1
	sbiw r24,0
	breq .L41
.LM85:
	lds r24,smooth_ticks
	lds r25,smooth_ticks+1
	lds r22,target_motor_B
	lds r23,target_motor_B+1
	call __udivmodhi4
	sbiw r24,0
	brne .L41
.LM86:
	ldi r24,lo8(RightMotor_)
	ldi r25,hi8(RightMotor_)
	call motor_smooth_tick
.L41:
	ret
.LFE51:
	.size	smooth_millisecond_tick, .-smooth_millisecond_tick
.global	smooth_enable_millisecond_tick
	.type	smooth_enable_millisecond_tick, @function
smooth_enable_millisecond_tick:
.LFB52:
.LM87:
.LVL15:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM88:
	sbiw r24,0
	breq .L45
.LM89:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
.LVL16:
	call enableTimerInterrupt
	ret
.LVL17:
.L45:
.LM90:
	ldi r24,lo8(Timer3B_)
	ldi r25,hi8(Timer3B_)
.LVL18:
	call disableTimerInterrupt
	ret
.LFE52:
	.size	smooth_enable_millisecond_tick, .-smooth_enable_millisecond_tick
.global	motor_smooth_set_call_frequency
	.type	motor_smooth_set_call_frequency, @function
motor_smooth_set_call_frequency:
.LFB50:
.LM91:
.LVL19:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM92:
	lds r18,motor_A_running
	lds r19,motor_A_running+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L59
.LM93:
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	lds r20,motor_B_running
	lds r21,motor_B_running+1
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L48
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	rjmp .L48
.L59:
.LM94:
	ldi r18,lo8(1)
	ldi r19,hi8(1)
.L48:
.LVL20:
.LM95:
	ldi r20,hi8(LeftMotor_)
	cpi r24,lo8(LeftMotor_)
	cpc r25,r20
	brne .L50
.LM96:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL21:
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L51
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L51:
	sts motor_A_running+1,r25
	sts motor_A_running,r24
.LM97:
	sbiw r24,0
	brne .L52
.LM98:
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	call __udivmodhi4
.LVL22:
.L52:
.LM99:
	sts target_motor_A+1,r23
	sts target_motor_A,r22
	rjmp .L53
.LVL23:
.L50:
.LM100:
	ldi r20,hi8(RightMotor_)
	cpi r24,lo8(RightMotor_)
	cpc r25,r20
	brne .L47
.LM101:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL24:
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L55
	ldi r24,lo8(0)
	ldi r25,hi8(0)
.L55:
	sts motor_B_running+1,r25
	sts motor_B_running,r24
.LM102:
	sbiw r24,0
	brne .L56
.LM103:
	ldi r24,lo8(1000)
	ldi r25,hi8(1000)
	call __udivmodhi4
.LVL25:
.L56:
.LM104:
	sts target_motor_B+1,r23
	sts target_motor_B,r22
.L53:
.LM105:
	lds r24,motor_A_running
	lds r25,motor_A_running+1
	sbiw r24,0
	brne .L60
.LM106:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	lds r20,motor_B_running
	lds r21,motor_B_running+1
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	brne .L57
	ldi r24,lo8(0)
	ldi r25,hi8(0)
	rjmp .L57
.L60:
.LM107:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.L57:
.LVL26:
.LM108:
	cp r18,r24
	cpc r19,r25
	breq .L47
.LM109:
	call smooth_enable_millisecond_tick
.LVL27:
.L47:
	ret
.LFE50:
	.size	motor_smooth_set_call_frequency, .-motor_smooth_set_call_frequency
.global	__vector_33
	.type	__vector_33, @function
__vector_33:
.LFB53:
.LM110:
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
.LM111:
	call smooth_millisecond_tick
/* epilogue start */
.LM112:
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
.LFE53:
	.size	__vector_33, .-__vector_33
.global	init_smooth_motors
	.type	init_smooth_motors, @function
init_smooth_motors:
.LFB54:
.LM113:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM114:
	ldi r24,lo8(LeftMotorBase_)
	ldi r25,hi8(LeftMotorBase_)
	sts LeftMotor_+1,r25
	sts LeftMotor_,r24
	sts LeftMotor_+2+1,__zero_reg__
	sts LeftMotor_+2,__zero_reg__
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts LeftMotor_+4+1,r25
	sts LeftMotor_+4,r24
	sts LeftMotor_+6+1,__zero_reg__
	sts LeftMotor_+6,__zero_reg__
	sts LeftMotor_+8+1,r25
	sts LeftMotor_+8,r24
	sts LeftMotor_+10+1,__zero_reg__
	sts LeftMotor_+10,__zero_reg__
	ldi r20,lo8(40)
	ldi r21,hi8(40)
	sts LeftMotor_+12+1,r21
	sts LeftMotor_+12,r20
	ldi r18,lo8(3000)
	ldi r19,hi8(3000)
	sts LeftMotor_+14+1,r19
	sts LeftMotor_+14,r18
	sts LeftMotor_+16+1,__zero_reg__
	sts LeftMotor_+16,__zero_reg__
.LVL28:
.LM115:
	ldi r22,lo8(RightMotorBase_)
	ldi r23,hi8(RightMotorBase_)
	sts RightMotor_+1,r23
	sts RightMotor_,r22
	sts RightMotor_+2+1,__zero_reg__
	sts RightMotor_+2,__zero_reg__
	sts RightMotor_+4+1,r25
	sts RightMotor_+4,r24
	sts RightMotor_+6+1,__zero_reg__
	sts RightMotor_+6,__zero_reg__
	sts RightMotor_+8+1,r25
	sts RightMotor_+8,r24
	sts RightMotor_+10+1,__zero_reg__
	sts RightMotor_+10,__zero_reg__
	sts RightMotor_+12+1,r21
	sts RightMotor_+12,r20
	sts RightMotor_+14+1,r19
	sts RightMotor_+14,r18
	sts RightMotor_+16+1,__zero_reg__
	sts RightMotor_+16,__zero_reg__
.LVL29:
/* epilogue start */
.LM116:
	ret
.LFE54:
	.size	init_smooth_motors, .-init_smooth_motors
	.section	.init8
.global	init_smooth_motors_kernel_init
	.type	init_smooth_motors_kernel_init, @function
init_smooth_motors_kernel_init:
.LFB55:
.LSM10:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM11:
	call init_smooth_motors
/* epilogue start */
.LFE55:
	.size	init_smooth_motors_kernel_init, .-init_smooth_motors_kernel_init
	.text
.global	twi_handleMasterRequest
	.type	twi_handleMasterRequest, @function
twi_handleMasterRequest:
.LFB56:
.LM117:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM118:
	ldi r22,lo8(0)
	ldi r23,lo8(0)
	ldi r24,lo8(0)
	ldi r25,lo8(0)
/* epilogue start */
	ret
.LFE56:
	.size	twi_handleMasterRequest, .-twi_handleMasterRequest
.global	twi_handleMasterTransmission
	.type	twi_handleMasterTransmission, @function
twi_handleMasterTransmission:
.LFB57:
.LM119:
.LVL30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM120:
	ret
.LFE57:
	.size	twi_handleMasterTransmission, .-twi_handleMasterTransmission
	.weak	twi_unexpectedCondition
	.type	twi_unexpectedCondition, @function
twi_unexpectedCondition:
.LFB58:
.LM121:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM122:
	ret
.LFE58:
	.size	twi_unexpectedCondition, .-twi_unexpectedCondition
.global	init_twi
	.type	init_twi, @function
init_twi:
.LFB59:
.LM123:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM124:
	ldi r24,lo8(5)
	sts 188,r24
.LM125:
	ldi r24,lo8(-1)
	sts 187,r24
.LM126:
	ldi r24,lo8(17)
	sts 184,r24
.LM127:
	sts 185,__zero_reg__
/* epilogue start */
.LM128:
	ret
.LFE59:
	.size	init_twi, .-init_twi
	.section	.init8
.global	init_twi_kernel_init
	.type	init_twi_kernel_init, @function
init_twi_kernel_init:
.LFB60:
.LSM12:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM13:
	call init_twi
/* epilogue start */
.LFE60:
	.size	init_twi_kernel_init, .-init_twi_kernel_init
	.text
.global	next_twi_operation
	.type	next_twi_operation, @function
next_twi_operation:
.LFB62:
.LM129:
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
.LM130:
	movw r20,r28
	subi r20,lo8(-(1))
	sbci r21,hi8(-(1))
.L72:
.LM131:
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
.L70:
	ld r0,Z+
	st X+,r0
	subi r18,lo8(-(-1))
	brne .L70
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
.LM132:
	cpi r24,3
	cpc r25,__zero_reg__
	brge .L74
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L72
.LM133:
	cpi r18,2
	cpc r19,__zero_reg__
	brne .L73
.LM134:
	mov r24,r22
	andi r24,lo8(-3)
	sts twi_address,r24
.L73:
.LM135:
	sts alreadyHandled+1,__zero_reg__
	sts alreadyHandled,__zero_reg__
.LM136:
	ldd r24,Y+1
	ldd r25,Y+2
	ldd r26,Y+3
	ldd r27,Y+4
	sts twi_buffer,r24
	sts twi_buffer+1,r25
	sts twi_buffer+2,r26
	sts twi_buffer+3,r27
.LM137:
	ldi r18,lo8(1)
	ldi r19,hi8(1)
	rjmp .L71
.L74:
.LM138:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L71:
.LM139:
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
.LFE62:
	.size	next_twi_operation, .-next_twi_operation
	.type	twi_stop_or_next, @function
twi_stop_or_next:
.LFB63:
.LM140:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM141:
	lds r24,nextTwiOperation
	lds r25,nextTwiOperation+1
	cpi r24,3
	cpc r25,__zero_reg__
	brge .L78
.LM142:
	call next_twi_operation
	sbiw r24,0
	brne .L79
.L78:
.LM143:
	call twi_stop
	ret
.L79:
.LM144:
	ldi r24,lo8(-91)
	sts 188,r24
	ret
.LFE63:
	.size	twi_stop_or_next, .-twi_stop_or_next
.global	twi_start_master_operation
	.type	twi_start_master_operation, @function
twi_start_master_operation:
.LFB65:
.LM145:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM146:
	sts error+1,__zero_reg__
	sts error,__zero_reg__
.LM147:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	sts twi_running+1,r25
	sts twi_running,r24
.LM148:
	sts nextTwiOperation+1,__zero_reg__
	sts nextTwiOperation,__zero_reg__
.LM149:
	call next_twi_operation
/* epilogue start */
.LM150:
	ret
.LFE65:
	.size	twi_start_master_operation, .-twi_start_master_operation
.global	__vector_26
	.type	__vector_26, @function
__vector_26:
.LFB68:
.LM151:
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
.LM152:
	lds r24,185
	ldi r25,lo8(0)
	andi r24,lo8(248)
	andi r25,hi8(248)
	cpi r24,48
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L87
	cpi r24,49
	cpc r25,__zero_reg__
	brge .L93
	cpi r24,24
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L85
	cpi r24,25
	cpc r25,__zero_reg__
	brge .L94
	cpi r24,8
	cpc r25,__zero_reg__
	breq .L84
	cpi r24,16
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L83
	rjmp .L84
.L94:
	cpi r24,32
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L90
	cpi r24,40
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L83
	rjmp .L85
.L93:
	cpi r24,72
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L90
	cpi r24,73
	cpc r25,__zero_reg__
	brge .L95
	cpi r24,56
	cpc r25,__zero_reg__
	breq .L88
	cpi r24,64
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L83
	rjmp .L104
.L95:
	cpi r24,80
	cpc r25,__zero_reg__
	brne .+2
	rjmp .L91
	cpi r24,88
	cpc r25,__zero_reg__
	breq .+2
	rjmp .L83
	rjmp .L92
.L84:
.LM153:
	lds r24,twi_address
	sts 187,r24
	rjmp .L100
.L88:
.LM154:
	ldi r24,lo8(5)
	ldi r25,hi8(5)
	sts error+1,r25
	sts error,r24
.LBB14:
.LBB15:
.LM155:
	ldi r24,lo8(-123)
	sts 188,r24
.LM156:
	sts twi_running+1,__zero_reg__
	sts twi_running,__zero_reg__
	rjmp .L82
.L85:
.LBE15:
.LBE14:
.LM157:
	lds r24,alreadyHandled
	lds r25,alreadyHandled+1
	lds r18,twi_buffer+2
	lds r19,twi_buffer+2+1
	cp r24,r18
	cpc r25,r19
	brlo .+2
	rjmp .L92
.LM158:
	lds r30,twi_buffer
	lds r31,twi_buffer+1
	add r30,r24
	adc r31,r25
	ld r18,Z
	sts 187,r18
	adiw r24,1
	sts alreadyHandled+1,r25
	sts alreadyHandled,r24
.L100:
	ldi r24,lo8(-123)
.L101:
	sts 188,r24
	rjmp .L82
.L87:
.LM159:
	ldi r24,lo8(6)
	ldi r25,hi8(6)
	rjmp .L102
.L104:
.LBB16:
.LBB17:
.LM160:
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	sbiw r24,0
	breq .L100
	rjmp .L103
.L91:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
.LM161:
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
.LM162:
	lds r24,twi_buffer+2
	lds r25,twi_buffer+2+1
	sbiw r24,1
	cp r18,r24
	cpc r19,r25
	brsh .L100
.L103:
.LM163:
	ldi r24,lo8(-59)
	rjmp .L101
.L90:
.LBE19:
.LBE18:
.LM164:
	ldi r24,lo8(4)
	ldi r25,hi8(4)
.L102:
	sts error+1,r25
	sts error,r24
.LM165:
	call twi_stop
.LM166:
	rjmp .L82
.L92:
.LM167:
	call twi_stop_or_next
.LM168:
	rjmp .L82
.L83:
.LM169:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	sts error+1,r25
	sts error,r24
.LM170:
	call twi_unexpectedCondition
.L82:
/* epilogue start */
.LM171:
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
.LFE68:
	.size	__vector_26, .-__vector_26
.global	twiMultipleOperations
	.type	twiMultipleOperations, @function
twiMultipleOperations:
.LFB72:
.LM172:
.LVL31:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL32:
.LM173:
	ldi r20,lo8(0)
	ldi r21,hi8(0)
.LM174:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.LM175:
	rjmp .L106
.LVL33:
.L110:
.LM176:
	movw r26,r20
	subi r26,lo8(-(furtherOperations))
	sbci r27,hi8(-(furtherOperations))
	movw r30,r22
	add r30,r20
	adc r31,r21
	ldi r17,lo8(7)
.L107:
	ld r0,Z+
	st X+,r0
	subi r17,lo8(-(-1))
	brne .L107
.LM177:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
.LVL34:
	subi r20,lo8(-(7))
	sbci r21,hi8(-(7))
.LVL35:
.L106:
	cp r18,r24
	cpc r19,r25
	brlt .L108
.L111:
.LM178:
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
	rjmp .L109
.L108:
.LM179:
	cpi r18,3
	cpc r19,__zero_reg__
	brne .L110
	rjmp .L111
.L112:
.LM180:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
.LM181:
	subi r18,lo8(-(1))
	sbci r19,hi8(-(1))
.LVL36:
	adiw r30,7
.L109:
.LM182:
	cpi r18,3
	cpc r19,__zero_reg__
	brlt .L112
.LM183:
	call twi_start_master_operation
.LVL37:
/* epilogue start */
.LM184:
	pop r17
	ret
.LFE72:
	.size	twiMultipleOperations, .-twiMultipleOperations
.global	twiSendReceive
	.type	twiSendReceive, @function
twiSendReceive:
.LFB71:
.LM185:
.LVL38:
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
.LM186:
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
.LVL39:
	std Y+7,r21
	std Y+6,r20
	std Y+8,r16
	std Y+9,r17
	std Y+10,r18
	std Y+11,r19
	std Y+12,r24
	ldi r24,lo8(1)
	ldi r25,hi8(1)
.LVL40:
	std Y+14,r25
	std Y+13,r24
.LM187:
	ldi r24,lo8(2)
	ldi r25,hi8(2)
	movw r22,r30
	call twiMultipleOperations
/* epilogue start */
.LM188:
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
.LVL41:
	ret
.LFE71:
	.size	twiSendReceive, .-twiSendReceive
.global	twiReceive
	.type	twiReceive, @function
twiReceive:
.LFB70:
.LM189:
.LVL42:
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
.LM190:
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
.LVL43:
	std Y+7,r25
	std Y+6,r24
.LM191:
	movw r22,r30
	call twiMultipleOperations
.LVL44:
/* epilogue start */
.LM192:
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
.LFE70:
	.size	twiReceive, .-twiReceive
.global	twiSend
	.type	twiSend, @function
twiSend:
.LFB69:
.LM193:
.LVL45:
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
.LM194:
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
.LVL46:
	std Y+7,r25
	std Y+6,r24
.LM195:
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	movw r22,r30
	call twiMultipleOperations
.LVL47:
/* epilogue start */
.LM196:
	adiw r28,7
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r28
	pop r29
	ret
.LFE69:
	.size	twiSend, .-twiSend
.global	twi_rpc_oneway
	.type	twi_rpc_oneway, @function
twi_rpc_oneway:
.LFB74:
.LM197:
.LVL48:
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r17,r24
	mov r24,r22
.LVL49:
	movw r22,r20
	movw r20,r18
.LM198:
	call fillSendBuffer
.LVL50:
.LM199:
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	lds r22,sendBuffer+2
	lds r23,sendBuffer+3
	mov r24,r17
.LVL51:
	call twiSend
/* epilogue start */
.LM200:
	pop r17
.LVL52:
	ret
.LFE74:
	.size	twi_rpc_oneway, .-twi_rpc_oneway
.global	tankIO_writeLeds
	.type	tankIO_writeLeds, @function
tankIO_writeLeds:
.LFB40:
.LM201:
.LVL53:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM202:
	movw r18,r24
.LVL54:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,tank_IO
.LVL55:
	ldi r22,lo8(-95)
	call twi_rpc_oneway
.LVL56:
.L119:
.LM203:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L119
/* epilogue start */
.LM204:
	ret
.LFE40:
	.size	tankIO_writeLeds, .-tankIO_writeLeds
.global	bgx1_setIllumination
	.type	bgx1_setIllumination, @function
bgx1_setIllumination:
.LFB38:
.LM205:
.LVL57:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM206:
	movw r18,r24
.LVL58:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
.LVL59:
	ldi r22,lo8(67)
	call twi_rpc_oneway
.LVL60:
.L122:
.LM207:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L122
/* epilogue start */
.LM208:
	ret
.LFE38:
	.size	bgx1_setIllumination, .-bgx1_setIllumination
.global	bgx1_termPrint_base
	.type	bgx1_termPrint_base, @function
bgx1_termPrint_base:
.LFB34:
.LM209:
.LVL61:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM210:
	movw r18,r24
.LVL62:
	movw r20,r22
	lds r24,bgx1
.LVL63:
	ldi r22,lo8(51)
.LVL64:
	call twi_rpc_oneway
.LVL65:
.L125:
.LM211:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L125
/* epilogue start */
.LM212:
	ret
.LFE34:
	.size	bgx1_termPrint_base, .-bgx1_termPrint_base
.global	bgx1_termScroll
	.type	bgx1_termScroll, @function
bgx1_termScroll:
.LFB33:
.LM213:
.LVL66:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM214:
	movw r18,r24
.LVL67:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
.LVL68:
	ldi r22,lo8(50)
	call twi_rpc_oneway
.LVL69:
.L128:
.LM215:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L128
/* epilogue start */
.LM216:
	ret
.LFE33:
	.size	bgx1_termScroll, .-bgx1_termScroll
.global	bgx1_termGoto
	.type	bgx1_termGoto, @function
bgx1_termGoto:
.LFB32:
.LM217:
.LVL70:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM218:
	movw r18,r24
.LVL71:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
.LVL72:
	ldi r22,lo8(49)
	call twi_rpc_oneway
.LVL73:
.L131:
.LM219:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L131
/* epilogue start */
.LM220:
	ret
.LFE32:
	.size	bgx1_termGoto, .-bgx1_termGoto
.global	bgx1_termClear
	.type	bgx1_termClear, @function
bgx1_termClear:
.LFB31:
.LM221:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM222:
	lds r24,bgx1
	ldi r22,lo8(48)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_oneway
.L134:
.LM223:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L134
/* epilogue start */
.LM224:
	ret
.LFE31:
	.size	bgx1_termClear, .-bgx1_termClear
.global	bgx1_lineTo
	.type	bgx1_lineTo, @function
bgx1_lineTo:
.LFB30:
.LM225:
.LVL74:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM226:
	movw r18,r24
.LVL75:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
.LVL76:
	ldi r22,lo8(27)
	call twi_rpc_oneway
.LVL77:
.L137:
.LM227:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L137
/* epilogue start */
.LM228:
	ret
.LFE30:
	.size	bgx1_lineTo, .-bgx1_lineTo
.global	bgx1_selectFont
	.type	bgx1_selectFont, @function
bgx1_selectFont:
.LFB24:
.LM229:
.LVL78:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM230:
	movw r18,r24
.LVL79:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
.LVL80:
	ldi r22,lo8(21)
	call twi_rpc_oneway
.LVL81:
.L140:
.LM231:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L140
/* epilogue start */
.LM232:
	ret
.LFE24:
	.size	bgx1_selectFont, .-bgx1_selectFont
.global	bgx1_fillAll
	.type	bgx1_fillAll, @function
bgx1_fillAll:
.LFB21:
.LM233:
.LVL82:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM234:
	movw r18,r24
.LVL83:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
.LVL84:
	ldi r22,lo8(18)
	call twi_rpc_oneway
.LVL85:
.L143:
.LM235:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L143
/* epilogue start */
.LM236:
	ret
.LFE21:
	.size	bgx1_fillAll, .-bgx1_fillAll
.global	bgx1_mode
	.type	bgx1_mode, @function
bgx1_mode:
.LFB20:
.LM237:
.LVL86:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM238:
	movw r18,r24
.LVL87:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
.LVL88:
	ldi r22,lo8(17)
	call twi_rpc_oneway
.LVL89:
.L146:
.LM239:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L146
/* epilogue start */
.LM240:
	ret
.LFE20:
	.size	bgx1_mode, .-bgx1_mode
.global	bgx1_move
	.type	bgx1_move, @function
bgx1_move:
.LFB19:
.LM241:
.LVL90:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM242:
	movw r18,r24
.LVL91:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	lds r24,bgx1
.LVL92:
	ldi r22,lo8(16)
	call twi_rpc_oneway
.LVL93:
.L149:
.LM243:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L149
/* epilogue start */
.LM244:
	ret
.LFE19:
	.size	bgx1_move, .-bgx1_move
.global	bgx1_setStatus
	.type	bgx1_setStatus, @function
bgx1_setStatus:
.LFB18:
.LM245:
.LVL94:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM246:
	movw r18,r24
.LVL95:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	lds r24,bgx1
.LVL96:
	ldi r22,lo8(3)
	call twi_rpc_oneway
.LVL97:
.L152:
.LM247:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L152
/* epilogue start */
.LM248:
	ret
.LFE18:
	.size	bgx1_setStatus, .-bgx1_setStatus
.global	bgx1_reset
	.type	bgx1_reset, @function
bgx1_reset:
.LFB15:
.LM249:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM250:
	lds r24,bgx1
	ldi r22,lo8(0)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc_oneway
.L155:
.LM251:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L155
/* epilogue start */
.LM252:
	ret
.LFE15:
	.size	bgx1_reset, .-bgx1_reset
.global	twi_rpc
	.type	twi_rpc, @function
twi_rpc:
.LFB75:
.LM253:
.LVL98:
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
.LVL99:
	movw r22,r20
	movw r20,r18
.LM254:
	call fillSendBuffer
.LVL100:
.LM255:
	lds r20,sendBuffer
	lds r21,sendBuffer+1
	lds r22,sendBuffer+2
	lds r23,sendBuffer+3
	mov r24,r13
.LVL101:
	movw r18,r16
	movw r16,r14
	call twiSendReceive
/* epilogue start */
.LM256:
	pop r17
	pop r16
	pop r15
	pop r14
.LVL102:
	pop r13
.LVL103:
	ret
.LFE75:
	.size	twi_rpc, .-twi_rpc
.global	tankIO_readButtons
	.type	tankIO_readButtons, @function
tankIO_readButtons:
.LFB39:
.LM257:
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
.LM258:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL104:
	lds r24,tank_IO
	ldi r22,lo8(-96)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L159:
.LM259:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L159
.LVL105:
.LM260:
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
.LFE39:
	.size	tankIO_readButtons, .-tankIO_readButtons
.global	bgx1_syncInterface
	.type	bgx1_syncInterface, @function
bgx1_syncInterface:
.LFB37:
.LM261:
.LVL106:
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
.LM262:
	movw r18,r24
.LVL107:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL108:
	lds r24,bgx1
.LVL109:
	ldi r22,lo8(66)
	call twi_rpc
.LVL110:
.L162:
.LM263:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L162
.LVL111:
.LM264:
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
.LFE37:
	.size	bgx1_syncInterface, .-bgx1_syncInterface
.global	bgx1_getAnalog
	.type	bgx1_getAnalog, @function
bgx1_getAnalog:
.LFB36:
.LM265:
.LVL112:
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
.LM266:
	movw r18,r24
.LVL113:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL114:
	lds r24,bgx1
.LVL115:
	ldi r22,lo8(65)
	call twi_rpc
.LVL116:
.L165:
.LM267:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L165
.LVL117:
.LM268:
	ldd r24,Y+1
.LVL118:
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
.LFE36:
	.size	bgx1_getAnalog, .-bgx1_getAnalog
.global	bgx1_syncPort
	.type	bgx1_syncPort, @function
bgx1_syncPort:
.LFB35:
.LM269:
.LVL119:
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
.LM270:
	movw r18,r24
.LVL120:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL121:
	lds r24,bgx1
.LVL122:
	ldi r22,lo8(64)
	call twi_rpc
.LVL123:
.L168:
.LM271:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L168
.LVL124:
.LM272:
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
.LFE35:
	.size	bgx1_syncPort, .-bgx1_syncPort
.global	bgx1_embeddedImage
	.type	bgx1_embeddedImage, @function
bgx1_embeddedImage:
.LFB29:
.LM273:
.LVL125:
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
.LM274:
	movw r18,r24
.LVL126:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
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
.LVL129:
.L171:
.LM275:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L171
.LM276:
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
.LFE29:
	.size	bgx1_embeddedImage, .-bgx1_embeddedImage
.global	bgx1_drawBitmap_base
	.type	bgx1_drawBitmap_base, @function
bgx1_drawBitmap_base:
.LFB28:
.LM277:
.LVL130:
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
.LM278:
	movw r18,r24
.LVL131:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL132:
	lds r24,bgx1
.LVL133:
	ldi r22,lo8(25)
.LVL134:
	call twi_rpc
.LVL135:
.L174:
.LM279:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L174
.LM280:
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
.LFE28:
	.size	bgx1_drawBitmap_base, .-bgx1_drawBitmap_base
.global	bgx1_box
	.type	bgx1_box, @function
bgx1_box:
.LFB27:
.LM281:
.LVL136:
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
.LM282:
	movw r18,r24
.LVL137:
	ldi r20,lo8(2)
	ldi r21,hi8(2)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL138:
	lds r24,bgx1
.LVL139:
	ldi r22,lo8(24)
	call twi_rpc
.LVL140:
.L177:
.LM283:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L177
.LM284:
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
.LFE27:
	.size	bgx1_box, .-bgx1_box
.global	bgx1_vLine
	.type	bgx1_vLine, @function
bgx1_vLine:
.LFB26:
.LM285:
.LVL141:
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
.LM286:
	movw r18,r24
.LVL142:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL143:
	lds r24,bgx1
.LVL144:
	ldi r22,lo8(23)
	call twi_rpc
.LVL145:
.L180:
.LM287:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L180
.LM288:
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
.LFE26:
	.size	bgx1_vLine, .-bgx1_vLine
.global	bgx1_hLine
	.type	bgx1_hLine, @function
bgx1_hLine:
.LFB25:
.LM289:
.LVL146:
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
.LM290:
	movw r18,r24
.LVL147:
	ldi r20,lo8(1)
	ldi r21,hi8(1)
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL148:
	lds r24,bgx1
.LVL149:
	ldi r22,lo8(22)
	call twi_rpc
.LVL150:
.L183:
.LM291:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L183
.LM292:
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
.LFE25:
	.size	bgx1_hLine, .-bgx1_hLine
.global	bgx1_textWidth_base
	.type	bgx1_textWidth_base, @function
bgx1_textWidth_base:
.LFB23:
.LM293:
.LVL151:
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
.LVL152:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL153:
	lds r24,bgx1
.LVL154:
	ldi r22,lo8(20)
.LVL155:
	call twi_rpc
.LVL156:
.L186:
.LM295:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L186
.LVL157:
.LM296:
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
.LFE23:
	.size	bgx1_textWidth_base, .-bgx1_textWidth_base
.global	bgx1_print_base
	.type	bgx1_print_base, @function
bgx1_print_base:
.LFB22:
.LM297:
.LVL158:
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
.LM298:
	movw r18,r24
.LVL159:
	movw r20,r22
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL160:
	lds r24,bgx1
.LVL161:
	ldi r22,lo8(19)
.LVL162:
	call twi_rpc
.LVL163:
.L189:
.LM299:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L189
.LM300:
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
.LFE22:
	.size	bgx1_print_base, .-bgx1_print_base
.global	bgx1_getStatus
	.type	bgx1_getStatus, @function
bgx1_getStatus:
.LFB17:
.LM301:
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
.LM302:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(1)
	ldi r17,hi8(1)
.LVL164:
	lds r24,bgx1
	ldi r22,lo8(2)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L192:
.LM303:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L192
.LVL165:
.LM304:
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
.LFE17:
	.size	bgx1_getStatus, .-bgx1_getStatus
.global	bgx1_getVersion
	.type	bgx1_getVersion, @function
bgx1_getVersion:
.LFB16:
.LM305:
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
.LM306:
	movw r14,r28
	sec
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r16,lo8(2)
	ldi r17,hi8(2)
.LVL166:
	lds r24,bgx1
	ldi r22,lo8(1)
	ldi r18,lo8(0)
	ldi r19,hi8(0)
	movw r20,r18
	call twi_rpc
.L195:
.LM307:
	lds r24,twi_running
	lds r25,twi_running+1
	sbiw r24,0
	brne .L195
.LVL167:
.LM308:
	ldd r24,Y+1
.LVL168:
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
.LFE16:
	.size	bgx1_getVersion, .-bgx1_getVersion
	.weak	before_timer
	.type	before_timer, @function
before_timer:
.LFB76:
.LM309:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM310:
	ret
.LFE76:
	.size	before_timer, .-before_timer
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
.LFB77:
.LM311:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM312:
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
.LM313:
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
.LM314:
	call before_timer
.LM315:
	ldi r24,lo8(Timer3A_)
	ldi r25,hi8(Timer3A_)
	call enableTimerInterrupt
.LM316:
/* #APP */
 ;  32 ".././shared/base_after.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM317:
/* #NOAPP */
	ret
.LFE77:
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
.LFB78:
.LSM14:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM15:
	call init_kernel
/* epilogue start */
.LFE78:
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	PortA
	.data
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
.global	milliseconds_running
.global	milliseconds_running
	.section .bss
	.type	milliseconds_running, @object
	.size	milliseconds_running, 4
milliseconds_running:
	.skip 4,0
.global	bgx1
	.data
	.type	bgx1, @object
	.size	bgx1, 1
bgx1:
	.byte	22
.global	tank_IO
	.type	tank_IO, @object
	.size	tank_IO, 1
tank_IO:
	.byte	44
.global	smooth_ticks
.global	smooth_ticks
	.section .bss
	.type	smooth_ticks, @object
	.size	smooth_ticks, 2
smooth_ticks:
	.skip 2,0
.global	target_motor_A
.global	target_motor_A
	.type	target_motor_A, @object
	.size	target_motor_A, 2
target_motor_A:
	.skip 2,0
.global	target_motor_B
.global	target_motor_B
	.type	target_motor_B, @object
	.size	target_motor_B, 2
target_motor_B:
	.skip 2,0
.global	motor_A_running
.global	motor_A_running
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
	.comm LeftMotorBase_,7,1
	.comm RightMotorBase_,7,1
	.comm LeftMotor_,18,1
	.comm RightMotor_,18,1
	.comm twi_running,2,1
	.comm twi_address,1,1
	.comm alreadyHandled,2,1
	.comm twi_buffer,4,1
	.comm error,2,1
	.comm furtherOperations,21,1
	.comm nextTwiOperation,2,1
	.comm sendBufferData,255,1
	.type	C.75.3963, @object
	.size	C.75.3963, 7
C.75.3963:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.74.3962, @object
	.size	C.74.3962, 7
C.74.3962:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.73.3961, @object
	.size	C.73.3961, 7
C.73.3961:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.72.3960, @object
	.size	C.72.3960, 7
C.72.3960:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.79.3967, @object
	.size	C.79.3967, 6
C.79.3967:
	.word	43
	.word	41
	.word	42
	.type	C.78.3966, @object
	.size	C.78.3966, 6
C.78.3966:
	.word	40
	.word	38
	.word	39
	.type	C.77.3965, @object
	.size	C.77.3965, 6
C.77.3965:
	.word	37
	.word	35
	.word	36
	.type	C.76.3964, @object
	.size	C.76.3964, 6
C.76.3964:
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
	.long	.LFB61
	.long	.LFE61-.LFB61
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB73
	.long	.LFE73-.LFB73
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.p2align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.p2align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.p2align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.p2align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.p2align	2
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.p2align	2
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.p2align	2
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.p2align	2
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.p2align	2
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.p2align	2
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.p2align	2
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
	.p2align	2
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB48
	.long	.LFE48-.LFB48
	.p2align	2
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB49
	.long	.LFE49-.LFB49
	.p2align	2
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB51
	.long	.LFE51-.LFB51
	.p2align	2
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB52
	.long	.LFE52-.LFB52
	.p2align	2
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB50
	.long	.LFE50-.LFB50
	.p2align	2
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB53
	.long	.LFE53-.LFB53
	.p2align	2
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB54
	.long	.LFE54-.LFB54
	.p2align	2
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB55
	.long	.LFE55-.LFB55
	.p2align	2
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB56
	.long	.LFE56-.LFB56
	.p2align	2
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB57
	.long	.LFE57-.LFB57
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
	.long	.LFB60
	.long	.LFE60-.LFB60
	.p2align	2
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB62
	.long	.LFE62-.LFB62
	.p2align	2
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB63
	.long	.LFE63-.LFB63
	.p2align	2
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB65
	.long	.LFE65-.LFB65
	.p2align	2
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB68
	.long	.LFE68-.LFB68
	.p2align	2
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB72
	.long	.LFE72-.LFB72
	.p2align	2
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB71
	.long	.LFE71-.LFB71
	.p2align	2
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB70
	.long	.LFE70-.LFB70
	.p2align	2
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB69
	.long	.LFE69-.LFB69
	.p2align	2
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB74
	.long	.LFE74-.LFB74
	.p2align	2
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.p2align	2
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.p2align	2
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.p2align	2
.LEFDE88:
.LSFDE90:
	.long	.LEFDE90-.LASFDE90
.LASFDE90:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.p2align	2
.LEFDE90:
.LSFDE92:
	.long	.LEFDE92-.LASFDE92
.LASFDE92:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.p2align	2
.LEFDE92:
.LSFDE94:
	.long	.LEFDE94-.LASFDE94
.LASFDE94:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.p2align	2
.LEFDE94:
.LSFDE96:
	.long	.LEFDE96-.LASFDE96
.LASFDE96:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.p2align	2
.LEFDE96:
.LSFDE98:
	.long	.LEFDE98-.LASFDE98
.LASFDE98:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.p2align	2
.LEFDE98:
.LSFDE100:
	.long	.LEFDE100-.LASFDE100
.LASFDE100:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.p2align	2
.LEFDE100:
.LSFDE102:
	.long	.LEFDE102-.LASFDE102
.LASFDE102:
	.long	.Lframe0
	.long	.LFB20
	.long	.LFE20-.LFB20
	.p2align	2
.LEFDE102:
.LSFDE104:
	.long	.LEFDE104-.LASFDE104
.LASFDE104:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.p2align	2
.LEFDE104:
.LSFDE106:
	.long	.LEFDE106-.LASFDE106
.LASFDE106:
	.long	.Lframe0
	.long	.LFB18
	.long	.LFE18-.LFB18
	.p2align	2
.LEFDE106:
.LSFDE108:
	.long	.LEFDE108-.LASFDE108
.LASFDE108:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.p2align	2
.LEFDE108:
.LSFDE110:
	.long	.LEFDE110-.LASFDE110
.LASFDE110:
	.long	.Lframe0
	.long	.LFB75
	.long	.LFE75-.LFB75
	.p2align	2
.LEFDE110:
.LSFDE112:
	.long	.LEFDE112-.LASFDE112
.LASFDE112:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.p2align	2
.LEFDE112:
.LSFDE114:
	.long	.LEFDE114-.LASFDE114
.LASFDE114:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.p2align	2
.LEFDE114:
.LSFDE116:
	.long	.LEFDE116-.LASFDE116
.LASFDE116:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.p2align	2
.LEFDE116:
.LSFDE118:
	.long	.LEFDE118-.LASFDE118
.LASFDE118:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.p2align	2
.LEFDE118:
.LSFDE120:
	.long	.LEFDE120-.LASFDE120
.LASFDE120:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.p2align	2
.LEFDE120:
.LSFDE122:
	.long	.LEFDE122-.LASFDE122
.LASFDE122:
	.long	.Lframe0
	.long	.LFB28
	.long	.LFE28-.LFB28
	.p2align	2
.LEFDE122:
.LSFDE124:
	.long	.LEFDE124-.LASFDE124
.LASFDE124:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.p2align	2
.LEFDE124:
.LSFDE126:
	.long	.LEFDE126-.LASFDE126
.LASFDE126:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.p2align	2
.LEFDE126:
.LSFDE128:
	.long	.LEFDE128-.LASFDE128
.LASFDE128:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.p2align	2
.LEFDE128:
.LSFDE130:
	.long	.LEFDE130-.LASFDE130
.LASFDE130:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.p2align	2
.LEFDE130:
.LSFDE132:
	.long	.LEFDE132-.LASFDE132
.LASFDE132:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.p2align	2
.LEFDE132:
.LSFDE134:
	.long	.LEFDE134-.LASFDE134
.LASFDE134:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.p2align	2
.LEFDE134:
.LSFDE136:
	.long	.LEFDE136-.LASFDE136
.LASFDE136:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.p2align	2
.LEFDE136:
.LSFDE138:
	.long	.LEFDE138-.LASFDE138
.LASFDE138:
	.long	.Lframe0
	.long	.LFB76
	.long	.LFE76-.LFB76
	.p2align	2
.LEFDE138:
.LSFDE140:
	.long	.LEFDE140-.LASFDE140
.LASFDE140:
	.long	.Lframe0
	.long	.LFB77
	.long	.LFE77-.LFB77
	.p2align	2
.LEFDE140:
.LSFDE142:
	.long	.LEFDE142-.LASFDE142
.LASFDE142:
	.long	.Lframe0
	.long	.LFB78
	.long	.LFE78-.LFB78
	.p2align	2
.LEFDE142:
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
	.long	.LVL2
	.long	.LVL3-1
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
	.long	.LVL4
	.long	.LVL5
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL5
	.long	.LVL6
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST3:
	.long	.LVL7
	.long	.LVL8-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8-1
	.long	.LVL9
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
	.long	.LVL11
	.long	.LVL12
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST5:
	.long	.LVL15
	.long	.LVL16
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST6:
	.long	.LVL19
	.long	.LVL21
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL24
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL19
	.long	.LVL22
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL23
	.long	.LVL25
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL20
	.long	.LVL27-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL26
	.long	.LVL27-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL31
	.long	.LVL37-1
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
	.long	.LVL31
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
.LLST12:
	.long	.LVL32
	.long	.LVL33
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL33
	.long	.LVL34
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL34
	.long	.LVL35
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LVL36
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL37-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL38
	.long	.LVL40
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL38
	.long	.LVL39
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
.LLST15:
	.long	.LVL38
	.long	.LVL41
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
.LLST16:
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL42
	.long	.LVL44-1
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
.LLST18:
	.long	.LVL45
	.long	.LVL46
	.word	0x1
	.byte	0x68
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL45
	.long	.LVL47-1
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
.LLST20:
	.long	.LVL48
	.long	.LVL49
	.word	0x1
	.byte	0x68
	.long	.LVL51
	.long	.LVL52
	.word	0x1
	.byte	0x61
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL48
	.long	.LVL50-1
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST22:
	.long	.LVL48
	.long	.LVL50-1
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
.LLST23:
	.long	.LVL53
	.long	.LVL55
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LVL56-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST24:
	.long	.LVL57
	.long	.LVL59
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL60-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST25:
	.long	.LVL61
	.long	.LVL63
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL65-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL61
	.long	.LVL64
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64
	.long	.LVL65-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST27:
	.long	.LVL66
	.long	.LVL68
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL68
	.long	.LVL69-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL70
	.long	.LVL72
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL72
	.long	.LVL73-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL74
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
	.long	0x0
	.long	0x0
.LLST30:
	.long	.LVL78
	.long	.LVL80
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL80
	.long	.LVL81-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST31:
	.long	.LVL82
	.long	.LVL84
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL84
	.long	.LVL85-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL86
	.long	.LVL88
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL88
	.long	.LVL89-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL90
	.long	.LVL92
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL92
	.long	.LVL93-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST34:
	.long	.LVL94
	.long	.LVL96
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL96
	.long	.LVL97-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST35:
	.long	.LVL98
	.long	.LVL99
	.word	0x1
	.byte	0x68
	.long	.LVL101
	.long	.LVL103
	.word	0x1
	.byte	0x5d
	.long	0x0
	.long	0x0
.LLST36:
	.long	.LVL98
	.long	.LVL100-1
	.word	0x1
	.byte	0x66
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL98
	.long	.LVL100-1
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
.LLST38:
	.long	.LVL98
	.long	.LVL102
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
.LLST39:
	.long	.LVL106
	.long	.LVL109
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL109
	.long	.LVL110-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST40:
	.long	.LVL112
	.long	.LVL115
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL115
	.long	.LVL116-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST41:
	.long	.LVL118
	.long	.LFE36
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST42:
	.long	.LVL119
	.long	.LVL122
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL122
	.long	.LVL123-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST43:
	.long	.LVL125
	.long	.LVL128
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL128
	.long	.LVL129-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST44:
	.long	.LVL130
	.long	.LVL133
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL133
	.long	.LVL135-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST45:
	.long	.LVL130
	.long	.LVL134
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL134
	.long	.LVL135-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST46:
	.long	.LVL136
	.long	.LVL139
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL139
	.long	.LVL140-1
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
	.long	.LVL141
	.long	.LVL144
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL144
	.long	.LVL145-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST48:
	.long	.LVL146
	.long	.LVL149
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL149
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
.LLST49:
	.long	.LVL151
	.long	.LVL154
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL154
	.long	.LVL156-1
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
	.long	.LVL151
	.long	.LVL155
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL155
	.long	.LVL156-1
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
	.long	.LVL158
	.long	.LVL161
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL161
	.long	.LVL163-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST52:
	.long	.LVL158
	.long	.LVL162
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL162
	.long	.LVL163-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST53:
	.long	.LVL168
	.long	.LFE16
	.word	0x2
	.byte	0x8c
	.sleb128 1
	.long	0x0
	.long	0x0
	.section	.debug_info
	.long	0x2216
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF345
	.byte	0x1
	.long	.LASF346
	.long	.LASF347
	.long	0x0
	.long	0x0
	.long	.Ldebug_ranges0+0x0
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
	.uleb128 0x5
	.byte	0x2
	.byte	0x4
	.byte	0x14
	.long	0x9b
	.uleb128 0x6
	.long	.LASF10
	.sleb128 0
	.uleb128 0x6
	.long	.LASF11
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF12
	.byte	0x4
	.byte	0x17
	.long	0x86
	.uleb128 0x3
	.long	.LASF13
	.byte	0x4
	.byte	0x19
	.long	0x34
	.uleb128 0x7
	.byte	0x6
	.byte	0x17
	.byte	0xd
	.long	0xe4
	.uleb128 0x8
	.long	.LASF14
	.byte	0x17
	.byte	0xe
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"pin"
	.byte	0x17
	.byte	0xf
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ddr"
	.byte	0x17
	.byte	0x10
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0xea
	.uleb128 0xb
	.long	0x34
	.uleb128 0x3
	.long	.LASF15
	.byte	0x17
	.byte	0x11
	.long	0xb1
	.uleb128 0x3
	.long	.LASF16
	.byte	0x17
	.byte	0x11
	.long	0x105
	.uleb128 0xa
	.byte	0x2
	.long	0xb1
	.uleb128 0x7
	.byte	0x3
	.byte	0x17
	.byte	0x13
	.long	0x130
	.uleb128 0x8
	.long	.LASF14
	.byte	0x17
	.byte	0x14
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF17
	.byte	0x17
	.byte	0x15
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xc
	.string	"Pin"
	.byte	0x17
	.byte	0x16
	.long	0x10b
	.uleb128 0x3
	.long	.LASF18
	.byte	0x17
	.byte	0x16
	.long	0x146
	.uleb128 0xa
	.byte	0x2
	.long	0x10b
	.uleb128 0x5
	.byte	0x2
	.byte	0x1e
	.byte	0x13
	.long	0x17f
	.uleb128 0x6
	.long	.LASF19
	.sleb128 0
	.uleb128 0x6
	.long	.LASF20
	.sleb128 1
	.uleb128 0x6
	.long	.LASF21
	.sleb128 2
	.uleb128 0x6
	.long	.LASF22
	.sleb128 3
	.uleb128 0x6
	.long	.LASF23
	.sleb128 4
	.uleb128 0x6
	.long	.LASF24
	.sleb128 5
	.uleb128 0x6
	.long	.LASF25
	.sleb128 6
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.byte	0x1e
	.byte	0x2d
	.long	0x1c4
	.uleb128 0x6
	.long	.LASF26
	.sleb128 0
	.uleb128 0x6
	.long	.LASF27
	.sleb128 1
	.uleb128 0x6
	.long	.LASF28
	.sleb128 2
	.uleb128 0x6
	.long	.LASF29
	.sleb128 3
	.uleb128 0x6
	.long	.LASF30
	.sleb128 4
	.uleb128 0x6
	.long	.LASF31
	.sleb128 5
	.uleb128 0x6
	.long	.LASF32
	.sleb128 6
	.uleb128 0x6
	.long	.LASF33
	.sleb128 7
	.uleb128 0x6
	.long	.LASF34
	.sleb128 8
	.uleb128 0x6
	.long	.LASF35
	.sleb128 9
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x1e
	.byte	0x44
	.long	0x205
	.uleb128 0x8
	.long	.LASF36
	.byte	0x1e
	.byte	0x45
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF37
	.byte	0x1e
	.byte	0x46
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF38
	.byte	0x1e
	.byte	0x47
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF39
	.byte	0x1e
	.byte	0x48
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF40
	.byte	0x1e
	.byte	0x49
	.long	0x1c4
	.uleb128 0x3
	.long	.LASF41
	.byte	0x1e
	.byte	0x49
	.long	0x21b
	.uleb128 0xa
	.byte	0x2
	.long	0x1c4
	.uleb128 0x5
	.byte	0x2
	.byte	0x1e
	.byte	0x4b
	.long	0x236
	.uleb128 0x6
	.long	.LASF42
	.sleb128 0
	.uleb128 0x6
	.long	.LASF43
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x1e
	.byte	0x4e
	.long	0x221
	.uleb128 0x7
	.byte	0x8
	.byte	0x1e
	.byte	0x50
	.long	0x282
	.uleb128 0x8
	.long	.LASF45
	.byte	0x1e
	.byte	0x51
	.long	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF46
	.byte	0x1e
	.byte	0x52
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF47
	.byte	0x1e
	.byte	0x53
	.long	0x236
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF48
	.byte	0x1e
	.byte	0x54
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x3
	.long	.LASF49
	.byte	0x1e
	.byte	0x55
	.long	0x241
	.uleb128 0x3
	.long	.LASF50
	.byte	0x1e
	.byte	0x55
	.long	0x298
	.uleb128 0xa
	.byte	0x2
	.long	0x241
	.uleb128 0x7
	.byte	0x5
	.byte	0x22
	.byte	0x14
	.long	0x2d1
	.uleb128 0x8
	.long	.LASF36
	.byte	0x22
	.byte	0x15
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF51
	.byte	0x22
	.byte	0x16
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF52
	.byte	0x22
	.byte	0x17
	.long	0x28d
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x22
	.byte	0x18
	.long	0x29e
	.uleb128 0x3
	.long	.LASF54
	.byte	0x22
	.byte	0x18
	.long	0x2e7
	.uleb128 0xa
	.byte	0x2
	.long	0x29e
	.uleb128 0x7
	.byte	0x7
	.byte	0x22
	.byte	0x1a
	.long	0x312
	.uleb128 0x8
	.long	.LASF55
	.byte	0x22
	.byte	0x1b
	.long	0x2d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF56
	.byte	0x22
	.byte	0x1c
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x22
	.byte	0x1d
	.long	0x2ed
	.uleb128 0x3
	.long	.LASF58
	.byte	0x22
	.byte	0x1d
	.long	0x328
	.uleb128 0xa
	.byte	0x2
	.long	0x2ed
	.uleb128 0x5
	.byte	0x2
	.byte	0x22
	.byte	0x1f
	.long	0x349
	.uleb128 0x6
	.long	.LASF59
	.sleb128 0
	.uleb128 0x6
	.long	.LASF60
	.sleb128 1
	.uleb128 0x6
	.long	.LASF61
	.sleb128 2
	.byte	0x0
	.uleb128 0x3
	.long	.LASF62
	.byte	0x22
	.byte	0x23
	.long	0x32e
	.uleb128 0xd
	.long	.LASF348
	.byte	0x2
	.byte	0x25
	.byte	0xe
	.long	0x36f
	.uleb128 0x8
	.long	.LASF63
	.byte	0x25
	.byte	0xe
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF64
	.byte	0x25
	.byte	0xe
	.long	0x37a
	.uleb128 0xa
	.byte	0x2
	.long	0x354
	.uleb128 0x7
	.byte	0x12
	.byte	0x24
	.byte	0x10
	.long	0x407
	.uleb128 0x8
	.long	.LASF55
	.byte	0x24
	.byte	0x11
	.long	0x2dc
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF65
	.byte	0x24
	.byte	0x14
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF66
	.byte	0x24
	.byte	0x15
	.long	0x349
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF67
	.byte	0x24
	.byte	0x18
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.long	.LASF68
	.byte	0x24
	.byte	0x19
	.long	0x349
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF69
	.byte	0x24
	.byte	0x1c
	.long	0x9b
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.long	.LASF70
	.byte	0x24
	.byte	0x1d
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.long	.LASF71
	.byte	0x24
	.byte	0x1e
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.long	.LASF72
	.byte	0x24
	.byte	0x1f
	.long	0x36f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0x0
	.uleb128 0x3
	.long	.LASF73
	.byte	0x24
	.byte	0x20
	.long	0x380
	.uleb128 0x3
	.long	.LASF74
	.byte	0x24
	.byte	0x20
	.long	0x41d
	.uleb128 0xa
	.byte	0x2
	.long	0x380
	.uleb128 0x7
	.byte	0x1
	.byte	0x2f
	.byte	0x7
	.long	0x43a
	.uleb128 0x8
	.long	.LASF75
	.byte	0x2f
	.byte	0x8
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF76
	.byte	0x2f
	.byte	0x9
	.long	0x423
	.uleb128 0x7
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.long	0x46a
	.uleb128 0x8
	.long	.LASF77
	.byte	0x2f
	.byte	0xe
	.long	0x46a
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF78
	.byte	0x2f
	.byte	0xf
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0xa6
	.uleb128 0x3
	.long	.LASF79
	.byte	0x2f
	.byte	0x10
	.long	0x445
	.uleb128 0x5
	.byte	0x2
	.byte	0x2f
	.byte	0x15
	.long	0x496
	.uleb128 0x6
	.long	.LASF80
	.sleb128 0
	.uleb128 0x6
	.long	.LASF81
	.sleb128 1
	.uleb128 0x6
	.long	.LASF82
	.sleb128 2
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x2f
	.byte	0x12
	.long	0x4c9
	.uleb128 0x8
	.long	.LASF83
	.byte	0x2f
	.byte	0x13
	.long	0x470
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF84
	.byte	0x2f
	.byte	0x14
	.long	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF85
	.byte	0x2f
	.byte	0x19
	.long	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF86
	.byte	0x2f
	.byte	0x1a
	.long	0x496
	.uleb128 0x5
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.long	0x519
	.uleb128 0x6
	.long	.LASF87
	.sleb128 0
	.uleb128 0x6
	.long	.LASF88
	.sleb128 1
	.uleb128 0x6
	.long	.LASF89
	.sleb128 2
	.uleb128 0x6
	.long	.LASF90
	.sleb128 3
	.uleb128 0x6
	.long	.LASF91
	.sleb128 4
	.uleb128 0x6
	.long	.LASF92
	.sleb128 5
	.uleb128 0x6
	.long	.LASF93
	.sleb128 6
	.uleb128 0x6
	.long	.LASF94
	.sleb128 7
	.uleb128 0x6
	.long	.LASF95
	.sleb128 8
	.uleb128 0x6
	.long	.LASF96
	.sleb128 9
	.byte	0x0
	.uleb128 0x3
	.long	.LASF97
	.byte	0x2f
	.byte	0x32
	.long	0x4d4
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF98
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF98
	.uleb128 0x5
	.byte	0x2
	.byte	0x2e
	.byte	0x13
	.long	0x5d6
	.uleb128 0x6
	.long	.LASF99
	.sleb128 0
	.uleb128 0x6
	.long	.LASF100
	.sleb128 1
	.uleb128 0x6
	.long	.LASF101
	.sleb128 2
	.uleb128 0x6
	.long	.LASF102
	.sleb128 3
	.uleb128 0x6
	.long	.LASF103
	.sleb128 16
	.uleb128 0x6
	.long	.LASF104
	.sleb128 17
	.uleb128 0x6
	.long	.LASF105
	.sleb128 18
	.uleb128 0x6
	.long	.LASF106
	.sleb128 19
	.uleb128 0x6
	.long	.LASF107
	.sleb128 20
	.uleb128 0x6
	.long	.LASF108
	.sleb128 21
	.uleb128 0x6
	.long	.LASF109
	.sleb128 22
	.uleb128 0x6
	.long	.LASF110
	.sleb128 23
	.uleb128 0x6
	.long	.LASF111
	.sleb128 24
	.uleb128 0x6
	.long	.LASF112
	.sleb128 25
	.uleb128 0x6
	.long	.LASF113
	.sleb128 26
	.uleb128 0x6
	.long	.LASF114
	.sleb128 27
	.uleb128 0x6
	.long	.LASF115
	.sleb128 48
	.uleb128 0x6
	.long	.LASF116
	.sleb128 49
	.uleb128 0x6
	.long	.LASF117
	.sleb128 50
	.uleb128 0x6
	.long	.LASF118
	.sleb128 51
	.uleb128 0x6
	.long	.LASF119
	.sleb128 64
	.uleb128 0x6
	.long	.LASF120
	.sleb128 65
	.uleb128 0x6
	.long	.LASF121
	.sleb128 66
	.uleb128 0x6
	.long	.LASF122
	.sleb128 67
	.uleb128 0x6
	.long	.LASF123
	.sleb128 255
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x2e
	.byte	0x3f
	.long	0x5f7
	.uleb128 0x9
	.string	"x"
	.byte	0x2e
	.byte	0x40
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"y"
	.byte	0x2e
	.byte	0x41
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF124
	.byte	0x2e
	.byte	0x42
	.long	0x5d6
	.uleb128 0x3
	.long	.LASF125
	.byte	0x2e
	.byte	0x42
	.long	0x5d6
	.uleb128 0x7
	.byte	0x2
	.byte	0x2e
	.byte	0x44
	.long	0x632
	.uleb128 0x8
	.long	.LASF126
	.byte	0x2e
	.byte	0x45
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF127
	.byte	0x2e
	.byte	0x46
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF128
	.byte	0x2e
	.byte	0x49
	.long	0x60d
	.uleb128 0x7
	.byte	0x1
	.byte	0x2e
	.byte	0x4f
	.long	0x654
	.uleb128 0x9
	.string	"len"
	.byte	0x2e
	.byte	0x50
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF129
	.byte	0x2e
	.byte	0x52
	.long	0x63d
	.uleb128 0x7
	.byte	0x2
	.byte	0x2e
	.byte	0x68
	.long	0x684
	.uleb128 0x9
	.string	"ddr"
	.byte	0x2e
	.byte	0x69
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x2e
	.byte	0x6a
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF130
	.byte	0x2e
	.byte	0x6b
	.long	0x65f
	.uleb128 0x5
	.byte	0x2
	.byte	0x35
	.byte	0x6
	.long	0x6a6
	.uleb128 0x6
	.long	.LASF131
	.sleb128 160
	.uleb128 0x6
	.long	.LASF132
	.sleb128 161
	.byte	0x0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF349
	.byte	0x39
	.byte	0xe
	.long	0x36f
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.long	.LASF350
	.byte	0x3c
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.long	0x6cd
	.uleb128 0x10
	.long	.LASF55
	.byte	0x3c
	.byte	0x11
	.long	0x412
	.byte	0x0
	.uleb128 0x11
	.long	.LASF133
	.byte	0x3e
	.byte	0x6a
	.byte	0x3
	.uleb128 0x11
	.long	.LASF134
	.byte	0x3e
	.byte	0x85
	.byte	0x3
	.uleb128 0x11
	.long	.LASF135
	.byte	0x3e
	.byte	0x7b
	.byte	0x3
	.uleb128 0x12
	.long	.LASF173
	.byte	0x3e
	.byte	0x46
	.long	.LFB61
	.long	.LFE61
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x13
	.long	.LASF351
	.byte	0x3d
	.byte	0x2b
	.byte	0x1
	.long	.LFB73
	.long	.LFE73
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x72f
	.uleb128 0x14
	.long	.LASF136
	.byte	0x3d
	.byte	0x2b
	.long	0xa6
	.long	.LLST0
	.uleb128 0x14
	.long	.LASF137
	.byte	0x3d
	.byte	0x2b
	.long	0x470
	.long	.LLST1
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF138
	.byte	0x2
	.byte	0x12
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF139
	.byte	0x2
	.byte	0x1c
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF151
	.byte	0x2
	.byte	0x1e
	.long	0x34
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF140
	.byte	0x20
	.byte	0xe
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF141
	.byte	0x20
	.byte	0x14
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF142
	.byte	0x1b
	.byte	0xf
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF143
	.byte	0x1b
	.byte	0x1e
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF144
	.byte	0x21
	.byte	0xe
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x7e8
	.uleb128 0x14
	.long	.LASF55
	.byte	0x21
	.byte	0xe
	.long	0x2dc
	.long	.LLST2
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF145
	.byte	0x21
	.byte	0x1a
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x811
	.uleb128 0x14
	.long	.LASF55
	.byte	0x21
	.byte	0x1a
	.long	0x31d
	.long	.LLST3
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF146
	.byte	0x1a
	.byte	0x10
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF147
	.byte	0x1a
	.byte	0x14
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF148
	.byte	0x36
	.byte	0xe
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF149
	.byte	0x36
	.byte	0x16
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF150
	.byte	0x37
	.byte	0x1d
	.long	.LFB43
	.long	.LFE43
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF152
	.byte	0x38
	.byte	0x7
	.byte	0x1
	.long	.LFB44
	.long	.LFE44
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x19
	.long	0x6a6
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF153
	.byte	0x39
	.byte	0x12
	.byte	0x1
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8c7
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x39
	.byte	0x12
	.long	0x36f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF207
	.byte	0x39
	.byte	0x16
	.byte	0x1
	.long	0x9b
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8f4
	.uleb128 0x14
	.long	.LASF72
	.byte	0x39
	.byte	0x16
	.long	0x36f
	.long	.LLST4
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF154
	.byte	0x39
	.byte	0x1b
	.byte	0x1
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x920
	.uleb128 0x1a
	.long	.LASF72
	.byte	0x39
	.byte	0x1b
	.long	0x36f
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x1c
	.long	0x6b3
	.long	.LFB49
	.long	.LFE49
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x942
	.uleb128 0x1d
	.long	0x6c1
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF155
	.byte	0x3b
	.byte	0x31
	.long	.LFB51
	.long	.LFE51
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF156
	.byte	0x3a
	.byte	0xb
	.byte	0x1
	.long	.LFB52
	.long	.LFE52
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x97f
	.uleb128 0x14
	.long	.LASF157
	.byte	0x3a
	.byte	0xb
	.long	0x9b
	.long	.LLST5
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF158
	.byte	0x3b
	.byte	0x22
	.byte	0x1
	.long	.LFB50
	.long	.LFE50
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x9d5
	.uleb128 0x14
	.long	.LASF55
	.byte	0x3b
	.byte	0x22
	.long	0x412
	.long	.LLST6
	.uleb128 0x14
	.long	.LASF159
	.byte	0x3b
	.byte	0x22
	.long	0x4d
	.long	.LLST7
	.uleb128 0x1e
	.long	.LASF160
	.byte	0x3b
	.byte	0x23
	.long	0x9b
	.long	.LLST8
	.uleb128 0x1e
	.long	.LASF161
	.byte	0x3b
	.byte	0x2d
	.long	0x9b
	.long	.LLST9
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.long	.LASF162
	.byte	0x3a
	.byte	0x10
	.byte	0x1
	.long	.LFB53
	.long	.LFE53
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF163
	.byte	0x3a
	.byte	0x14
	.long	.LFB54
	.long	.LFE54
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF164
	.byte	0x3a
	.byte	0x18
	.long	.LFB55
	.long	.LFE55
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF165
	.byte	0x3e
	.byte	0x19
	.long	0x470
	.long	.LFB56
	.long	.LFE56
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF166
	.byte	0x3e
	.byte	0x1a
	.byte	0x1
	.long	.LFB57
	.long	.LFE57
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa5c
	.uleb128 0x1a
	.long	.LASF167
	.byte	0x3e
	.byte	0x1a
	.long	0x470
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
	.uleb128 0x15
	.byte	0x1
	.long	.LASF168
	.byte	0x3e
	.byte	0x1f
	.long	.LFB58
	.long	.LFE58
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF169
	.byte	0x3e
	.byte	0x30
	.long	.LFB59
	.long	.LFE59
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF170
	.byte	0x3e
	.byte	0x3d
	.long	.LFB60
	.long	.LFE60
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF171
	.byte	0x3e
	.byte	0x50
	.long	0x9b
	.long	.LFB62
	.long	.LFE62
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xac3
	.uleb128 0x20
	.long	.LASF172
	.byte	0x3e
	.byte	0x51
	.long	0x4c9
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x12
	.long	.LASF174
	.byte	0x3e
	.byte	0x61
	.long	.LFB63
	.long	.LFE63
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF175
	.byte	0x3e
	.byte	0x74
	.long	.LFB65
	.long	.LFE65
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF176
	.byte	0x3e
	.byte	0x8d
	.byte	0x1
	.long	.LFB68
	.long	.LFE68
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb31
	.uleb128 0x21
	.long	0x6cd
	.long	.LBB14
	.long	.LBE14
	.byte	0x3e
	.byte	0x97
	.uleb128 0x21
	.long	0x6d5
	.long	.LBB16
	.long	.LBE16
	.byte	0x3e
	.byte	0xae
	.uleb128 0x21
	.long	0x6dd
	.long	.LBB18
	.long	.LBE18
	.byte	0x3e
	.byte	0xb1
	.byte	0x0
	.uleb128 0x22
	.byte	0x1
	.long	.LASF177
	.byte	0x3e
	.word	0x106
	.byte	0x1
	.long	.LFB72
	.long	.LFE72
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb7a
	.uleb128 0x23
	.long	.LASF178
	.byte	0x3e
	.word	0x106
	.long	0x46
	.long	.LLST10
	.uleb128 0x23
	.long	.LASF179
	.byte	0x3e
	.word	0x106
	.long	0xb7a
	.long	.LLST11
	.uleb128 0x24
	.string	"i"
	.byte	0x3e
	.word	0x107
	.long	0x46
	.long	.LLST12
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x4c9
	.uleb128 0x17
	.byte	0x1
	.long	.LASF180
	.byte	0x3e
	.byte	0xfe
	.byte	0x1
	.long	.LFB71
	.long	.LFE71
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xbd5
	.uleb128 0x14
	.long	.LASF181
	.byte	0x3e
	.byte	0xfe
	.long	0x43a
	.long	.LLST13
	.uleb128 0x14
	.long	.LASF182
	.byte	0x3e
	.byte	0xfe
	.long	0x470
	.long	.LLST14
	.uleb128 0x14
	.long	.LASF183
	.byte	0x3e
	.byte	0xfe
	.long	0x470
	.long	.LLST15
	.uleb128 0x25
	.string	"ops"
	.byte	0x3e
	.byte	0xff
	.long	0xbd5
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x26
	.long	0x4c9
	.long	0xbe5
	.uleb128 0x27
	.long	0x58
	.byte	0x1
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF184
	.byte	0x3e
	.byte	0xf9
	.byte	0x1
	.long	.LFB70
	.long	.LFE70
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc2a
	.uleb128 0x14
	.long	.LASF181
	.byte	0x3e
	.byte	0xf9
	.long	0x43a
	.long	.LLST16
	.uleb128 0x14
	.long	.LASF183
	.byte	0x3e
	.byte	0xf9
	.long	0x470
	.long	.LLST17
	.uleb128 0x25
	.string	"op"
	.byte	0x3e
	.byte	0xfa
	.long	0xc2a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x26
	.long	0x4c9
	.long	0xc3a
	.uleb128 0x27
	.long	0x58
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF185
	.byte	0x3e
	.byte	0xf4
	.byte	0x1
	.long	.LFB69
	.long	.LFE69
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc7f
	.uleb128 0x14
	.long	.LASF181
	.byte	0x3e
	.byte	0xf4
	.long	0x43a
	.long	.LLST18
	.uleb128 0x14
	.long	.LASF77
	.byte	0x3e
	.byte	0xf4
	.long	0x470
	.long	.LLST19
	.uleb128 0x25
	.string	"op"
	.byte	0x3e
	.byte	0xf5
	.long	0xc2a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF186
	.byte	0x3d
	.byte	0x31
	.byte	0x1
	.long	.LFB74
	.long	.LFE74
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xcc6
	.uleb128 0x14
	.long	.LASF84
	.byte	0x3d
	.byte	0x31
	.long	0x43a
	.long	.LLST20
	.uleb128 0x14
	.long	.LASF136
	.byte	0x3d
	.byte	0x31
	.long	0xa6
	.long	.LLST21
	.uleb128 0x14
	.long	.LASF137
	.byte	0x3d
	.byte	0x31
	.long	0x470
	.long	.LLST22
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF187
	.byte	0x34
	.byte	0x14
	.byte	0x1
	.long	.LFB40
	.long	.LFE40
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xcfa
	.uleb128 0x14
	.long	.LASF137
	.byte	0x34
	.byte	0x14
	.long	0xcfa
	.long	.LLST23
	.uleb128 0x28
	.string	"buf"
	.byte	0x34
	.byte	0x14
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x4d
	.uleb128 0x17
	.byte	0x1
	.long	.LASF188
	.byte	0x2e
	.byte	0x71
	.byte	0x1
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd34
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x71
	.long	0xcfa
	.long	.LLST24
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x71
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF189
	.byte	0x2e
	.byte	0x66
	.byte	0x1
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd77
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x66
	.long	0xd77
	.long	.LLST25
	.uleb128 0x14
	.long	.LASF190
	.byte	0x2e
	.byte	0x66
	.long	0x4d
	.long	.LLST26
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x66
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x654
	.uleb128 0x17
	.byte	0x1
	.long	.LASF191
	.byte	0x2e
	.byte	0x65
	.byte	0x1
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xdb1
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x65
	.long	0xdb1
	.long	.LLST27
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x65
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x34
	.uleb128 0x17
	.byte	0x1
	.long	.LASF192
	.byte	0x2e
	.byte	0x64
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xdeb
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x64
	.long	0xdeb
	.long	.LLST28
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x64
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x5f7
	.uleb128 0x29
	.byte	0x1
	.long	.LASF200
	.byte	0x2e
	.byte	0x63
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xe15
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x63
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF194
	.byte	0x2e
	.byte	0x60
	.byte	0x1
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xe49
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x60
	.long	0xdeb
	.long	.LLST29
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x60
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF195
	.byte	0x2e
	.byte	0x5a
	.byte	0x1
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xe7d
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x5a
	.long	0xdb1
	.long	.LLST30
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x5a
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF196
	.byte	0x2e
	.byte	0x57
	.byte	0x1
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xeb1
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x57
	.long	0xdb1
	.long	.LLST31
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x57
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF197
	.byte	0x2e
	.byte	0x56
	.byte	0x1
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xee5
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x56
	.long	0xdb1
	.long	.LLST32
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x56
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF198
	.byte	0x2e
	.byte	0x55
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xf19
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x55
	.long	0xdeb
	.long	.LLST33
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x55
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF199
	.byte	0x2e
	.byte	0x3d
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xf4d
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x3d
	.long	0xdb1
	.long	.LLST34
	.uleb128 0x28
	.string	"buf"
	.byte	0x2e
	.byte	0x3d
	.long	0x470
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF201
	.byte	0x2e
	.byte	0x3a
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xf71
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x3a
	.long	0x470
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF202
	.byte	0x3d
	.byte	0x36
	.byte	0x1
	.long	.LFB75
	.long	.LFE75
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xfc7
	.uleb128 0x14
	.long	.LASF84
	.byte	0x3d
	.byte	0x36
	.long	0x43a
	.long	.LLST35
	.uleb128 0x14
	.long	.LASF136
	.byte	0x3d
	.byte	0x36
	.long	0xa6
	.long	.LLST36
	.uleb128 0x14
	.long	.LASF137
	.byte	0x3d
	.byte	0x36
	.long	0x470
	.long	.LLST37
	.uleb128 0x14
	.long	.LASF203
	.byte	0x3d
	.byte	0x36
	.long	0x470
	.long	.LLST38
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF204
	.byte	0x34
	.byte	0x13
	.long	0x34
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1008
	.uleb128 0x20
	.long	.LASF205
	.byte	0x34
	.byte	0x13
	.long	0x34
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x34
	.byte	0x13
	.long	0x470
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x34
	.byte	0x13
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF208
	.byte	0x2e
	.byte	0x70
	.byte	0x1
	.long	0x34
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1059
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x70
	.long	0xdb1
	.long	.LLST39
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x70
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x70
	.long	0x34
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x70
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF209
	.byte	0x2e
	.byte	0x6f
	.byte	0x1
	.long	0x4d
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x10ab
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x6f
	.long	0xdb1
	.long	.LLST40
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x6f
	.long	0x470
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x2e
	.byte	0x6f
	.long	0x4d
	.long	.LLST41
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x6f
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF210
	.byte	0x2e
	.byte	0x6e
	.byte	0x1
	.long	0x34
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x10fc
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x6e
	.long	0x10fc
	.long	.LLST42
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x6e
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x6e
	.long	0x34
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x6e
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x684
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF211
	.byte	0x2e
	.byte	0x5f
	.byte	0x1
	.long	0x5f7
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1153
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x5f
	.long	0xdb1
	.long	.LLST43
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x5f
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x5f
	.long	0x5f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x5f
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF212
	.byte	0x2e
	.byte	0x5e
	.byte	0x1
	.long	0x5f7
	.long	.LFB28
	.long	.LFE28
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x11b3
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x5e
	.long	0x11b3
	.long	.LLST44
	.uleb128 0x14
	.long	.LASF190
	.byte	0x2e
	.byte	0x5e
	.long	0x4d
	.long	.LLST45
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x5e
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x5e
	.long	0x5f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x5e
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x632
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF213
	.byte	0x2e
	.byte	0x5d
	.byte	0x1
	.long	0x5f7
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x120a
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x5d
	.long	0x120a
	.long	.LLST46
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x5d
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x5d
	.long	0x5f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x5d
	.long	0x470
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x602
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF214
	.byte	0x2e
	.byte	0x5c
	.byte	0x1
	.long	0x5f7
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1261
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x5c
	.long	0xdb1
	.long	.LLST47
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x5c
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x5c
	.long	0x5f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x5c
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF215
	.byte	0x2e
	.byte	0x5b
	.byte	0x1
	.long	0x5f7
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x12b2
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x5b
	.long	0xdb1
	.long	.LLST48
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x5b
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x5b
	.long	0x5f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x5b
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF216
	.byte	0x2e
	.byte	0x59
	.byte	0x1
	.long	0x34
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1312
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x59
	.long	0xd77
	.long	.LLST49
	.uleb128 0x14
	.long	.LASF190
	.byte	0x2e
	.byte	0x59
	.long	0x4d
	.long	.LLST50
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x59
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x59
	.long	0x34
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x59
	.long	0x470
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF217
	.byte	0x2e
	.byte	0x58
	.byte	0x1
	.long	0x5f7
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x1372
	.uleb128 0x14
	.long	.LASF137
	.byte	0x2e
	.byte	0x58
	.long	0xd77
	.long	.LLST51
	.uleb128 0x14
	.long	.LASF190
	.byte	0x2e
	.byte	0x58
	.long	0x4d
	.long	.LLST52
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x58
	.long	0x470
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x58
	.long	0x5f7
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x58
	.long	0x470
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF218
	.byte	0x2e
	.byte	0x3c
	.long	0x34
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x13b3
	.uleb128 0x20
	.long	.LASF205
	.byte	0x2e
	.byte	0x3c
	.long	0x34
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x3c
	.long	0x470
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x3c
	.long	0x470
	.byte	0x0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF219
	.byte	0x2e
	.byte	0x3b
	.long	0x4d
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x13f5
	.uleb128 0x1e
	.long	.LASF205
	.byte	0x2e
	.byte	0x3b
	.long	0x4d
	.long	.LLST53
	.uleb128 0x2a
	.long	.LASF193
	.byte	0x2e
	.byte	0x3b
	.long	0x470
	.uleb128 0x2a
	.long	.LASF206
	.byte	0x2e
	.byte	0x3b
	.long	0x470
	.byte	0x0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF220
	.byte	0x43
	.byte	0xe
	.long	.LFB76
	.long	.LFE76
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF221
	.byte	0x43
	.byte	0x11
	.long	.LFB77
	.long	.LFE77
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x15
	.byte	0x1
	.long	.LASF222
	.byte	0x43
	.byte	0x22
	.long	.LFB78
	.long	.LFE78
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x2b
	.long	.LASF223
	.byte	0x2
	.byte	0x10
	.long	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF224
	.byte	0x1f
	.byte	0xd
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF225
	.byte	0x1f
	.byte	0xd
	.long	0x1458
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0xfa
	.uleb128 0x2b
	.long	.LASF226
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF227
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF228
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF229
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF230
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF231
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF232
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF233
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF234
	.byte	0x1f
	.byte	0xe
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF235
	.byte	0x1f
	.byte	0xe
	.long	0x1458
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF236
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF237
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF238
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF239
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF240
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0x13b
	.uleb128 0x2b
	.long	.LASF241
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF242
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF243
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF244
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF245
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF246
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF247
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF248
	.byte	0x1f
	.byte	0xf
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF249
	.byte	0x1f
	.byte	0xf
	.long	0x1458
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF250
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF251
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF252
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF253
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF254
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF255
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF256
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF257
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF258
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF259
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF260
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF261
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF262
	.byte	0x1f
	.byte	0x10
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF263
	.byte	0x1f
	.byte	0x10
	.long	0x1458
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF264
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF265
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF266
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF267
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF268
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF269
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF270
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF271
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF272
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF273
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF274
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF275
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF276
	.byte	0x1d
	.byte	0xe
	.long	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF277
	.byte	0x1d
	.byte	0xe
	.long	0x1706
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0x210
	.uleb128 0x2b
	.long	.LASF278
	.byte	0x1d
	.byte	0xf
	.long	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF279
	.byte	0x1d
	.byte	0xf
	.long	0x1706
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF280
	.byte	0x1d
	.byte	0x10
	.long	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF281
	.byte	0x1d
	.byte	0x10
	.long	0x1706
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF282
	.byte	0x1d
	.byte	0x11
	.long	0x205
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF283
	.byte	0x1d
	.byte	0x11
	.long	0x1706
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF284
	.byte	0x1d
	.byte	0x13
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF285
	.byte	0x1d
	.byte	0x14
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF286
	.byte	0x1d
	.byte	0x15
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF287
	.byte	0x1d
	.byte	0x15
	.long	0x178d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0x28d
	.uleb128 0x2b
	.long	.LASF288
	.byte	0x1d
	.byte	0x16
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF289
	.byte	0x1d
	.byte	0x16
	.long	0x178d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF290
	.byte	0x1d
	.byte	0x17
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF291
	.byte	0x1d
	.byte	0x18
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF292
	.byte	0x1d
	.byte	0x19
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF293
	.byte	0x1d
	.byte	0x19
	.long	0x178d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF294
	.byte	0x1d
	.byte	0x1a
	.long	0x282
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF295
	.byte	0x1d
	.byte	0x1a
	.long	0x178d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF296
	.byte	0x23
	.byte	0xf
	.long	0x312
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF297
	.byte	0x23
	.byte	0xf
	.long	0x1814
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0x2dc
	.uleb128 0x2b
	.long	.LASF298
	.byte	0x23
	.byte	0x10
	.long	0x312
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF299
	.byte	0x23
	.byte	0x10
	.long	0x1814
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF300
	.byte	0x23
	.byte	0x11
	.long	0x407
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF301
	.byte	0x23
	.byte	0x11
	.long	0x184d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2c
	.long	0x412
	.uleb128 0x2b
	.long	.LASF302
	.byte	0x23
	.byte	0x12
	.long	0x407
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF303
	.byte	0x23
	.byte	0x12
	.long	0x184d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF304
	.byte	0x2a
	.byte	0xf
	.long	0x1879
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x66
	.uleb128 0x2b
	.long	.LASF305
	.byte	0x2f
	.byte	0x35
	.long	0x188b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.long	0x9b
	.uleb128 0x2b
	.long	.LASF306
	.byte	0x2e
	.byte	0x6
	.long	0x43a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF307
	.byte	0x34
	.byte	0x8
	.long	0x43a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF308
	.byte	0x3b
	.byte	0x1c
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF309
	.byte	0x3b
	.byte	0x1d
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF310
	.byte	0x3b
	.byte	0x1e
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF311
	.byte	0x3b
	.byte	0x1f
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF312
	.byte	0x3b
	.byte	0x20
	.long	0x9b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF313
	.byte	0x3e
	.byte	0x29
	.long	0x43a
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF314
	.byte	0x3e
	.byte	0x2a
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF167
	.byte	0x3e
	.byte	0x2b
	.long	0x470
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF315
	.byte	0x3e
	.byte	0x2c
	.long	0x519
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	0x4c9
	.long	0x192f
	.uleb128 0x27
	.long	0x58
	.byte	0x2
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF316
	.byte	0x3e
	.byte	0x2d
	.long	0x191f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF317
	.byte	0x3e
	.byte	0x2e
	.long	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.long	0xa6
	.long	0x1959
	.uleb128 0x27
	.long	0x58
	.byte	0xfe
	.byte	0x0
	.uleb128 0x2b
	.long	.LASF318
	.byte	0x3d
	.byte	0xc
	.long	0x1949
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.long	.LASF319
	.byte	0x3d
	.byte	0xd
	.long	0x470
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	.LASF223
	.byte	0x2
	.byte	0x10
	.long	0x34
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_reset_status
	.uleb128 0x2d
	.long	.LASF224
	.byte	0x1f
	.byte	0xd
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA_
	.uleb128 0x2d
	.long	.LASF225
	.byte	0x1f
	.byte	0xd
	.long	0x1458
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA
	.uleb128 0x2d
	.long	.LASF226
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0_
	.uleb128 0x2d
	.long	.LASF320
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0
	.uleb128 0x2d
	.long	.LASF227
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1_
	.uleb128 0x2d
	.long	.LASF321
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1
	.uleb128 0x2d
	.long	.LASF228
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2_
	.uleb128 0x2d
	.long	.LASF322
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2
	.uleb128 0x2d
	.long	.LASF229
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3_
	.uleb128 0x2d
	.long	.LASF323
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3
	.uleb128 0x2d
	.long	.LASF230
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4_
	.uleb128 0x2d
	.long	.LASF324
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4
	.uleb128 0x2d
	.long	.LASF231
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5_
	.uleb128 0x2d
	.long	.LASF325
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5
	.uleb128 0x2d
	.long	.LASF232
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6_
	.uleb128 0x2d
	.long	.LASF326
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6
	.uleb128 0x2d
	.long	.LASF233
	.byte	0x1f
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7_
	.uleb128 0x2d
	.long	.LASF327
	.byte	0x1f
	.byte	0xd
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7
	.uleb128 0x2d
	.long	.LASF234
	.byte	0x1f
	.byte	0xe
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB_
	.uleb128 0x2d
	.long	.LASF235
	.byte	0x1f
	.byte	0xe
	.long	0x1458
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB
	.uleb128 0x2d
	.long	.LASF236
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0_
	.uleb128 0x2d
	.long	.LASF328
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0
	.uleb128 0x2d
	.long	.LASF237
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1_
	.uleb128 0x2d
	.long	.LASF329
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1
	.uleb128 0x2d
	.long	.LASF238
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2_
	.uleb128 0x2d
	.long	.LASF330
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2
	.uleb128 0x2d
	.long	.LASF239
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3_
	.uleb128 0x2d
	.long	.LASF240
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3
	.uleb128 0x2d
	.long	.LASF241
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4_
	.uleb128 0x2d
	.long	.LASF242
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4
	.uleb128 0x2d
	.long	.LASF243
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5_
	.uleb128 0x2d
	.long	.LASF331
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5
	.uleb128 0x2d
	.long	.LASF244
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6_
	.uleb128 0x2d
	.long	.LASF245
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6
	.uleb128 0x2d
	.long	.LASF246
	.byte	0x1f
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7_
	.uleb128 0x2d
	.long	.LASF247
	.byte	0x1f
	.byte	0xe
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7
	.uleb128 0x2d
	.long	.LASF248
	.byte	0x1f
	.byte	0xf
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC_
	.uleb128 0x2d
	.long	.LASF249
	.byte	0x1f
	.byte	0xf
	.long	0x1458
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC
	.uleb128 0x2d
	.long	.LASF250
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0_
	.uleb128 0x2d
	.long	.LASF332
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0
	.uleb128 0x2d
	.long	.LASF251
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1_
	.uleb128 0x2d
	.long	.LASF333
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1
	.uleb128 0x2d
	.long	.LASF252
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2_
	.uleb128 0x2d
	.long	.LASF253
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2
	.uleb128 0x2d
	.long	.LASF254
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3_
	.uleb128 0x2d
	.long	.LASF255
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3
	.uleb128 0x2d
	.long	.LASF256
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4_
	.uleb128 0x2d
	.long	.LASF257
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4
	.uleb128 0x2d
	.long	.LASF258
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5_
	.uleb128 0x2d
	.long	.LASF259
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5
	.uleb128 0x2d
	.long	.LASF260
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6_
	.uleb128 0x2d
	.long	.LASF334
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6
	.uleb128 0x2d
	.long	.LASF261
	.byte	0x1f
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7_
	.uleb128 0x2d
	.long	.LASF335
	.byte	0x1f
	.byte	0xf
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7
	.uleb128 0x2d
	.long	.LASF262
	.byte	0x1f
	.byte	0x10
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD_
	.uleb128 0x2d
	.long	.LASF263
	.byte	0x1f
	.byte	0x10
	.long	0x1458
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD
	.uleb128 0x2d
	.long	.LASF264
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0_
	.uleb128 0x2d
	.long	.LASF336
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0
	.uleb128 0x2d
	.long	.LASF265
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1_
	.uleb128 0x2d
	.long	.LASF337
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1
	.uleb128 0x2d
	.long	.LASF266
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2_
	.uleb128 0x2d
	.long	.LASF338
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2
	.uleb128 0x2d
	.long	.LASF267
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3_
	.uleb128 0x2d
	.long	.LASF339
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3
	.uleb128 0x2d
	.long	.LASF268
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4_
	.uleb128 0x2d
	.long	.LASF269
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4
	.uleb128 0x2d
	.long	.LASF270
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5_
	.uleb128 0x2d
	.long	.LASF271
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5
	.uleb128 0x2d
	.long	.LASF272
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6_
	.uleb128 0x2d
	.long	.LASF273
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6
	.uleb128 0x2d
	.long	.LASF274
	.byte	0x1f
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7_
	.uleb128 0x2d
	.long	.LASF275
	.byte	0x1f
	.byte	0x10
	.long	0x1520
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7
	.uleb128 0x2d
	.long	.LASF276
	.byte	0x1d
	.byte	0xe
	.long	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0_
	.uleb128 0x2d
	.long	.LASF277
	.byte	0x1d
	.byte	0xe
	.long	0x1706
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0
	.uleb128 0x2d
	.long	.LASF278
	.byte	0x1d
	.byte	0xf
	.long	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1_
	.uleb128 0x2d
	.long	.LASF279
	.byte	0x1d
	.byte	0xf
	.long	0x1706
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1
	.uleb128 0x2d
	.long	.LASF280
	.byte	0x1d
	.byte	0x10
	.long	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2_
	.uleb128 0x2d
	.long	.LASF281
	.byte	0x1d
	.byte	0x10
	.long	0x1706
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2
	.uleb128 0x2d
	.long	.LASF282
	.byte	0x1d
	.byte	0x11
	.long	0x205
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3_
	.uleb128 0x2d
	.long	.LASF283
	.byte	0x1d
	.byte	0x11
	.long	0x1706
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3
	.uleb128 0x2d
	.long	.LASF284
	.byte	0x1d
	.byte	0x13
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A_
	.uleb128 0x2d
	.long	.LASF340
	.byte	0x1d
	.byte	0x13
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A
	.uleb128 0x2d
	.long	.LASF285
	.byte	0x1d
	.byte	0x14
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B_
	.uleb128 0x2d
	.long	.LASF341
	.byte	0x1d
	.byte	0x14
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B
	.uleb128 0x2d
	.long	.LASF286
	.byte	0x1d
	.byte	0x15
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A_
	.uleb128 0x2d
	.long	.LASF287
	.byte	0x1d
	.byte	0x15
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A
	.uleb128 0x2d
	.long	.LASF288
	.byte	0x1d
	.byte	0x16
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B_
	.uleb128 0x2d
	.long	.LASF289
	.byte	0x1d
	.byte	0x16
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B
	.uleb128 0x2d
	.long	.LASF290
	.byte	0x1d
	.byte	0x17
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A_
	.uleb128 0x2d
	.long	.LASF342
	.byte	0x1d
	.byte	0x17
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A
	.uleb128 0x2d
	.long	.LASF291
	.byte	0x1d
	.byte	0x18
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B_
	.uleb128 0x2d
	.long	.LASF343
	.byte	0x1d
	.byte	0x18
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B
	.uleb128 0x2d
	.long	.LASF292
	.byte	0x1d
	.byte	0x19
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A_
	.uleb128 0x2d
	.long	.LASF293
	.byte	0x1d
	.byte	0x19
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A
	.uleb128 0x2d
	.long	.LASF294
	.byte	0x1d
	.byte	0x1a
	.long	0x282
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B_
	.uleb128 0x2d
	.long	.LASF295
	.byte	0x1d
	.byte	0x1a
	.long	0x178d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B
	.uleb128 0x2d
	.long	.LASF296
	.byte	0x23
	.byte	0xf
	.long	0x312
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotorBase_
	.uleb128 0x2d
	.long	.LASF297
	.byte	0x23
	.byte	0xf
	.long	0x1814
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotorBase
	.uleb128 0x2d
	.long	.LASF298
	.byte	0x23
	.byte	0x10
	.long	0x312
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotorBase_
	.uleb128 0x2d
	.long	.LASF299
	.byte	0x23
	.byte	0x10
	.long	0x1814
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotorBase
	.uleb128 0x2d
	.long	.LASF300
	.byte	0x23
	.byte	0x11
	.long	0x407
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotor_
	.uleb128 0x2d
	.long	.LASF301
	.byte	0x23
	.byte	0x11
	.long	0x184d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotor
	.uleb128 0x2d
	.long	.LASF302
	.byte	0x23
	.byte	0x12
	.long	0x407
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotor_
	.uleb128 0x2d
	.long	.LASF303
	.byte	0x23
	.byte	0x12
	.long	0x184d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotor
	.uleb128 0x2d
	.long	.LASF304
	.byte	0x2a
	.byte	0xf
	.long	0x1879
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	milliseconds_running
	.uleb128 0x2d
	.long	.LASF344
	.byte	0x3e
	.byte	0x10
	.long	0x43a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	TWIBroadcast
	.uleb128 0x2d
	.long	.LASF305
	.byte	0x3e
	.byte	0x28
	.long	0x188b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_running
	.uleb128 0x2d
	.long	.LASF306
	.byte	0x2e
	.byte	0x6
	.long	0x43a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bgx1
	.uleb128 0x2d
	.long	.LASF307
	.byte	0x34
	.byte	0x8
	.long	0x43a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	tank_IO
	.uleb128 0x2d
	.long	.LASF308
	.byte	0x3b
	.byte	0x1c
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	smooth_ticks
	.uleb128 0x2d
	.long	.LASF309
	.byte	0x3b
	.byte	0x1d
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	target_motor_A
	.uleb128 0x2d
	.long	.LASF310
	.byte	0x3b
	.byte	0x1e
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	target_motor_B
	.uleb128 0x2d
	.long	.LASF311
	.byte	0x3b
	.byte	0x1f
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	motor_A_running
	.uleb128 0x2d
	.long	.LASF312
	.byte	0x3b
	.byte	0x20
	.long	0x9b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	motor_B_running
	.uleb128 0x2d
	.long	.LASF313
	.byte	0x3e
	.byte	0x29
	.long	0x43a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_address
	.uleb128 0x2d
	.long	.LASF314
	.byte	0x3e
	.byte	0x2a
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	alreadyHandled
	.uleb128 0x2d
	.long	.LASF167
	.byte	0x3e
	.byte	0x2b
	.long	0x470
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	twi_buffer
	.uleb128 0x2d
	.long	.LASF315
	.byte	0x3e
	.byte	0x2c
	.long	0x519
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	error
	.uleb128 0x2d
	.long	.LASF316
	.byte	0x3e
	.byte	0x2d
	.long	0x191f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	furtherOperations
	.uleb128 0x2d
	.long	.LASF317
	.byte	0x3e
	.byte	0x2e
	.long	0x46
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nextTwiOperation
	.uleb128 0x2d
	.long	.LASF318
	.byte	0x3d
	.byte	0xc
	.long	0x1949
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	sendBufferData
	.uleb128 0x2d
	.long	.LASF319
	.byte	0x3d
	.byte	0xd
	.long	0x470
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x26
	.byte	0x0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.long	0xbc3
	.word	0x2
	.long	.Ldebug_info0
	.long	0x221a
	.long	0x72f
	.string	"init_reset_condition"
	.long	0x743
	.string	"init_reset_condition_kernel_init"
	.long	0x757
	.string	"getResetStatus"
	.long	0x76f
	.string	"init_ports_m1284P"
	.long	0x783
	.string	"init_ports_m1284P_kernel_init"
	.long	0x797
	.string	"init_timer_m1284P"
	.long	0x7ab
	.string	"init_timer_m1284P_kernel_init"
	.long	0x7bf
	.string	"initMotor"
	.long	0x7e8
	.string	"initMotor2Pins"
	.long	0x811
	.string	"init_tank_motors"
	.long	0x825
	.string	"init_tank_motors_kernel_init"
	.long	0x839
	.string	"init_timer"
	.long	0x84d
	.string	"init_timer_kernel_init"
	.long	0x861
	.string	"in_timer_tick"
	.long	0x875
	.string	"__vector_32"
	.long	0x88a
	.string	"mutex_create"
	.long	0x89b
	.string	"mutex_lock"
	.long	0x8c7
	.string	"mutex_trylock"
	.long	0x8f4
	.string	"mutex_release"
	.long	0x920
	.string	"initSmoothMotor"
	.long	0x942
	.string	"smooth_millisecond_tick"
	.long	0x956
	.string	"smooth_enable_millisecond_tick"
	.long	0x97f
	.string	"motor_smooth_set_call_frequency"
	.long	0x9d5
	.string	"__vector_33"
	.long	0x9ea
	.string	"init_smooth_motors"
	.long	0x9fe
	.string	"init_smooth_motors_kernel_init"
	.long	0xa12
	.string	"twi_handleMasterRequest"
	.long	0xa2a
	.string	"twi_handleMasterTransmission"
	.long	0xa5c
	.string	"twi_unexpectedCondition"
	.long	0xa70
	.string	"init_twi"
	.long	0xa84
	.string	"init_twi_kernel_init"
	.long	0xa98
	.string	"next_twi_operation"
	.long	0xad6
	.string	"twi_start_master_operation"
	.long	0xaea
	.string	"__vector_26"
	.long	0xb31
	.string	"twiMultipleOperations"
	.long	0xb80
	.string	"twiSendReceive"
	.long	0xbe5
	.string	"twiReceive"
	.long	0xc3a
	.string	"twiSend"
	.long	0xc7f
	.string	"twi_rpc_oneway"
	.long	0xcc6
	.string	"tankIO_writeLeds"
	.long	0xd00
	.string	"bgx1_setIllumination"
	.long	0xd34
	.string	"bgx1_termPrint_base"
	.long	0xd7d
	.string	"bgx1_termScroll"
	.long	0xdb7
	.string	"bgx1_termGoto"
	.long	0xdf1
	.string	"bgx1_termClear"
	.long	0xe15
	.string	"bgx1_lineTo"
	.long	0xe49
	.string	"bgx1_selectFont"
	.long	0xe7d
	.string	"bgx1_fillAll"
	.long	0xeb1
	.string	"bgx1_mode"
	.long	0xee5
	.string	"bgx1_move"
	.long	0xf19
	.string	"bgx1_setStatus"
	.long	0xf4d
	.string	"bgx1_reset"
	.long	0xf71
	.string	"twi_rpc"
	.long	0xfc7
	.string	"tankIO_readButtons"
	.long	0x1008
	.string	"bgx1_syncInterface"
	.long	0x1059
	.string	"bgx1_getAnalog"
	.long	0x10ab
	.string	"bgx1_syncPort"
	.long	0x1102
	.string	"bgx1_embeddedImage"
	.long	0x1153
	.string	"bgx1_drawBitmap_base"
	.long	0x11b9
	.string	"bgx1_box"
	.long	0x1210
	.string	"bgx1_vLine"
	.long	0x1261
	.string	"bgx1_hLine"
	.long	0x12b2
	.string	"bgx1_textWidth_base"
	.long	0x1312
	.string	"bgx1_print_base"
	.long	0x1372
	.string	"bgx1_getStatus"
	.long	0x13b3
	.string	"bgx1_getVersion"
	.long	0x13f5
	.string	"before_timer"
	.long	0x1409
	.string	"init_kernel"
	.long	0x141d
	.string	"init_kernel_kernel_init"
	.long	0x1973
	.string	"current_reset_status"
	.long	0x1985
	.string	"PortA_"
	.long	0x1997
	.string	"PortA"
	.long	0x19a9
	.string	"PinA0_"
	.long	0x19bb
	.string	"PinA0"
	.long	0x19cd
	.string	"PinA1_"
	.long	0x19df
	.string	"PinA1"
	.long	0x19f1
	.string	"PinA2_"
	.long	0x1a03
	.string	"PinA2"
	.long	0x1a15
	.string	"PinA3_"
	.long	0x1a27
	.string	"PinA3"
	.long	0x1a39
	.string	"PinA4_"
	.long	0x1a4b
	.string	"PinA4"
	.long	0x1a5d
	.string	"PinA5_"
	.long	0x1a6f
	.string	"PinA5"
	.long	0x1a81
	.string	"PinA6_"
	.long	0x1a93
	.string	"PinA6"
	.long	0x1aa5
	.string	"PinA7_"
	.long	0x1ab7
	.string	"PinA7"
	.long	0x1ac9
	.string	"PortB_"
	.long	0x1adb
	.string	"PortB"
	.long	0x1aed
	.string	"PinB0_"
	.long	0x1aff
	.string	"PinB0"
	.long	0x1b11
	.string	"PinB1_"
	.long	0x1b23
	.string	"PinB1"
	.long	0x1b35
	.string	"PinB2_"
	.long	0x1b47
	.string	"PinB2"
	.long	0x1b59
	.string	"PinB3_"
	.long	0x1b6b
	.string	"PinB3"
	.long	0x1b7d
	.string	"PinB4_"
	.long	0x1b8f
	.string	"PinB4"
	.long	0x1ba1
	.string	"PinB5_"
	.long	0x1bb3
	.string	"PinB5"
	.long	0x1bc5
	.string	"PinB6_"
	.long	0x1bd7
	.string	"PinB6"
	.long	0x1be9
	.string	"PinB7_"
	.long	0x1bfb
	.string	"PinB7"
	.long	0x1c0d
	.string	"PortC_"
	.long	0x1c1f
	.string	"PortC"
	.long	0x1c31
	.string	"PinC0_"
	.long	0x1c43
	.string	"PinC0"
	.long	0x1c55
	.string	"PinC1_"
	.long	0x1c67
	.string	"PinC1"
	.long	0x1c79
	.string	"PinC2_"
	.long	0x1c8b
	.string	"PinC2"
	.long	0x1c9d
	.string	"PinC3_"
	.long	0x1caf
	.string	"PinC3"
	.long	0x1cc1
	.string	"PinC4_"
	.long	0x1cd3
	.string	"PinC4"
	.long	0x1ce5
	.string	"PinC5_"
	.long	0x1cf7
	.string	"PinC5"
	.long	0x1d09
	.string	"PinC6_"
	.long	0x1d1b
	.string	"PinC6"
	.long	0x1d2d
	.string	"PinC7_"
	.long	0x1d3f
	.string	"PinC7"
	.long	0x1d51
	.string	"PortD_"
	.long	0x1d63
	.string	"PortD"
	.long	0x1d75
	.string	"PinD0_"
	.long	0x1d87
	.string	"PinD0"
	.long	0x1d99
	.string	"PinD1_"
	.long	0x1dab
	.string	"PinD1"
	.long	0x1dbd
	.string	"PinD2_"
	.long	0x1dcf
	.string	"PinD2"
	.long	0x1de1
	.string	"PinD3_"
	.long	0x1df3
	.string	"PinD3"
	.long	0x1e05
	.string	"PinD4_"
	.long	0x1e17
	.string	"PinD4"
	.long	0x1e29
	.string	"PinD5_"
	.long	0x1e3b
	.string	"PinD5"
	.long	0x1e4d
	.string	"PinD6_"
	.long	0x1e5f
	.string	"PinD6"
	.long	0x1e71
	.string	"PinD7_"
	.long	0x1e83
	.string	"PinD7"
	.long	0x1e95
	.string	"Timer0_"
	.long	0x1ea7
	.string	"Timer0"
	.long	0x1eb9
	.string	"Timer1_"
	.long	0x1ecb
	.string	"Timer1"
	.long	0x1edd
	.string	"Timer2_"
	.long	0x1eef
	.string	"Timer2"
	.long	0x1f01
	.string	"Timer3_"
	.long	0x1f13
	.string	"Timer3"
	.long	0x1f25
	.string	"Timer0A_"
	.long	0x1f37
	.string	"Timer0A"
	.long	0x1f49
	.string	"Timer0B_"
	.long	0x1f5b
	.string	"Timer0B"
	.long	0x1f6d
	.string	"Timer1A_"
	.long	0x1f7f
	.string	"Timer1A"
	.long	0x1f91
	.string	"Timer1B_"
	.long	0x1fa3
	.string	"Timer1B"
	.long	0x1fb5
	.string	"Timer2A_"
	.long	0x1fc7
	.string	"Timer2A"
	.long	0x1fd9
	.string	"Timer2B_"
	.long	0x1feb
	.string	"Timer2B"
	.long	0x1ffd
	.string	"Timer3A_"
	.long	0x200f
	.string	"Timer3A"
	.long	0x2021
	.string	"Timer3B_"
	.long	0x2033
	.string	"Timer3B"
	.long	0x2045
	.string	"LeftMotorBase_"
	.long	0x2057
	.string	"LeftMotorBase"
	.long	0x2069
	.string	"RightMotorBase_"
	.long	0x207b
	.string	"RightMotorBase"
	.long	0x208d
	.string	"LeftMotor_"
	.long	0x209f
	.string	"LeftMotor"
	.long	0x20b1
	.string	"RightMotor_"
	.long	0x20c3
	.string	"RightMotor"
	.long	0x20d5
	.string	"milliseconds_running"
	.long	0x20e7
	.string	"TWIBroadcast"
	.long	0x20f9
	.string	"twi_running"
	.long	0x210b
	.string	"bgx1"
	.long	0x211d
	.string	"tank_IO"
	.long	0x212f
	.string	"smooth_ticks"
	.long	0x2141
	.string	"target_motor_A"
	.long	0x2153
	.string	"target_motor_B"
	.long	0x2165
	.string	"motor_A_running"
	.long	0x2177
	.string	"motor_B_running"
	.long	0x2189
	.string	"twi_address"
	.long	0x219b
	.string	"alreadyHandled"
	.long	0x21ad
	.string	"twi_buffer"
	.long	0x21bf
	.string	"error"
	.long	0x21d1
	.string	"furtherOperations"
	.long	0x21e3
	.string	"nextTwiOperation"
	.long	0x21f5
	.string	"sendBufferData"
	.long	0x2207
	.string	"sendBuffer"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x1a9
	.word	0x2
	.long	.Ldebug_info0
	.long	0x221a
	.long	0x34
	.string	"uint8_t"
	.long	0x4d
	.string	"uint16_t"
	.long	0x66
	.string	"uint32_t"
	.long	0x9b
	.string	"BOOL"
	.long	0xa6
	.string	"byte"
	.long	0xef
	.string	"Port"
	.long	0xfa
	.string	"PPort"
	.long	0x130
	.string	"Pin"
	.long	0x13b
	.string	"PPin"
	.long	0x205
	.string	"TimerPair"
	.long	0x210
	.string	"PTimerPair"
	.long	0x236
	.string	"TIMER_TYPE"
	.long	0x282
	.string	"Timer"
	.long	0x28d
	.string	"PTimer"
	.long	0x2d1
	.string	"Motor"
	.long	0x2dc
	.string	"PMotor"
	.long	0x312
	.string	"Motor2Pins"
	.long	0x31d
	.string	"PMotor2Pins"
	.long	0x349
	.string	"MotorDirection"
	.long	0x354
	.string	"Mutex__"
	.long	0x36f
	.string	"Mutex"
	.long	0x407
	.string	"SmoothMotor"
	.long	0x412
	.string	"PSmoothMotor"
	.long	0x43a
	.string	"TWIDevice"
	.long	0x470
	.string	"TWIBuffer"
	.long	0x4c9
	.string	"TWIOperation"
	.long	0x519
	.string	"TWIError"
	.long	0x5f7
	.string	"Point"
	.long	0x602
	.string	"Rect"
	.long	0x632
	.string	"BitmapArguments"
	.long	0x654
	.string	"StringArg"
	.long	0x684
	.string	"SyncPortArgs"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
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
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB42
	.long	.LFE42-.LFB42
	.long	.LFB55
	.long	.LFE55-.LFB55
	.long	.LFB60
	.long	.LFE60-.LFB60
	.long	.LFB78
	.long	.LFE78-.LFB78
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB5
	.long	.LFE5
	.long	.LFB8
	.long	.LFE8
	.long	.LFB10
	.long	.LFE10
	.long	.LFB14
	.long	.LFE14
	.long	.LFB42
	.long	.LFE42
	.long	.LFB55
	.long	.LFE55
	.long	.LFB60
	.long	.LFE60
	.long	.LFB78
	.long	.LFE78
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
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/../processes/mutex"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/../processes/mutex/../../"
	.ascii	".."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes/mutex"
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
	.uleb128 0x13
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdlib.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"stddef.h"
	.uleb128 0x13
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"inttypes.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"util/delay_basic.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/io.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/sfr_defs.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/iom1284p.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/portpins.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/common.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/version.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/fuse.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/lock.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/interrupt.h"
	.uleb128 0x10
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
	.string	"avr/wdt.h"
	.uleb128 0x10
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
	.string	"motor_smooth.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"../processes/mutex/mutex.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"../processes/mutex/../../../anton_std.h"
	.uleb128 0xa
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
	.string	"processes/mutex/mutex.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"anton_std.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"tank_motor.h"
	.uleb128 0x3
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
	.string	"TWI/twi_rpc_hash_client.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"TWI/twi_rpc.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/pgmspace.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"twi_tank_IO.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"shared/tank_IO_protocol.h"
	.uleb128 0x3
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer.kernel.h"
	.uleb128 0x2
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
	.string	"processes/mutex/atomic_mutex.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth_pair.kernel.h"
	.uleb128 0xa
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor_smooth.kernel.h"
	.uleb128 0xa
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
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"string.h"
	.uleb128 0x10
	.uleb128 0x0
	.uleb128 0x0
	.string	"twi_bgx1.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"twi_tank_IO.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"base_after.kernel.h"
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
	.uleb128 0x3e
	.byte	0x59
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
	.byte	0x4
	.uleb128 0x3d
	.byte	0x3
	.sleb128 -35
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM6
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM7
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM8
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM13
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM14
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM15
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM17
	.byte	0x4
	.uleb128 0x20
	.byte	0x3
	.sleb128 -18
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x15
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
	.uleb128 0x1b
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM28
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM37
	.byte	0x4
	.uleb128 0x21
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x17
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
	.byte	0x16
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
	.uleb128 0x1a
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM55
	.byte	0x4
	.uleb128 0x36
	.byte	0xf
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM59
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM60
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM61
	.byte	0x4
	.uleb128 0x37
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x4
	.uleb128 0x38
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM64
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM65
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM66
	.byte	0x4
	.uleb128 0x39
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM67
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM68
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM69
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM70
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM71
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x4
	.uleb128 0x3c
	.byte	0x3
	.sleb128 -12
	.byte	0x1
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
	.byte	0x4
	.uleb128 0x3b
	.byte	0x32
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM81
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM86
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM87
	.byte	0x4
	.uleb128 0x3a
	.byte	0x3
	.sleb128 -42
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM89
	.byte	0x1
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
	.uleb128 0x3b
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM92
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x1
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM99
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM100
	.byte	0x15
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM108
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM109
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM110
	.byte	0x4
	.uleb128 0x3a
	.byte	0x3
	.sleb128 -30
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM111
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM116
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM117
	.byte	0x4
	.uleb128 0x3e
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM124
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM125
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM126
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM127
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM128
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM131
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM132
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM133
	.byte	0x17
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
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM140
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM141
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM142
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x15
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
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM154
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM155
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM156
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM157
	.byte	0x41
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x3
	.sleb128 -35
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0xb
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
	.byte	0x49
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
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM172
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM173
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM174
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM176
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM177
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM178
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM179
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM182
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM183
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM184
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x3
	.sleb128 -17
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM189
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x4
	.uleb128 0x3d
	.byte	0x3
	.sleb128 -198
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM198
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM199
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM200
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x4
	.uleb128 0x34
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x4
	.uleb128 0x2e
	.byte	0x71
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM210
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM211
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM212
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM213
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM214
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM215
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM216
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM217
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM218
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM219
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM220
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM221
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM222
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM223
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM224
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM225
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM226
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM227
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM228
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM229
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM232
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM233
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM234
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM235
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM236
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM237
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM238
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM239
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM240
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM241
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM242
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM243
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM244
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM245
	.byte	0x3
	.sleb128 -24
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM246
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM247
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM248
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM249
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM250
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM251
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM252
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM253
	.byte	0x4
	.uleb128 0x3d
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM254
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM255
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM256
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM257
	.byte	0x4
	.uleb128 0x34
	.byte	0x3
	.sleb128 -38
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM258
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM259
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM260
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM261
	.byte	0x4
	.uleb128 0x2e
	.byte	0x71
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM262
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM263
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM264
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM265
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM266
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM267
	.byte	0x1
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM272
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM273
	.byte	0x3
	.sleb128 -15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM274
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM275
	.byte	0x1
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
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM282
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM283
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM284
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM285
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM286
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM287
	.byte	0x1
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM292
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM293
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM294
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM295
	.byte	0x1
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM300
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM301
	.byte	0x3
	.sleb128 -28
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM302
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM303
	.byte	0x1
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM308
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM309
	.byte	0x4
	.uleb128 0x43
	.byte	0x3
	.sleb128 -45
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM310
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM311
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM312
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM313
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM314
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM315
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM316
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM317
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
	.uleb128 0x20
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE8
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM4
	.byte	0x4
	.uleb128 0x1b
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
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
	.long	.LSM6
	.byte	0x4
	.uleb128 0x1a
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE14
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM8
	.byte	0x4
	.uleb128 0x36
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM9
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE42
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM10
	.byte	0x4
	.uleb128 0x3a
	.byte	0x2b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE55
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x4
	.uleb128 0x3e
	.byte	0x50
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE60
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x4
	.uleb128 0x43
	.byte	0x35
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE78
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_macinfo
	.byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF182:
	.string	"sendData"
.LASF51:
	.string	"direction"
.LASF215:
	.string	"bgx1_hLine"
.LASF235:
	.string	"PortB"
.LASF260:
	.string	"PinC6_"
.LASF264:
	.string	"PinD0_"
.LASF302:
	.string	"RightMotor_"
.LASF229:
	.string	"PinA3_"
.LASF156:
	.string	"smooth_enable_millisecond_tick"
.LASF188:
	.string	"bgx1_setIllumination"
.LASF136:
	.string	"operation"
.LASF40:
	.string	"TimerPair"
.LASF91:
	.string	"TWI_SlaveAddress_NoAck"
.LASF317:
	.string	"nextTwiOperation"
.LASF202:
	.string	"twi_rpc"
.LASF32:
	.string	"prescale_256"
.LASF162:
	.string	"__vector_33"
.LASF135:
	.string	"twi_receive_byte"
.LASF30:
	.string	"prescale_64"
.LASF94:
	.string	"TWI_Slave_NotEnoughDataTransmitted"
.LASF296:
	.string	"LeftMotorBase_"
.LASF139:
	.string	"init_reset_condition_kernel_init"
.LASF36:
	.string	"flags"
.LASF103:
	.string	"CMD_Move"
.LASF83:
	.string	"buffer"
.LASF62:
	.string	"MotorDirection"
.LASF65:
	.string	"currentSpeed"
.LASF27:
	.string	"prescale_1"
.LASF4:
	.string	"unsigned int"
.LASF28:
	.string	"prescale_8"
.LASF349:
	.string	"mutex_create"
.LASF230:
	.string	"PinA4_"
.LASF124:
	.string	"Point"
.LASF184:
	.string	"twiReceive"
.LASF88:
	.string	"TWI_No_Info_Interrupt"
.LASF303:
	.string	"RightMotor"
.LASF173:
	.string	"twi_stop"
.LASF108:
	.string	"CMD_SelectFont"
.LASF210:
	.string	"bgx1_syncPort"
.LASF299:
	.string	"RightMotorBase"
.LASF148:
	.string	"init_timer"
.LASF218:
	.string	"bgx1_getStatus"
.LASF214:
	.string	"bgx1_vLine"
.LASF187:
	.string	"tankIO_writeLeds"
.LASF29:
	.string	"prescale_32"
.LASF280:
	.string	"Timer2_"
.LASF102:
	.string	"CMD_SetStatus"
.LASF251:
	.string	"PinC1_"
.LASF142:
	.string	"init_timer_m1284P"
.LASF315:
	.string	"error"
.LASF171:
	.string	"next_twi_operation"
.LASF266:
	.string	"PinD2_"
.LASF166:
	.string	"twi_handleMasterTransmission"
.LASF231:
	.string	"PinA5_"
.LASF21:
	.string	"pwm_fast_FF"
.LASF213:
	.string	"bgx1_box"
.LASF132:
	.string	"TANK_IO_writeLeds"
.LASF199:
	.string	"bgx1_setStatus"
.LASF307:
	.string	"tank_IO"
.LASF74:
	.string	"PSmoothMotor"
.LASF111:
	.string	"CMD_Box"
.LASF143:
	.string	"init_timer_m1284P_kernel_init"
.LASF141:
	.string	"init_ports_m1284P_kernel_init"
.LASF84:
	.string	"device"
.LASF351:
	.string	"fillSendBuffer"
.LASF179:
	.string	"operations"
.LASF6:
	.string	"uint32_t"
.LASF261:
	.string	"PinC7_"
.LASF11:
	.string	"TRUE"
.LASF60:
	.string	"FORWARD"
.LASF192:
	.string	"bgx1_termGoto"
.LASF211:
	.string	"bgx1_embeddedImage"
.LASF115:
	.string	"CMD_TermClear"
.LASF44:
	.string	"TIMER_TYPE"
.LASF50:
	.string	"PTimer"
.LASF205:
	.string	"result"
.LASF72:
	.string	"mutex"
.LASF232:
	.string	"PinA6_"
.LASF57:
	.string	"Motor2Pins"
.LASF285:
	.string	"Timer0B_"
.LASF236:
	.string	"PinB0_"
.LASF178:
	.string	"count"
.LASF180:
	.string	"twiSendReceive"
.LASF49:
	.string	"Timer"
.LASF120:
	.string	"CMD_GetAnalog"
.LASF309:
	.string	"target_motor_A"
.LASF310:
	.string	"target_motor_B"
.LASF12:
	.string	"BOOL"
.LASF90:
	.string	"TWI_Illegal_Status"
.LASF344:
	.string	"TWIBroadcast"
.LASF9:
	.string	"long long unsigned int"
.LASF311:
	.string	"motor_A_running"
.LASF87:
	.string	"TWI_No_Error"
.LASF204:
	.string	"tankIO_readButtons"
.LASF301:
	.string	"LeftMotor"
.LASF277:
	.string	"Timer0"
.LASF279:
	.string	"Timer1"
.LASF281:
	.string	"Timer2"
.LASF283:
	.string	"Timer3"
.LASF26:
	.string	"no_clock"
.LASF134:
	.string	"twi_init_receive"
.LASF268:
	.string	"PinD4_"
.LASF56:
	.string	"direction2"
.LASF25:
	.string	"pwm_phase_and_frequency_correct"
.LASF237:
	.string	"PinB1_"
.LASF20:
	.string	"clear_timer_on_match"
.LASF290:
	.string	"Timer2A_"
.LASF291:
	.string	"Timer2B_"
.LASF193:
	.string	"argBuf"
.LASF312:
	.string	"motor_B_running"
.LASF190:
	.string	"argSize"
.LASF128:
	.string	"BitmapArguments"
.LASF116:
	.string	"CMD_TermGoto"
.LASF100:
	.string	"CMD_GetVersion"
.LASF41:
	.string	"PTimerPair"
.LASF126:
	.string	"width"
.LASF186:
	.string	"twi_rpc_oneway"
.LASF42:
	.string	"TIMER_A"
.LASF43:
	.string	"TIMER_B"
.LASF119:
	.string	"CMD_SyncPort"
.LASF129:
	.string	"StringArg"
.LASF346:
	.string	".././tank_kernel_MASTER.c"
.LASF308:
	.string	"smooth_ticks"
.LASF265:
	.string	"PinD1_"
.LASF15:
	.string	"Port"
.LASF181:
	.string	"targetDevice"
.LASF238:
	.string	"PinB2_"
.LASF336:
	.string	"PinD0"
.LASF109:
	.string	"CMD_HLine"
.LASF350:
	.string	"initSmoothMotor"
.LASF64:
	.string	"Mutex"
.LASF163:
	.string	"init_smooth_motors"
.LASF201:
	.string	"bgx1_reset"
.LASF24:
	.string	"pwm_fast"
.LASF224:
	.string	"PortA_"
.LASF343:
	.string	"Timer2B"
.LASF220:
	.string	"before_timer"
.LASF55:
	.string	"motor"
.LASF272:
	.string	"PinD6_"
.LASF345:
	.string	"GNU C 4.5.1"
.LASF155:
	.string	"smooth_millisecond_tick"
.LASF239:
	.string	"PinB3_"
.LASF221:
	.string	"init_kernel"
.LASF183:
	.string	"receiveBuffer"
.LASF304:
	.string	"milliseconds_running"
.LASF37:
	.string	"controlRegisterA"
.LASF38:
	.string	"controlRegisterB"
.LASF177:
	.string	"twiMultipleOperations"
.LASF77:
	.string	"data"
.LASF319:
	.string	"sendBuffer"
.LASF31:
	.string	"prescale_128"
.LASF18:
	.string	"PPin"
.LASF234:
	.string	"PortB_"
.LASF2:
	.string	"uint8_t"
.LASF207:
	.string	"mutex_trylock"
.LASF145:
	.string	"initMotor2Pins"
.LASF149:
	.string	"init_timer_kernel_init"
.LASF300:
	.string	"LeftMotor_"
.LASF318:
	.string	"sendBufferData"
.LASF206:
	.string	"resBuf"
.LASF117:
	.string	"CMD_TermScroll"
.LASF34:
	.string	"external_falling_edge"
.LASF274:
	.string	"PinD7_"
.LASF110:
	.string	"CMD_VLine"
.LASF194:
	.string	"bgx1_lineTo"
.LASF35:
	.string	"external_rising_edge"
.LASF241:
	.string	"PinB4_"
.LASF80:
	.string	"TWI_IllegalOperation"
.LASF69:
	.string	"tickRunning"
.LASF8:
	.string	"long long int"
.LASF146:
	.string	"init_tank_motors"
.LASF284:
	.string	"Timer0A_"
.LASF165:
	.string	"twi_handleMasterRequest"
.LASF106:
	.string	"CMD_Print"
.LASF137:
	.string	"parameters"
.LASF248:
	.string	"PortC_"
.LASF153:
	.string	"mutex_lock"
.LASF85:
	.string	"operationMode"
.LASF114:
	.string	"CMD_LineTo"
.LASF154:
	.string	"mutex_release"
.LASF144:
	.string	"initMotor"
.LASF125:
	.string	"Rect"
.LASF54:
	.string	"PMotor"
.LASF243:
	.string	"PinB5_"
.LASF61:
	.string	"MOTOR_STOPPED"
.LASF197:
	.string	"bgx1_mode"
.LASF122:
	.string	"CMD_SetIllumination"
.LASF78:
	.string	"size"
.LASF161:
	.string	"isRunning"
.LASF53:
	.string	"Motor"
.LASF305:
	.string	"twi_running"
.LASF140:
	.string	"init_ports_m1284P"
.LASF98:
	.string	"__unknown__"
.LASF17:
	.string	"mask"
.LASF118:
	.string	"CMD_TermPrint"
.LASF320:
	.string	"PinA0"
.LASF262:
	.string	"PortD_"
.LASF127:
	.string	"height"
.LASF59:
	.string	"BACKWARD"
.LASF295:
	.string	"Timer3B"
.LASF324:
	.string	"PinA4"
.LASF233:
	.string	"PinA7_"
.LASF222:
	.string	"init_kernel_kernel_init"
.LASF321:
	.string	"PinA1"
.LASF322:
	.string	"PinA2"
.LASF323:
	.string	"PinA3"
.LASF70:
	.string	"adjustmentFrequency"
.LASF325:
	.string	"PinA5"
.LASF326:
	.string	"PinA6"
.LASF327:
	.string	"PinA7"
.LASF164:
	.string	"init_smooth_motors_kernel_init"
.LASF244:
	.string	"PinB6_"
.LASF341:
	.string	"Timer0B"
.LASF250:
	.string	"PinC0_"
.LASF167:
	.string	"twi_buffer"
.LASF3:
	.string	"uint16_t"
.LASF48:
	.string	"outputComparePin"
.LASF276:
	.string	"Timer0_"
.LASF203:
	.string	"resultBuffer"
.LASF219:
	.string	"bgx1_getVersion"
.LASF138:
	.string	"init_reset_condition"
.LASF329:
	.string	"PinB1"
.LASF330:
	.string	"PinB2"
.LASF240:
	.string	"PinB3"
.LASF242:
	.string	"PinB4"
.LASF331:
	.string	"PinB5"
.LASF245:
	.string	"PinB6"
.LASF247:
	.string	"PinB7"
.LASF157:
	.string	"enabled"
.LASF226:
	.string	"PinA0_"
.LASF68:
	.string	"targetDirection"
.LASF79:
	.string	"TWIBuffer"
.LASF189:
	.string	"bgx1_termPrint_base"
.LASF246:
	.string	"PinB7_"
.LASF289:
	.string	"Timer1B"
.LASF5:
	.string	"long int"
.LASF101:
	.string	"CMD_GetStatus"
.LASF292:
	.string	"Timer3A_"
.LASF121:
	.string	"CMD_SyncInterface"
.LASF76:
	.string	"TWIDevice"
.LASF81:
	.string	"TWI_Receive"
.LASF278:
	.string	"Timer1_"
.LASF160:
	.string	"wasRunning"
.LASF39:
	.string	"interruptMaskRegister"
.LASF328:
	.string	"PinB0"
.LASF10:
	.string	"FALSE"
.LASF332:
	.string	"PinC0"
.LASF333:
	.string	"PinC1"
.LASF253:
	.string	"PinC2"
.LASF255:
	.string	"PinC3"
.LASF257:
	.string	"PinC4"
.LASF259:
	.string	"PinC5"
.LASF334:
	.string	"PinC6"
.LASF335:
	.string	"PinC7"
.LASF267:
	.string	"PinD3_"
.LASF270:
	.string	"PinD5_"
.LASF198:
	.string	"bgx1_move"
.LASF71:
	.string	"adjustmentStep"
.LASF342:
	.string	"Timer2A"
.LASF133:
	.string	"twi_end"
.LASF89:
	.string	"TWI_Bus_Error"
.LASF252:
	.string	"PinC2_"
.LASF196:
	.string	"bgx1_fillAll"
.LASF200:
	.string	"bgx1_termClear"
.LASF294:
	.string	"Timer3B_"
.LASF170:
	.string	"init_twi_kernel_init"
.LASF347:
	.string	"C:\\\\Dev\\\\NIBObee\\\\NIBObee\\\\Kernel-Tank-MASTER\\\\Debug"
.LASF313:
	.string	"twi_address"
.LASF169:
	.string	"init_twi"
.LASF66:
	.string	"currentDirection"
.LASF105:
	.string	"CMD_FillAll"
.LASF86:
	.string	"TWIOperation"
.LASF209:
	.string	"bgx1_getAnalog"
.LASF73:
	.string	"SmoothMotor"
.LASF131:
	.string	"TANK_IO_readButtons"
.LASF7:
	.string	"long unsigned int"
.LASF75:
	.string	"address"
.LASF52:
	.string	"pwmTimer"
.LASF337:
	.string	"PinD1"
.LASF338:
	.string	"PinD2"
.LASF339:
	.string	"PinD3"
.LASF269:
	.string	"PinD4"
.LASF63:
	.string	"unused"
.LASF273:
	.string	"PinD6"
.LASF275:
	.string	"PinD7"
.LASF256:
	.string	"PinC4_"
.LASF14:
	.string	"port"
.LASF340:
	.string	"Timer0A"
.LASF191:
	.string	"bgx1_termScroll"
.LASF13:
	.string	"byte"
.LASF293:
	.string	"Timer3A"
.LASF82:
	.string	"TWI_Send"
.LASF254:
	.string	"PinC3_"
.LASF223:
	.string	"current_reset_status"
.LASF185:
	.string	"twiSend"
.LASF47:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF249:
	.string	"PortC"
.LASF195:
	.string	"bgx1_selectFont"
.LASF263:
	.string	"PortD"
.LASF58:
	.string	"PMotor2Pins"
.LASF216:
	.string	"bgx1_textWidth_base"
.LASF67:
	.string	"targetSpeed"
.LASF282:
	.string	"Timer3_"
.LASF95:
	.string	"TWI_Slave_TooMuchDataTransmitted"
.LASF16:
	.string	"PPort"
.LASF147:
	.string	"init_tank_motors_kernel_init"
.LASF152:
	.string	"__vector_32"
.LASF314:
	.string	"alreadyHandled"
.LASF151:
	.string	"getResetStatus"
.LASF46:
	.string	"outputCompareRegister"
.LASF104:
	.string	"CMD_Mode"
.LASF208:
	.string	"bgx1_syncInterface"
.LASF92:
	.string	"TWI_Arbitration_Lost"
.LASF306:
	.string	"bgx1"
.LASF107:
	.string	"CMD_TextWidth"
.LASF96:
	.string	"TWI_Slave_NotEnoughDataReceived"
.LASF227:
	.string	"PinA1_"
.LASF286:
	.string	"Timer1A_"
.LASF217:
	.string	"bgx1_print_base"
.LASF150:
	.string	"in_timer_tick"
.LASF130:
	.string	"SyncPortArgs"
.LASF0:
	.string	"signed char"
.LASF113:
	.string	"CMD_EmbeddedImage"
.LASF22:
	.string	"pwm_phase_correct_FF"
.LASF225:
	.string	"PortA"
.LASF175:
	.string	"twi_start_master_operation"
.LASF99:
	.string	"CMD_Reset"
.LASF159:
	.string	"timesPerSecond"
.LASF93:
	.string	"TWI_Master_TooMuchDataTransmitted"
.LASF172:
	.string	"current"
.LASF212:
	.string	"bgx1_drawBitmap_base"
.LASF287:
	.string	"Timer1A"
.LASF316:
	.string	"furtherOperations"
.LASF158:
	.string	"motor_smooth_set_call_frequency"
.LASF258:
	.string	"PinC5_"
.LASF112:
	.string	"CMD_Bitmap"
.LASF228:
	.string	"PinA2_"
.LASF123:
	.string	"CMD_INVALID"
.LASF348:
	.string	"Mutex__"
.LASF288:
	.string	"Timer1B_"
.LASF45:
	.string	"timer"
.LASF23:
	.string	"pwm_phase_correct"
.LASF176:
	.string	"__vector_26"
.LASF19:
	.string	"wgm_normal"
.LASF33:
	.string	"prescale_1024"
.LASF168:
	.string	"twi_unexpectedCondition"
.LASF297:
	.string	"LeftMotorBase"
.LASF271:
	.string	"PinD5"
.LASF174:
	.string	"twi_stop_or_next"
.LASF298:
	.string	"RightMotorBase_"
.LASF97:
	.string	"TWIError"
.global __do_copy_data
.global __do_clear_bss
