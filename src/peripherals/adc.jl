"""
    ADC

Control and data interface to SAR ADC
"""
module ADC

const baseAddress = Ptr{UInt32}(1074053120)

"""
    CS

ADC Control and Status
"""
module CSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CSStruct(regAddress)
	EN:1::ReadWrite
	TS_EN:1::ReadWrite
	START_ONCE:1::ReadWrite
	START_MANY:1::ReadWrite
	_:4
	READY:1::Read
	ERR:1::Read
	ERR_STICKY:1::ReadWrite
	_:1
	AINSEL:3::ReadWrite
	_:1
	RROBIN:5::ReadWrite
	_:11
end
const Reg = CSStruct

"""
    EN

Power on ADC and enable its clock.

1 - enabled. 0 - disabled.
"""
EN

"""
    TS_EN

Power on temperature sensor. 1 - enabled. 0 - disabled.
"""
TS_EN

"""
    START_ONCE

Start a single conversion. Self-clearing. Ignored if start\\_many is asserted.
"""
START_ONCE

"""
    START_MANY

Continuously perform conversions whilst this bit is 1. A new conversion will start immediately after the previous finishes.
"""
START_MANY

"""
    READY

1 if the ADC is ready to start a new conversion. Implies any previous conversion has completed.

0 whilst conversion in progress.
"""
READY

"""
    ERR

The most recent ADC conversion encountered an error; result is undefined or noisy.
"""
ERR

"""
    ERR_STICKY

Some past ADC conversion encountered an error. Write 1 to clear.
"""
ERR_STICKY

"""
    AINSEL

Select analog mux input. Updated automatically in round-robin mode.
"""
AINSEL

"""
    RROBIN

Round-robin sampling. 1 bit per channel. Set all bits to 0 to disable.

Otherwise, the ADC will cycle through each enabled channel in a round-robin fashion.

The first channel to be sampled will be the one currently indicated by AINSEL.

AINSEL will be updated after each conversion with the newly-selected channel.
"""
RROBIN

end # register CS

"""
    RESULT

Result of most recent ADC conversion
"""
module RESULTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct RESULTStruct(regAddress)
	RESULT:12::Read
	_:20
end
const Reg = RESULTStruct

"""
    RESULT

Field has no description!
"""
RESULT

end # register RESULT

"""
    FCS

FIFO control and status
"""
module FCSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct FCSStruct(regAddress)
	EN:1::ReadWrite
	SHIFT:1::ReadWrite
	ERR:1::ReadWrite
	DREQ_EN:1::ReadWrite
	_:4
	EMPTY:1::Read
	FULL:1::Read
	UNDER:1::ReadWrite
	OVER:1::ReadWrite
	_:4
	LEVEL:4::Read
	_:4
	THRESH:4::ReadWrite
	_:4
end
const Reg = FCSStruct

"""
    EN

If 1: write result to the FIFO after each conversion.
"""
EN

"""
    SHIFT

If 1: FIFO results are right-shifted to be one byte in size. Enables DMA to byte buffers.
"""
SHIFT

"""
    ERR

If 1: conversion error bit appears in the FIFO alongside the result
"""
ERR

"""
    DREQ_EN

If 1: assert DMA requests when FIFO contains data
"""
DREQ_EN

"""
    EMPTY

Field has no description!
"""
EMPTY

"""
    FULL

Field has no description!
"""
FULL

"""
    UNDER

1 if the FIFO has been underflowed. Write 1 to clear.
"""
UNDER

"""
    OVER

1 if the FIFO has been overflowed. Write 1 to clear.
"""
OVER

"""
    LEVEL

The number of conversion results currently waiting in the FIFO
"""
LEVEL

"""
    THRESH

DREQ/IRQ asserted when level &gt;= threshold
"""
THRESH

end # register FCS

"""
    FIFO

Conversion result FIFO
"""
module FIFOMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct FIFOStruct(regAddress)
	VAL:12::Read
	_:3
	ERR:1::Read
	_:16
end
const Reg = FIFOStruct

"""
    VAL

Field has no description!
"""
VAL

"""
    ERR

1 if this particular sample experienced a conversion error. Remains in the same location if the sample is shifted.
"""
ERR

end # register FIFO

"""
    DIV

Clock divider. If non-zero, CS\\_START\\_MANY will start conversions

at regular intervals rather than back-to-back.

The divider is reset when either of these fields are written.

Total period is 1 + INT + FRAC / 256
"""
module DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:16::ReadWrite
	_:8
end
const Reg = DIVStruct

"""
    FRAC

Fractional part of clock divisor. First-order delta-sigma.
"""
FRAC

"""
    INT

Integer part of clock divisor.
"""
INT

end # register DIV

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct INTRStruct(regAddress)
	FIFO:1::Read
	_:31
end
const Reg = INTRStruct

"""
    FIFO

Triggered when the sample FIFO reaches a certain level.

This level can be programmed via the FCS\\_THRESH field.
"""
FIFO

end # register INTR

"""
    INTE

Interrupt Enable
"""
module INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct INTEStruct(regAddress)
	FIFO:1::ReadWrite
	_:31
end
const Reg = INTEStruct

"""
    FIFO

Triggered when the sample FIFO reaches a certain level.

This level can be programmed via the FCS\\_THRESH field.
"""
FIFO

end # register INTE

"""
    INTF

Interrupt Force
"""
module INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct INTFStruct(regAddress)
	FIFO:1::ReadWrite
	_:31
end
const Reg = INTFStruct

"""
    FIFO

Triggered when the sample FIFO reaches a certain level.

This level can be programmed via the FCS\\_THRESH field.
"""
FIFO

end # register INTF

"""
    INTS

Interrupt status after masking &amp; forcing
"""
module INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..ADC: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct INTSStruct(regAddress)
	FIFO:1::Read
	_:31
end
const Reg = INTSStruct

"""
    FIFO

Triggered when the sample FIFO reaches a certain level.

This level can be programmed via the FCS\\_THRESH field.
"""
FIFO

end # register INTS

end # peripheral

