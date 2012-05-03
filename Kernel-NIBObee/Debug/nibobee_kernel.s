	.file	"nibobee_kernel.c"
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
	.uleb128 0x1a
	.ascii	"ZERO_STRUCT(variableName,structName) uint8_t *___tmpStructCo"
	.ascii	"ntent = variableName; for (int __i = 0; "
	.string	"__i < sizeof(structName); __i++) { ___tmpStructContent[i] = 0; }"
	.byte	0x1
	.uleb128 0x20
	.string	"__CONCAT__(A,B) A ##B"
	.byte	0x1
	.uleb128 0x23
	.ascii	"DEFINE_H"
	.string	"ANDLE(name) typedef struct name ##__ { uint16_t unused; } *name;"
	.byte	0x1
	.uleb128 0x26
	.string	"LOBYTE(x) (uint8_t)((uint16_t)x)"
	.byte	0x1
	.uleb128 0x27
	.string	"HIBYTE(x) (uint8_t)(((uint16_t)x)>>8)"
	.byte	0x1
	.uleb128 0x28
	.string	"MAKE_WORD(hi,lo) ((hi*0x100)+lo)"
	.byte	0x1
	.uleb128 0x2a
	.string	"enable_interrupts() sei()"
	.byte	0x1
	.uleb128 0x2b
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
	.string	"_NIBOBEE_LED_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x18
	.byte	0x1
	.uleb128 0x9
	.string	"_PORT_M1284P_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x19
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1a
	.byte	0x1
	.uleb128 0x9
	.string	"PORT_M1284P_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1b
	.byte	0x1
	.uleb128 0x9
	.string	"_LED_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1c
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_LED_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x9
	.string	"_NIBOBEE_BUTTON_KERNEL_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x1e
	.byte	0x1
	.uleb128 0x9
	.string	"_BUTTON_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1f
	.byte	0x1
	.uleb128 0x9
	.string	"EXTERNAL_INTERRUPTS_H_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x20
	.byte	0x1
	.uleb128 0x9
	.string	"BUTTON_H_ "
	.byte	0x1
	.uleb128 0x1b
	.string	"DEFINE_BUTTON(buttonName) Button buttonName;"
	.byte	0x1
	.uleb128 0x1d
	.string	"DEFINE_INTERRUPT_BUTTON(buttonName) InterruptButton buttonName;"
	.byte	0x1
	.uleb128 0x1f
	.ascii	"INIT_BUTTON(buttonName,pinNa"
	.string	"me) buttonName = (Button) { &pinName }; initButton(&buttonName);"
	.byte	0x1
	.uleb128 0x22
	.ascii	"INIT_INTERRUPT_BUTTON(buttonName,pinName,interruptNumber) bu"
	.ascii	"ttonName = (InterruptButton) "
	.string	"{ &pinName, interruptNumber }; initInterruptButton(&buttonName);"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x21
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_BUTTON_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x22
	.byte	0x1
	.uleb128 0x9
	.string	"_NIBOBEE_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x23
	.byte	0x1
	.uleb128 0x9
	.string	"_TIMER_M1284P_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x24
	.byte	0x1
	.uleb128 0x9
	.string	"TIMER_M1284P_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x25
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
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x18
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x26
	.byte	0x1
	.uleb128 0x9
	.string	"_MOTOR_KERNEL_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x27
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
	.uleb128 0x28
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_MOTOR_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x24
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x29
	.byte	0x1
	.uleb128 0x9
	.string	"_BASE_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2a
	.byte	0x1
	.uleb128 0x2
	.string	"_TANK_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x2b
	.byte	0x1
	.uleb128 0x9
	.string	"_PROCESS_EXT_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2c
	.byte	0x1
	.uleb128 0x9
	.string	"PROCESS_EXT_H_ "
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x2d
	.byte	0x1
	.uleb128 0x9
	.string	"PROCESS_API_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x4
	.byte	0x1
	.uleb128 0xe
	.string	"InvalidProcess ((Process) NULL)"
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x2f
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
	.uleb128 0x30
	.byte	0x1
	.uleb128 0x9
	.string	"_PROCESS_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x31
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x32
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
	.uleb128 0x33
	.byte	0x1
	.uleb128 0x9
	.string	"_DMS_SCHEDULER_KERNEL_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x34
	.byte	0x1
	.uleb128 0x9
	.string	"_RR_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x35
	.byte	0x1
	.uleb128 0x9
	.string	"RR_API_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x37
	.byte	0x1
	.uleb128 0x2
	.string	"_IDLE_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x38
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x39
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3a
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.uleb128 0xa
	.string	"CLOCKISR TIMER3_COMPA_vect"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3b
	.byte	0x1
	.uleb128 0x9
	.string	"TIMED_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x3c
	.byte	0x1
	.uleb128 0x9
	.string	"MILLISECOND_CLOCK_H_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x2e
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
	.uleb128 0x3d
	.byte	0x1
	.uleb128 0x9
	.string	"_SCHEDULER_KERNEL_ "
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3e
	.byte	0x1
	.uleb128 0x9
	.string	"SCHEDULER_H_ "
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x3f
	.byte	0x1
	.uleb128 0x9
	.string	"HARWARE_RESET_H_ "
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x40
	.byte	0x1
	.uleb128 0x9
	.string	"NIBOBEE_H_ "
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x9
	.string	"TANK_BASE_H_ "
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x42
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x43
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x3e
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x2c
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x44
	.byte	0x1
	.uleb128 0xb
	.string	"DMS_API_H_ "
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x45
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x35
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x46
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x47
	.byte	0x4
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
/* #APP */
	__RAMPZ__ = 0x3b
/* #NOAPP */
	.text
.global	ProcessGraveyard
	.type	ProcessGraveyard, @function
ProcessGraveyard:
.LFB20:
.LM1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM2:
	call processor_loop_idle
/* epilogue start */
.LM3:
	ret
.LFE20:
	.size	ProcessGraveyard, .-ProcessGraveyard
.global	init_reset_condition
	.type	init_reset_condition, @function
init_reset_condition:
.LFB0:
.LM4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM5:
	in r24,84-32
	sts current_reset_status,r24
.LM6:
	out 84-32,__zero_reg__
/* epilogue start */
.LM7:
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
.LM8:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM9:
	lds r24,current_reset_status
/* epilogue start */
	ret
.LFE2:
	.size	getResetStatus, .-getResetStatus
.global	init_ports_m1284P
	.type	init_ports_m1284P, @function
init_ports_m1284P:
.LFB3:
.LM10:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM11:
	ldi r26,lo8(PortA)
	ldi r27,hi8(PortA)
	ldi r30,lo8(C.48.3058)
	ldi r31,hi8(C.48.3058)
	ldi r24,lo8(6)
.L6:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L6
	ldi r26,lo8(PinA0)
	ldi r27,hi8(PinA0)
	ldi r30,lo8(C.49.3059)
	ldi r31,hi8(C.49.3059)
	ldi r24,lo8(3)
.L7:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L7
	ldi r26,lo8(PinA1)
	ldi r27,hi8(PinA1)
	ldi r30,lo8(C.50.3060)
	ldi r31,hi8(C.50.3060)
	ldi r24,lo8(3)
.L8:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L8
	ldi r26,lo8(PinA2)
	ldi r27,hi8(PinA2)
	ldi r30,lo8(C.51.3061)
	ldi r31,hi8(C.51.3061)
	ldi r24,lo8(3)
.L9:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L9
	ldi r26,lo8(PinA3)
	ldi r27,hi8(PinA3)
	ldi r30,lo8(C.52.3062)
	ldi r31,hi8(C.52.3062)
	ldi r24,lo8(3)
.L10:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L10
	ldi r26,lo8(PinA4)
	ldi r27,hi8(PinA4)
	ldi r30,lo8(C.53.3063)
	ldi r31,hi8(C.53.3063)
	ldi r24,lo8(3)
.L11:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L11
	ldi r26,lo8(PinA5)
	ldi r27,hi8(PinA5)
	ldi r30,lo8(C.54.3064)
	ldi r31,hi8(C.54.3064)
	ldi r24,lo8(3)
.L12:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L12
	ldi r26,lo8(PinA6)
	ldi r27,hi8(PinA6)
	ldi r30,lo8(C.55.3065)
	ldi r31,hi8(C.55.3065)
	ldi r24,lo8(3)
.L13:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L13
	ldi r26,lo8(PinA7)
	ldi r27,hi8(PinA7)
	ldi r30,lo8(C.56.3066)
	ldi r31,hi8(C.56.3066)
	ldi r24,lo8(3)
.L14:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L14
.LM12:
	ldi r26,lo8(PortB)
	ldi r27,hi8(PortB)
	ldi r30,lo8(C.57.3067)
	ldi r31,hi8(C.57.3067)
	ldi r24,lo8(6)
.L15:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L15
	ldi r26,lo8(PinB0)
	ldi r27,hi8(PinB0)
	ldi r30,lo8(C.58.3068)
	ldi r31,hi8(C.58.3068)
	ldi r24,lo8(3)
.L16:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L16
	ldi r26,lo8(PinB1)
	ldi r27,hi8(PinB1)
	ldi r30,lo8(C.59.3069)
	ldi r31,hi8(C.59.3069)
	ldi r24,lo8(3)
.L17:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L17
	ldi r26,lo8(PinB2)
	ldi r27,hi8(PinB2)
	ldi r30,lo8(C.60.3070)
	ldi r31,hi8(C.60.3070)
	ldi r24,lo8(3)
.L18:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L18
	ldi r26,lo8(PinB3)
	ldi r27,hi8(PinB3)
	ldi r30,lo8(C.61.3071)
	ldi r31,hi8(C.61.3071)
	ldi r24,lo8(3)
.L19:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L19
	ldi r26,lo8(PinB4)
	ldi r27,hi8(PinB4)
	ldi r30,lo8(C.62.3072)
	ldi r31,hi8(C.62.3072)
	ldi r24,lo8(3)
.L20:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L20
	ldi r26,lo8(PinB5)
	ldi r27,hi8(PinB5)
	ldi r30,lo8(C.63.3073)
	ldi r31,hi8(C.63.3073)
	ldi r24,lo8(3)
.L21:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L21
	ldi r26,lo8(PinB6)
	ldi r27,hi8(PinB6)
	ldi r30,lo8(C.64.3074)
	ldi r31,hi8(C.64.3074)
	ldi r24,lo8(3)
.L22:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L22
	ldi r26,lo8(PinB7)
	ldi r27,hi8(PinB7)
	ldi r30,lo8(C.65.3075)
	ldi r31,hi8(C.65.3075)
	ldi r24,lo8(3)
.L23:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L23
.LM13:
	ldi r26,lo8(PortC)
	ldi r27,hi8(PortC)
	ldi r30,lo8(C.66.3076)
	ldi r31,hi8(C.66.3076)
	ldi r24,lo8(6)
.L24:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L24
	ldi r26,lo8(PinC0)
	ldi r27,hi8(PinC0)
	ldi r30,lo8(C.67.3077)
	ldi r31,hi8(C.67.3077)
	ldi r24,lo8(3)
.L25:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L25
	ldi r26,lo8(PinC1)
	ldi r27,hi8(PinC1)
	ldi r30,lo8(C.68.3078)
	ldi r31,hi8(C.68.3078)
	ldi r24,lo8(3)
.L26:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L26
	ldi r26,lo8(PinC2)
	ldi r27,hi8(PinC2)
	ldi r30,lo8(C.69.3079)
	ldi r31,hi8(C.69.3079)
	ldi r24,lo8(3)
.L27:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L27
	ldi r26,lo8(PinC3)
	ldi r27,hi8(PinC3)
	ldi r30,lo8(C.70.3080)
	ldi r31,hi8(C.70.3080)
	ldi r24,lo8(3)
.L28:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L28
	ldi r26,lo8(PinC4)
	ldi r27,hi8(PinC4)
	ldi r30,lo8(C.71.3081)
	ldi r31,hi8(C.71.3081)
	ldi r24,lo8(3)
.L29:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L29
	ldi r26,lo8(PinC5)
	ldi r27,hi8(PinC5)
	ldi r30,lo8(C.72.3082)
	ldi r31,hi8(C.72.3082)
	ldi r24,lo8(3)
.L30:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L30
	ldi r26,lo8(PinC6)
	ldi r27,hi8(PinC6)
	ldi r30,lo8(C.73.3083)
	ldi r31,hi8(C.73.3083)
	ldi r24,lo8(3)
.L31:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L31
	ldi r26,lo8(PinC7)
	ldi r27,hi8(PinC7)
	ldi r30,lo8(C.74.3084)
	ldi r31,hi8(C.74.3084)
	ldi r24,lo8(3)
.L32:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L32
.LM14:
	ldi r26,lo8(PortD)
	ldi r27,hi8(PortD)
	ldi r30,lo8(C.75.3085)
	ldi r31,hi8(C.75.3085)
	ldi r24,lo8(6)
.L33:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L33
	ldi r26,lo8(PinD0)
	ldi r27,hi8(PinD0)
	ldi r30,lo8(C.76.3086)
	ldi r31,hi8(C.76.3086)
	ldi r24,lo8(3)
.L34:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L34
	ldi r26,lo8(PinD1)
	ldi r27,hi8(PinD1)
	ldi r30,lo8(C.77.3087)
	ldi r31,hi8(C.77.3087)
	ldi r24,lo8(3)
.L35:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L35
	ldi r26,lo8(PinD2)
	ldi r27,hi8(PinD2)
	ldi r30,lo8(C.78.3088)
	ldi r31,hi8(C.78.3088)
	ldi r24,lo8(3)
.L36:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L36
	ldi r26,lo8(PinD3)
	ldi r27,hi8(PinD3)
	ldi r30,lo8(C.79.3089)
	ldi r31,hi8(C.79.3089)
	ldi r24,lo8(3)
.L37:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L37
	ldi r26,lo8(PinD4)
	ldi r27,hi8(PinD4)
	ldi r30,lo8(C.80.3090)
	ldi r31,hi8(C.80.3090)
	ldi r24,lo8(3)
.L38:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L38
	ldi r26,lo8(PinD5)
	ldi r27,hi8(PinD5)
	ldi r30,lo8(C.81.3091)
	ldi r31,hi8(C.81.3091)
	ldi r24,lo8(3)
.L39:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L39
	ldi r26,lo8(PinD6)
	ldi r27,hi8(PinD6)
	ldi r30,lo8(C.82.3092)
	ldi r31,hi8(C.82.3092)
	ldi r24,lo8(3)
.L40:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L40
	ldi r26,lo8(PinD7)
	ldi r27,hi8(PinD7)
	ldi r30,lo8(C.83.3093)
	ldi r31,hi8(C.83.3093)
	ldi r24,lo8(3)
.L41:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L41
/* epilogue start */
.LM15:
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
.global	init_nibobee_leds
	.type	init_nibobee_leds, @function
init_nibobee_leds:
.LFB6:
.LM16:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM17:
	ldi r24,lo8(PinB0)
	ldi r25,hi8(PinB0)
	sts LeftYellow+1,r25
	sts LeftYellow,r24
.LVL0:
.LBB42:
.LBB43:
.LM18:
	call setPinOutput
.LBE43:
.LBE42:
.LM19:
	ldi r24,lo8(PinB1)
	ldi r25,hi8(PinB1)
	sts LeftRed+1,r25
	sts LeftRed,r24
.LVL1:
.LBB44:
.LBB45:
.LM20:
	call setPinOutput
.LBE45:
.LBE44:
.LM21:
	ldi r24,lo8(PinB2)
	ldi r25,hi8(PinB2)
	sts RightRed+1,r25
	sts RightRed,r24
.LVL2:
.LBB46:
.LBB47:
.LM22:
	call setPinOutput
.LBE47:
.LBE46:
.LM23:
	ldi r24,lo8(PinB3)
	ldi r25,hi8(PinB3)
	sts RightYellow+1,r25
	sts RightYellow,r24
.LVL3:
.LBB48:
.LBB49:
.LM24:
	call setPinOutput
.LBE49:
.LBE48:
.LM25:
	ldi r26,lo8(RedLeds)
	ldi r27,hi8(RedLeds)
	ldi r30,lo8(C.43.3052)
	ldi r31,hi8(C.43.3052)
	ldi r24,lo8(3)
.L80:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L80
.LM26:
	ldi r26,lo8(YellowLeds)
	ldi r27,hi8(YellowLeds)
	ldi r30,lo8(C.44.3053)
	ldi r31,hi8(C.44.3053)
	ldi r24,lo8(3)
.L81:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L81
.LM27:
	ldi r26,lo8(RightLeds)
	ldi r27,hi8(RightLeds)
	ldi r30,lo8(C.45.3054)
	ldi r31,hi8(C.45.3054)
	ldi r24,lo8(3)
.L82:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L82
.LM28:
	ldi r26,lo8(LeftLeds)
	ldi r27,hi8(LeftLeds)
	ldi r30,lo8(C.46.3055)
	ldi r31,hi8(C.46.3055)
	ldi r24,lo8(3)
.L83:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L83
.LM29:
	ldi r26,lo8(AllLeds)
	ldi r27,hi8(AllLeds)
	ldi r30,lo8(C.47.3056)
	ldi r31,hi8(C.47.3056)
	ldi r24,lo8(3)
.L84:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L84
/* epilogue start */
.LM30:
	ret
.LFE6:
	.size	init_nibobee_leds, .-init_nibobee_leds
	.section	.init8
.global	init_nibobee_leds_kernel_init
	.type	init_nibobee_leds_kernel_init, @function
init_nibobee_leds_kernel_init:
.LFB7:
.LSM4:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM5:
	call init_nibobee_leds
/* epilogue start */
.LFE7:
	.size	init_nibobee_leds_kernel_init, .-init_nibobee_leds_kernel_init
	.text
.global	initButton
	.type	initButton, @function
initButton:
.LFB8:
.LM31:
.LVL4:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM32:
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
.LVL5:
	call setPinInput
.LVL6:
/* epilogue start */
.LM33:
	ret
.LFE8:
	.size	initButton, .-initButton
.global	initInterruptButton
	.type	initInterruptButton, @function
initInterruptButton:
.LFB9:
.LM34:
.LVL7:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM35:
	ldd r24,Y+2
.LVL8:
	call enablePinChangeInterrupt
.LM36:
	ld r30,Y
	ldd r31,Y+1
	ld r24,Z
	ldd r25,Z+1
	call setPinInput
/* epilogue start */
.LM37:
	pop r29
	pop r28
.LVL9:
	ret
.LFE9:
	.size	initInterruptButton, .-initInterruptButton
.global	init_nibobee_buttons
	.type	init_nibobee_buttons, @function
init_nibobee_buttons:
.LFB10:
.LM38:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM39:
	ldi r24,lo8(PinC4)
	ldi r25,hi8(PinC4)
	sts ButtonLeftBackward+1,r25
	sts ButtonLeftBackward,r24
.LVL10:
.LBB50:
.LBB51:
.LM40:
	call setPinInput
.LBE51:
.LBE50:
.LM41:
	ldi r24,lo8(PinC5)
	ldi r25,hi8(PinC5)
	sts ButtonLeftForward+1,r25
	sts ButtonLeftForward,r24
.LVL11:
.LBB52:
.LBB53:
.LM42:
	call setPinInput
.LBE53:
.LBE52:
.LM43:
	ldi r24,lo8(PinC6)
	ldi r25,hi8(PinC6)
	sts ButtonRightBackward+1,r25
	sts ButtonRightBackward,r24
.LVL12:
.LBB54:
.LBB55:
.LM44:
	call setPinInput
.LBE55:
.LBE54:
.LM45:
	ldi r24,lo8(PinC7)
	ldi r25,hi8(PinC7)
	sts ButtonRightForward+1,r25
	sts ButtonRightForward,r24
.LVL13:
.LBB56:
.LBB57:
.LM46:
	call setPinInput
/* epilogue start */
.LBE57:
.LBE56:
.LM47:
	ret
.LFE10:
	.size	init_nibobee_buttons, .-init_nibobee_buttons
	.section	.init8
.global	init_nibobee_buttons_kernel_init
	.type	init_nibobee_buttons_kernel_init, @function
init_nibobee_buttons_kernel_init:
.LFB11:
.LSM6:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM7:
	call init_nibobee_buttons
/* epilogue start */
.LFE11:
	.size	init_nibobee_buttons_kernel_init, .-init_nibobee_buttons_kernel_init
	.text
.global	init_timer_m1284P
	.type	init_timer_m1284P, @function
init_timer_m1284P:
.LFB12:
.LM48:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM49:
	ldi r26,lo8(Timer0)
	ldi r27,hi8(Timer0)
	ldi r30,lo8(C.31.3036)
	ldi r31,hi8(C.31.3036)
	ldi r24,lo8(7)
.L96:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L96
.LM50:
	ldi r26,lo8(Timer1)
	ldi r27,hi8(Timer1)
	ldi r30,lo8(C.32.3037)
	ldi r31,hi8(C.32.3037)
	ldi r24,lo8(7)
.L97:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L97
.LM51:
	ldi r26,lo8(Timer2)
	ldi r27,hi8(Timer2)
	ldi r30,lo8(C.33.3038)
	ldi r31,hi8(C.33.3038)
	ldi r24,lo8(7)
.L98:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L98
.LM52:
	ldi r26,lo8(Timer3)
	ldi r27,hi8(Timer3)
	ldi r30,lo8(C.34.3039)
	ldi r31,hi8(C.34.3039)
	ldi r24,lo8(7)
.L99:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L99
.LM53:
	ldi r26,lo8(Timer0A)
	ldi r27,hi8(Timer0A)
	ldi r30,lo8(C.35.3040)
	ldi r31,hi8(C.35.3040)
	ldi r24,lo8(8)
.L100:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L100
.LM54:
	ldi r26,lo8(Timer0B)
	ldi r27,hi8(Timer0B)
	ldi r30,lo8(C.36.3041)
	ldi r31,hi8(C.36.3041)
	ldi r24,lo8(8)
.L101:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L101
.LM55:
	ldi r26,lo8(Timer1A)
	ldi r27,hi8(Timer1A)
	ldi r30,lo8(C.37.3042)
	ldi r31,hi8(C.37.3042)
	ldi r24,lo8(8)
.L102:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L102
.LM56:
	ldi r26,lo8(Timer1B)
	ldi r27,hi8(Timer1B)
	ldi r30,lo8(C.38.3043)
	ldi r31,hi8(C.38.3043)
	ldi r24,lo8(8)
.L103:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L103
.LM57:
	ldi r26,lo8(Timer2A)
	ldi r27,hi8(Timer2A)
	ldi r30,lo8(C.39.3044)
	ldi r31,hi8(C.39.3044)
	ldi r24,lo8(8)
.L104:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L104
.LM58:
	ldi r26,lo8(Timer2B)
	ldi r27,hi8(Timer2B)
	ldi r30,lo8(C.40.3045)
	ldi r31,hi8(C.40.3045)
	ldi r24,lo8(8)
.L105:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L105
.LM59:
	ldi r26,lo8(Timer3A)
	ldi r27,hi8(Timer3A)
	ldi r30,lo8(C.41.3046)
	ldi r31,hi8(C.41.3046)
	ldi r24,lo8(8)
.L106:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L106
.LM60:
	ldi r26,lo8(Timer3B)
	ldi r27,hi8(Timer3B)
	ldi r30,lo8(C.42.3047)
	ldi r31,hi8(C.42.3047)
	ldi r24,lo8(8)
.L107:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L107
/* epilogue start */
.LM61:
	ret
.LFE12:
	.size	init_timer_m1284P, .-init_timer_m1284P
	.section	.init8
.global	init_timer_m1284P_kernel_init
	.type	init_timer_m1284P_kernel_init, @function
init_timer_m1284P_kernel_init:
.LFB13:
.LSM8:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM9:
	call init_timer_m1284P
/* epilogue start */
.LFE13:
	.size	init_timer_m1284P_kernel_init, .-init_timer_m1284P_kernel_init
	.text
.global	initMotor
	.type	initMotor, @function
initMotor:
.LFB14:
.LM62:
.LVL14:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM63:
	ldd r24,Y+3
	ldd r25,Y+4
.LVL15:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call setTimerCompareValue
.LM64:
	ldd r24,Y+1
	ldd r25,Y+2
	call setPinOutput
/* epilogue start */
.LM65:
	pop r29
	pop r28
.LVL16:
	ret
.LFE14:
	.size	initMotor, .-initMotor
.global	initMotor2Pins
	.type	initMotor2Pins, @function
initMotor2Pins:
.LFB15:
.LM66:
.LVL17:
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
.LM67:
	movw r14,r28
	mov r25,r15
	call initMotor
.LVL18:
.LM68:
	ldd r24,Y+5
	ldd r25,Y+6
	call setPinOutput
.LM69:
	movw r24,r28
	call stopMotor
/* epilogue start */
.LM70:
	pop r29
	pop r28
	pop r15
	pop r14
.LVL19:
	ret
.LFE15:
	.size	initMotor2Pins, .-initMotor2Pins
.global	init_nibobee_motors
	.type	init_nibobee_motors, @function
init_nibobee_motors:
.LFB16:
.LM71:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM72:
	ldi r26,lo8(LeftMotor)
	ldi r27,hi8(LeftMotor)
	ldi r30,lo8(C.28.3030)
	ldi r31,hi8(C.28.3030)
	ldi r24,lo8(5)
.L124:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L124
	ldi r24,lo8(LeftMotor)
	ldi r25,hi8(LeftMotor)
	call initMotor
.LM73:
	ldi r26,lo8(RightMotor)
	ldi r27,hi8(RightMotor)
	ldi r30,lo8(C.29.3031)
	ldi r31,hi8(C.29.3031)
	ldi r24,lo8(5)
.L125:
	ld r0,Z+
	st X+,r0
	subi r24,lo8(-(-1))
	brne .L125
	ldi r24,lo8(RightMotor)
	ldi r25,hi8(RightMotor)
	call initMotor
/* epilogue start */
.LM74:
	ret
.LFE16:
	.size	init_nibobee_motors, .-init_nibobee_motors
	.section	.init8
.global	init_nibobee_motors_kernel_init
	.type	init_nibobee_motors_kernel_init, @function
init_nibobee_motors_kernel_init:
.LFB17:
.LSM10:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM11:
	call init_nibobee_motors
/* epilogue start */
.LFE17:
	.size	init_nibobee_motors_kernel_init, .-init_nibobee_motors_kernel_init
	.text
.global	init_process_base
	.type	init_process_base, @function
init_process_base:
.LFB19:
.LM75:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM76:
	ldi r24,lo8(16639)
	ldi r25,hi8(16639)
	lds r18,__default_stack_size
	lds r19,__default_stack_size+1
	sub r24,r18
	sbc r25,r19
	sts __malloc_heap_end+1,r25
	sts __malloc_heap_end,r24
.LM77:
	sts __malloc_margin+1,__zero_reg__
	sts __malloc_margin,__zero_reg__
.LVL20:
.LBB58:
.LBB59:
.LM78:
	lds r22,__main_process_additional_memory
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call calloc
.LVL21:
	movw r30,r24
.LVL22:
.LM79:
	sbiw r24,0
	breq .L131
.LM80:
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	rjmp .L130
.L131:
.LM81:
	ldi r30,lo8(0)
	ldi r31,hi8(0)
.L130:
.LBE59:
.LBE58:
.LM82:
	sts __current_process+1,r31
	sts __current_process,r30
/* epilogue start */
.LM83:
	ret
.LFE19:
	.size	init_process_base, .-init_process_base
	.section	.fini1,"ax",@progbits
.global	MainProcessEnd
	.type	MainProcessEnd, @function
MainProcessEnd:
.LFB21:
.LSM12:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB60:
.LBB61:
.LSM13:
	call processor_loop_idle
/* epilogue start */
.LBE61:
.LBE60:
.LSM14:
	ret
.LFE21:
	.size	MainProcessEnd, .-MainProcessEnd
	.text
.global	createProcessBase3
	.type	createProcessBase3, @function
createProcessBase3:
.LFB22:
.LM84:
.LVL23:
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
.LM85:
	movw r24,r20
.LVL24:
	ldi r22,lo8(1)
	ldi r23,hi8(1)
.LVL25:
	std Y+1,r18
	call calloc
.LVL26:
	movw r16,r24
.LVL27:
.LM86:
	ldd r18,Y+1
	sbiw r24,0
	breq .L138
.LM87:
	movw r20,r10
	subi r20,lo8(-(-1))
	sbci r21,hi8(-(-1))
	add r20,r24
	adc r21,r25
.LVL28:
.LM88:
	ldi r24,lo8(gs(ProcessGraveyard))
	ldi r25,hi8(gs(ProcessGraveyard))
.LVL29:
	movw r30,r20
	st Z,r24
.LM89:
	sbiw r30,1
	st Z,r25
.LM90:
	movw r30,r20
	sbiw r30,2
	st Z,r13
.LM91:
	movw r30,r20
	sbiw r30,3
	st Z,r12
.LVL30:
.LBB62:
.LBB63:
.LM92:
	mov r22,r18
	ldi r23,lo8(0)
	subi r22,lo8(-(2))
	sbci r23,hi8(-(2))
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	std Y+1,r20
	std Y+2,r21
	call calloc
.LVL31:
	movw r18,r24
.LVL32:
.LM93:
	ldd r20,Y+1
	ldd r21,Y+2
	sbiw r24,0
	breq .L135
.LBE63:
.LBE62:
.LM94:
	movw r24,r20
.LVL33:
	sbiw r24,38
.LBB65:
.LBB64:
.LM95:
	movw r30,r18
	std Z+1,r25
	st Z,r24
.LBE64:
.LBE65:
.LM96:
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L136
	rjmp .L140
.L135:
.LM97:
	movw r24,r16
	call free
.LVL34:
	rjmp .L138
.LVL35:
.L140:
.LM98:
	movw r14,r18
.LVL36:
.L136:
.LM99:
	movw r30,r20
	sbiw r30,30
	st Z,r14
.LM100:
	subi r20,lo8(-(-31))
	sbci r21,hi8(-(-31))
	movw r30,r20
	st Z,r15
.LM101:
	rjmp .L134
.LVL37:
.L138:
.LM102:
	ldi r18,lo8(0)
	ldi r19,hi8(0)
.L134:
.LM103:
	movw r24,r18
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop r28
	pop r29
	pop r17
	pop r16
.LVL38:
	pop r15
	pop r14
.LVL39:
	pop r13
	pop r12
	pop r11
	pop r10
.LVL40:
	ret
.LFE22:
	.size	createProcessBase3, .-createProcessBase3
.global	createProcessBase2
	.type	createProcessBase2, @function
createProcessBase2:
.LFB23:
.LM104:
.LVL41:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM105:
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r18,lo8(0)
	call createProcessBase3
.LVL42:
/* epilogue start */
.LM106:
	ret
.LFE23:
	.size	createProcessBase2, .-createProcessBase2
.global	createProcessBase
	.type	createProcessBase, @function
createProcessBase:
.LFB24:
.LM107:
.LVL43:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM108:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcessBase2
.LVL44:
/* epilogue start */
.LM109:
	ret
.LFE24:
	.size	createProcessBase, .-createProcessBase
.global	switchContext
	.type	switchContext, @function
switchContext:
.LFB25:
.LM110:
.LVL45:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM111:
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
.LM112:
 ;  95 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	movw r26, r24
 ;  0 "" 2
.LM113:
 ;  96 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
.LM114:
 ;  97 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	movw r26, r22
 ;  0 "" 2
.LM115:
 ;  98 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
.LM116:
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
.LM117:
 ;  101 "..\..\AntonAvrLib/kernel/processes/process.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM118:
/* #NOAPP */
	ret
.LFE25:
	.size	switchContext, .-switchContext
.global	getCurrentProcess
	.type	getCurrentProcess, @function
getCurrentProcess:
.LFB26:
.LM119:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM120:
	lds r24,__current_process
	lds r25,__current_process+1
/* epilogue start */
	ret
.LFE26:
	.size	getCurrentProcess, .-getCurrentProcess
.global	switchProcess
	.type	switchProcess, @function
switchProcess:
.LFB27:
.LM121:
.LVL46:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r22,r24
.LM122:
	lds r24,__current_process
	lds r25,__current_process+1
.LVL47:
.LM123:
	sts __current_process+1,r23
	sts __current_process,r22
.LM124:
	call switchContext
.LVL48:
/* epilogue start */
.LM125:
	ret
.LFE27:
	.size	switchProcess, .-switchProcess
.global	createProcess3
	.type	createProcess3, @function
createProcess3:
.LFB29:
.LM126:
.LVL49:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r20
.LM127:
	subi r18,lo8(-(6))
.LVL50:
	call createProcessBase3
.LVL51:
	movw r30,r24
.LVL52:
.LM128:
	sbiw r24,0
	breq .L147
.LVL53:
.LBB66:
.LBB67:
.LM129:
	movw r26,r24
	adiw r26,4
.LVL54:
.LBE67:
.LBE66:
.LM130:
	lds r24,__nextProcessNumber
	lds r25,__nextProcessNumber+1
.LVL55:
	std Z+5,r25
	std Z+4,r24
	adiw r24,1
	sts __nextProcessNumber+1,r25
	sts __nextProcessNumber,r24
.LM131:
	adiw r26,2+1
	st X,r29
	st -X,r28
	sbiw r26,2
.LM132:
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
.LVL56:
.L147:
.LM133:
	movw r24,r30
/* epilogue start */
	pop r29
	pop r28
.LVL57:
	ret
.LFE29:
	.size	createProcess3, .-createProcess3
.global	createProcess2
	.type	createProcess2, @function
createProcess2:
.LFB30:
.LM134:
.LVL58:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM135:
	lds r20,__default_stack_size
	lds r21,__default_stack_size+1
	ldi r18,lo8(0)
	call createProcess3
.LVL59:
/* epilogue start */
.LM136:
	ret
.LFE30:
	.size	createProcess2, .-createProcess2
.global	createProcess
	.type	createProcess, @function
createProcess:
.LFB31:
.LM137:
.LVL60:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM138:
	ldi r22,lo8(0)
	ldi r23,hi8(0)
	call createProcess2
.LVL61:
/* epilogue start */
.LM139:
	ret
.LFE31:
	.size	createProcess, .-createProcess
.global	freeProcess
	.type	freeProcess, @function
freeProcess:
.LFB32:
.LM140:
.LVL62:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM141:
	lds r24,__current_process
	lds r25,__current_process+1
.LVL63:
	cp r28,r24
	cpc r29,r25
	breq .L150
.LVL64:
.LBB68:
.LBB69:
.LM142:
	movw r30,r28
	adiw r30,4
.LVL65:
.LBE69:
.LBE68:
.LM143:
	ldd r24,Y+4
	ldd r25,Y+5
	sbiw r24,0
	breq .L152
.LM144:
	ldd r24,Z+4
	ldd r25,Z+5
	call free
.LVL66:
.L152:
.LM145:
	movw r24,r28
	call free
.LVL67:
.L150:
/* epilogue start */
.LM146:
	pop r29
	pop r28
.LVL68:
	ret
.LFE32:
	.size	freeProcess, .-freeProcess
.global	getProcessStackSize
	.type	getProcessStackSize, @function
getProcessStackSize:
.LFB33:
.LM147:
.LVL69:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM148:
	movw r30,r24
	ldd r24,Z+6
.LVL70:
/* epilogue start */
	ret
.LFE33:
	.size	getProcessStackSize, .-getProcessStackSize
.global	getFreeProcessStackSize
	.type	getFreeProcessStackSize, @function
getFreeProcessStackSize:
.LFB34:
.LM149:
.LVL71:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL72:
.LM150:
	ldd r18,Z+8
	ldd r19,Z+9
	ld r24,Z
	ldd r25,Z+1
.LVL73:
	sub r18,r24
	sbc r19,r25
.LM151:
	movw r24,r18
/* epilogue start */
	ret
.LFE34:
	.size	getFreeProcessStackSize, .-getFreeProcessStackSize
.global	getProcessNumber
	.type	getProcessNumber, @function
getProcessNumber:
.LFB35:
.LM152:
.LVL74:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
.LVL75:
.LM153:
	ldd r24,Z+4
.LVL76:
	ldd r25,Z+5
/* epilogue start */
	ret
.LFE35:
	.size	getProcessNumber, .-getProcessNumber
.global	getProcessMemory
	.type	getProcessMemory, @function
getProcessMemory:
.LFB36:
.LM154:
.LVL77:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM155:
	movw r18,r24
	subi r18,lo8(-(40))
	sbci r19,hi8(-(40))
.LM156:
	movw r24,r18
.LVL78:
/* epilogue start */
	ret
.LFE36:
	.size	getProcessMemory, .-getProcessMemory
.global	init_process
	.type	init_process, @function
init_process:
.LFB37:
.LM157:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM158:
	lds r24,__main_process_additional_memory
	subi r24,lo8(-(6))
	sts __main_process_additional_memory,r24
.LM159:
	call init_process_base
.LVL79:
.LBB70:
.LBB71:
.LM160:
	lds r26,__current_process
	lds r27,__current_process+1
	movw r30,r26
	adiw r30,4
.LVL80:
.LBE71:
.LBE70:
.LM161:
	adiw r26,4+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,4
.LM162:
	lds r24,__default_stack_size
	lds r25,__default_stack_size+1
	std Z+3,r25
	std Z+2,r24
.LM163:
	lds r24,__malloc_heap_end
	lds r25,__malloc_heap_end+1
	std Z+5,r25
	std Z+4,r24
/* epilogue start */
.LM164:
	ret
.LFE37:
	.size	init_process, .-init_process
.global	init_idle_scheduler
	.type	init_idle_scheduler, @function
init_idle_scheduler:
.LFB38:
.LM165:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM166:
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
.LM167:
	ret
.LFE38:
	.size	init_idle_scheduler, .-init_idle_scheduler
	.section	.init8
.global	init_idle_scheduler_kernel_init
	.type	init_idle_scheduler_kernel_init, @function
init_idle_scheduler_kernel_init:
.LFB39:
.LSM15:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM16:
	call init_idle_scheduler
/* epilogue start */
.LFE39:
	.size	init_idle_scheduler_kernel_init, .-init_idle_scheduler_kernel_init
	.text
.global	idle_schedule
	.type	idle_schedule, @function
idle_schedule:
.LFB40:
.LM168:
.LVL81:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM169:
	lds r24,__idle_process
.LVL82:
	lds r25,__idle_process+1
/* epilogue start */
	ret
.LFE40:
	.size	idle_schedule, .-idle_schedule
.global	init_scheduler
	.type	init_scheduler, @function
init_scheduler:
.LFB42:
.LM170:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL83:
.LM171:
	ldi r28,lo8(Timer3)
	ldi r29,hi8(Timer3)
	movw r24,r28
	ldi r22,lo8(1)
	ldi r23,hi8(1)
	call setWaveformGenerationMode
.LM172:
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	ldi r22,lo8(2500)
	ldi r23,hi8(2500)
	call setTimerCompareValue
.LM173:
	movw r24,r28
	ldi r22,lo8(2)
	ldi r23,hi8(2)
	call setTimerClockSelect
/* epilogue start */
.LM174:
	pop r29
	pop r28
	ret
.LFE42:
	.size	init_scheduler, .-init_scheduler
	.section	.init8
.global	init_scheduler_kernel_init
	.type	init_scheduler_kernel_init, @function
init_scheduler_kernel_init:
.LFB43:
.LSM17:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM18:
	call init_scheduler
/* epilogue start */
.LFE43:
	.size	init_scheduler_kernel_init, .-init_scheduler_kernel_init
	.text
.global	start_scheduler
	.type	start_scheduler, @function
start_scheduler:
.LFB44:
.LM175:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM176:
	ldi r24,lo8(Timer3A)
	ldi r25,hi8(Timer3A)
	call enableTimerInterrupt
.LM177:
/* #APP */
 ;  27 ".././shared/scheduler.kernel.h" 1
	sei
 ;  0 "" 2
/* epilogue start */
.LM178:
/* #NOAPP */
	ret
.LFE44:
	.size	start_scheduler, .-start_scheduler
	.weak	before_scheduler
	.type	before_scheduler, @function
before_scheduler:
.LFB45:
.LM179:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
/* epilogue start */
.LM180:
	ret
.LFE45:
	.size	before_scheduler, .-before_scheduler
.global	schedule
	.type	schedule, @function
schedule:
.LFB46:
.LM181:
.LVL84:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.LM182:
	call dms_schedule
.LVL85:
	movw r18,r24
.LVL86:
.LM183:
	sbiw r24,0
	brne .L166
.LM184:
	movw r24,r28
.LVL87:
	call rr_schedule
.LVL88:
	movw r18,r24
.LVL89:
.LM185:
	sbiw r24,0
	brne .L166
.LBB72:
.LBB73:
.LM186:
	lds r18,__idle_process
	lds r19,__idle_process+1
.LVL90:
.L166:
.LBE73:
.LBE72:
.LM187:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
.LVL91:
	ret
.LFE46:
	.size	schedule, .-schedule
.global	__vector_32
	.type	__vector_32, @function
__vector_32:
.LFB41:
.LM188:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM189:
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
.LM190:
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
.LM191:
/* #APP */
 ;  33 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	lds r26, __current_process
 ;  0 "" 2
.LM192:
 ;  34 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	lds r27, __current_process + 1
 ;  0 "" 2
.LM193:
 ;  35 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	in r0, __SP_L__			
st X+, r0					
in r0, __SP_H__			
st X+, r0					

 ;  0 "" 2
.LM194:
/* #NOAPP */
	ldi r24,lo8(1)
	ldi r25,hi8(1)
	call schedule
	sts __current_process+1,r25
	sts __current_process,r24
.LM195:
	sbiw r24,0
	brne .L168
.LM196:
	call HARDWARE_RESET
.L168:
.LM197:
/* #APP */
 ;  45 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	movw r26, r24
 ;  0 "" 2
.LM198:
 ;  46 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	ld r0, X+					
out __SP_L__, r0			
ld r0, X+					
out __SP_H__, r0			

 ;  0 "" 2
.LM199:
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
.LM200:
 ;  50 "..\..\AntonAvrLib/kernel/processes/scheduler.kernel.h" 1
	reti
 ;  0 "" 2
/* epilogue start */
.LM201:
/* #NOAPP */
.LFE41:
	.size	__vector_32, .-__vector_32
.global	init_kernel
	.type	init_kernel, @function
init_kernel:
.LFB47:
.LM202:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LM203:
	in r24,80-32
	ori r24,lo8(-128)
	out 80-32,r24
.LM204:
	ldi r30,lo8(100)
	ldi r31,hi8(100)
	ld r24,Z
	ori r24,lo8(96)
	st Z,r24
.LM205:
	ldi r30,lo8(96)
	ldi r31,hi8(96)
	ldi r24,lo8(16)
	st Z,r24
.LM206:
	ld r24,Z
	ori r24,lo8(5)
	st Z,r24
.LM207:
	call init_process
.LM208:
	ldi r24,lo8(3)
	ldi r25,hi8(3)
	call rr_captureMainProcess
.LM209:
	call before_scheduler
.LM210:
	call start_scheduler
/* epilogue start */
.LM211:
	ret
.LFE47:
	.size	init_kernel, .-init_kernel
	.section	.init8
.global	init_kernel_kernel_init
	.type	init_kernel_kernel_init, @function
init_kernel_kernel_init:
.LFB48:
.LSM19:
/* prologue: naked */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LSM20:
	call init_kernel
/* epilogue start */
.LFE48:
	.size	init_kernel_kernel_init, .-init_kernel_kernel_init
.global	current_reset_status
.global	current_reset_status
	.section .bss
	.type	current_reset_status, @object
	.size	current_reset_status, 1
current_reset_status:
	.skip 1,0
.global	redLedsArray
	.data
	.type	redLedsArray, @object
	.size	redLedsArray, 4
redLedsArray:
	.word	LeftRed
	.word	RightRed
.global	yellowLedsArray
	.type	yellowLedsArray, @object
	.size	yellowLedsArray, 4
yellowLedsArray:
	.word	LeftYellow
	.word	RightYellow
.global	rightLedsArray
	.type	rightLedsArray, @object
	.size	rightLedsArray, 4
rightLedsArray:
	.word	RightYellow
	.word	RightRed
.global	leftLedsArray
	.type	leftLedsArray, @object
	.size	leftLedsArray, 4
leftLedsArray:
	.word	LeftYellow
	.word	LeftRed
.global	allLedsArray
	.type	allLedsArray, @object
	.size	allLedsArray, 8
allLedsArray:
	.word	LeftYellow
	.word	LeftRed
	.word	RightYellow
	.word	RightRed
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
	.comm LeftYellow,2,1
	.comm LeftRed,2,1
	.comm RightRed,2,1
	.comm RightYellow,2,1
	.comm RedLeds,3,1
	.comm YellowLeds,3,1
	.comm RightLeds,3,1
	.comm LeftLeds,3,1
	.comm AllLeds,3,1
	.comm ButtonRightBackward,2,1
	.comm ButtonRightForward,2,1
	.comm ButtonLeftBackward,2,1
	.comm ButtonLeftForward,2,1
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
	.comm LeftMotor,5,1
	.comm RightMotor,5,1
	.comm __idle_process,2,1
	.data
	.type	C.29.3031, @object
	.size	C.29.3031, 5
C.29.3031:
	.byte	0
	.word	PinD7
	.word	Timer1B
	.type	C.28.3030, @object
	.size	C.28.3030, 5
C.28.3030:
	.byte	0
	.word	PinD6
	.word	Timer1A
	.type	C.42.3047, @object
	.size	C.42.3047, 8
C.42.3047:
	.word	Timer3
	.word	154
	.word	1
	.word	PinB7
	.type	C.41.3046, @object
	.size	C.41.3046, 8
C.41.3046:
	.word	Timer3
	.word	152
	.word	0
	.word	PinB6
	.type	C.40.3045, @object
	.size	C.40.3045, 8
C.40.3045:
	.word	Timer2
	.word	180
	.word	1
	.word	PinD6
	.type	C.39.3044, @object
	.size	C.39.3044, 8
C.39.3044:
	.word	Timer2
	.word	179
	.word	0
	.word	PinD7
	.type	C.38.3043, @object
	.size	C.38.3043, 8
C.38.3043:
	.word	Timer1
	.word	138
	.word	1
	.word	PinD4
	.type	C.37.3042, @object
	.size	C.37.3042, 8
C.37.3042:
	.word	Timer1
	.word	136
	.word	0
	.word	PinD5
	.type	C.36.3041, @object
	.size	C.36.3041, 8
C.36.3041:
	.word	Timer0
	.word	72
	.word	1
	.word	PinB4
	.type	C.35.3040, @object
	.size	C.35.3040, 8
C.35.3040:
	.word	Timer0
	.word	71
	.word	0
	.word	PinB3
	.type	C.34.3039, @object
	.size	C.34.3039, 7
C.34.3039:
	.byte	4
	.word	144
	.word	145
	.word	113
	.type	C.33.3038, @object
	.size	C.33.3038, 7
C.33.3038:
	.byte	2
	.word	176
	.word	177
	.word	112
	.type	C.32.3037, @object
	.size	C.32.3037, 7
C.32.3037:
	.byte	4
	.word	128
	.word	129
	.word	111
	.type	C.31.3036, @object
	.size	C.31.3036, 7
C.31.3036:
	.byte	0
	.word	68
	.word	69
	.word	110
	.type	C.47.3056, @object
	.size	C.47.3056, 3
C.47.3056:
	.word	allLedsArray
	.byte	4
	.type	C.46.3055, @object
	.size	C.46.3055, 3
C.46.3055:
	.word	leftLedsArray
	.byte	2
	.type	C.45.3054, @object
	.size	C.45.3054, 3
C.45.3054:
	.word	rightLedsArray
	.byte	2
	.type	C.44.3053, @object
	.size	C.44.3053, 3
C.44.3053:
	.word	yellowLedsArray
	.byte	2
	.type	C.43.3052, @object
	.size	C.43.3052, 3
C.43.3052:
	.word	redLedsArray
	.byte	2
	.type	C.83.3093, @object
	.size	C.83.3093, 3
C.83.3093:
	.word	PortD
	.byte	-128
	.type	C.82.3092, @object
	.size	C.82.3092, 3
C.82.3092:
	.word	PortD
	.byte	64
	.type	C.81.3091, @object
	.size	C.81.3091, 3
C.81.3091:
	.word	PortD
	.byte	32
	.type	C.80.3090, @object
	.size	C.80.3090, 3
C.80.3090:
	.word	PortD
	.byte	16
	.type	C.79.3089, @object
	.size	C.79.3089, 3
C.79.3089:
	.word	PortD
	.byte	8
	.type	C.78.3088, @object
	.size	C.78.3088, 3
C.78.3088:
	.word	PortD
	.byte	4
	.type	C.77.3087, @object
	.size	C.77.3087, 3
C.77.3087:
	.word	PortD
	.byte	2
	.type	C.76.3086, @object
	.size	C.76.3086, 3
C.76.3086:
	.word	PortD
	.byte	1
	.type	C.75.3085, @object
	.size	C.75.3085, 6
C.75.3085:
	.word	43
	.word	41
	.word	42
	.type	C.74.3084, @object
	.size	C.74.3084, 3
C.74.3084:
	.word	PortC
	.byte	-128
	.type	C.73.3083, @object
	.size	C.73.3083, 3
C.73.3083:
	.word	PortC
	.byte	64
	.type	C.72.3082, @object
	.size	C.72.3082, 3
C.72.3082:
	.word	PortC
	.byte	32
	.type	C.71.3081, @object
	.size	C.71.3081, 3
C.71.3081:
	.word	PortC
	.byte	16
	.type	C.70.3080, @object
	.size	C.70.3080, 3
C.70.3080:
	.word	PortC
	.byte	8
	.type	C.69.3079, @object
	.size	C.69.3079, 3
C.69.3079:
	.word	PortC
	.byte	4
	.type	C.68.3078, @object
	.size	C.68.3078, 3
C.68.3078:
	.word	PortC
	.byte	2
	.type	C.67.3077, @object
	.size	C.67.3077, 3
C.67.3077:
	.word	PortC
	.byte	1
	.type	C.66.3076, @object
	.size	C.66.3076, 6
C.66.3076:
	.word	40
	.word	38
	.word	39
	.type	C.65.3075, @object
	.size	C.65.3075, 3
C.65.3075:
	.word	PortB
	.byte	-128
	.type	C.64.3074, @object
	.size	C.64.3074, 3
C.64.3074:
	.word	PortB
	.byte	64
	.type	C.63.3073, @object
	.size	C.63.3073, 3
C.63.3073:
	.word	PortB
	.byte	32
	.type	C.62.3072, @object
	.size	C.62.3072, 3
C.62.3072:
	.word	PortB
	.byte	16
	.type	C.61.3071, @object
	.size	C.61.3071, 3
C.61.3071:
	.word	PortB
	.byte	8
	.type	C.60.3070, @object
	.size	C.60.3070, 3
C.60.3070:
	.word	PortB
	.byte	4
	.type	C.59.3069, @object
	.size	C.59.3069, 3
C.59.3069:
	.word	PortB
	.byte	2
	.type	C.58.3068, @object
	.size	C.58.3068, 3
C.58.3068:
	.word	PortB
	.byte	1
	.type	C.57.3067, @object
	.size	C.57.3067, 6
C.57.3067:
	.word	37
	.word	35
	.word	36
	.type	C.56.3066, @object
	.size	C.56.3066, 3
C.56.3066:
	.word	PortA
	.byte	-128
	.type	C.55.3065, @object
	.size	C.55.3065, 3
C.55.3065:
	.word	PortA
	.byte	64
	.type	C.54.3064, @object
	.size	C.54.3064, 3
C.54.3064:
	.word	PortA
	.byte	32
	.type	C.53.3063, @object
	.size	C.53.3063, 3
C.53.3063:
	.word	PortA
	.byte	16
	.type	C.52.3062, @object
	.size	C.52.3062, 3
C.52.3062:
	.word	PortA
	.byte	8
	.type	C.51.3061, @object
	.size	C.51.3061, 3
C.51.3061:
	.word	PortA
	.byte	4
	.type	C.50.3060, @object
	.size	C.50.3060, 3
C.50.3060:
	.word	PortA
	.byte	2
	.type	C.49.3059, @object
	.size	C.49.3059, 3
C.49.3059:
	.word	PortA
	.byte	1
	.type	C.48.3058, @object
	.size	C.48.3058, 6
C.48.3058:
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.p2align	2
.LEFDE0:
.LSFDE2:
	.long	.LEFDE2-.LASFDE2
.LASFDE2:
	.long	.Lframe0
	.long	.LFB0
	.long	.LFE0-.LFB0
	.p2align	2
.LEFDE2:
.LSFDE4:
	.long	.LEFDE4-.LASFDE4
.LASFDE4:
	.long	.Lframe0
	.long	.LFB1
	.long	.LFE1-.LFB1
	.p2align	2
.LEFDE4:
.LSFDE6:
	.long	.LEFDE6-.LASFDE6
.LASFDE6:
	.long	.Lframe0
	.long	.LFB2
	.long	.LFE2-.LFB2
	.p2align	2
.LEFDE6:
.LSFDE8:
	.long	.LEFDE8-.LASFDE8
.LASFDE8:
	.long	.Lframe0
	.long	.LFB3
	.long	.LFE3-.LFB3
	.p2align	2
.LEFDE8:
.LSFDE10:
	.long	.LEFDE10-.LASFDE10
.LASFDE10:
	.long	.Lframe0
	.long	.LFB4
	.long	.LFE4-.LFB4
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.p2align	2
.LEFDE14:
.LSFDE16:
	.long	.LEFDE16-.LASFDE16
.LASFDE16:
	.long	.Lframe0
	.long	.LFB8
	.long	.LFE8-.LFB8
	.p2align	2
.LEFDE16:
.LSFDE18:
	.long	.LEFDE18-.LASFDE18
.LASFDE18:
	.long	.Lframe0
	.long	.LFB9
	.long	.LFE9-.LFB9
	.p2align	2
.LEFDE18:
.LSFDE20:
	.long	.LEFDE20-.LASFDE20
.LASFDE20:
	.long	.Lframe0
	.long	.LFB10
	.long	.LFE10-.LFB10
	.p2align	2
.LEFDE20:
.LSFDE22:
	.long	.LEFDE22-.LASFDE22
.LASFDE22:
	.long	.Lframe0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.p2align	2
.LEFDE22:
.LSFDE24:
	.long	.LEFDE24-.LASFDE24
.LASFDE24:
	.long	.Lframe0
	.long	.LFB12
	.long	.LFE12-.LFB12
	.p2align	2
.LEFDE24:
.LSFDE26:
	.long	.LEFDE26-.LASFDE26
.LASFDE26:
	.long	.Lframe0
	.long	.LFB13
	.long	.LFE13-.LFB13
	.p2align	2
.LEFDE26:
.LSFDE28:
	.long	.LEFDE28-.LASFDE28
.LASFDE28:
	.long	.Lframe0
	.long	.LFB14
	.long	.LFE14-.LFB14
	.p2align	2
.LEFDE28:
.LSFDE30:
	.long	.LEFDE30-.LASFDE30
.LASFDE30:
	.long	.Lframe0
	.long	.LFB15
	.long	.LFE15-.LFB15
	.p2align	2
.LEFDE30:
.LSFDE32:
	.long	.LEFDE32-.LASFDE32
.LASFDE32:
	.long	.Lframe0
	.long	.LFB16
	.long	.LFE16-.LFB16
	.p2align	2
.LEFDE32:
.LSFDE34:
	.long	.LEFDE34-.LASFDE34
.LASFDE34:
	.long	.Lframe0
	.long	.LFB17
	.long	.LFE17-.LFB17
	.p2align	2
.LEFDE34:
.LSFDE36:
	.long	.LEFDE36-.LASFDE36
.LASFDE36:
	.long	.Lframe0
	.long	.LFB19
	.long	.LFE19-.LFB19
	.p2align	2
.LEFDE36:
.LSFDE38:
	.long	.LEFDE38-.LASFDE38
.LASFDE38:
	.long	.Lframe0
	.long	.LFB21
	.long	.LFE21-.LFB21
	.p2align	2
.LEFDE38:
.LSFDE40:
	.long	.LEFDE40-.LASFDE40
.LASFDE40:
	.long	.Lframe0
	.long	.LFB22
	.long	.LFE22-.LFB22
	.p2align	2
.LEFDE40:
.LSFDE42:
	.long	.LEFDE42-.LASFDE42
.LASFDE42:
	.long	.Lframe0
	.long	.LFB23
	.long	.LFE23-.LFB23
	.p2align	2
.LEFDE42:
.LSFDE44:
	.long	.LEFDE44-.LASFDE44
.LASFDE44:
	.long	.Lframe0
	.long	.LFB24
	.long	.LFE24-.LFB24
	.p2align	2
.LEFDE44:
.LSFDE46:
	.long	.LEFDE46-.LASFDE46
.LASFDE46:
	.long	.Lframe0
	.long	.LFB25
	.long	.LFE25-.LFB25
	.p2align	2
.LEFDE46:
.LSFDE48:
	.long	.LEFDE48-.LASFDE48
.LASFDE48:
	.long	.Lframe0
	.long	.LFB26
	.long	.LFE26-.LFB26
	.p2align	2
.LEFDE48:
.LSFDE50:
	.long	.LEFDE50-.LASFDE50
.LASFDE50:
	.long	.Lframe0
	.long	.LFB27
	.long	.LFE27-.LFB27
	.p2align	2
.LEFDE50:
.LSFDE52:
	.long	.LEFDE52-.LASFDE52
.LASFDE52:
	.long	.Lframe0
	.long	.LFB29
	.long	.LFE29-.LFB29
	.p2align	2
.LEFDE52:
.LSFDE54:
	.long	.LEFDE54-.LASFDE54
.LASFDE54:
	.long	.Lframe0
	.long	.LFB30
	.long	.LFE30-.LFB30
	.p2align	2
.LEFDE54:
.LSFDE56:
	.long	.LEFDE56-.LASFDE56
.LASFDE56:
	.long	.Lframe0
	.long	.LFB31
	.long	.LFE31-.LFB31
	.p2align	2
.LEFDE56:
.LSFDE58:
	.long	.LEFDE58-.LASFDE58
.LASFDE58:
	.long	.Lframe0
	.long	.LFB32
	.long	.LFE32-.LFB32
	.p2align	2
.LEFDE58:
.LSFDE60:
	.long	.LEFDE60-.LASFDE60
.LASFDE60:
	.long	.Lframe0
	.long	.LFB33
	.long	.LFE33-.LFB33
	.p2align	2
.LEFDE60:
.LSFDE62:
	.long	.LEFDE62-.LASFDE62
.LASFDE62:
	.long	.Lframe0
	.long	.LFB34
	.long	.LFE34-.LFB34
	.p2align	2
.LEFDE62:
.LSFDE64:
	.long	.LEFDE64-.LASFDE64
.LASFDE64:
	.long	.Lframe0
	.long	.LFB35
	.long	.LFE35-.LFB35
	.p2align	2
.LEFDE64:
.LSFDE66:
	.long	.LEFDE66-.LASFDE66
.LASFDE66:
	.long	.Lframe0
	.long	.LFB36
	.long	.LFE36-.LFB36
	.p2align	2
.LEFDE66:
.LSFDE68:
	.long	.LEFDE68-.LASFDE68
.LASFDE68:
	.long	.Lframe0
	.long	.LFB37
	.long	.LFE37-.LFB37
	.p2align	2
.LEFDE68:
.LSFDE70:
	.long	.LEFDE70-.LASFDE70
.LASFDE70:
	.long	.Lframe0
	.long	.LFB38
	.long	.LFE38-.LFB38
	.p2align	2
.LEFDE70:
.LSFDE72:
	.long	.LEFDE72-.LASFDE72
.LASFDE72:
	.long	.Lframe0
	.long	.LFB39
	.long	.LFE39-.LFB39
	.p2align	2
.LEFDE72:
.LSFDE74:
	.long	.LEFDE74-.LASFDE74
.LASFDE74:
	.long	.Lframe0
	.long	.LFB40
	.long	.LFE40-.LFB40
	.p2align	2
.LEFDE74:
.LSFDE76:
	.long	.LEFDE76-.LASFDE76
.LASFDE76:
	.long	.Lframe0
	.long	.LFB42
	.long	.LFE42-.LFB42
	.p2align	2
.LEFDE76:
.LSFDE78:
	.long	.LEFDE78-.LASFDE78
.LASFDE78:
	.long	.Lframe0
	.long	.LFB43
	.long	.LFE43-.LFB43
	.p2align	2
.LEFDE78:
.LSFDE80:
	.long	.LEFDE80-.LASFDE80
.LASFDE80:
	.long	.Lframe0
	.long	.LFB44
	.long	.LFE44-.LFB44
	.p2align	2
.LEFDE80:
.LSFDE82:
	.long	.LEFDE82-.LASFDE82
.LASFDE82:
	.long	.Lframe0
	.long	.LFB45
	.long	.LFE45-.LFB45
	.p2align	2
.LEFDE82:
.LSFDE84:
	.long	.LEFDE84-.LASFDE84
.LASFDE84:
	.long	.Lframe0
	.long	.LFB46
	.long	.LFE46-.LFB46
	.p2align	2
.LEFDE84:
.LSFDE86:
	.long	.LEFDE86-.LASFDE86
.LASFDE86:
	.long	.Lframe0
	.long	.LFB41
	.long	.LFE41-.LFB41
	.p2align	2
.LEFDE86:
.LSFDE88:
	.long	.LEFDE88-.LASFDE88
.LASFDE88:
	.long	.Lframe0
	.long	.LFB47
	.long	.LFE47-.LFB47
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
	.text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
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
	.long	.LVL6-1
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST1:
	.long	.LVL7
	.long	.LVL8
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL8
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
.LLST2:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL15
	.long	.LVL16
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
	.long	.LVL17
	.long	.LVL18-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL18-1
	.long	.LVL19
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST4:
	.long	.LVL20
	.long	.LVL21-1
	.word	0x5
	.byte	0x3
	.long	__main_process_additional_memory
	.long	0x0
	.long	0x0
.LLST5:
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
.LLST6:
	.long	.LVL23
	.long	.LVL25
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL36
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LVL39
	.word	0x6
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST7:
	.long	.LVL23
	.long	.LVL26-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26-1
	.long	.LVL40
	.word	0x6
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST8:
	.long	.LVL23
	.long	.LVL26-1
	.word	0x1
	.byte	0x62
	.long	0x0
	.long	0x0
.LLST9:
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LVL38
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST10:
	.long	.LVL28
	.long	.LVL31-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST11:
	.long	.LVL30
	.long	.LVL31-1
	.word	0x3
	.byte	0x84
	.sleb128 -38
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST12:
	.long	.LVL30
	.long	.LVL31-1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 1
	.long	0x0
	.long	0x0
.LLST13:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL33
	.long	.LVL34-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL35
	.long	.LVL37
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST14:
	.long	.LVL41
	.long	.LVL42-1
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
	.long	.LVL41
	.long	.LVL42-1
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
	.long	.LVL44-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST17:
	.long	.LVL46
	.long	.LVL47
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
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
.LLST18:
	.long	.LVL47
	.long	.LVL48-1
	.word	0x5
	.byte	0x3
	.long	__current_process
	.long	0x0
	.long	0x0
.LLST19:
	.long	.LVL49
	.long	.LVL51-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST20:
	.long	.LVL49
	.long	.LVL51-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST21:
	.long	.LVL49
	.long	.LVL51-1
	.word	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.long	.LVL51-1
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
.LLST22:
	.long	.LVL49
	.long	.LVL50
	.word	0x1
	.byte	0x62
	.long	.LVL50
	.long	.LVL51-1
	.word	0x3
	.byte	0x82
	.sleb128 -6
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST23:
	.long	.LVL52
	.long	.LVL55
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL55
	.long	.LFE29
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
	.long	.LVL54
	.long	.LVL56
	.word	0x6
	.byte	0x6a
	.byte	0x93
	.uleb128 0x1
	.byte	0x6b
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST25:
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
	.long	.LVL56
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST26:
	.long	.LVL58
	.long	.LVL59-1
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
	.long	.LVL58
	.long	.LVL59-1
	.word	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST28:
	.long	.LVL60
	.long	.LVL61-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST29:
	.long	.LVL62
	.long	.LVL63
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL68
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
	.long	.LVL65
	.long	.LVL66-1
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
	.long	.LVL64
	.long	.LVL67
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST32:
	.long	.LVL69
	.long	.LVL70
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST33:
	.long	.LVL71
	.long	.LVL73
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL73
	.long	.LFE34
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
	.long	.LVL72
	.long	.LVL73
	.word	0x3
	.byte	0x88
	.sleb128 4
	.byte	0x9f
	.long	.LVL73
	.long	.LFE34
	.word	0x3
	.byte	0x8e
	.sleb128 4
	.byte	0x9f
	.long	0x0
	.long	0x0
.LLST35:
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
.LLST36:
	.long	.LVL77
	.long	.LVL78
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST37:
	.long	.LVL81
	.long	.LVL82
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST38:
	.long	.LVL84
	.long	.LVL85-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL85-1
	.long	.LVL91
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0x0
	.long	0x0
.LLST39:
	.long	.LVL86
	.long	.LVL87
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL87
	.long	.LVL88-1
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	.LVL89
	.long	.LVL90
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL90
	.long	.LFE46
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
	.long	0x179d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF225
	.byte	0x1
	.long	.LASF226
	.long	.LASF227
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
	.uleb128 0x7
	.byte	0x6
	.byte	0x15
	.byte	0xd
	.long	0xe4
	.uleb128 0x8
	.long	.LASF14
	.byte	0x15
	.byte	0xe
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x9
	.string	"pin"
	.byte	0x15
	.byte	0xf
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"ddr"
	.byte	0x15
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
	.byte	0x15
	.byte	0x11
	.long	0xb1
	.uleb128 0x3
	.long	.LASF16
	.byte	0x15
	.byte	0x11
	.long	0x105
	.uleb128 0xa
	.byte	0x2
	.long	0xb1
	.uleb128 0x7
	.byte	0x3
	.byte	0x15
	.byte	0x13
	.long	0x130
	.uleb128 0x8
	.long	.LASF14
	.byte	0x15
	.byte	0x14
	.long	0xfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF17
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
	.long	0x10b
	.uleb128 0x3
	.long	.LASF18
	.byte	0x15
	.byte	0x16
	.long	0x146
	.uleb128 0xa
	.byte	0x2
	.long	0x10b
	.uleb128 0x7
	.byte	0x2
	.byte	0x14
	.byte	0xe
	.long	0x163
	.uleb128 0x9
	.string	"pin"
	.byte	0x14
	.byte	0xf
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0xc
	.string	"Led"
	.byte	0x14
	.byte	0x10
	.long	0x14c
	.uleb128 0x3
	.long	.LASF19
	.byte	0x14
	.byte	0x10
	.long	0x179
	.uleb128 0xa
	.byte	0x2
	.long	0x14c
	.uleb128 0x7
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.long	0x1a4
	.uleb128 0x8
	.long	.LASF20
	.byte	0x14
	.byte	0x13
	.long	0x1a4
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF21
	.byte	0x14
	.byte	0x14
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x16e
	.uleb128 0x3
	.long	.LASF22
	.byte	0x14
	.byte	0x15
	.long	0x17f
	.uleb128 0x7
	.byte	0x2
	.byte	0x20
	.byte	0xe
	.long	0x1cc
	.uleb128 0x9
	.string	"pin"
	.byte	0x20
	.byte	0xf
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF23
	.byte	0x20
	.byte	0x10
	.long	0x1b5
	.uleb128 0x3
	.long	.LASF24
	.byte	0x20
	.byte	0x10
	.long	0x1e2
	.uleb128 0xa
	.byte	0x2
	.long	0x1b5
	.uleb128 0x7
	.byte	0x3
	.byte	0x20
	.byte	0x12
	.long	0x20d
	.uleb128 0x8
	.long	.LASF25
	.byte	0x20
	.byte	0x13
	.long	0x1d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF26
	.byte	0x20
	.byte	0x14
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0x0
	.uleb128 0x3
	.long	.LASF27
	.byte	0x20
	.byte	0x15
	.long	0x218
	.uleb128 0xa
	.byte	0x2
	.long	0x1e8
	.uleb128 0x5
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.long	0x269
	.uleb128 0x6
	.long	.LASF28
	.sleb128 0
	.uleb128 0x6
	.long	.LASF29
	.sleb128 1
	.uleb128 0x6
	.long	.LASF30
	.sleb128 2
	.uleb128 0x6
	.long	.LASF31
	.sleb128 3
	.uleb128 0x6
	.long	.LASF32
	.sleb128 4
	.uleb128 0x6
	.long	.LASF33
	.sleb128 5
	.uleb128 0x6
	.long	.LASF34
	.sleb128 6
	.uleb128 0x6
	.long	.LASF35
	.sleb128 7
	.uleb128 0x6
	.long	.LASF36
	.sleb128 8
	.uleb128 0x6
	.long	.LASF37
	.sleb128 9
	.uleb128 0x6
	.long	.LASF38
	.sleb128 10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.byte	0x25
	.byte	0x2f
	.long	0x2ae
	.uleb128 0x6
	.long	.LASF39
	.sleb128 0
	.uleb128 0x6
	.long	.LASF40
	.sleb128 1
	.uleb128 0x6
	.long	.LASF41
	.sleb128 2
	.uleb128 0x6
	.long	.LASF42
	.sleb128 3
	.uleb128 0x6
	.long	.LASF43
	.sleb128 4
	.uleb128 0x6
	.long	.LASF44
	.sleb128 5
	.uleb128 0x6
	.long	.LASF45
	.sleb128 6
	.uleb128 0x6
	.long	.LASF46
	.sleb128 7
	.uleb128 0x6
	.long	.LASF47
	.sleb128 8
	.uleb128 0x6
	.long	.LASF48
	.sleb128 9
	.byte	0x0
	.uleb128 0x7
	.byte	0x7
	.byte	0x25
	.byte	0x40
	.long	0x2ef
	.uleb128 0x8
	.long	.LASF49
	.byte	0x25
	.byte	0x41
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF50
	.byte	0x25
	.byte	0x42
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF51
	.byte	0x25
	.byte	0x43
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.long	.LASF52
	.byte	0x25
	.byte	0x44
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF53
	.byte	0x25
	.byte	0x45
	.long	0x2ae
	.uleb128 0x3
	.long	.LASF54
	.byte	0x25
	.byte	0x45
	.long	0x305
	.uleb128 0xa
	.byte	0x2
	.long	0x2ae
	.uleb128 0x5
	.byte	0x2
	.byte	0x25
	.byte	0x47
	.long	0x320
	.uleb128 0x6
	.long	.LASF55
	.sleb128 0
	.uleb128 0x6
	.long	.LASF56
	.sleb128 1
	.byte	0x0
	.uleb128 0x3
	.long	.LASF57
	.byte	0x25
	.byte	0x4a
	.long	0x30b
	.uleb128 0x7
	.byte	0x8
	.byte	0x25
	.byte	0x4c
	.long	0x36c
	.uleb128 0x8
	.long	.LASF58
	.byte	0x25
	.byte	0x4d
	.long	0x2fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF59
	.byte	0x25
	.byte	0x4e
	.long	0xe4
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF60
	.byte	0x25
	.byte	0x4f
	.long	0x320
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.long	.LASF61
	.byte	0x25
	.byte	0x50
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0x0
	.uleb128 0x3
	.long	.LASF62
	.byte	0x25
	.byte	0x51
	.long	0x32b
	.uleb128 0x3
	.long	.LASF63
	.byte	0x25
	.byte	0x51
	.long	0x382
	.uleb128 0xa
	.byte	0x2
	.long	0x32b
	.uleb128 0x7
	.byte	0x5
	.byte	0x27
	.byte	0x14
	.long	0x3bb
	.uleb128 0x8
	.long	.LASF49
	.byte	0x27
	.byte	0x15
	.long	0x34
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF64
	.byte	0x27
	.byte	0x16
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.long	.LASF65
	.byte	0x27
	.byte	0x17
	.long	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0x0
	.uleb128 0x3
	.long	.LASF66
	.byte	0x27
	.byte	0x18
	.long	0x388
	.uleb128 0x3
	.long	.LASF67
	.byte	0x27
	.byte	0x18
	.long	0x3d1
	.uleb128 0xa
	.byte	0x2
	.long	0x388
	.uleb128 0x7
	.byte	0x7
	.byte	0x27
	.byte	0x1a
	.long	0x3fc
	.uleb128 0x8
	.long	.LASF68
	.byte	0x27
	.byte	0x1b
	.long	0x3bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF69
	.byte	0x27
	.byte	0x1c
	.long	0x13b
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.long	.LASF70
	.byte	0x27
	.byte	0x1d
	.long	0x407
	.uleb128 0xa
	.byte	0x2
	.long	0x3d7
	.uleb128 0xd
	.long	.LASF228
	.byte	0x2
	.byte	0x2d
	.byte	0xd
	.long	0x428
	.uleb128 0x8
	.long	.LASF71
	.byte	0x2d
	.byte	0xd
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x3
	.long	.LASF72
	.byte	0x2d
	.byte	0xd
	.long	0x433
	.uleb128 0xa
	.byte	0x2
	.long	0x40d
	.uleb128 0x3
	.long	.LASF73
	.byte	0x2d
	.byte	0x12
	.long	0x444
	.uleb128 0xe
	.long	0x44b
	.uleb128 0xf
	.byte	0x0
	.uleb128 0x7
	.byte	0x2
	.byte	0x2f
	.byte	0x1c
	.long	0x462
	.uleb128 0x8
	.long	.LASF74
	.byte	0x2f
	.byte	0x1d
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.byte	0x0
	.uleb128 0x10
	.byte	0x2
	.uleb128 0x3
	.long	.LASF75
	.byte	0x2f
	.byte	0x20
	.long	0x46f
	.uleb128 0xa
	.byte	0x2
	.long	0x44b
	.uleb128 0x7
	.byte	0x6
	.byte	0x2b
	.byte	0x11
	.long	0x4a8
	.uleb128 0x8
	.long	.LASF76
	.byte	0x2b
	.byte	0x12
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x0
	.uleb128 0x8
	.long	.LASF77
	.byte	0x2b
	.byte	0x13
	.long	0x4d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.long	.LASF78
	.byte	0x2b
	.byte	0x16
	.long	0x462
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0x0
	.uleb128 0x3
	.long	.LASF79
	.byte	0x2b
	.byte	0x17
	.long	0x4b3
	.uleb128 0xa
	.byte	0x2
	.long	0x475
	.uleb128 0x5
	.byte	0x2
	.byte	0x35
	.byte	0x12
	.long	0x4ec
	.uleb128 0x6
	.long	.LASF80
	.sleb128 0
	.uleb128 0x6
	.long	.LASF81
	.sleb128 1
	.uleb128 0x6
	.long	.LASF82
	.sleb128 2
	.uleb128 0x6
	.long	.LASF83
	.sleb128 3
	.uleb128 0x6
	.long	.LASF84
	.sleb128 4
	.uleb128 0x6
	.long	.LASF85
	.sleb128 5
	.uleb128 0x6
	.long	.LASF86
	.sleb128 6
	.byte	0x0
	.uleb128 0x11
	.long	.LASF229
	.byte	0x1b
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.long	0x505
	.uleb128 0x12
	.string	"led"
	.byte	0x1b
	.byte	0xe
	.long	0x16e
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.long	.LASF230
	.byte	0x1e
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.long	0x51f
	.uleb128 0x14
	.long	.LASF25
	.byte	0x1e
	.byte	0xf
	.long	0x1d7
	.byte	0x0
	.uleb128 0x15
	.long	.LASF231
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x552
	.uleb128 0x14
	.long	.LASF87
	.byte	0x30
	.byte	0x13
	.long	0x34
	.uleb128 0x14
	.long	.LASF74
	.byte	0x30
	.byte	0x13
	.long	0x462
	.uleb128 0x16
	.long	.LASF127
	.byte	0x30
	.byte	0x14
	.long	0x464
	.byte	0x0
	.uleb128 0x17
	.byte	0x1
	.long	.LASF232
	.byte	0x30
	.byte	0x30
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.long	.LASF89
	.byte	0x30
	.byte	0x75
	.byte	0x1
	.long	0x462
	.byte	0x3
	.long	0x579
	.uleb128 0x14
	.long	.LASF88
	.byte	0x30
	.byte	0x75
	.long	0x428
	.byte	0x0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF233
	.byte	0x30
	.byte	0x6b
	.long	0x428
	.byte	0x3
	.uleb128 0x18
	.byte	0x1
	.long	.LASF90
	.byte	0x37
	.byte	0x14
	.byte	0x1
	.long	0x428
	.byte	0x1
	.long	0x5a4
	.uleb128 0x14
	.long	.LASF91
	.byte	0x37
	.byte	0x14
	.long	0xa6
	.byte	0x0
	.uleb128 0x1a
	.long	0x552
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF92
	.byte	0x2
	.byte	0x9
	.long	.LFB0
	.long	.LFE0
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF93
	.byte	0x2
	.byte	0x10
	.long	.LFB1
	.long	.LFE1
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF143
	.byte	0x2
	.byte	0x12
	.long	0x34
	.long	.LFB2
	.long	.LFE2
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF94
	.byte	0x18
	.byte	0xe
	.long	.LFB3
	.long	.LFE3
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF95
	.byte	0x18
	.byte	0x14
	.long	.LFB4
	.long	.LFE4
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF96
	.byte	0x17
	.byte	0x16
	.long	.LFB6
	.long	.LFE6
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x6b2
	.uleb128 0x1e
	.long	0x4ec
	.long	.LBB42
	.long	.LBE42
	.byte	0x17
	.byte	0x17
	.long	0x655
	.uleb128 0x1f
	.long	0x4f9
	.byte	0x6
	.byte	0x3
	.long	LeftYellow
	.byte	0x9f
	.byte	0x0
	.uleb128 0x1e
	.long	0x4ec
	.long	.LBB44
	.long	.LBE44
	.byte	0x17
	.byte	0x18
	.long	0x675
	.uleb128 0x1f
	.long	0x4f9
	.byte	0x6
	.byte	0x3
	.long	LeftRed
	.byte	0x9f
	.byte	0x0
	.uleb128 0x1e
	.long	0x4ec
	.long	.LBB46
	.long	.LBE46
	.byte	0x17
	.byte	0x19
	.long	0x695
	.uleb128 0x1f
	.long	0x4f9
	.byte	0x6
	.byte	0x3
	.long	RightRed
	.byte	0x9f
	.byte	0x0
	.uleb128 0x20
	.long	0x4ec
	.long	.LBB48
	.long	.LBE48
	.byte	0x17
	.byte	0x1a
	.uleb128 0x1f
	.long	0x4f9
	.byte	0x6
	.byte	0x3
	.long	RightYellow
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF97
	.byte	0x17
	.byte	0x22
	.long	.LFB7
	.long	.LFE7
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x21
	.long	0x505
	.long	.LFB8
	.long	.LFE8
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x6e5
	.uleb128 0x22
	.long	0x513
	.long	.LLST0
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF102
	.byte	0x1e
	.byte	0x13
	.byte	0x1
	.long	.LFB9
	.long	.LFE9
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x70e
	.uleb128 0x24
	.long	.LASF25
	.byte	0x1e
	.byte	0x13
	.long	0x20d
	.long	.LLST1
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF98
	.byte	0x1d
	.byte	0x10
	.long	.LFB10
	.long	.LFE10
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x7a3
	.uleb128 0x1e
	.long	0x505
	.long	.LBB50
	.long	.LBE50
	.byte	0x1d
	.byte	0x11
	.long	0x746
	.uleb128 0x1f
	.long	0x513
	.byte	0x6
	.byte	0x3
	.long	ButtonLeftBackward
	.byte	0x9f
	.byte	0x0
	.uleb128 0x1e
	.long	0x505
	.long	.LBB52
	.long	.LBE52
	.byte	0x1d
	.byte	0x12
	.long	0x766
	.uleb128 0x1f
	.long	0x513
	.byte	0x6
	.byte	0x3
	.long	ButtonLeftForward
	.byte	0x9f
	.byte	0x0
	.uleb128 0x1e
	.long	0x505
	.long	.LBB54
	.long	.LBE54
	.byte	0x1d
	.byte	0x13
	.long	0x786
	.uleb128 0x1f
	.long	0x513
	.byte	0x6
	.byte	0x3
	.long	ButtonRightBackward
	.byte	0x9f
	.byte	0x0
	.uleb128 0x20
	.long	0x505
	.long	.LBB56
	.long	.LBE56
	.byte	0x1d
	.byte	0x14
	.uleb128 0x1f
	.long	0x513
	.byte	0x6
	.byte	0x3
	.long	ButtonRightForward
	.byte	0x9f
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF99
	.byte	0x1d
	.byte	0x16
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF100
	.byte	0x23
	.byte	0xf
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF101
	.byte	0x23
	.byte	0x1e
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF103
	.byte	0x26
	.byte	0xf
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x808
	.uleb128 0x24
	.long	.LASF68
	.byte	0x26
	.byte	0xf
	.long	0x3c6
	.long	.LLST2
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF104
	.byte	0x26
	.byte	0x14
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x831
	.uleb128 0x24
	.long	.LASF68
	.byte	0x26
	.byte	0x14
	.long	0x3fc
	.long	.LLST3
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF105
	.byte	0x22
	.byte	0x10
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF106
	.byte	0x22
	.byte	0x14
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF107
	.byte	0x30
	.byte	0x1b
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8a7
	.uleb128 0x20
	.long	0x51f
	.long	.LBB58
	.long	.LBE58
	.byte	0x30
	.byte	0x27
	.uleb128 0x25
	.long	0x53b
	.byte	0x0
	.uleb128 0x22
	.long	0x530
	.long	.LLST4
	.uleb128 0x26
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x27
	.long	0x546
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
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF108
	.byte	0x30
	.byte	0x37
	.long	.LFB21
	.long	.LFE21
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x8cf
	.uleb128 0x28
	.long	0x552
	.long	.LBB60
	.long	.LBE60
	.byte	0x30
	.byte	0x38
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF114
	.byte	0x30
	.byte	0x3b
	.byte	0x1
	.long	0x428
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x98a
	.uleb128 0x24
	.long	.LASF109
	.byte	0x30
	.byte	0x3b
	.long	0x98a
	.long	.LLST5
	.uleb128 0x24
	.long	.LASF110
	.byte	0x30
	.byte	0x3b
	.long	0x462
	.long	.LLST6
	.uleb128 0x24
	.long	.LASF77
	.byte	0x30
	.byte	0x3b
	.long	0x4d
	.long	.LLST7
	.uleb128 0x24
	.long	.LASF111
	.byte	0x30
	.byte	0x3b
	.long	0x34
	.long	.LLST8
	.uleb128 0x2a
	.long	.LASF78
	.byte	0x30
	.byte	0x40
	.long	0x990
	.long	.LLST9
	.uleb128 0x2a
	.long	.LASF112
	.byte	0x30
	.byte	0x42
	.long	0x990
	.long	.LLST10
	.uleb128 0x2b
	.long	.LASF113
	.byte	0x30
	.byte	0x49
	.long	0x428
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2c
	.long	0x51f
	.long	.LBB62
	.long	.Ldebug_ranges0+0x0
	.byte	0x30
	.byte	0x49
	.uleb128 0x22
	.long	0x53b
	.long	.LLST11
	.uleb128 0x22
	.long	0x530
	.long	.LLST12
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x2e
	.long	0x546
	.long	.LLST13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.byte	0x2
	.long	0x439
	.uleb128 0xa
	.byte	0x2
	.long	0x34
	.uleb128 0x29
	.byte	0x1
	.long	.LASF115
	.byte	0x30
	.byte	0x54
	.byte	0x1
	.long	0x428
	.long	.LFB23
	.long	.LFE23
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x9d2
	.uleb128 0x24
	.long	.LASF109
	.byte	0x30
	.byte	0x54
	.long	0x98a
	.long	.LLST14
	.uleb128 0x24
	.long	.LASF110
	.byte	0x30
	.byte	0x54
	.long	0x462
	.long	.LLST15
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF116
	.byte	0x30
	.byte	0x58
	.byte	0x1
	.long	0x428
	.long	.LFB24
	.long	.LFE24
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0x9ff
	.uleb128 0x24
	.long	.LASF109
	.byte	0x30
	.byte	0x58
	.long	0x98a
	.long	.LLST16
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF117
	.byte	0x30
	.byte	0x5d
	.byte	0x1
	.long	.LFB25
	.long	.LFE25
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa3d
	.uleb128 0x2f
	.long	.LASF118
	.byte	0x30
	.byte	0x5d
	.long	0x464
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x2f
	.long	.LASF119
	.byte	0x30
	.byte	0x5d
	.long	0x464
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x0
	.uleb128 0x1a
	.long	0x579
	.long	.LFB26
	.long	.LFE26
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF120
	.byte	0x30
	.byte	0x6f
	.byte	0x1
	.long	.LFB27
	.long	.LFE27
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xa86
	.uleb128 0x24
	.long	.LASF119
	.byte	0x30
	.byte	0x6f
	.long	0x428
	.long	.LLST17
	.uleb128 0x2a
	.long	.LASF121
	.byte	0x30
	.byte	0x70
	.long	0x428
	.long	.LLST18
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF122
	.byte	0x2b
	.byte	0x31
	.byte	0x1
	.long	0x428
	.long	.LFB29
	.long	.LFE29
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb17
	.uleb128 0x24
	.long	.LASF109
	.byte	0x2b
	.byte	0x31
	.long	0x98a
	.long	.LLST19
	.uleb128 0x24
	.long	.LASF123
	.byte	0x2b
	.byte	0x31
	.long	0x462
	.long	.LLST20
	.uleb128 0x24
	.long	.LASF77
	.byte	0x2b
	.byte	0x31
	.long	0x4d
	.long	.LLST21
	.uleb128 0x24
	.long	.LASF87
	.byte	0x2b
	.byte	0x31
	.long	0x34
	.long	.LLST22
	.uleb128 0x2a
	.long	.LASF88
	.byte	0x2b
	.byte	0x32
	.long	0x428
	.long	.LLST23
	.uleb128 0x30
	.string	"ext"
	.byte	0x2b
	.byte	0x34
	.long	0x4a8
	.long	.LLST24
	.uleb128 0x20
	.long	0x55b
	.long	.LBB66
	.long	.LBE66
	.byte	0x2b
	.byte	0x34
	.uleb128 0x22
	.long	0x56d
	.long	.LLST25
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF124
	.byte	0x2b
	.byte	0x3b
	.byte	0x1
	.long	0x428
	.long	.LFB30
	.long	.LFE30
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb53
	.uleb128 0x24
	.long	.LASF109
	.byte	0x2b
	.byte	0x3b
	.long	0x98a
	.long	.LLST26
	.uleb128 0x24
	.long	.LASF123
	.byte	0x2b
	.byte	0x3b
	.long	0x462
	.long	.LLST27
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF125
	.byte	0x2b
	.byte	0x3f
	.byte	0x1
	.long	0x428
	.long	.LFB31
	.long	.LFE31
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xb80
	.uleb128 0x24
	.long	.LASF109
	.byte	0x2b
	.byte	0x3f
	.long	0x98a
	.long	.LLST28
	.byte	0x0
	.uleb128 0x23
	.byte	0x1
	.long	.LASF126
	.byte	0x2b
	.byte	0x43
	.byte	0x1
	.long	.LFB32
	.long	.LFE32
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xbd1
	.uleb128 0x24
	.long	.LASF127
	.byte	0x2b
	.byte	0x43
	.long	0x428
	.long	.LLST29
	.uleb128 0x30
	.string	"pcb"
	.byte	0x2b
	.byte	0x45
	.long	0x4a8
	.long	.LLST30
	.uleb128 0x20
	.long	0x55b
	.long	.LBB68
	.long	.LBE68
	.byte	0x2b
	.byte	0x45
	.uleb128 0x22
	.long	0x56d
	.long	.LLST31
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF128
	.byte	0x2b
	.byte	0x4c
	.byte	0x1
	.long	0x34
	.long	.LFB33
	.long	.LFE33
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xbfe
	.uleb128 0x24
	.long	.LASF127
	.byte	0x2b
	.byte	0x4c
	.long	0x428
	.long	.LLST32
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF129
	.byte	0x2b
	.byte	0x50
	.byte	0x1
	.long	0x4d
	.long	.LFB34
	.long	.LFE34
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc3a
	.uleb128 0x24
	.long	.LASF127
	.byte	0x2b
	.byte	0x50
	.long	0x428
	.long	.LLST33
	.uleb128 0x30
	.string	"pcb"
	.byte	0x2b
	.byte	0x51
	.long	0x4a8
	.long	.LLST34
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF130
	.byte	0x2b
	.byte	0x55
	.byte	0x1
	.long	0x4d
	.long	.LFB35
	.long	.LFE35
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc67
	.uleb128 0x24
	.long	.LASF127
	.byte	0x2b
	.byte	0x55
	.long	0x428
	.long	.LLST35
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF131
	.byte	0x2b
	.byte	0x59
	.byte	0x1
	.long	0x462
	.long	.LFB36
	.long	.LFE36
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xc94
	.uleb128 0x24
	.long	.LASF88
	.byte	0x2b
	.byte	0x59
	.long	0x428
	.long	.LLST36
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF132
	.byte	0x2b
	.byte	0x61
	.long	.LFB37
	.long	.LFE37
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xcda
	.uleb128 0x2b
	.long	.LASF133
	.byte	0x2b
	.byte	0x66
	.long	0x4a8
	.byte	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x20
	.long	0x55b
	.long	.LBB70
	.long	.LBE70
	.byte	0x2b
	.byte	0x66
	.uleb128 0x1f
	.long	0x56d
	.byte	0x5
	.byte	0x3
	.long	__current_process
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF134
	.byte	0x37
	.byte	0xe
	.long	.LFB38
	.long	.LFE38
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF135
	.byte	0x37
	.byte	0x12
	.long	.LFB39
	.long	.LFE39
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x21
	.long	0x586
	.long	.LFB40
	.long	.LFE40
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd21
	.uleb128 0x22
	.long	0x598
	.long	.LLST37
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.long	.LASF136
	.byte	0x2a
	.byte	0xd
	.long	.LFB42
	.long	.LFE42
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xd5e
	.uleb128 0x2b
	.long	.LASF137
	.byte	0x2a
	.byte	0xe
	.long	0x2fa
	.byte	0x6
	.byte	0x3
	.long	Timer3
	.byte	0x9f
	.uleb128 0x2b
	.long	.LASF58
	.byte	0x2a
	.byte	0xf
	.long	0x377
	.byte	0x6
	.byte	0x3
	.long	Timer3A
	.byte	0x9f
	.byte	0x0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF138
	.byte	0x2a
	.byte	0x16
	.long	.LFB43
	.long	.LFE43
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF139
	.byte	0x2a
	.byte	0x18
	.long	.LFB44
	.long	.LFE44
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF140
	.byte	0x29
	.byte	0x10
	.long	.LFB45
	.long	.LFE45
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF141
	.byte	0x29
	.byte	0x15
	.byte	0x1
	.long	0x428
	.long	.LFB46
	.long	.LFE46
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.long	0xde9
	.uleb128 0x24
	.long	.LASF142
	.byte	0x29
	.byte	0x15
	.long	0xa6
	.long	.LLST38
	.uleb128 0x30
	.string	"p"
	.byte	0x29
	.byte	0x16
	.long	0x428
	.long	.LLST39
	.uleb128 0x20
	.long	0x586
	.long	.LBB72
	.long	.LBE72
	.byte	0x29
	.byte	0x18
	.uleb128 0x31
	.long	0x598
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
	.byte	0x1
	.long	.LASF144
	.byte	0x3d
	.byte	0x16
	.byte	0x1
	.long	.LFB41
	.long	.LFE41
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF145
	.byte	0x29
	.byte	0x1d
	.long	.LFB47
	.long	.LFE47
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x1b
	.byte	0x1
	.long	.LASF146
	.byte	0x29
	.byte	0x34
	.long	.LFB48
	.long	.LFE48
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 0
	.uleb128 0x33
	.long	.LASF147
	.byte	0x7
	.word	0x12e
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF148
	.byte	0x7
	.word	0x138
	.long	0xe42
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.byte	0x2
	.long	0xe48
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF149
	.uleb128 0x34
	.long	.LASF150
	.byte	0x2
	.byte	0x7
	.long	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF151
	.byte	0x1a
	.byte	0xd
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF152
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF153
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF154
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF155
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF156
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF157
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF158
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF159
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF160
	.byte	0x1a
	.byte	0xe
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF161
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF162
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF163
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF164
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF165
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF166
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF167
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF168
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF169
	.byte	0x1a
	.byte	0xf
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF170
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF171
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF172
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF173
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF174
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF175
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF176
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF177
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF178
	.byte	0x1a
	.byte	0x10
	.long	0xef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF179
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF180
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF181
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF182
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF183
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF184
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF185
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF186
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF187
	.byte	0x1c
	.byte	0xd
	.long	0x163
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF188
	.byte	0x1c
	.byte	0xe
	.long	0x163
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF189
	.byte	0x1c
	.byte	0xf
	.long	0x163
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF190
	.byte	0x1c
	.byte	0x10
	.long	0x163
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF191
	.byte	0x1c
	.byte	0x11
	.long	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF192
	.byte	0x1c
	.byte	0x12
	.long	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF193
	.byte	0x1c
	.byte	0x13
	.long	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF194
	.byte	0x1c
	.byte	0x14
	.long	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF195
	.byte	0x1c
	.byte	0x15
	.long	0x1aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	0x16e
	.long	0x10b5
	.uleb128 0x36
	.long	0x58
	.byte	0x1
	.byte	0x0
	.uleb128 0x34
	.long	.LASF196
	.byte	0x17
	.byte	0x10
	.long	0x10a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF197
	.byte	0x17
	.byte	0x11
	.long	0x10a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF198
	.byte	0x17
	.byte	0x12
	.long	0x10a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF199
	.byte	0x17
	.byte	0x13
	.long	0x10a5
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.long	0x16e
	.long	0x10f9
	.uleb128 0x36
	.long	0x58
	.byte	0x3
	.byte	0x0
	.uleb128 0x34
	.long	.LASF200
	.byte	0x17
	.byte	0x14
	.long	0x10e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF201
	.byte	0x21
	.byte	0xd
	.long	0x1cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF202
	.byte	0x21
	.byte	0xe
	.long	0x1cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF203
	.byte	0x21
	.byte	0xf
	.long	0x1cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF204
	.byte	0x21
	.byte	0x10
	.long	0x1cc
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF205
	.byte	0x24
	.byte	0xe
	.long	0x2ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF206
	.byte	0x24
	.byte	0xf
	.long	0x2ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF207
	.byte	0x24
	.byte	0x10
	.long	0x2ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF208
	.byte	0x24
	.byte	0x11
	.long	0x2ef
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF209
	.byte	0x24
	.byte	0x13
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF210
	.byte	0x24
	.byte	0x14
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF211
	.byte	0x24
	.byte	0x15
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF212
	.byte	0x24
	.byte	0x16
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF213
	.byte	0x24
	.byte	0x17
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF214
	.byte	0x24
	.byte	0x18
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF215
	.byte	0x24
	.byte	0x19
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF216
	.byte	0x24
	.byte	0x1a
	.long	0x36c
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF217
	.byte	0x28
	.byte	0xe
	.long	0x3bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF218
	.byte	0x28
	.byte	0xf
	.long	0x3bb
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF219
	.byte	0x2f
	.byte	0x10
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF220
	.byte	0x2f
	.byte	0x14
	.long	0x34
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF221
	.byte	0x2f
	.byte	0x23
	.long	0x428
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF222
	.byte	0x2b
	.byte	0xe
	.long	0x4d
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF223
	.byte	0x37
	.byte	0xc
	.long	0x428
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.long	.LASF224
	.byte	0x3c
	.byte	0xf
	.long	0x66
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF147
	.byte	0x7
	.word	0x12e
	.long	0x86
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.long	.LASF148
	.byte	0x7
	.word	0x138
	.long	0xe42
	.byte	0x1
	.byte	0x1
	.uleb128 0x37
	.long	.LASF150
	.byte	0x2
	.byte	0x7
	.long	0x34
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_reset_status
	.uleb128 0x37
	.long	.LASF151
	.byte	0x1a
	.byte	0xd
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortA
	.uleb128 0x37
	.long	.LASF152
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA0
	.uleb128 0x37
	.long	.LASF153
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA1
	.uleb128 0x37
	.long	.LASF154
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA2
	.uleb128 0x37
	.long	.LASF155
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA3
	.uleb128 0x37
	.long	.LASF156
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA4
	.uleb128 0x37
	.long	.LASF157
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA5
	.uleb128 0x37
	.long	.LASF158
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA6
	.uleb128 0x37
	.long	.LASF159
	.byte	0x1a
	.byte	0xd
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinA7
	.uleb128 0x37
	.long	.LASF160
	.byte	0x1a
	.byte	0xe
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortB
	.uleb128 0x37
	.long	.LASF161
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB0
	.uleb128 0x37
	.long	.LASF162
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB1
	.uleb128 0x37
	.long	.LASF163
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB2
	.uleb128 0x37
	.long	.LASF164
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB3
	.uleb128 0x37
	.long	.LASF165
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB4
	.uleb128 0x37
	.long	.LASF166
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB5
	.uleb128 0x37
	.long	.LASF167
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB6
	.uleb128 0x37
	.long	.LASF168
	.byte	0x1a
	.byte	0xe
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinB7
	.uleb128 0x37
	.long	.LASF169
	.byte	0x1a
	.byte	0xf
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortC
	.uleb128 0x37
	.long	.LASF170
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC0
	.uleb128 0x37
	.long	.LASF171
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC1
	.uleb128 0x37
	.long	.LASF172
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC2
	.uleb128 0x37
	.long	.LASF173
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC3
	.uleb128 0x37
	.long	.LASF174
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC4
	.uleb128 0x37
	.long	.LASF175
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC5
	.uleb128 0x37
	.long	.LASF176
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC6
	.uleb128 0x37
	.long	.LASF177
	.byte	0x1a
	.byte	0xf
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinC7
	.uleb128 0x37
	.long	.LASF178
	.byte	0x1a
	.byte	0x10
	.long	0xef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PortD
	.uleb128 0x37
	.long	.LASF179
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD0
	.uleb128 0x37
	.long	.LASF180
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD1
	.uleb128 0x37
	.long	.LASF181
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD2
	.uleb128 0x37
	.long	.LASF182
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD3
	.uleb128 0x37
	.long	.LASF183
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD4
	.uleb128 0x37
	.long	.LASF184
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD5
	.uleb128 0x37
	.long	.LASF185
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD6
	.uleb128 0x37
	.long	.LASF186
	.byte	0x1a
	.byte	0x10
	.long	0x130
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PinD7
	.uleb128 0x37
	.long	.LASF187
	.byte	0x1c
	.byte	0xd
	.long	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftYellow
	.uleb128 0x37
	.long	.LASF188
	.byte	0x1c
	.byte	0xe
	.long	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftRed
	.uleb128 0x37
	.long	.LASF189
	.byte	0x1c
	.byte	0xf
	.long	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightRed
	.uleb128 0x37
	.long	.LASF190
	.byte	0x1c
	.byte	0x10
	.long	0x163
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightYellow
	.uleb128 0x37
	.long	.LASF191
	.byte	0x1c
	.byte	0x11
	.long	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RedLeds
	.uleb128 0x37
	.long	.LASF192
	.byte	0x1c
	.byte	0x12
	.long	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	YellowLeds
	.uleb128 0x37
	.long	.LASF193
	.byte	0x1c
	.byte	0x13
	.long	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightLeds
	.uleb128 0x37
	.long	.LASF194
	.byte	0x1c
	.byte	0x14
	.long	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftLeds
	.uleb128 0x37
	.long	.LASF195
	.byte	0x1c
	.byte	0x15
	.long	0x1aa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	AllLeds
	.uleb128 0x37
	.long	.LASF196
	.byte	0x17
	.byte	0x10
	.long	0x10a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	redLedsArray
	.uleb128 0x37
	.long	.LASF197
	.byte	0x17
	.byte	0x11
	.long	0x10a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	yellowLedsArray
	.uleb128 0x37
	.long	.LASF198
	.byte	0x17
	.byte	0x12
	.long	0x10a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	rightLedsArray
	.uleb128 0x37
	.long	.LASF199
	.byte	0x17
	.byte	0x13
	.long	0x10a5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	leftLedsArray
	.uleb128 0x37
	.long	.LASF200
	.byte	0x17
	.byte	0x14
	.long	0x10e9
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	allLedsArray
	.uleb128 0x37
	.long	.LASF201
	.byte	0x21
	.byte	0xd
	.long	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonRightBackward
	.uleb128 0x37
	.long	.LASF202
	.byte	0x21
	.byte	0xe
	.long	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonRightForward
	.uleb128 0x37
	.long	.LASF203
	.byte	0x21
	.byte	0xf
	.long	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonLeftBackward
	.uleb128 0x37
	.long	.LASF204
	.byte	0x21
	.byte	0x10
	.long	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ButtonLeftForward
	.uleb128 0x37
	.long	.LASF205
	.byte	0x24
	.byte	0xe
	.long	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0
	.uleb128 0x37
	.long	.LASF206
	.byte	0x24
	.byte	0xf
	.long	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1
	.uleb128 0x37
	.long	.LASF207
	.byte	0x24
	.byte	0x10
	.long	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2
	.uleb128 0x37
	.long	.LASF208
	.byte	0x24
	.byte	0x11
	.long	0x2ef
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3
	.uleb128 0x37
	.long	.LASF209
	.byte	0x24
	.byte	0x13
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0A
	.uleb128 0x37
	.long	.LASF210
	.byte	0x24
	.byte	0x14
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer0B
	.uleb128 0x37
	.long	.LASF211
	.byte	0x24
	.byte	0x15
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1A
	.uleb128 0x37
	.long	.LASF212
	.byte	0x24
	.byte	0x16
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer1B
	.uleb128 0x37
	.long	.LASF213
	.byte	0x24
	.byte	0x17
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2A
	.uleb128 0x37
	.long	.LASF214
	.byte	0x24
	.byte	0x18
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer2B
	.uleb128 0x37
	.long	.LASF215
	.byte	0x24
	.byte	0x19
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3A
	.uleb128 0x37
	.long	.LASF216
	.byte	0x24
	.byte	0x1a
	.long	0x36c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Timer3B
	.uleb128 0x37
	.long	.LASF217
	.byte	0x28
	.byte	0xe
	.long	0x3bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	LeftMotor
	.uleb128 0x37
	.long	.LASF218
	.byte	0x28
	.byte	0xf
	.long	0x3bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	RightMotor
	.uleb128 0x37
	.long	.LASF219
	.byte	0x2f
	.byte	0x10
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__default_stack_size
	.uleb128 0x37
	.long	.LASF220
	.byte	0x2f
	.byte	0x14
	.long	0x34
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__main_process_additional_memory
	.uleb128 0x37
	.long	.LASF221
	.byte	0x30
	.byte	0x11
	.long	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__current_process
	.uleb128 0x37
	.long	.LASF222
	.byte	0x2b
	.byte	0xe
	.long	0x4d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__nextProcessNumber
	.uleb128 0x37
	.long	.LASF223
	.byte	0x37
	.byte	0xc
	.long	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	__idle_process
	.uleb128 0x37
	.long	.LASF224
	.byte	0x3c
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
	.uleb128 0x1b
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x36
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x37
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
	.long	0x821
	.word	0x2
	.long	.Ldebug_info0
	.long	0x17a1
	.long	0x5a4
	.string	"ProcessGraveyard"
	.long	0x5b5
	.string	"init_reset_condition"
	.long	0x5c9
	.string	"init_reset_condition_kernel_init"
	.long	0x5dd
	.string	"getResetStatus"
	.long	0x5f5
	.string	"init_ports_m1284P"
	.long	0x609
	.string	"init_ports_m1284P_kernel_init"
	.long	0x61d
	.string	"init_nibobee_leds"
	.long	0x6b2
	.string	"init_nibobee_leds_kernel_init"
	.long	0x6c6
	.string	"initButton"
	.long	0x6e5
	.string	"initInterruptButton"
	.long	0x70e
	.string	"init_nibobee_buttons"
	.long	0x7a3
	.string	"init_nibobee_buttons_kernel_init"
	.long	0x7b7
	.string	"init_timer_m1284P"
	.long	0x7cb
	.string	"init_timer_m1284P_kernel_init"
	.long	0x7df
	.string	"initMotor"
	.long	0x808
	.string	"initMotor2Pins"
	.long	0x831
	.string	"init_nibobee_motors"
	.long	0x845
	.string	"init_nibobee_motors_kernel_init"
	.long	0x859
	.string	"init_process_base"
	.long	0x8a7
	.string	"MainProcessEnd"
	.long	0x8cf
	.string	"createProcessBase3"
	.long	0x996
	.string	"createProcessBase2"
	.long	0x9d2
	.string	"createProcessBase"
	.long	0x9ff
	.string	"switchContext"
	.long	0xa3d
	.string	"getCurrentProcess"
	.long	0xa4e
	.string	"switchProcess"
	.long	0xa86
	.string	"createProcess3"
	.long	0xb17
	.string	"createProcess2"
	.long	0xb53
	.string	"createProcess"
	.long	0xb80
	.string	"freeProcess"
	.long	0xbd1
	.string	"getProcessStackSize"
	.long	0xbfe
	.string	"getFreeProcessStackSize"
	.long	0xc3a
	.string	"getProcessNumber"
	.long	0xc67
	.string	"getProcessMemory"
	.long	0xc94
	.string	"init_process"
	.long	0xcda
	.string	"init_idle_scheduler"
	.long	0xcee
	.string	"init_idle_scheduler_kernel_init"
	.long	0xd02
	.string	"idle_schedule"
	.long	0xd21
	.string	"init_scheduler"
	.long	0xd5e
	.string	"init_scheduler_kernel_init"
	.long	0xd72
	.string	"start_scheduler"
	.long	0xd86
	.string	"before_scheduler"
	.long	0xd9a
	.string	"schedule"
	.long	0xde9
	.string	"__vector_32"
	.long	0xdfe
	.string	"init_kernel"
	.long	0xe12
	.string	"init_kernel_kernel_init"
	.long	0x125a
	.string	"current_reset_status"
	.long	0x126c
	.string	"PortA"
	.long	0x127e
	.string	"PinA0"
	.long	0x1290
	.string	"PinA1"
	.long	0x12a2
	.string	"PinA2"
	.long	0x12b4
	.string	"PinA3"
	.long	0x12c6
	.string	"PinA4"
	.long	0x12d8
	.string	"PinA5"
	.long	0x12ea
	.string	"PinA6"
	.long	0x12fc
	.string	"PinA7"
	.long	0x130e
	.string	"PortB"
	.long	0x1320
	.string	"PinB0"
	.long	0x1332
	.string	"PinB1"
	.long	0x1344
	.string	"PinB2"
	.long	0x1356
	.string	"PinB3"
	.long	0x1368
	.string	"PinB4"
	.long	0x137a
	.string	"PinB5"
	.long	0x138c
	.string	"PinB6"
	.long	0x139e
	.string	"PinB7"
	.long	0x13b0
	.string	"PortC"
	.long	0x13c2
	.string	"PinC0"
	.long	0x13d4
	.string	"PinC1"
	.long	0x13e6
	.string	"PinC2"
	.long	0x13f8
	.string	"PinC3"
	.long	0x140a
	.string	"PinC4"
	.long	0x141c
	.string	"PinC5"
	.long	0x142e
	.string	"PinC6"
	.long	0x1440
	.string	"PinC7"
	.long	0x1452
	.string	"PortD"
	.long	0x1464
	.string	"PinD0"
	.long	0x1476
	.string	"PinD1"
	.long	0x1488
	.string	"PinD2"
	.long	0x149a
	.string	"PinD3"
	.long	0x14ac
	.string	"PinD4"
	.long	0x14be
	.string	"PinD5"
	.long	0x14d0
	.string	"PinD6"
	.long	0x14e2
	.string	"PinD7"
	.long	0x14f4
	.string	"LeftYellow"
	.long	0x1506
	.string	"LeftRed"
	.long	0x1518
	.string	"RightRed"
	.long	0x152a
	.string	"RightYellow"
	.long	0x153c
	.string	"RedLeds"
	.long	0x154e
	.string	"YellowLeds"
	.long	0x1560
	.string	"RightLeds"
	.long	0x1572
	.string	"LeftLeds"
	.long	0x1584
	.string	"AllLeds"
	.long	0x1596
	.string	"redLedsArray"
	.long	0x15a8
	.string	"yellowLedsArray"
	.long	0x15ba
	.string	"rightLedsArray"
	.long	0x15cc
	.string	"leftLedsArray"
	.long	0x15de
	.string	"allLedsArray"
	.long	0x15f0
	.string	"ButtonRightBackward"
	.long	0x1602
	.string	"ButtonRightForward"
	.long	0x1614
	.string	"ButtonLeftBackward"
	.long	0x1626
	.string	"ButtonLeftForward"
	.long	0x1638
	.string	"Timer0"
	.long	0x164a
	.string	"Timer1"
	.long	0x165c
	.string	"Timer2"
	.long	0x166e
	.string	"Timer3"
	.long	0x1680
	.string	"Timer0A"
	.long	0x1692
	.string	"Timer0B"
	.long	0x16a4
	.string	"Timer1A"
	.long	0x16b6
	.string	"Timer1B"
	.long	0x16c8
	.string	"Timer2A"
	.long	0x16da
	.string	"Timer2B"
	.long	0x16ec
	.string	"Timer3A"
	.long	0x16fe
	.string	"Timer3B"
	.long	0x1710
	.string	"LeftMotor"
	.long	0x1722
	.string	"RightMotor"
	.long	0x1734
	.string	"__default_stack_size"
	.long	0x1746
	.string	"__main_process_additional_memory"
	.long	0x1758
	.string	"__current_process"
	.long	0x176a
	.string	"__nextProcessNumber"
	.long	0x177c
	.string	"__idle_process"
	.long	0x178e
	.string	"milliseconds_running"
	.long	0x0
	.section	.debug_pubtypes,"",@progbits
	.long	0x165
	.word	0x2
	.long	.Ldebug_info0
	.long	0x17a1
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
	.long	0xef
	.string	"Port"
	.long	0xfa
	.string	"PPort"
	.long	0x130
	.string	"Pin"
	.long	0x13b
	.string	"PPin"
	.long	0x163
	.string	"Led"
	.long	0x16e
	.string	"PLed"
	.long	0x1aa
	.string	"LedGroup"
	.long	0x1cc
	.string	"Button"
	.long	0x1d7
	.string	"PButton"
	.long	0x20d
	.string	"PInterruptButton"
	.long	0x2ef
	.string	"TimerConfig"
	.long	0x2fa
	.string	"PTimerConfig"
	.long	0x320
	.string	"TIMER_TYPE"
	.long	0x36c
	.string	"Timer"
	.long	0x377
	.string	"PTimer"
	.long	0x3bb
	.string	"Motor"
	.long	0x3c6
	.string	"PMotor"
	.long	0x3fc
	.string	"PMotor2Pins"
	.long	0x40d
	.string	"Process__"
	.long	0x428
	.string	"Process"
	.long	0x439
	.string	"ProcessEntryPoint"
	.long	0x464
	.string	"PPCB"
	.long	0x4a8
	.string	"PPCBExt"
	.long	0x0
	.section	.debug_aranges,"",@progbits
	.long	0x6c
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
	.long	.LFB7
	.long	.LFE7-.LFB7
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB39
	.long	.LFE39-.LFB39
	.long	.LFB43
	.long	.LFE43-.LFB43
	.long	.LFB48
	.long	.LFE48-.LFB48
	.long	0x0
	.long	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB62
	.long	.LBE62
	.long	.LBB65
	.long	.LBE65
	.long	0x0
	.long	0x0
	.long	.LBB63
	.long	.LBE63
	.long	.LBB64
	.long	.LBE64
	.long	0x0
	.long	0x0
	.long	.Ltext0
	.long	.Letext0
	.long	.LFB1
	.long	.LFE1
	.long	.LFB4
	.long	.LFE4
	.long	.LFB7
	.long	.LFE7
	.long	.LFB11
	.long	.LFE11
	.long	.LFB13
	.long	.LFE13
	.long	.LFB17
	.long	.LFE17
	.long	.LFB21
	.long	.LFE21
	.long	.LFB39
	.long	.LFE39
	.long	.LFB43
	.long	.LFE43
	.long	.LFB48
	.long	.LFE48
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
	.ascii	"/4.5.1/include"
	.byte	0
	.byte	0x0
	.string	"nibobee_kernel.c"
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
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdint.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"stdlib.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"stddef.h"
	.uleb128 0x17
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/io.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/sfr_defs.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"inttypes.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/iom1284p.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/portpins.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/common.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/version.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/fuse.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/lock.h"
	.uleb128 0x15
	.uleb128 0x0
	.uleb128 0x0
	.string	"avr/interrupt.h"
	.uleb128 0x15
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
	.string	"nibobee_led.kernel.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.kernel.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel_init.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"port_m1284P.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"led.kernel.h"
	.uleb128 0x8
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
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"external_interrupts.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"button.h"
	.uleb128 0x8
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
	.string	"timer_m1284P.kernel.h"
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
	.string	"motor.kernel.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"motor.h"
	.uleb128 0x8
	.uleb128 0x0
	.uleb128 0x0
	.string	"nibobee_motor.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.string	"base.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.kernel.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"process_ext.kernel.h"
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
	.string	"process_internal.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"process.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../kernel_init.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler_internal.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/dms_scheduler.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"RoundRobin/rr_scheduler.kernel.h"
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
	.string	"idle/idle_scheduler.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/../process.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/../process_internal.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"idle/../../kernel_init.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"timed_scheduler.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../millisecond_clock.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.kernel.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"scheduler.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../hardware_reset.h"
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"DMS/../process.h"
	.uleb128 0xb
	.uleb128 0x0
	.uleb128 0x0
	.string	"../nibobee_button.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"../nibobee_led.h"
	.uleb128 0x2
	.uleb128 0x0
	.uleb128 0x0
	.string	"../nibobee_motor.h"
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
	.uleb128 0x30
	.byte	0x43
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM2
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM3
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM4
	.byte	0x4
	.uleb128 0x2
	.byte	0x3
	.sleb128 -41
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM5
	.byte	0x18
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM9
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM10
	.byte	0x4
	.uleb128 0x18
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM11
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM12
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM16
	.byte	0x4
	.uleb128 0x17
	.byte	0x17
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
	.uleb128 0x1b
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM19
	.byte	0x4
	.uleb128 0x17
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM20
	.byte	0x4
	.uleb128 0x1b
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM21
	.byte	0x4
	.uleb128 0x17
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM22
	.byte	0x4
	.uleb128 0x1b
	.byte	0xa
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM23
	.byte	0x4
	.uleb128 0x17
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM24
	.byte	0x4
	.uleb128 0x1b
	.byte	0x3
	.sleb128 -11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM25
	.byte	0x4
	.uleb128 0x17
	.byte	0x21
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
	.uleb128 0x1e
	.byte	0x3
	.sleb128 -18
	.byte	0x1
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
	.byte	0x16
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM38
	.byte	0x4
	.uleb128 0x1d
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM39
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM40
	.byte	0x4
	.uleb128 0x1e
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM41
	.byte	0x4
	.uleb128 0x1d
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM42
	.byte	0x4
	.uleb128 0x1e
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM43
	.byte	0x4
	.uleb128 0x1d
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM44
	.byte	0x4
	.uleb128 0x1e
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM45
	.byte	0x4
	.uleb128 0x1d
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM46
	.byte	0x4
	.uleb128 0x1e
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM47
	.byte	0x4
	.uleb128 0x1d
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM48
	.byte	0x4
	.uleb128 0x23
	.byte	0xe
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
	.byte	0x15
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM62
	.byte	0x4
	.uleb128 0x26
	.byte	0x3
	.sleb128 -14
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM63
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x4
	.uleb128 0x22
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM72
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM73
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM74
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM75
	.byte	0x4
	.uleb128 0x30
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM76
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM77
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM78
	.byte	0x3
	.sleb128 -15
	.byte	0x1
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
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM82
	.byte	0x26
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM83
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM84
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM85
	.byte	0x19
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
	.byte	0x16
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
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM93
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM94
	.byte	0x48
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM95
	.byte	0x3
	.sleb128 -51
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM96
	.byte	0x4c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM97
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM98
	.byte	0x18
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM102
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM103
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM104
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM105
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM107
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM118
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM119
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM120
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM121
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM123
	.byte	0x15
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
	.byte	0x4
	.uleb128 0x2b
	.byte	0x3
	.sleb128 -66
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
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM129
	.byte	0x4
	.uleb128 0x30
	.byte	0x57
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM130
	.byte	0x4
	.uleb128 0x2b
	.byte	0x3
	.sleb128 -65
	.byte	0x1
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM134
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM135
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM136
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM137
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM138
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM139
	.byte	0x15
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
	.byte	0x4
	.uleb128 0x30
	.byte	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM143
	.byte	0x4
	.uleb128 0x2b
	.byte	0x3
	.sleb128 -48
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM144
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM145
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM147
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM148
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM149
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM150
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM151
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM152
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM153
	.byte	0x16
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
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM158
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM159
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM160
	.byte	0x4
	.uleb128 0x30
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM161
	.byte	0x4
	.uleb128 0x2b
	.byte	0x3
	.sleb128 -15
	.byte	0x1
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
	.byte	0x4
	.uleb128 0x37
	.byte	0x3
	.sleb128 -92
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM166
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM167
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM168
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM169
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM170
	.byte	0x4
	.uleb128 0x2a
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM171
	.byte	0x18
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
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM175
	.byte	0x17
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
	.byte	0x4
	.uleb128 0x29
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM180
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM181
	.byte	0x19
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
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM185
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM186
	.byte	0x4
	.uleb128 0x37
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM187
	.byte	0x4
	.uleb128 0x29
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM188
	.byte	0x4
	.uleb128 0x3d
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM189
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM190
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM191
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM192
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM193
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM194
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM195
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM196
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM197
	.byte	0x17
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
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM201
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM202
	.byte	0x4
	.uleb128 0x29
	.byte	0x3
	.sleb128 -22
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM203
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM204
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM205
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM206
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM207
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM208
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LM209
	.byte	0x15
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0x35
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM5
	.byte	0x1
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
	.long	.LSM6
	.byte	0x4
	.uleb128 0x1d
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM7
	.byte	0x1
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
	.long	.LSM8
	.byte	0x4
	.uleb128 0x23
	.byte	0x31
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
	.uleb128 0x22
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM11
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE17
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM12
	.byte	0x4
	.uleb128 0x30
	.byte	0x4a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM13
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM14
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE21
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM15
	.byte	0x4
	.uleb128 0x37
	.byte	0x25
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE39
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM17
	.byte	0x4
	.uleb128 0x2a
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM18
	.byte	0x1
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
	.long	.LSM19
	.byte	0x4
	.uleb128 0x29
	.byte	0x47
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LSM20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.long	.LFE48
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_macinfo
	.byte	0x0
	.section	.debug_str,"MS",@progbits,1
.LASF116:
	.string	"createProcessBase"
.LASF21:
	.string	"count"
.LASF55:
	.string	"TIMER_A"
.LASF56:
	.string	"TIMER_B"
.LASF219:
	.string	"__default_stack_size"
.LASF224:
	.string	"milliseconds_running"
.LASF205:
	.string	"Timer0"
.LASF206:
	.string	"Timer1"
.LASF10:
	.string	"size_t"
.LASF42:
	.string	"prescale_32"
.LASF25:
	.string	"button"
.LASF94:
	.string	"init_ports_m1284P"
.LASF108:
	.string	"MainProcessEnd"
.LASF26:
	.string	"pinChangeInterruptNumber"
.LASF147:
	.string	"__malloc_margin"
.LASF162:
	.string	"PinB1"
.LASF163:
	.string	"PinB2"
.LASF64:
	.string	"direction"
.LASF125:
	.string	"createProcess"
.LASF60:
	.string	"type"
.LASF167:
	.string	"PinB6"
.LASF168:
	.string	"PinB7"
.LASF16:
	.string	"PPort"
.LASF74:
	.string	"stackPointer"
.LASF9:
	.string	"long long unsigned int"
.LASF65:
	.string	"pwmTimer"
.LASF124:
	.string	"createProcess2"
.LASF122:
	.string	"createProcess3"
.LASF223:
	.string	"__idle_process"
.LASF23:
	.string	"Button"
.LASF192:
	.string	"YellowLeds"
.LASF171:
	.string	"PinC1"
.LASF172:
	.string	"PinC2"
.LASF191:
	.string	"RedLeds"
.LASF188:
	.string	"LeftRed"
.LASF174:
	.string	"PinC4"
.LASF105:
	.string	"init_nibobee_motors"
.LASF28:
	.string	"wgm_normal"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF82:
	.string	"PrioBelowNormal"
.LASF133:
	.string	"initialProcess"
.LASF81:
	.string	"PrioLow"
.LASF101:
	.string	"init_timer_m1284P_kernel_init"
.LASF59:
	.string	"outputCompareRegister"
.LASF102:
	.string	"initInterruptButton"
.LASF217:
	.string	"LeftMotor"
.LASF190:
	.string	"RightYellow"
.LASF144:
	.string	"__vector_32"
.LASF170:
	.string	"PinC0"
.LASF79:
	.string	"PPCBExt"
.LASF5:
	.string	"long int"
.LASF173:
	.string	"PinC3"
.LASF46:
	.string	"prescale_1024"
.LASF175:
	.string	"PinC5"
.LASF176:
	.string	"PinC6"
.LASF177:
	.string	"PinC7"
.LASF27:
	.string	"PInterruptButton"
.LASF110:
	.string	"parameter"
.LASF143:
	.string	"getResetStatus"
.LASF146:
	.string	"init_kernel_kernel_init"
.LASF3:
	.string	"uint16_t"
.LASF18:
	.string	"PPin"
.LASF127:
	.string	"process"
.LASF100:
	.string	"init_timer_m1284P"
.LASF72:
	.string	"Process"
.LASF47:
	.string	"external_falling_edge"
.LASF87:
	.string	"additionalMemory"
.LASF36:
	.string	"pwm_fast_9bit"
.LASF17:
	.string	"mask"
.LASF117:
	.string	"switchContext"
.LASF151:
	.string	"PortA"
.LASF160:
	.string	"PortB"
.LASF115:
	.string	"createProcessBase2"
.LASF76:
	.string	"processNumber"
.LASF202:
	.string	"ButtonRightForward"
.LASF14:
	.string	"port"
.LASF158:
	.string	"PinA6"
.LASF78:
	.string	"stackTop"
.LASF179:
	.string	"PinD0"
.LASF180:
	.string	"PinD1"
.LASF4:
	.string	"unsigned int"
.LASF182:
	.string	"PinD3"
.LASF183:
	.string	"PinD4"
.LASF184:
	.string	"PinD5"
.LASF185:
	.string	"PinD6"
.LASF88:
	.string	"proc"
.LASF139:
	.string	"start_scheduler"
.LASF201:
	.string	"ButtonRightBackward"
.LASF53:
	.string	"TimerConfig"
.LASF135:
	.string	"init_idle_scheduler_kernel_init"
.LASF7:
	.string	"long unsigned int"
.LASF33:
	.string	"pwm_fast"
.LASF90:
	.string	"idle_schedule"
.LASF83:
	.string	"PrioNormal"
.LASF141:
	.string	"schedule"
.LASF199:
	.string	"leftLedsArray"
.LASF194:
	.string	"LeftLeds"
.LASF48:
	.string	"external_rising_edge"
.LASF136:
	.string	"init_scheduler"
.LASF148:
	.string	"__malloc_heap_end"
.LASF91:
	.string	"invokedFromTimer"
.LASF75:
	.string	"PPCB"
.LASF112:
	.string	"stackBottom"
.LASF80:
	.string	"PrioLowest"
.LASF54:
	.string	"PTimerConfig"
.LASF19:
	.string	"PLed"
.LASF44:
	.string	"prescale_128"
.LASF43:
	.string	"prescale_64"
.LASF227:
	.string	"C:\\\\Dev\\\\NIBObee\\\\NIBObee\\\\Kernel-NIBObee\\\\Debug"
.LASF67:
	.string	"PMotor"
.LASF103:
	.string	"initMotor"
.LASF63:
	.string	"PTimer"
.LASF40:
	.string	"prescale_1"
.LASF121:
	.string	"oldCurrentProcess"
.LASF193:
	.string	"RightLeds"
.LASF181:
	.string	"PinD2"
.LASF233:
	.string	"getCurrentProcess"
.LASF207:
	.string	"Timer2"
.LASF41:
	.string	"prescale_8"
.LASF13:
	.string	"BOOL"
.LASF137:
	.string	"timerConf"
.LASF231:
	.string	"initializeProcessInternal"
.LASF140:
	.string	"before_scheduler"
.LASF66:
	.string	"Motor"
.LASF120:
	.string	"switchProcess"
.LASF211:
	.string	"Timer1A"
.LASF62:
	.string	"Timer"
.LASF71:
	.string	"unused"
.LASF24:
	.string	"PButton"
.LASF109:
	.string	"entryPoint"
.LASF30:
	.string	"pwm_fast_FF"
.LASF99:
	.string	"init_nibobee_buttons_kernel_init"
.LASF150:
	.string	"current_reset_status"
.LASF104:
	.string	"initMotor2Pins"
.LASF58:
	.string	"timer"
.LASF107:
	.string	"init_process_base"
.LASF210:
	.string	"Timer0B"
.LASF134:
	.string	"init_idle_scheduler"
.LASF97:
	.string	"init_nibobee_leds_kernel_init"
.LASF130:
	.string	"getProcessNumber"
.LASF197:
	.string	"yellowLedsArray"
.LASF37:
	.string	"pwm_fast_10bit"
.LASF152:
	.string	"PinA0"
.LASF89:
	.string	"getProcessMemoryBase"
.LASF123:
	.string	"processArgument"
.LASF230:
	.string	"initButton"
.LASF11:
	.string	"FALSE"
.LASF68:
	.string	"motor"
.LASF155:
	.string	"PinA3"
.LASF92:
	.string	"init_reset_condition"
.LASF106:
	.string	"init_nibobee_motors_kernel_init"
.LASF138:
	.string	"init_scheduler_kernel_init"
.LASF132:
	.string	"init_process"
.LASF57:
	.string	"TIMER_TYPE"
.LASF45:
	.string	"prescale_256"
.LASF189:
	.string	"RightRed"
.LASF229:
	.string	"initLed"
.LASF1:
	.string	"unsigned char"
.LASF96:
	.string	"init_nibobee_leds"
.LASF126:
	.string	"freeProcess"
.LASF198:
	.string	"rightLedsArray"
.LASF61:
	.string	"outputComparePin"
.LASF32:
	.string	"pwm_phase_correct"
.LASF195:
	.string	"AllLeds"
.LASF221:
	.string	"__current_process"
.LASF209:
	.string	"Timer0A"
.LASF35:
	.string	"pwm_phase_correct_10bit"
.LASF212:
	.string	"Timer1B"
.LASF34:
	.string	"pwm_phase_correct_9bit"
.LASF20:
	.string	"leds"
.LASF12:
	.string	"TRUE"
.LASF142:
	.string	"fromTimer"
.LASF6:
	.string	"uint32_t"
.LASF226:
	.string	".././nibobee_kernel.c"
.LASF50:
	.string	"controlRegisterA"
.LASF51:
	.string	"controlRegisterB"
.LASF114:
	.string	"createProcessBase3"
.LASF84:
	.string	"PrioAboveNormal"
.LASF149:
	.string	"char"
.LASF218:
	.string	"RightMotor"
.LASF208:
	.string	"Timer3"
.LASF77:
	.string	"stackSize"
.LASF85:
	.string	"PrioHigh"
.LASF131:
	.string	"getProcessMemory"
.LASF222:
	.string	"__nextProcessNumber"
.LASF93:
	.string	"init_reset_condition_kernel_init"
.LASF145:
	.string	"init_kernel"
.LASF31:
	.string	"pwm_phase_correct_FF"
.LASF196:
	.string	"redLedsArray"
.LASF187:
	.string	"LeftYellow"
.LASF52:
	.string	"interruptMaskRegister"
.LASF128:
	.string	"getProcessStackSize"
.LASF39:
	.string	"no_clock"
.LASF29:
	.string	"clear_timer_on_match"
.LASF15:
	.string	"Port"
.LASF232:
	.string	"ProcessGraveyard"
.LASF118:
	.string	"oldProcess"
.LASF169:
	.string	"PortC"
.LASF203:
	.string	"ButtonLeftBackward"
.LASF178:
	.string	"PortD"
.LASF161:
	.string	"PinB0"
.LASF86:
	.string	"PrioHighest"
.LASF213:
	.string	"Timer2A"
.LASF186:
	.string	"PinD7"
.LASF214:
	.string	"Timer2B"
.LASF164:
	.string	"PinB3"
.LASF165:
	.string	"PinB4"
.LASF38:
	.string	"pwm_phase_and_frequency_correct"
.LASF166:
	.string	"PinB5"
.LASF73:
	.string	"ProcessEntryPoint"
.LASF2:
	.string	"uint8_t"
.LASF49:
	.string	"flags"
.LASF220:
	.string	"__main_process_additional_memory"
.LASF98:
	.string	"init_nibobee_buttons"
.LASF70:
	.string	"PMotor2Pins"
.LASF225:
	.string	"GNU C 4.5.1"
.LASF153:
	.string	"PinA1"
.LASF154:
	.string	"PinA2"
.LASF119:
	.string	"newProcess"
.LASF156:
	.string	"PinA4"
.LASF157:
	.string	"PinA5"
.LASF22:
	.string	"LedGroup"
.LASF159:
	.string	"PinA7"
.LASF204:
	.string	"ButtonLeftForward"
.LASF215:
	.string	"Timer3A"
.LASF216:
	.string	"Timer3B"
.LASF111:
	.string	"additionalMem"
.LASF69:
	.string	"direction2"
.LASF113:
	.string	"result"
.LASF95:
	.string	"init_ports_m1284P_kernel_init"
.LASF129:
	.string	"getFreeProcessStackSize"
.LASF228:
	.string	"Process__"
.LASF200:
	.string	"allLedsArray"
.global __do_copy_data
.global __do_clear_bss
