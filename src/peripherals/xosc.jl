"""
    XOSC

Controls the crystal oscillator
"""
module XOSC

const baseAddress = Ptr{UInt32}(1073889280)

"""
    CTRL

Crystal Oscillator Control
"""
module CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XOSC: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CTRLStruct(regAddress)
	FREQ_RANGE:12::ReadWrite
	ENABLE:12::ReadWrite
	_:8
end
const Reg = CTRLStruct

"""
    FREQ_RANGE

Frequency range. This resets to 0xAA0 and cannot be changed.
"""
FREQ_RANGE

"""
    ENABLE

On power-up this field is initialised to DISABLE and the chip runs from the ROSC.

If the chip has subsequently been programmed to run from the XOSC then setting this field to DISABLE may lock-up the chip. If this is a concern then run the clk\\_ref from the ROSC and enable the clk\\_sys RESUS feature.

The 12-bit code is intended to give some protection against accidental writes. An invalid setting will enable the oscillator.
"""
ENABLE

end # register CTRL

"""
    STATUS

Crystal Oscillator Status
"""
module STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XOSC: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct STATUSStruct(regAddress)
	FREQ_RANGE:2::Read
	_:10
	ENABLED:1::Read
	_:11
	BADWRITE:1::ReadWrite
	_:6
	STABLE:1::Read
end
const Reg = STATUSStruct

"""
    FREQ_RANGE

The current frequency range setting, always reads 0
"""
FREQ_RANGE

"""
    ENABLED

Oscillator is enabled but not necessarily running and stable, resets to 0
"""
ENABLED

"""
    BADWRITE

An invalid value has been written to CTRL\\_ENABLE or CTRL\\_FREQ\\_RANGE or DORMANT
"""
BADWRITE

"""
    STABLE

Oscillator is running and stable
"""
STABLE

end # register STATUS

"""
    DORMANT

Crystal Oscillator pause control

This is used to save power by pausing the XOSC

On power-up this field is initialised to WAKE

An invalid write will also select WAKE

WARNING: stop the PLLs before selecting dormant mode

WARNING: setup the irq before selecting dormant mode
"""
module DORMANTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XOSC: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct DORMANTStruct(regAddress)
	_:32
end
const Reg = DORMANTStruct

end # register DORMANT

"""
    STARTUP

Controls the startup delay
"""
module STARTUPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XOSC: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct STARTUPStruct(regAddress)
	DELAY:14::ReadWrite
	_:6
	X4:1::ReadWrite
	_:11
end
const Reg = STARTUPStruct

"""
    DELAY

in multiples of 256*xtal\\_period. The reset value of 0xc4 corresponds to approx 50 000 cycles.
"""
DELAY

"""
    X4

Multiplies the startup\\_delay by 4. This is of little value to the user given that the delay can be programmed directly.
"""
X4

end # register STARTUP

"""
    COUNT

A down counter running at the xosc frequency which counts to zero and stops.

To start the counter write a non-zero value.

Can be used for short software pauses when setting up time sensitive hardware.
"""
module COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XOSC: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct COUNTStruct(regAddress)
	COUNT:8::ReadWrite
	_:24
end
const Reg = COUNTStruct

"""
    COUNT

Field has no description!
"""
COUNT

end # register COUNT

end # peripheral

