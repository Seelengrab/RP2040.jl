"""
    RTC

Register block to control RTC
"""
module RTC

const baseAddress = Ptr{UInt32}(1074118656)

"""
    CLKDIV_M1

Divider minus 1 for the 1 second counter. Safe to change the value when RTC is not enabled.
"""
module CLKDIV_M1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CLKDIV_M1Struct(regAddress)
	CLKDIV_M1:16::ReadWrite
	_:16
end
const Reg = CLKDIV_M1Struct

"""
    CLKDIV_M1

Field has no description!
"""
CLKDIV_M1

end # register CLKDIV_M1

"""
    SETUP_0

RTC setup register 0
"""
module SETUP_0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct SETUP_0Struct(regAddress)
	DAY:5::ReadWrite
	_:3
	MONTH:4::ReadWrite
	YEAR:12::ReadWrite
	_:8
end
const Reg = SETUP_0Struct

"""
    DAY

Day of the month (1..31)
"""
DAY

"""
    MONTH

Month (1..12)
"""
MONTH

"""
    YEAR

Year
"""
YEAR

end # register SETUP_0

"""
    SETUP_1

RTC setup register 1
"""
module SETUP_1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct SETUP_1Struct(regAddress)
	SEC:6::ReadWrite
	_:2
	MIN:6::ReadWrite
	_:2
	HOUR:5::ReadWrite
	_:3
	DOTW:3::ReadWrite
	_:5
end
const Reg = SETUP_1Struct

"""
    SEC

Seconds
"""
SEC

"""
    MIN

Minutes
"""
MIN

"""
    HOUR

Hours
"""
HOUR

"""
    DOTW

Day of the week: 1-Monday...0-Sunday ISO 8601 mod 7
"""
DOTW

end # register SETUP_1

"""
    CTRL

RTC Control and status
"""
module CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct CTRLStruct(regAddress)
	RTC_ENABLE:1::ReadWrite
	RTC_ACTIVE:1::Read
	_:2
	LOAD:1::ReadWrite
	_:3
	FORCE_NOTLEAPYEAR:1::ReadWrite
	_:23
end
const Reg = CTRLStruct

"""
    RTC_ENABLE

Enable RTC
"""
RTC_ENABLE

"""
    RTC_ACTIVE

RTC enabled (running)
"""
RTC_ACTIVE

"""
    LOAD

Load RTC
"""
LOAD

"""
    FORCE_NOTLEAPYEAR

If set, leapyear is forced off.

Useful for years divisible by 100 but not by 400
"""
FORCE_NOTLEAPYEAR

end # register CTRL

"""
    IRQ_SETUP_0

Interrupt setup register 0
"""
module IRQ_SETUP_0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct IRQ_SETUP_0Struct(regAddress)
	DAY:5::ReadWrite
	_:3
	MONTH:4::ReadWrite
	YEAR:12::ReadWrite
	DAY_ENA:1::ReadWrite
	MONTH_ENA:1::ReadWrite
	YEAR_ENA:1::ReadWrite
	_:1
	MATCH_ENA:1::ReadWrite
	MATCH_ACTIVE:1::Read
	_:2
end
const Reg = IRQ_SETUP_0Struct

"""
    DAY

Day of the month (1..31)
"""
DAY

"""
    MONTH

Month (1..12)
"""
MONTH

"""
    YEAR

Year
"""
YEAR

"""
    DAY_ENA

Enable day matching
"""
DAY_ENA

"""
    MONTH_ENA

Enable month matching
"""
MONTH_ENA

"""
    YEAR_ENA

Enable year matching
"""
YEAR_ENA

"""
    MATCH_ENA

Global match enable. Don't change any other value while this one is enabled
"""
MATCH_ENA

"""
    MATCH_ACTIVE

Field has no description!
"""
MATCH_ACTIVE

end # register IRQ_SETUP_0

"""
    IRQ_SETUP_1

Interrupt setup register 1
"""
module IRQ_SETUP_1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct IRQ_SETUP_1Struct(regAddress)
	SEC:6::ReadWrite
	_:2
	MIN:6::ReadWrite
	_:2
	HOUR:5::ReadWrite
	_:3
	DOTW:3::ReadWrite
	_:1
	SEC_ENA:1::ReadWrite
	MIN_ENA:1::ReadWrite
	HOUR_ENA:1::ReadWrite
	DOTW_ENA:1::ReadWrite
end
const Reg = IRQ_SETUP_1Struct

"""
    SEC

Seconds
"""
SEC

"""
    MIN

Minutes
"""
MIN

"""
    HOUR

Hours
"""
HOUR

"""
    DOTW

Day of the week
"""
DOTW

"""
    SEC_ENA

Enable second matching
"""
SEC_ENA

"""
    MIN_ENA

Enable minute matching
"""
MIN_ENA

"""
    HOUR_ENA

Enable hour matching
"""
HOUR_ENA

"""
    DOTW_ENA

Enable day of the week matching
"""
DOTW_ENA

end # register IRQ_SETUP_1

"""
    RTC_1

RTC register 1.
"""
module RTC_1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct RTC_1Struct(regAddress)
	DAY:5::Read
	_:3
	MONTH:4::Read
	YEAR:12::Read
	_:8
end
const Reg = RTC_1Struct

"""
    DAY

Day of the month (1..31)
"""
DAY

"""
    MONTH

Month (1..12)
"""
MONTH

"""
    YEAR

Year
"""
YEAR

end # register RTC_1

"""
    RTC_0

RTC register 0

Read this before RTC 1!
"""
module RTC_0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct RTC_0Struct(regAddress)
	SEC:6::Read
	_:2
	MIN:6::Read
	_:2
	HOUR:5::Read
	_:3
	DOTW:3::Read
	_:5
end
const Reg = RTC_0Struct

"""
    SEC

Seconds
"""
SEC

"""
    MIN

Minutes
"""
MIN

"""
    HOUR

Hours
"""
HOUR

"""
    DOTW

Day of the week
"""
DOTW

end # register RTC_0

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct INTRStruct(regAddress)
	RTC:1::Read
	_:31
end
const Reg = INTRStruct

"""
    RTC

Field has no description!
"""
RTC

end # register INTR

"""
    INTE

Interrupt Enable
"""
module INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct INTEStruct(regAddress)
	RTC:1::ReadWrite
	_:31
end
const Reg = INTEStruct

"""
    RTC

Field has no description!
"""
RTC

end # register INTE

"""
    INTF

Interrupt Force
"""
module INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct INTFStruct(regAddress)
	RTC:1::ReadWrite
	_:31
end
const Reg = INTFStruct

"""
    RTC

Field has no description!
"""
RTC

end # register INTF

"""
    INTS

Interrupt status after masking &amp; forcing
"""
module INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RTC: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct INTSStruct(regAddress)
	RTC:1::Read
	_:31
end
const Reg = INTSStruct

"""
    RTC

Field has no description!
"""
RTC

end # register INTS

end # peripheral

