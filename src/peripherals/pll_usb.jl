"""
    PLL_USB

No description of peripheral!
"""
module PLL_USB

const baseAddress = Ptr{UInt32}(1073922048)

"""
    CS

Control and Status

GENERAL CONSTRAINTS:

Reference clock frequency min=5MHz, max=800MHz

Feedback divider min=16, max=320

VCO frequency min=750MHz, max=1600MHz
"""
module CSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PLL_USB: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CSStruct(regAddress)
	REFDIV:6::ReadWrite
	_:2
	BYPASS:1::ReadWrite
	_:22
	LOCK:1::Read
end
const Reg = CSStruct

"""
    REFDIV

Divides the PLL input reference clock.

Behaviour is undefined for div=0.

PLL output will be unpredictable during refdiv changes, wait for lock=1 before using it.
"""
REFDIV

"""
    BYPASS

Passes the reference clock to the output instead of the divided VCO. The VCO continues to run so the user can switch between the reference clock and the divided VCO but the output will glitch when doing so.
"""
BYPASS

"""
    LOCK

PLL is locked
"""
LOCK

end # register CS

"""
    PWR

Controls the PLL power modes.
"""
module PWRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PLL_USB: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct PWRStruct(regAddress)
	PD:1::ReadWrite
	_:1
	DSMPD:1::ReadWrite
	POSTDIVPD:1::ReadWrite
	_:1
	VCOPD:1::ReadWrite
	_:26
end
const Reg = PWRStruct

"""
    PD

PLL powerdown

To save power set high when PLL output not required.
"""
PD

"""
    DSMPD

PLL DSM powerdown

Nothing is achieved by setting this low.
"""
DSMPD

"""
    POSTDIVPD

PLL post divider powerdown

To save power set high when PLL output not required or bypass=1.
"""
POSTDIVPD

"""
    VCOPD

PLL VCO powerdown

To save power set high when PLL output not required or bypass=1.
"""
VCOPD

end # register PWR

"""
    FBDIV_INT

Feedback divisor

(note: this PLL does not support fractional division)
"""
module FBDIV_INTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PLL_USB: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct FBDIV_INTStruct(regAddress)
	FBDIV_INT:12::ReadWrite
	_:20
end
const Reg = FBDIV_INTStruct

"""
    FBDIV_INT

see ctrl reg description for constraints
"""
FBDIV_INT

end # register FBDIV_INT

"""
    PRIM

Controls the PLL post dividers for the primary output

(note: this PLL does not have a secondary output)

the primary output is driven from VCO divided by postdiv1*postdiv2
"""
module PRIMMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PLL_USB: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct PRIMStruct(regAddress)
	_:12
	POSTDIV2:3::ReadWrite
	_:1
	POSTDIV1:3::ReadWrite
	_:13
end
const Reg = PRIMStruct

"""
    POSTDIV2

divide by 1-7
"""
POSTDIV2

"""
    POSTDIV1

divide by 1-7
"""
POSTDIV1

end # register PRIM

end # peripheral

