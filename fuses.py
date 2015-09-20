#!/usr/bin/env python3

# Internal 8MHz: E:FF, H:D9, L:D2
# Master (ext 8-20Mhz, ckout): E:FF, H:D9, L:BE
# IO (ext clock): E:FF, H:D9, L:D0

import sys
import collections

class Byte:
    def __init__(self, name):
        self.name = name
        self.bit_occupations = [None] * 8
        self.values = collections.OrderedDict()

    def register_value(self, value):
        for i, bit in enumerate(value.bits):
            if self.bit_occupations[bit] is not None:
                raise Exception("Bit %i of %s used by %s and %s." % (i, self.name, self.bit_occupations[bit].name, value.name))
            self.bit_occupations[bit] = value
        if value.name in self.values:
            raise Exception("Value called %s already registered in %s" % (value.name, self.name))
        self.values[value.name] = value

    def check(self, num):
        if num < 0 or num > 7:
            raise Exception("Illegal bit number %i" % num)

    def applied_bits(self):
        bits = [False] * 8
        for v in self.values.values():
            v.apply(bits)
        return bits

    def applied_value(self):
        bits = self.applied_bits()
        num = 0xFF
        for i, bit in enumerate(bits):
            if bit:
                num -= 1 << i
        return num

    def applied_hex(self):
        num = self.applied_value()
        return "%02x" % num

    def __str__(self):
        s = "%s: " % self.name
        for i in range(7, -1, -1):
            val = self.bit_occupations[i]
            if val is None:
                s += "[%i: -]" % i
            else:
                s += "[%i: %s] " % (i, val.name)
        return s

class Value:
    def __init__(self, name, bits, values, default_value):
        self.name = name
        self.bits = bits
        self.values = collections.OrderedDict(values)
        self.current_value = default_value
        if default_value not in self.values:
            raise Exception("Default value '%s' not in values: %s" % (default_value, list(self.values.keys())))

    @staticmethod
    def bool_value(name, bit_num, default=False):
        return Value(name, [bit_num],
            [
                ("off", [0]),
                ("on", [1])
            ], "on" if default else "off" )

    def set_value(self, value):
        if value not in self.values:
            raise Exception("Unkown value for %s: %s. Possible values: %s" % (self.name, value, self.values.keys()))
        self.current_value = value

    def apply(self, bits):
        val = self.values[self.current_value]
        if len(val) != len(self.bits):
            raise Exception("Wrong number of bits for value %s of %s." % (self.current_value, self.name))
        for i in range(len(val)):
            bitnum = self.bits[i]
            if val[i] == 1:
                bits[bitnum] = True
            elif val[i] == 0:
                bits[bitnum] = False
            else:
                raise Exception("Bit values must be 0/1. In %s of %s." % (self.current_value, self.name))

    def __str__(self):
        vals = list(self.values.keys())
        for i in range(len(vals)):
            if vals[i] == self.current_value:
                vals[i] = "[%s]" % vals[i]
        return "%s: %s" % (self.name, ', '.join(vals))

def m1284P_bytes(clock_type):
    lock = Byte("lock")
    lock.register_value(Value("LB", [1, 0],
            [
                ("NO_LOCK", [0, 0]),
                ("PROG_DISABLED", [0, 1]),
                ("PROG_VER_DISABLED", [1, 1])
            ],
            "NO_LOCK"))
    lock.register_value(Value("BLB0", [3, 2],
            [
                ("NO_LOCK", [0, 0]),
                ("SPM_DISABLE", [0, 1]),
                ("SPM_LPM_DISABLE", [1, 1]),
                ("LPM_DISABLE", [1, 0])
            ],
            "NO_LOCK"))
    lock.register_value(Value("BLB1", [5, 4],
            [
                ("NO_LOCK", [0, 0]),
                ("SPM_DISABLE", [0, 1]),
                ("SPM_LPM_DISABLE", [1, 1]),
                ("LPM_DISABLE", [1, 0])
            ],
            "NO_LOCK"))

    efuse = Byte("efuse")
    efuse.register_value(Value("BODLEVEL", [2, 1, 0],
            [
                ("DISABLED", [0, 0, 0]),
                ("1.7V", [0, 0, 1]),
                ("2.5V", [0, 1, 0]),
                ("4.1V", [0, 1, 1])
            ],
            "DISABLED"))

    hfuse = Byte("hfuse")
    hfuse.register_value(Value.bool_value("OCDEN", 7))
    hfuse.register_value(Value.bool_value("JTAGEN", 6))
    hfuse.register_value(Value.bool_value("SPIEN", 5, default=True))
    hfuse.register_value(Value.bool_value("WDTON", 4))
    hfuse.register_value(Value.bool_value("EESAVE", 3))
    hfuse.register_value(Value("BOOTSZ", [2, 1],
            [
                (".5K", [0, 0]),
                ("1K", [0, 1]),
                ("2K", [1, 0]),
                ("4K", [1, 1]),
            ],
            "4K"))
    hfuse.register_value(Value.bool_value("BOOTRST", 0))

    lfuse = Byte("lfuse")
    lfuse.register_value(Value.bool_value("CKDIV8", 7))
    lfuse.register_value(Value.bool_value("CKOUT", 6))
    if clock_type == "external":
        lfuse.register_value(Value("START_UP_TIME", [5, 4, 0],
                [
                    ("258 ck + 4.1 ms", [1, 1, 1]),
                    ("258 ck + 65 ms",  [1, 0, 1]),
                    ("1k ck + 0 ms",    [0, 1, 1]),
                    ("1k ck + 4.1 ms",  [0, 0, 1]),
                    ("1k ck + 65 ms",   [1, 1, 0]),
                    ("16k ck + 0 ms",    [1, 0, 0]),
                    ("16k ck + 4.1 ms",  [0, 1, 0]),
                    ("16k ck + 65 ms",   [0, 0, 0])
                ],
                "16k ck + 65 ms"))
        lfuse.register_value(Value("CLOCK_SELECT", [3, 2, 1],
                [
                    ("low-power (0.4 - 0.9 MHz)", [0, 1, 1]),
                    ("low-power (0.9 - 3.0 MHz)", [0, 1, 0]),
                    ("low-power (3.0 - 8.0 MHz)", [0, 0, 1]),
                    ("low-power (8.0 - 16.0 MHz)", [0, 0, 0]),
                    ("full-swing (0.4 - 20.0 MHz)", [1, 0, 0]),
                ],
                "full-swing (0.4 - 20.0 MHz)"))
    elif clock_type == "external_low_frequency":
        lfuse.register_value(Value("START_UP_TIME", [5, 4, 0],
                [
                    ("1k ck + 0 ms",    [1, 1, 1]),
                    ("1k ck + 4.1 ms",  [1, 0, 1]),
                    ("1k ck + 65 ms",   [0, 1, 1]),
                    ("32k ck + 0 ms",    [1, 1, 0]),
                    ("32k ck + 4.1 ms",  [1, 0, 0]),
                    ("32k ck + 65 ms",   [0, 1, 0]),
                ],
                "32k ck + 65 ms"))
        lfuse.register_value(Value("CLOCK_SELECT", [3, 2, 1],
                [
                    ("low-frequency", [0, 1, 1]),
                ],
                "low-frequency"))
    elif clock_type == "other":
        lfuse.register_value(Value("START_UP_TIME", [5, 4],
                [
                    ("6 ck + 0 ms",    [1, 1]),
                    ("6 ck + 4.1 ms",  [1, 0]),
                    ("6 ck + 65 ms",   [0, 1]),
                ],
                "6 ck + 65 ms"))
        lfuse.register_value(Value("CLOCK_SELECT", [3, 2, 1, 0],
                [
                    ("internal 8 MHz", [1, 1, 0, 1]),
                    ("internal 128 kHz", [1, 1, 0, 0]),
                    ("external", [1, 1, 1, 1]),
                ],
                "internal 8 MHz"))
    else:
        raise Exception("Illegal clock type %s" % clock_type)

    return collections.OrderedDict([ (a.name, a) for a in [ efuse, hfuse, lfuse, lock ] ])

def main(argv):
    settings = {}
    for a in argv:
        s = a.split("=")
        if len(s) != 2:
            raise Exception("allowed parameters: <key>=<value>")
        settings[s[0]] = s[1]

    clock_type = settings["clock_type"] if "clock_type" in settings else "other"
    bytes = m1284P_bytes(clock_type)
    if "clock_type" in settings: del settings["clock_type"]
    for b in bytes.values(): print("%s" % b)
    print('')

    values = collections.OrderedDict()
    for b in bytes.values():
        for v in b.values.values():
            values[v.name] = v
    for k, v in settings.items():
        if k not in values:
            raise Exception("Unkown value name: %s" % k)
        values[k].set_value(v)

    print(Value('clock_type', None, [('other', None), ('external', None), ('external_low_frequency', None)], clock_type))
    for value in values.values(): print(value)

    print('')
    for b in bytes.values():
        print("%s: %s" % (b.name, b.applied_hex()))

    print("avrdude -P usb -c usbasp -p atmega1284p " + " ".join(["-U %s:w:%d:m" % (b.name, b.applied_value()) for b in bytes.values()]))

if __name__ == "__main__":
    main(sys.argv[1:])
