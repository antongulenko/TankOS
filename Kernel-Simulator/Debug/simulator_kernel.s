	.file	"simulator_kernel.c"
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
	.uleb128 0xb
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
	.uleb128 0x5
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
	.uleb128 0xc
	.uleb128 0x19
	.byte	0x1
	.uleb128 0x9
	.string	"_BASE_KERNEL_ "
	.byte	0x1
	.uleb128 0xd
	.string	"TWI_Slave "
	.byte	0x1
	.uleb128 0xe
	.string	"TWI_BIT_RATE_VALUE 17"
	.byte	0x1
	.uleb128 0xf
	.string	"TWI_PRESCALER_MASK 0"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x1a
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x2
	.string	"_TIMER_KERNEL_KERNEL_ "
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_M1284P_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.string	"TIMER_M1284P_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1f
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
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_M1284P_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.string	"_PORT_M1284P_KERNEL_ "
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0x9
	.string	"CLOCKISR TIMER3_COMPA_vect"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x9
	.string	"TIMED_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x9
	.string	"MILLISECOND_CLOCK_H_ "
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
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x24
	.byte	0x4
	.byte	0x1
	.uleb128 0x17
	.string	"INITIALIZE_SCHEDULER "
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x25
	.byte	0x1
	.uleb128 0x9
	.string	"KERNEL_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x9
	.string	"KERNEL_BASE_H_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x23
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x27
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x28
	.byte	0x1
	.uleb128 0x9
	.string	"SCHEDULER_H_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0xb
	.string	"DMS_API_H_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x9
	.string	"RR_API_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.section	.text.init_reset_condition,"ax",@progbits
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
.LFB4:
.LSM0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM1:
	in r24,84-32
	sts current_reset_status,r24
.LSM2:
	out 84-32,__zero_reg__
/* epilogue start */
.LSM3:
	ret
.LFE4:
	.size	init_reset_condition, .-init_reset_condition
	.section	.init8,"ax",@progbits
.global	init_reset_condition_kernel_init
	.type	init_reset_condition_kernel_init, @function
init_reset_condition_kernel_init:
.LFB5:
.LSM4:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM5:
	call init_reset_condition
/* epilogue start */
.LFE5:
	.size	init_reset_condition_kernel_init, .-init_reset_condition_kernel_init
	.section	.text.getResetStatus,"ax",@progbits
.global	getResetStatus
	.type	getResetStatus, @function
getResetStatus:
.LFB6:
.LSM6:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM7:
	lds r24,current_reset_status
/* epilogue start */
	ret
.LFE6:
	.size	getResetStatus, .-getResetStatus
	.section	.text.init_ports_m1284P,"ax",@progbits
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
.LFB7:
.LSM8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM9:
	ldi r26,lo8(PortA)
	ldi r27,hi8(PortA)
	ldi r30,lo8(C.12.2656)
	ldi r31,hi8(C.12.2656)
	ldi r24,lo8(6)
.L5:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L5
	ldi r26,lo8(PinA0)
	ldi r27,hi8(PinA0)
	ldi r30,lo8(C.13.2657)
	ldi r31,hi8(C.13.2657)
	ldi r24,lo8(3)
.L6:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L6
	ldi r26,lo8(PinA1)
	ldi r27,hi8(PinA1)
	ldi r30,lo8(C.14.2658)
	ldi r31,hi8(C.14.2658)
	ldi r24,lo8(3)
.L7:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L7
	ldi r26,lo8(PinA2)
	ldi r27,hi8(PinA2)
	ldi r30,lo8(C.15.2659)
	ldi r31,hi8(C.15.2659)
	ldi r24,lo8(3)
.L8:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L8
	ldi r26,lo8(PinA3)
	ldi r27,hi8(PinA3)
	ldi r30,lo8(C.16.2660)
	ldi r31,hi8(C.16.2660)
	ldi r24,lo8(3)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
	ldi r26,lo8(PinA4)
	ldi r27,hi8(PinA4)
	ldi r30,lo8(C.17.2661)
	ldi r31,hi8(C.17.2661)
	ldi r24,lo8(3)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
	ldi r26,lo8(PinA5)
	ldi r27,hi8(PinA5)
	ldi r30,lo8(C.18.2662)
	ldi r31,hi8(C.18.2662)
	ldi r24,lo8(3)
.L11:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L11
	ldi r26,lo8(PinA6)
	ldi r27,hi8(PinA6)
	ldi r30,lo8(C.19.2663)
	ldi r31,hi8(C.19.2663)
	ldi r24,lo8(3)
.L12:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L12
	ldi r26,lo8(PinA7)
	ldi r27,hi8(PinA7)
	ldi r30,lo8(C.20.2664)
	ldi r31,hi8(C.20.2664)
	ldi r24,lo8(3)
.L13:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L13
.LSM10:
	ldi r26,lo8(PortB)
	ldi r27,hi8(PortB)
	ldi r30,lo8(C.21.2665)
	ldi r31,hi8(C.21.2665)
	ldi r24,lo8(6)
.L14:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L14
	ldi r26,lo8(PinB0)
	ldi r27,hi8(PinB0)
	ldi r30,lo8(C.22.2666)
	ldi r31,hi8(C.22.2666)
	ldi r24,lo8(3)
.L15:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L15
	ldi r26,lo8(PinB1)
	ldi r27,hi8(PinB1)
	ldi r30,lo8(C.23.2667)
	ldi r31,hi8(C.23.2667)
	ldi r24,lo8(3)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r26,lo8(PinB2)
	ldi r27,hi8(PinB2)
	ldi r30,lo8(C.24.2668)
	ldi r31,hi8(C.24.2668)
	ldi r24,lo8(3)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r26,lo8(PinB3)
	ldi r27,hi8(PinB3)
	ldi r30,lo8(C.25.2669)
	ldi r31,hi8(C.25.2669)
	ldi r24,lo8(3)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	ldi r26,lo8(PinB4)
	ldi r27,hi8(PinB4)
	ldi r30,lo8(C.26.2670)
	ldi r31,hi8(C.26.2670)
	ldi r24,lo8(3)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
	ldi r26,lo8(PinB5)
	ldi r27,hi8(PinB5)
	ldi r30,lo8(C.27.2671)
	ldi r31,hi8(C.27.2671)
	ldi r24,lo8(3)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
	ldi r26,lo8(PinB6)
	ldi r27,hi8(PinB6)
	ldi r30,lo8(C.28.2672)
	ldi r31,hi8(C.28.2672)
	ldi r24,lo8(3)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
	ldi r26,lo8(PinB7)
	ldi r27,hi8(PinB7)
	ldi r30,lo8(C.29.2673)
	ldi r31,hi8(C.29.2673)
	ldi r24,lo8(3)
.L22:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L22
.LSM11:
	ldi r26,lo8(PortC)
	ldi r27,hi8(PortC)
	ldi r30,lo8(C.30.2674)
	ldi r31,hi8(C.30.2674)
	ldi r24,lo8(6)
.L23:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L23
	ldi r26,lo8(PinC0)
	ldi r27,hi8(PinC0)
	ldi r30,lo8(C.31.2675)
	ldi r31,hi8(C.31.2675)
	ldi r24,lo8(3)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
	ldi r26,lo8(PinC1)
	ldi r27,hi8(PinC1)
	ldi r30,lo8(C.32.2676)
	ldi r31,hi8(C.32.2676)
	ldi r24,lo8(3)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
	ldi r26,lo8(PinC2)
	ldi r27,hi8(PinC2)
	ldi r30,lo8(C.33.2677)
	ldi r31,hi8(C.33.2677)
	ldi r24,lo8(3)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
	ldi r26,lo8(PinC3)
	ldi r27,hi8(PinC3)
	ldi r30,lo8(C.34.2678)
	ldi r31,hi8(C.34.2678)
	ldi r24,lo8(3)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
	ldi r26,lo8(PinC4)
	ldi r27,hi8(PinC4)
	ldi r30,lo8(C.35.2679)
	ldi r31,hi8(C.35.2679)
	ldi r24,lo8(3)
.L28:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L28
	ldi r26,lo8(PinC5)
	ldi r27,hi8(PinC5)
	ldi r30,lo8(C.36.2680)
	ldi r31,hi8(C.36.2680)
	ldi r24,lo8(3)
.L29:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L29
	ldi r26,lo8(PinC6)
	ldi r27,hi8(PinC6)
	ldi r30,lo8(C.37.2681)
	ldi r31,hi8(C.37.2681)
	ldi r24,lo8(3)
.L30:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L30
	ldi r26,lo8(PinC7)
	ldi r27,hi8(PinC7)
	ldi r30,lo8(C.38.2682)
	ldi r31,hi8(C.38.2682)
	ldi r24,lo8(3)
.L31:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L31
.LSM12:
	ldi r26,lo8(PortD)
	ldi r27,hi8(PortD)
	ldi r30,lo8(C.39.2683)
	ldi r31,hi8(C.39.2683)
	ldi r24,lo8(6)
.L32:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L32
	ldi r26,lo8(PinD0)
	ldi r27,hi8(PinD0)
	ldi r30,lo8(C.40.2684)
	ldi r31,hi8(C.40.2684)
	ldi r24,lo8(3)
.L33:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L33
	ldi r26,lo8(PinD1)
	ldi r27,hi8(PinD1)
	ldi r30,lo8(C.41.2685)
	ldi r31,hi8(C.41.2685)
	ldi r24,lo8(3)
.L34:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L34
	ldi r26,lo8(PinD2)
	ldi r27,hi8(PinD2)
	ldi r30,lo8(C.42.2686)
	ldi r31,hi8(C.42.2686)
	ldi r24,lo8(3)
.L35:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L35
	ldi r26,lo8(PinD3)
	ldi r27,hi8(PinD3)
	ldi r30,lo8(C.43.2687)
	ldi r31,hi8(C.43.2687)
	ldi r24,lo8(3)
.L36:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L36
	ldi r26,lo8(PinD4)
	ldi r27,hi8(PinD4)
	ldi r30,lo8(C.44.2688)
	ldi r31,hi8(C.44.2688)
	ldi r24,lo8(3)
.L37:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L37
	ldi r26,lo8(PinD5)
	ldi r27,hi8(PinD5)
	ldi r30,lo8(C.45.2689)
	ldi r31,hi8(C.45.2689)
	ldi r24,lo8(3)
.L38:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L38
	ldi r26,lo8(PinD6)
	ldi r27,hi8(PinD6)
	ldi r30,lo8(C.46.2690)
	ldi r31,hi8(C.46.2690)
	ldi r24,lo8(3)
.L39:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L39
	ldi r26,lo8(PinD7)
	ldi r27,hi8(PinD7)
	ldi r30,lo8(C.47.2691)
	ldi r31,hi8(C.47.2691)
	ldi r24,lo8(3)
.L40:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L40
/* epilogue start */
.LSM13:
	ret
.LFE7:
	.size	init_ports_m1284P, .-init_ports_m1284P
	.section	.init8
.global	init_ports_m1284P_kernel_init
	.type	init_ports_m1284P_kernel_init, @function
init_ports_m1284P_kernel_init:
.LFB8:
.LSM14:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM15:
	call init_ports_m1284P
/* epilogue start */
.LFE8:
	.size	init_ports_m1284P_kernel_init, .-init_ports_m1284P_kernel_init
	.section	.text.init_timer_m1284P,"ax",@progbits
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
.LFB9:
.LSM16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM17:
	ldi r26,lo8(Timer0)
	ldi r27,hi8(Timer0)
	ldi r30,lo8(C.0.2644)
	ldi r31,hi8(C.0.2644)
	ldi r24,lo8(7)
.L79:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L79
.LSM18:
	ldi r26,lo8(Timer1)
	ldi r27,hi8(Timer1)
	ldi r30,lo8(C.1.2645)
	ldi r31,hi8(C.1.2645)
	ldi r24,lo8(7)
.L80:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L80
.LSM19:
	ldi r26,lo8(Timer2)
	ldi r27,hi8(Timer2)
	ldi r30,lo8(C.2.2646)
	ldi r31,hi8(C.2.2646)
	ldi r24,lo8(7)
.L81:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L81
.LSM20:
	ldi r26,lo8(Timer3)
	ldi r27,hi8(Timer3)
	ldi r30,lo8(C.3.2647)
	ldi r31,hi8(C.3.2647)
	ldi r24,lo8(7)
.L82:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L82
.LSM21:
	ldi r26,lo8(Timer0A)
	ldi r27,hi8(Timer0A)
	ldi r30,lo8(C.4.2648)
	ldi r31,hi8(C.4.2648)
	ldi r24,lo8(8)
.L83:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L83
.LSM22:
	ldi r26,lo8(Timer0B)
	ldi r27,hi8(Timer0B)
	ldi r30,lo8(C.5.2649)
	ldi r31,hi8(C.5.2649)
	ldi r24,lo8(8)
.L84:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L84
.LSM23:
	ldi r26,lo8(Timer1A)
	ldi r27,hi8(Timer1A)
	ldi r30,lo8(C.6.2650)
	ldi r31,hi8(C.6.2650)
	ldi r24,lo8(8)
.L85:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L85
.LSM24:
	ldi r26,lo8(Timer1B)
	ldi r27,hi8(Timer1B)
	ldi r30,lo8(C.7.2651)
	ldi r31,hi8(C.7.2651)
	ldi r24,lo8(8)
.L86:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L86
.LSM25:
	ldi r26,lo8(Timer2A)
	ldi r27,hi8(Timer2A)
	ldi r30,lo8(C.8.2652)
	ldi r31,hi8(C.8.2652)
	ldi r24,lo8(8)
.L87:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L87
.LSM26:
	ldi r26,lo8(Timer2B)
	ldi r27,hi8(Timer2B)
	ldi r30,lo8(C.9.2653)
	ldi r31,hi8(C.9.2653)
	ldi r24,lo8(8)
.L88:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L88
.LSM27:
	ldi r26,lo8(Timer3A)
	ldi r27,hi8(Timer3A)
	ldi r30,lo8(C.10.2654)
	ldi r31,hi8(C.10.2654)
	ldi r24,lo8(8)
.L89:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L89
.LSM28:
	ldi r26,lo8(Timer3B)
	ldi r27,hi8(Timer3B)
	ldi r30,lo8(C.11.2655)
	ldi r31,hi8(C.11.2655)
	ldi r24,lo8(8)
.L90:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L90
/* epilogue start */
.LSM29:
	ret
.LFE9:
	.size	init_timer_m1284P, .-init_timer_m1284P
	.section	.init8
.global	init_timer_m1284P_kernel_init
	.type	init_timer_m1284P_kernel_init, @function
init_timer_m1284P_kernel_init:
.LFB10:
.LSM30:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM31:
	call init_timer_m1284P
/* epilogue start */
.LFE10:
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.section	.text.init_timer,"ax",@progbits
.global	init_timer
	.type	init_timer, @function
init_timer:
.LFB11:
.LSM32:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL0:
.LSM33:
	ldi r28,lo8(Timer3)
	ldi r29,hi8(Timer3)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
.LSM34:
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
.LSM35:
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
/* epilogue start */
.LSM36:
	pop r29
	pop r28
	ret
.LFE11:
	.size	init_timer, .-init_timer
	.section	.init8
.global	init_timer_kernel_init
	.type	init_timer_kernel_init, @function
init_timer_kernel_init:
.LFB12:
.LSM37:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM38:
	call init_timer
/* epilogue start */
.LFE12:
	.size	init_timer_kernel_init, .-init_timer_kernel_init
	.section	.text.start_timer,"ax",@progbits
.global	start_timer
	.type	start_timer, @function
start_timer:
.LFB13:
.LSM39:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM40:
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	call enableTimerInterrupt
.LSM41:
/* #APP */
 ;  25 ".././shared/timer.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LSM42:
/* #NOAPP */
	ret
.LFE13:
	.size	start_timer, .-start_timer
	.section	.text.in_timer_tick,"ax",@progbits
	.weak	in_timer_tick
	.type	in_timer_tick, @function
in_timer_tick:
.LFB14:
.LSM43:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LSM44:
	ret
.LFE14:
	.size	in_timer_tick, .-in_timer_tick
	.section	.text.before_timer,"ax",@progbits
	.weak	before_timer
	.type	before_timer, @function
before_timer:
.LFB15:
.LSM45:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LSM46:
	ret
.LFE15:
	.size	before_timer, .-before_timer
	.section	.text.init_kernel,"ax",@progbits
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
.LFB16:
.LSM47:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM48:
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
.LSM49:
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
.LSM50:
	ldi r30,lo8(96)
	ldi r31,hi8(96)
	ldi r24,lo8(16)
	st Z,r24
.LSM51:
	ld r24,Z
	ori r24,lo8(5)
	st Z,r24
.LSM52:
	call before_timer
.LSM53:
	call start_timer
/* epilogue start */
.LSM54:
	ret
.LFE16:
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
.LFB17:
.LSM55:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM56:
	call init_kernel
/* epilogue start */
.LFE17:
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
.global	AllLeds
.global	AllLeds
	.type	AllLeds, @object
	.size	AllLeds, 3
AllLeds:
	.skip 3,0
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
	.data
	.type	C.11.2655, @object
	.size	C.11.2655, 8
C.11.2655:
	.word	Timer3
	.word	154
	.word	1
	.word	PinB7
	.type	C.10.2654, @object
	.size	C.10.2654, 8
C.10.2654:
	.word	Timer3
	.word	152
	.word	0
	.word	PinB6
	.type	C.9.2653, @object
	.size	C.9.2653, 8
C.9.2653:
	.word	Timer2
	.word	180
	.word	1
	.word	PinD6
	.type	C.8.2652, @object
	.size	C.8.2652, 8
C.8.2652:
	.word	Timer2
	.word	179
	.word	0
	.word	PinD7
	.type	C.7.2651, @object
	.size	C.7.2651, 8
C.7.2651:
	.word	Timer1
	.word	138
	.word	1
	.word	PinD4
	.type	C.6.2650, @object
	.size	C.6.2650, 8
C.6.2650:
	.word	Timer1
	.word	136
	.word	0
	.word	PinD5
	.type	C.5.2649, @object
	.size	C.5.2649, 8
C.5.2649:
	.word	Timer0
	.word	72
	.word	1
	.word	PinB4
	.type	C.4.2648, @object
	.size	C.4.2648, 8
C.4.2648:
	.word	Timer0
	.word	71
	.word	0
	.word	PinB3
	.type	C.3.2647, @object
	.size	C.3.2647, 7
C.3.2647:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.2.2646, @object
	.size	C.2.2646, 7
C.2.2646:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.1.2645, @object
	.size	C.1.2645, 7
C.1.2645:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.0.2644, @object
	.size	C.0.2644, 7
C.0.2644:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.47.2691, @object
	.size	C.47.2691, 3
C.47.2691:
	.word	PortD
	.byte	-128
	.type	C.46.2690, @object
	.size	C.46.2690, 3
C.46.2690:
	.word	PortD
	.byte	64
	.type	C.45.2689, @object
	.size	C.45.2689, 3
C.45.2689:
	.word	PortD
	.byte	32
	.type	C.44.2688, @object
	.size	C.44.2688, 3
C.44.2688:
	.word	PortD
	.byte	16
	.type	C.43.2687, @object
	.size	C.43.2687, 3
C.43.2687:
	.word	PortD
	.byte	8
	.type	C.42.2686, @object
	.size	C.42.2686, 3
C.42.2686:
	.word	PortD
	.byte	4
	.type	C.41.2685, @object
	.size	C.41.2685, 3
C.41.2685:
	.word	PortD
	.byte	2
	.type	C.40.2684, @object
	.size	C.40.2684, 3
C.40.2684:
	.word	PortD
	.byte	1
	.type	C.39.2683, @object
	.size	C.39.2683, 6
C.39.2683:
	.word	43
	.word	41
	.word	42
	.type	C.38.2682, @object
	.size	C.38.2682, 3
C.38.2682:
	.word	PortC
	.byte	-128
	.type	C.37.2681, @object
	.size	C.37.2681, 3
C.37.2681:
	.word	PortC
	.byte	64
	.type	C.36.2680, @object
	.size	C.36.2680, 3
C.36.2680:
	.word	PortC
	.byte	32
	.type	C.35.2679, @object
	.size	C.35.2679, 3
C.35.2679:
	.word	PortC
	.byte	16
	.type	C.34.2678, @object
	.size	C.34.2678, 3
C.34.2678:
	.word	PortC
	.byte	8
	.type	C.33.2677, @object
	.size	C.33.2677, 3
C.33.2677:
	.word	PortC
	.byte	4
	.type	C.32.2676, @object
	.size	C.32.2676, 3
C.32.2676:
	.word	PortC
	.byte	2
	.type	C.31.2675, @object
	.size	C.31.2675, 3
C.31.2675:
	.word	PortC
	.byte	1
	.type	C.30.2674, @object
	.size	C.30.2674, 6
C.30.2674:
	.word	40
	.word	38
	.word	39
	.type	C.29.2673, @object
	.size	C.29.2673, 3
C.29.2673:
	.word	PortB
	.byte	-128
	.type	C.28.2672, @object
	.size	C.28.2672, 3
C.28.2672:
	.word	PortB
	.byte	64
	.type	C.27.2671, @object
	.size	C.27.2671, 3
C.27.2671:
	.word	PortB
	.byte	32
	.type	C.26.2670, @object
	.size	C.26.2670, 3
C.26.2670:
	.word	PortB
	.byte	16
	.type	C.25.2669, @object
	.size	C.25.2669, 3
C.25.2669:
	.word	PortB
	.byte	8
	.type	C.24.2668, @object
	.size	C.24.2668, 3
C.24.2668:
	.word	PortB
	.byte	4
	.type	C.23.2667, @object
	.size	C.23.2667, 3
C.23.2667:
	.word	PortB
	.byte	2
	.type	C.22.2666, @object
	.size	C.22.2666, 3
C.22.2666:
	.word	PortB
	.byte	1
	.type	C.21.2665, @object
	.size	C.21.2665, 6
C.21.2665:
	.word	37
	.word	35
	.word	36
	.type	C.20.2664, @object
	.size	C.20.2664, 3
C.20.2664:
	.word	PortA
	.byte	-128
	.type	C.19.2663, @object
	.size	C.19.2663, 3
C.19.2663:
	.word	PortA
	.byte	64
	.type	C.18.2662, @object
	.size	C.18.2662, 3
C.18.2662:
	.word	PortA
	.byte	32
	.type	C.17.2661, @object
	.size	C.17.2661, 3
C.17.2661:
	.word	PortA
	.byte	16
	.type	C.16.2660, @object
	.size	C.16.2660, 3
C.16.2660:
	.word	PortA
	.byte	8
	.type	C.15.2659, @object
	.size	C.15.2659, 3
C.15.2659:
	.word	PortA
	.byte	4
	.type	C.14.2658, @object
	.size	C.14.2658, 3
C.14.2658:
	.word	PortA
	.byte	2
	.type	C.13.2657, @object
	.size	C.13.2657, 3
C.13.2657:
	.word	PortA
	.byte	1
	.type	C.12.2656, @object
	.size	C.12.2656, 6
C.12.2656:
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
	.long	.LFB4
	.long	.LFE4-.LFB4
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB5
	.long	.LFE5-.LFB5
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB6
	.long	.LFE6-.LFB6
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE10:
.LSFDE12:
	.long	.LEFDE12-.LASFDE12
.LASFDE12:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.p2align	2
.LEFDE12:
.LSFDE14:
	.long	.LEFDE14-.LASFDE14
.LASFDE14:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.p2align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.p2align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.p2align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.p2align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.p2align	2
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.p2align	2
.LEFDE26:
	.text
.Letext0:
	.section	.debug_info
	.long	0xa43
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF119
	.byte	0x1
	.long	.LASF120
	.long	.LASF121
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
	.byte	0x6
	.byte	0x17
	.byte	0xd
	.long	0xb9
	.uleb128 0x6
	.long	.LASF10
	.byte	0x17
	.byte	0xe
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x7
	.string	"pin"
	.byte	0x17
	.byte	0xf
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"ddr"
	.byte	0x17
	.byte	0x10
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.long	0xbf
	.uleb128 0x9
	.long	0x34
	.uleb128 0x3
	.long	.LASF11
	.byte	0x17
	.byte	0x11
	.long	0x86
	.uleb128 0x3
	.long	.LASF12
	.byte	0x17
	.byte	0x11
	.long	0xda
	.uleb128 0x8
	.byte	0x2
	.long	0x86
	.uleb128 0x5
	.byte	0x3
	.byte	0x17
	.byte	0x13
	.long	0x105
	.uleb128 0x6
	.long	.LASF10
	.byte	0x17
	.byte	0x14
	.long	0xcf
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x17
	.byte	0x15
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.string	"Pin"
	.byte	0x17
	.byte	0x16
	.long	0xe0
	.uleb128 0x3
	.long	.LASF14
	.byte	0x17
	.byte	0x16
	.long	0x11b
	.uleb128 0x8
	.byte	0x2
	.long	0xe0
	.uleb128 0x5
	.byte	0x2
	.byte	0x16
	.byte	0xe
	.long	0x138
	.uleb128 0x7
	.string	"pin"
	.byte	0x16
	.byte	0xf
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF15
	.byte	0x16
	.byte	0x10
	.long	0x143
	.uleb128 0x8
	.byte	0x2
	.long	0x121
	.uleb128 0x5
	.byte	0x3
	.byte	0x16
	.byte	0x12
	.long	0x16e
	.uleb128 0x6
	.long	.LASF16
	.byte	0x16
	.byte	0x13
	.long	0x16e
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF17
	.byte	0x16
	.byte	0x14
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x8
	.byte	0x2
	.long	0x138
	.uleb128 0x3
	.long	.LASF18
	.byte	0x16
	.byte	0x15
	.long	0x149
	.uleb128 0xb
	.byte	0x2
	.byte	0x1f
	.byte	0x13
	.long	0x1ca
	.uleb128 0xc
	.long	.LASF19
	.sleb128 0
	.uleb128 0xc
	.long	.LASF20
	.sleb128 1
	.uleb128 0xc
	.long	.LASF21
	.sleb128 2
	.uleb128 0xc
	.long	.LASF22
	.sleb128 3
	.uleb128 0xc
	.long	.LASF23
	.sleb128 4
	.uleb128 0xc
	.long	.LASF24
	.sleb128 5
	.uleb128 0xc
	.long	.LASF25
	.sleb128 6
	.uleb128 0xc
	.long	.LASF26
	.sleb128 7
	.uleb128 0xc
	.long	.LASF27
	.sleb128 8
	.uleb128 0xc
	.long	.LASF28
	.sleb128 9
	.uleb128 0xc
	.long	.LASF29
	.sleb128 10
	.byte	0x0
	.uleb128 0xb
	.byte	0x2
	.byte	0x1f
	.byte	0x2f
	.long	0x20f
	.uleb128 0xc
	.long	.LASF30
	.sleb128 0
	.uleb128 0xc
	.long	.LASF31
	.sleb128 1
	.uleb128 0xc
	.long	.LASF32
	.sleb128 2
	.uleb128 0xc
	.long	.LASF33
	.sleb128 3
	.uleb128 0xc
	.long	.LASF34
	.sleb128 4
	.uleb128 0xc
	.long	.LASF35
	.sleb128 5
	.uleb128 0xc
	.long	.LASF36
	.sleb128 6
	.uleb128 0xc
	.long	.LASF37
	.sleb128 7
	.uleb128 0xc
	.long	.LASF38
	.sleb128 8
	.uleb128 0xc
	.long	.LASF39
	.sleb128 9
	.byte	0x0
	.uleb128 0x5
	.byte	0x7
	.byte	0x1f
	.byte	0x40
	.long	0x250
	.uleb128 0x6
	.long	.LASF40
	.byte	0x1f
	.byte	0x41
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF41
	.byte	0x1f
	.byte	0x42
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x6
	.long	.LASF42
	.byte	0x1f
	.byte	0x43
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x6
	.long	.LASF43
	.byte	0x1f
	.byte	0x44
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF44
	.byte	0x1f
	.byte	0x45
	.long	0x20f
	.uleb128 0x3
	.long	.LASF45
	.byte	0x1f
	.byte	0x45
	.long	0x266
	.uleb128 0x8
	.byte	0x2
	.long	0x20f
	.uleb128 0xb
	.byte	0x2
	.byte	0x1f
	.byte	0x47
	.long	0x281
	.uleb128 0xc
	.long	.LASF46
	.sleb128 0
	.uleb128 0xc
	.long	.LASF47
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF48
	.byte	0x1f
	.byte	0x4a
	.long	0x26c
	.uleb128 0x5
	.byte	0x8
	.byte	0x1f
	.byte	0x4c
	.long	0x2cd
	.uleb128 0x6
	.long	.LASF49
	.byte	0x1f
	.byte	0x4d
	.long	0x25b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x6
	.long	.LASF50
	.byte	0x1f
	.byte	0x4e
	.long	0xb9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.long	.LASF51
	.byte	0x1f
	.byte	0x4f
	.long	0x281
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.long	.LASF52
	.byte	0x1f
	.byte	0x50
	.long	0x110
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x1f
	.byte	0x51
	.long	0x28c
	.uleb128 0x3
	.long	.LASF54
	.byte	0x1f
	.byte	0x51
	.long	0x2e3
	.uleb128 0x8
	.byte	0x2
	.long	0x28c
	.uleb128 0xd
	.byte	0x1
	.long	.LASF55
	.byte	0x2
	.byte	0x9
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF56
	.byte	0x2
	.byte	0x10
	.long	.LFB5
	.long	.LFE5
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xe
	.byte	0x1
	.long	.LASF122
	.byte	0x2
	.byte	0x12
	.long	0x34
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF57
	.byte	0x21
	.byte	0xe
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF58
	.byte	0x21
	.byte	0x14
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF59
	.byte	0x1c
	.byte	0xf
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF60
	.byte	0x1c
	.byte	0x1e
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xf
	.byte	0x1
	.long	.LASF123
	.byte	0x1b
	.byte	0xb
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x3b6
	.uleb128 0x10
	.long	.LASF61
	.byte	0x1b
	.byte	0xc
	.long	0x25b
	.byte	0x6
	.byte	0x3
	.long	Timer3
	.byte	0x9f
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1b
	.byte	0xd
	.long	0x2d8
	.byte	0x6
	.byte	0x3
	.long	Timer3A
	.byte	0x9f
	.byte	0x0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF62
	.byte	0x1b
	.byte	0x14
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF63
	.byte	0x1b
	.byte	0x16
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF64
	.byte	0x22
	.byte	0x1d
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF65
	.byte	0x19
	.byte	0x20
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF66
	.byte	0x19
	.byte	0x26
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF67
	.byte	0x19
	.byte	0x3e
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x11
	.long	.LASF68
	.byte	0x2
	.byte	0x7
	.long	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF69
	.byte	0x20
	.byte	0xd
	.long	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF70
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF71
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF72
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF73
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF74
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF76
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF77
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF78
	.byte	0x20
	.byte	0xe
	.long	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF79
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF80
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF81
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF82
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF83
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF84
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF85
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF86
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF87
	.byte	0x20
	.byte	0xf
	.long	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF88
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF89
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF90
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF91
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF92
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF93
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF94
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF95
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF96
	.byte	0x20
	.byte	0x10
	.long	0xc4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF97
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF98
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF99
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF100
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF101
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF102
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF103
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF104
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF105
	.byte	0x1e
	.byte	0xe
	.long	0x250
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF106
	.byte	0x1e
	.byte	0xf
	.long	0x250
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF107
	.byte	0x1e
	.byte	0x10
	.long	0x250
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF108
	.byte	0x1e
	.byte	0x11
	.long	0x250
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF109
	.byte	0x1e
	.byte	0x13
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF110
	.byte	0x1e
	.byte	0x14
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF111
	.byte	0x1e
	.byte	0x15
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF112
	.byte	0x1e
	.byte	0x16
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF113
	.byte	0x1e
	.byte	0x17
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF114
	.byte	0x1e
	.byte	0x18
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF115
	.byte	0x1e
	.byte	0x19
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF116
	.byte	0x1e
	.byte	0x1a
	.long	0x2cd
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.long	.LASF68
	.byte	0x2
	.byte	0x7
	.long	0x34
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_reset_status
	.uleb128 0x12
	.long	.LASF69
	.byte	0x20
	.byte	0xd
	.long	0xc4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA
	.uleb128 0x12
	.long	.LASF70
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0
	.uleb128 0x12
	.long	.LASF71
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1
	.uleb128 0x12
	.long	.LASF72
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2
	.uleb128 0x12
	.long	.LASF73
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3
	.uleb128 0x12
	.long	.LASF74
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4
	.uleb128 0x12
	.long	.LASF75
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5
	.uleb128 0x12
	.long	.LASF76
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6
	.uleb128 0x12
	.long	.LASF77
	.byte	0x20
	.byte	0xd
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7
	.uleb128 0x12
	.long	.LASF78
	.byte	0x20
	.byte	0xe
	.long	0xc4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB
	.uleb128 0x12
	.long	.LASF79
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0
	.uleb128 0x12
	.long	.LASF80
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1
	.uleb128 0x12
	.long	.LASF81
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2
	.uleb128 0x12
	.long	.LASF82
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3
	.uleb128 0x12
	.long	.LASF83
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4
	.uleb128 0x12
	.long	.LASF84
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5
	.uleb128 0x12
	.long	.LASF85
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6
	.uleb128 0x12
	.long	.LASF86
	.byte	0x20
	.byte	0xe
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7
	.uleb128 0x12
	.long	.LASF87
	.byte	0x20
	.byte	0xf
	.long	0xc4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC
	.uleb128 0x12
	.long	.LASF88
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0
	.uleb128 0x12
	.long	.LASF89
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1
	.uleb128 0x12
	.long	.LASF90
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2
	.uleb128 0x12
	.long	.LASF91
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3
	.uleb128 0x12
	.long	.LASF92
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4
	.uleb128 0x12
	.long	.LASF93
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5
	.uleb128 0x12
	.long	.LASF94
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6
	.uleb128 0x12
	.long	.LASF95
	.byte	0x20
	.byte	0xf
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7
	.uleb128 0x12
	.long	.LASF96
	.byte	0x20
	.byte	0x10
	.long	0xc4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD
	.uleb128 0x12
	.long	.LASF97
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0
	.uleb128 0x12
	.long	.LASF98
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1
	.uleb128 0x12
	.long	.LASF99
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2
	.uleb128 0x12
	.long	.LASF100
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3
	.uleb128 0x12
	.long	.LASF101
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4
	.uleb128 0x12
	.long	.LASF102
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5
	.uleb128 0x12
	.long	.LASF103
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6
	.uleb128 0x12
	.long	.LASF104
	.byte	0x20
	.byte	0x10
	.long	0x105
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7
	.uleb128 0x12
	.long	.LASF105
	.byte	0x1e
	.byte	0xe
	.long	0x250
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0
	.uleb128 0x12
	.long	.LASF106
	.byte	0x1e
	.byte	0xf
	.long	0x250
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1
	.uleb128 0x12
	.long	.LASF107
	.byte	0x1e
	.byte	0x10
	.long	0x250
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2
	.uleb128 0x12
	.long	.LASF108
	.byte	0x1e
	.byte	0x11
	.long	0x250
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3
	.uleb128 0x12
	.long	.LASF109
	.byte	0x1e
	.byte	0x13
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A
	.uleb128 0x12
	.long	.LASF110
	.byte	0x1e
	.byte	0x14
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B
	.uleb128 0x12
	.long	.LASF111
	.byte	0x1e
	.byte	0x15
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A
	.uleb128 0x12
	.long	.LASF112
	.byte	0x1e
	.byte	0x16
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B
	.uleb128 0x12
	.long	.LASF113
	.byte	0x1e
	.byte	0x17
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A
	.uleb128 0x12
	.long	.LASF114
	.byte	0x1e
	.byte	0x18
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B
	.uleb128 0x12
	.long	.LASF115
	.byte	0x1e
	.byte	0x19
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A
	.uleb128 0x12
	.long	.LASF116
	.byte	0x1e
	.byte	0x1a
	.long	0x2cd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B
	.uleb128 0x12
	.long	.LASF117
	.byte	0x23
	.byte	0xf
	.long	0xa2f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	milliseconds_running
	.uleb128 0x9
	.long	0x66
	.uleb128 0x12
	.long	.LASF118
	.byte	0x1
	.byte	0xf
	.long	0x174
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	AllLeds
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.long	0x38a
	.word	0x2
	.long	.Ldebug_info0
	.long	0xa47
	.long	0x2e9
	.string	"init_reset_condition"
	.long	0x2fd
	.string	"init_reset_condition_kernel_init"
	.long	0x311
	.string	"getResetStatus"
	.long	0x329
	.string	"init_ports_m1284P"
	.long	0x33d
	.string	"init_ports_m1284P_kernel_init"
	.long	0x351
	.string	"init_timer_m1284P"
	.long	0x365
	.string	"init_timer_m1284P_kernel_init"
	.long	0x379
	.string	"init_timer"
	.long	0x3b6
	.string	"init_timer_kernel_init"
	.long	0x3ca
	.string	"start_timer"
	.long	0x3de
	.string	"in_timer_tick"
	.long	0x3f2
	.string	"before_timer"
	.long	0x406
	.string	"init_kernel"
	.long	0x41a
	.string	"init_kernel_kernel_init"
	.long	0x6ab
	.string	"current_reset_status"
	.long	0x6bd
	.string	"PortA"
	.long	0x6cf
	.string	"PinA0"
	.long	0x6e1
	.string	"PinA1"
	.long	0x6f3
	.string	"PinA2"
	.long	0x705
	.string	"PinA3"
	.long	0x717
	.string	"PinA4"
	.long	0x729
	.string	"PinA5"
	.long	0x73b
	.string	"PinA6"
	.long	0x74d
	.string	"PinA7"
	.long	0x75f
	.string	"PortB"
	.long	0x771
	.string	"PinB0"
	.long	0x783
	.string	"PinB1"
	.long	0x795
	.string	"PinB2"
	.long	0x7a7
	.string	"PinB3"
	.long	0x7b9
	.string	"PinB4"
	.long	0x7cb
	.string	"PinB5"
	.long	0x7dd
	.string	"PinB6"
	.long	0x7ef
	.string	"PinB7"
	.long	0x801
	.string	"PortC"
	.long	0x813
	.string	"PinC0"
	.long	0x825
	.string	"PinC1"
	.long	0x837
	.string	"PinC2"
	.long	0x849
	.string	"PinC3"
	.long	0x85b
	.string	"PinC4"
	.long	0x86d
	.string	"PinC5"
	.long	0x87f
	.string	"PinC6"
	.long	0x891
	.string	"PinC7"
	.long	0x8a3
	.string	"PortD"
	.long	0x8b5
	.string	"PinD0"
	.long	0x8c7
	.string	"PinD1"
	.long	0x8d9
	.string	"PinD2"
	.long	0x8eb
	.string	"PinD3"
	.long	0x8fd
	.string	"PinD4"
	.long	0x90f
	.string	"PinD5"
	.long	0x921
	.string	"PinD6"
	.long	0x933
	.string	"PinD7"
	.long	0x945
	.string	"Timer0"
	.long	0x957
	.string	"Timer1"
	.long	0x969
	.string	"Timer2"
	.long	0x97b
	.string	"Timer3"
	.long	0x98d
	.string	"Timer0A"
	.long	0x99f
	.string	"Timer0B"
	.long	0x9b1
	.string	"Timer1A"
	.long	0x9c3
	.string	"Timer1B"
	.long	0x9d5
	.string	"Timer2A"
	.long	0x9e7
	.string	"Timer2B"
	.long	0x9f9
	.string	"Timer3A"
	.long	0xa0b
	.string	"Timer3B"
	.long	0xa1d
	.string	"milliseconds_running"
	.long	0xa34
	.string	"AllLeds"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0xb3
	.word	0x2
	.long	.Ldebug_info0
	.long	0xa47
	.long	0x34
	.string	"uint8_t"
	.long	0x4d
	.string	"uint16_t"
	.long	0x66
	.string	"uint32_t"
	.long	0xc4
	.string	"Port"
	.long	0xcf
	.string	"PPort"
	.long	0x105
	.string	"Pin"
	.long	0x110
	.string	"PPin"
	.long	0x138
	.string	"PLed"
	.long	0x174
	.string	"LedGroup"
	.long	0x250
	.string	"TimerConfig"
	.long	0x25b
	.string	"PTimerConfig"
	.long	0x281
	.string	"TIMER_TYPE"
	.long	0x2cd
	.string	"Timer"
	.long	0x2d8
	.string	"PTimer"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x84
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.word	0x0
	.word	0x0
	.long	.LFB4
	.long	.LFE4-.LFB4
	.long	.LFB5
	.long	.LFE5-.LFB5
	.long	.LFB6
	.long	.LFE6-.LFB6
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB8
	.long	.LFE8-.LFB8
	.long	.LFB9
	.long	.LFE9-.LFB9
	.long	.LFB10
	.long	.LFE10-.LFB10
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB4
	.long	.LFE4
	.long	.LFB5
	.long	.LFE5
	.long	.LFB6
	.long	.LFE6
	.long	.LFB7
	.long	.LFE7
	.long	.LFB8
	.long	.LFE8
	.long	.LFB9
	.long	.LFE9
	.long	.LFB10
	.long	.LFE10
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
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
	.ascii	"..\\..\\AntonAvrLib/kernel/devices"
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/devices/../.."
	.byte	0
	.ascii	"..\\..\\AntonAvrLib/kernel/processes"
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
	.string	"simulator_kernel.c"
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
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"port.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"../../anton_std.h"
	.uleb128 0x8
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
	.string	"timer.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_m1284P.kernel.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel_init.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_m1284P.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.kernel.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"timer_base.kernel.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"millisecond_clock.h"
	.uleb128 0x6
	.uleb128 0x0
	.uleb128 0x0
	.string	"simple_timer.kernel.h"
	.uleb128 0x6
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
	.string	"anton_std.h"
	.uleb128 0x5
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"process_ext.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"process.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../../anton_std.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/dms_api.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/../process.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"RoundRobin/rr_api.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"RoundRobin/../process.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
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
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM1
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM3
	.byte	0x15
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
	.uleb128 0x2
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
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
	.long	.LSM6
	.byte	0x4
	.uleb128 0x2
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x16
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
	.long	.LSM8
	.byte	0x4
	.uleb128 0x21
	.byte	0x21
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
	.long	.LSM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE7
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x4
	.uleb128 0x21
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
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
	.long	.LSM16
	.byte	0x4
	.uleb128 0x1c
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM19
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM21
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM22
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM23
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM24
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM25
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM26
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM27
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM28
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM29
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE9
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM30
	.byte	0x4
	.uleb128 0x1c
	.byte	0x31
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM31
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
	.long	.LSM32
	.byte	0x4
	.uleb128 0x1b
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM33
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM34
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM35
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM36
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE11
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM37
	.byte	0x4
	.uleb128 0x1b
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM38
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE12
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM39
	.byte	0x4
	.uleb128 0x1b
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM40
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM42
	.byte	0x15
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
	.long	.LSM43
	.byte	0x4
	.uleb128 0x22
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM44
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
	.long	.LSM45
	.byte	0x4
	.uleb128 0x19
	.byte	0x33
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM46
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE15
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM47
	.byte	0x4
	.uleb128 0x19
	.byte	0x39
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM48
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM49
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM50
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM51
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM52
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM53
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE16
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM55
	.byte	0x4
	.uleb128 0x19
	.byte	0x51
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM56
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE17
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_macinfo
	.byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"count"
.LASF46:
	.string	"TIMER_A"
.LASF47:
	.string	"TIMER_B"
.LASF117:
	.string	"milliseconds_running"
.LASF105:
	.string	"Timer0"
.LASF106:
	.string	"Timer1"
.LASF107:
	.string	"Timer2"
.LASF33:
	.string	"prescale_32"
.LASF57:
	.string	"init_ports_m1284P"
.LASF79:
	.string	"PinB0"
.LASF80:
	.string	"PinB1"
.LASF81:
	.string	"PinB2"
.LASF82:
	.string	"PinB3"
.LASF83:
	.string	"PinB4"
.LASF51:
	.string	"type"
.LASF85:
	.string	"PinB6"
.LASF86:
	.string	"PinB7"
.LASF12:
	.string	"PPort"
.LASF9:
	.string	"long long unsigned int"
.LASF66:
	.string	"init_kernel"
.LASF62:
	.string	"init_timer_kernel_init"
.LASF90:
	.string	"PinC2"
.LASF92:
	.string	"PinC4"
.LASF19:
	.string	"wgm_normal"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF50:
	.string	"outputCompareRegister"
.LASF88:
	.string	"PinC0"
.LASF89:
	.string	"PinC1"
.LASF5:
	.string	"long int"
.LASF91:
	.string	"PinC3"
.LASF37:
	.string	"prescale_1024"
.LASF93:
	.string	"PinC5"
.LASF94:
	.string	"PinC6"
.LASF95:
	.string	"PinC7"
.LASF122:
	.string	"getResetStatus"
.LASF67:
	.string	"init_kernel_kernel_init"
.LASF65:
	.string	"before_timer"
.LASF3:
	.string	"uint16_t"
.LASF14:
	.string	"PPin"
.LASF59:
	.string	"init_timer_m1284P"
.LASF38:
	.string	"external_falling_edge"
.LASF27:
	.string	"pwm_fast_9bit"
.LASF13:
	.string	"mask"
.LASF69:
	.string	"PortA"
.LASF78:
	.string	"PortB"
.LASF87:
	.string	"PortC"
.LASF96:
	.string	"PortD"
.LASF10:
	.string	"port"
.LASF97:
	.string	"PinD0"
.LASF98:
	.string	"PinD1"
.LASF4:
	.string	"unsigned int"
.LASF100:
	.string	"PinD3"
.LASF101:
	.string	"PinD4"
.LASF102:
	.string	"PinD5"
.LASF103:
	.string	"PinD6"
.LASF104:
	.string	"PinD7"
.LASF44:
	.string	"TimerConfig"
.LASF7:
	.string	"long unsigned int"
.LASF24:
	.string	"pwm_fast"
.LASF39:
	.string	"external_rising_edge"
.LASF123:
	.string	"init_timer"
.LASF99:
	.string	"PinD2"
.LASF45:
	.string	"PTimerConfig"
.LASF15:
	.string	"PLed"
.LASF35:
	.string	"prescale_128"
.LASF34:
	.string	"prescale_64"
.LASF54:
	.string	"PTimer"
.LASF31:
	.string	"prescale_1"
.LASF32:
	.string	"prescale_8"
.LASF108:
	.string	"Timer3"
.LASF61:
	.string	"timerConf"
.LASF111:
	.string	"Timer1A"
.LASF53:
	.string	"Timer"
.LASF121:
	.string	"C:\\\\Dev\\\\NIBObee\\\\NIBObee\\\\Kernel-Simulator\\\\Debug"
.LASF21:
	.string	"pwm_fast_FF"
.LASF68:
	.string	"current_reset_status"
.LASF49:
	.string	"timer"
.LASF109:
	.string	"Timer0A"
.LASF110:
	.string	"Timer0B"
.LASF28:
	.string	"pwm_fast_10bit"
.LASF70:
	.string	"PinA0"
.LASF60:
	.string	"init_timer_m1284P_kernel_init"
.LASF55:
	.string	"init_reset_condition"
.LASF48:
	.string	"TIMER_TYPE"
.LASF36:
	.string	"prescale_256"
.LASF1:
	.string	"unsigned char"
.LASF52:
	.string	"outputComparePin"
.LASF120:
	.string	".././simulator_kernel.c"
.LASF23:
	.string	"pwm_phase_correct"
.LASF118:
	.string	"AllLeds"
.LASF26:
	.string	"pwm_phase_correct_10bit"
.LASF112:
	.string	"Timer1B"
.LASF25:
	.string	"pwm_phase_correct_9bit"
.LASF16:
	.string	"leds"
.LASF6:
	.string	"uint32_t"
.LASF41:
	.string	"controlRegisterA"
.LASF42:
	.string	"controlRegisterB"
.LASF64:
	.string	"in_timer_tick"
.LASF18:
	.string	"LedGroup"
.LASF56:
	.string	"init_reset_condition_kernel_init"
.LASF22:
	.string	"pwm_phase_correct_FF"
.LASF43:
	.string	"interruptMaskRegister"
.LASF30:
	.string	"no_clock"
.LASF20:
	.string	"clear_timer_on_match"
.LASF11:
	.string	"Port"
.LASF113:
	.string	"Timer2A"
.LASF114:
	.string	"Timer2B"
.LASF29:
	.string	"pwm_phase_and_frequency_correct"
.LASF84:
	.string	"PinB5"
.LASF2:
	.string	"uint8_t"
.LASF40:
	.string	"flags"
.LASF119:
	.string	"GNU C 4.5.1"
.LASF71:
	.string	"PinA1"
.LASF72:
	.string	"PinA2"
.LASF73:
	.string	"PinA3"
.LASF74:
	.string	"PinA4"
.LASF75:
	.string	"PinA5"
.LASF76:
	.string	"PinA6"
.LASF77:
	.string	"PinA7"
.LASF115:
	.string	"Timer3A"
.LASF116:
	.string	"Timer3B"
.LASF63:
	.string	"start_timer"
.LASF58:
	.string	"init_ports_m1284P_kernel_init"
.global __do_copy_data
.global __do_clear_bss
