"""
    ROSC

No description of peripheral!
"""
module ROSC

const baseAddress = Ptr{UInt32}(1074135040)

"""
    CTRL

Ring Oscillator control
"""
module CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CTRLStruct(regAddress)
	FREQ_RANGE:12::ReadWrite
	ENABLE:12::ReadWrite
	_:8
end
const Reg = CTRLStruct

"""
    FREQ_RANGE

Controls the number of delay stages in the ROSC ring

LOW uses stages 0 to 7

MEDIUM uses stages 0 to 5

HIGH uses stages 0 to 3

TOOHIGH uses stages 0 to 1 and should not be used because its frequency exceeds design specifications

The clock output will not glitch when changing the range up one step at a time

The clock output will glitch when changing the range down

Note: the values here are gray coded which is why HIGH comes before TOOHIGH
"""
FREQ_RANGE

"""
    ENABLE

On power-up this field is initialised to ENABLE

The system clock must be switched to another source before setting this field to DISABLE otherwise the chip will lock up

The 12-bit code is intended to give some protection against accidental writes. An invalid setting will enable the oscillator.
"""
ENABLE

end # register CTRL

"""
    FREQA

The FREQA &amp; FREQB registers control the frequency by controlling the drive strength of each stage

The drive strength has 4 levels determined by the number of bits set

Increasing the number of bits set increases the drive strength and increases the oscillation frequency

0 bits set is the default drive strength

1 bit set doubles the drive strength

2 bits set triples drive strength

3 bits set quadruples drive strength
"""
module FREQAMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct FREQAStruct(regAddress)
	DS0:3::ReadWrite
	_:1
	DS1:3::ReadWrite
	_:1
	DS2:3::ReadWrite
	_:1
	DS3:3::ReadWrite
	_:1
	PASSWD:16::ReadWrite
end
const Reg = FREQAStruct

"""
    DS0

Stage 0 drive strength
"""
DS0

"""
    DS1

Stage 1 drive strength
"""
DS1

"""
    DS2

Stage 2 drive strength
"""
DS2

"""
    DS3

Stage 3 drive strength
"""
DS3

"""
    PASSWD

Set to 0x9696 to apply the settings

Any other value in this field will set all drive strengths to 0
"""
PASSWD

end # register FREQA

"""
    FREQB

For a detailed description see freqa register
"""
module FREQBMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct FREQBStruct(regAddress)
	DS4:3::ReadWrite
	_:1
	DS5:3::ReadWrite
	_:1
	DS6:3::ReadWrite
	_:1
	DS7:3::ReadWrite
	_:1
	PASSWD:16::ReadWrite
end
const Reg = FREQBStruct

"""
    DS4

Stage 4 drive strength
"""
DS4

"""
    DS5

Stage 5 drive strength
"""
DS5

"""
    DS6

Stage 6 drive strength
"""
DS6

"""
    DS7

Stage 7 drive strength
"""
DS7

"""
    PASSWD

Set to 0x9696 to apply the settings

Any other value in this field will set all drive strengths to 0
"""
PASSWD

end # register FREQB

"""
    DORMANT

Ring Oscillator pause control

This is used to save power by pausing the ROSC

On power-up this field is initialised to WAKE

An invalid write will also select WAKE

Warning: setup the irq before selecting dormant mode
"""
module DORMANTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct DORMANTStruct(regAddress)
	_:32
end
const Reg = DORMANTStruct

end # register DORMANT

"""
    DIV

Controls the output divider
"""
module DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct DIVStruct(regAddress)
	DIV:12::ReadWrite
	_:20
end
const Reg = DIVStruct

"""
    DIV

set to 0xaa0 + div where

div = 0 divides by 32

div = 1-31 divides by div

any other value sets div=31

this register resets to div=16
"""
DIV

end # register DIV

"""
    PHASE

Controls the phase shifted output
"""
module PHASEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct PHASEStruct(regAddress)
	SHIFT:2::ReadWrite
	FLIP:1::ReadWrite
	ENABLE:1::ReadWrite
	PASSWD:8::ReadWrite
	_:20
end
const Reg = PHASEStruct

"""
    SHIFT

phase shift the phase-shifted output by SHIFT input clocks

this can be changed on-the-fly

must be set to 0 before setting div=1
"""
SHIFT

"""
    FLIP

invert the phase-shifted output

this is ignored when div=1
"""
FLIP

"""
    ENABLE

enable the phase-shifted output

this can be changed on-the-fly
"""
ENABLE

"""
    PASSWD

set to 0xaa

any other value enables the output with shift=0
"""
PASSWD

end # register PHASE

"""
    STATUS

Ring Oscillator Status
"""
module STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct STATUSStruct(regAddress)
	_:12
	ENABLED:1::Read
	_:3
	DIV_RUNNING:1::Read
	_:7
	BADWRITE:1::ReadWrite
	_:6
	STABLE:1::Read
end
const Reg = STATUSStruct

"""
    ENABLED

Oscillator is enabled but not necessarily running and stable

this resets to 0 but transitions to 1 during chip startup
"""
ENABLED

"""
    DIV_RUNNING

post-divider is running

this resets to 0 but transitions to 1 during chip startup
"""
DIV_RUNNING

"""
    BADWRITE

An invalid value has been written to CTRL\\_ENABLE or CTRL\\_FREQ\\_RANGE or FREQA or FREQB or DIV or PHASE or DORMANT
"""
BADWRITE

"""
    STABLE

Oscillator is running and stable
"""
STABLE

end # register STATUS

"""
    RANDOMBIT

This just reads the state of the oscillator output so randomness is compromised if the ring oscillator is stopped or run at a harmonic of the bus frequency
"""
module RANDOMBITMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct RANDOMBITStruct(regAddress)
	RANDOMBIT:1::Read
	_:31
end
const Reg = RANDOMBITStruct

"""
    RANDOMBIT

Field has no description!
"""
RANDOMBIT

end # register RANDOMBIT

"""
    COUNT

A down counter running at the ROSC frequency which counts to zero and stops.

To start the counter write a non-zero value.

Can be used for short software pauses when setting up time sensitive hardware.
"""
module COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ROSC: baseAddress

const regAddress = baseAddress + 0x0000000000000020
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

