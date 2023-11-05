"""
    SIO

Single-cycle IO block

Provides core-local and inter-core hardware for the two processors, with single-cycle access.
"""
module SIO

const baseAddress = Ptr{UInt32}(3489660928)

"""
    CPUID

Processor core identifier

Value is 0 when read from processor core 0, and 1 when read from processor core 1.
"""
module CPUIDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CPUIDStruct(regAddress)
	CPUID:32
end
const Reg = CPUIDStruct

end # register CPUID

"""
    GPIO_IN

Input value for GPIO pins
"""
module GPIO_INMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct GPIO_INStruct(regAddress)
	GPIO_IN:30::Read
	_:2
end
const Reg = GPIO_INStruct

"""
    GPIO_IN

Input value for GPIO0...29
"""
GPIO_IN

end # register GPIO_IN

"""
    GPIO_HI_IN

Input value for QSPI pins
"""
module GPIO_HI_INMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct GPIO_HI_INStruct(regAddress)
	GPIO_HI_IN:6::Read
	_:26
end
const Reg = GPIO_HI_INStruct

"""
    GPIO_HI_IN

Input value on QSPI IO in order 0..5: SCLK, SSn, SD0, SD1, SD2, SD3
"""
GPIO_HI_IN

end # register GPIO_HI_IN

"""
    GPIO_OUT

GPIO output value
"""
module GPIO_OUTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct GPIO_OUTStruct(regAddress)
	GPIO_OUT:30::ReadWrite
	_:2
end
const Reg = GPIO_OUTStruct

"""
    GPIO_OUT

Set output level (1/0 -&gt; high/low) for GPIO0...29.

Reading back gives the last value written, NOT the input value from the pins.

If core 0 and core 1 both write to GPIO\\_OUT simultaneously (or to a SET/CLR/XOR alias),

the result is as though the write from core 0 took place first,

and the write from core 1 was then applied to that intermediate result.
"""
GPIO_OUT

end # register GPIO_OUT

"""
    GPIO_OUT_SET

GPIO output value set
"""
module GPIO_OUT_SETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct GPIO_OUT_SETStruct(regAddress)
	GPIO_OUT_SET:30::Write
	_:2
end
const Reg = GPIO_OUT_SETStruct

"""
    GPIO_OUT_SET

Perform an atomic bit-set on GPIO\\_OUT, i.e. `GPIO\\_OUT |= wdata`
"""
GPIO_OUT_SET

end # register GPIO_OUT_SET

"""
    GPIO_OUT_CLR

GPIO output value clear
"""
module GPIO_OUT_CLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct GPIO_OUT_CLRStruct(regAddress)
	GPIO_OUT_CLR:30::Write
	_:2
end
const Reg = GPIO_OUT_CLRStruct

"""
    GPIO_OUT_CLR

Perform an atomic bit-clear on GPIO\\_OUT, i.e. `GPIO\\_OUT &amp;= ~wdata`
"""
GPIO_OUT_CLR

end # register GPIO_OUT_CLR

"""
    GPIO_OUT_XOR

GPIO output value XOR
"""
module GPIO_OUT_XORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct GPIO_OUT_XORStruct(regAddress)
	GPIO_OUT_XOR:30::Write
	_:2
end
const Reg = GPIO_OUT_XORStruct

"""
    GPIO_OUT_XOR

Perform an atomic bitwise XOR on GPIO\\_OUT, i.e. `GPIO\\_OUT ^= wdata`
"""
GPIO_OUT_XOR

end # register GPIO_OUT_XOR

"""
    GPIO_OE

GPIO output enable
"""
module GPIO_OEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct GPIO_OEStruct(regAddress)
	GPIO_OE:30::ReadWrite
	_:2
end
const Reg = GPIO_OEStruct

"""
    GPIO_OE

Set output enable (1/0 -&gt; output/input) for GPIO0...29.

Reading back gives the last value written.

If core 0 and core 1 both write to GPIO\\_OE simultaneously (or to a SET/CLR/XOR alias),

the result is as though the write from core 0 took place first,

and the write from core 1 was then applied to that intermediate result.
"""
GPIO_OE

end # register GPIO_OE

"""
    GPIO_OE_SET

GPIO output enable set
"""
module GPIO_OE_SETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct GPIO_OE_SETStruct(regAddress)
	GPIO_OE_SET:30::Write
	_:2
end
const Reg = GPIO_OE_SETStruct

"""
    GPIO_OE_SET

Perform an atomic bit-set on GPIO\\_OE, i.e. `GPIO\\_OE |= wdata`
"""
GPIO_OE_SET

end # register GPIO_OE_SET

"""
    GPIO_OE_CLR

GPIO output enable clear
"""
module GPIO_OE_CLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct GPIO_OE_CLRStruct(regAddress)
	GPIO_OE_CLR:30::Write
	_:2
end
const Reg = GPIO_OE_CLRStruct

"""
    GPIO_OE_CLR

Perform an atomic bit-clear on GPIO\\_OE, i.e. `GPIO\\_OE &amp;= ~wdata`
"""
GPIO_OE_CLR

end # register GPIO_OE_CLR

"""
    GPIO_OE_XOR

GPIO output enable XOR
"""
module GPIO_OE_XORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct GPIO_OE_XORStruct(regAddress)
	GPIO_OE_XOR:30::Write
	_:2
end
const Reg = GPIO_OE_XORStruct

"""
    GPIO_OE_XOR

Perform an atomic bitwise XOR on GPIO\\_OE, i.e. `GPIO\\_OE ^= wdata`
"""
GPIO_OE_XOR

end # register GPIO_OE_XOR

"""
    GPIO_HI_OUT

QSPI output value
"""
module GPIO_HI_OUTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct GPIO_HI_OUTStruct(regAddress)
	GPIO_HI_OUT:6::ReadWrite
	_:26
end
const Reg = GPIO_HI_OUTStruct

"""
    GPIO_HI_OUT

Set output level (1/0 -&gt; high/low) for QSPI IO0...5.

Reading back gives the last value written, NOT the input value from the pins.

If core 0 and core 1 both write to GPIO\\_HI\\_OUT simultaneously (or to a SET/CLR/XOR alias),

the result is as though the write from core 0 took place first,

and the write from core 1 was then applied to that intermediate result.
"""
GPIO_HI_OUT

end # register GPIO_HI_OUT

"""
    GPIO_HI_OUT_SET

QSPI output value set
"""
module GPIO_HI_OUT_SETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct GPIO_HI_OUT_SETStruct(regAddress)
	GPIO_HI_OUT_SET:6::Write
	_:26
end
const Reg = GPIO_HI_OUT_SETStruct

"""
    GPIO_HI_OUT_SET

Perform an atomic bit-set on GPIO\\_HI\\_OUT, i.e. `GPIO\\_HI\\_OUT |= wdata`
"""
GPIO_HI_OUT_SET

end # register GPIO_HI_OUT_SET

"""
    GPIO_HI_OUT_CLR

QSPI output value clear
"""
module GPIO_HI_OUT_CLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct GPIO_HI_OUT_CLRStruct(regAddress)
	GPIO_HI_OUT_CLR:6::Write
	_:26
end
const Reg = GPIO_HI_OUT_CLRStruct

"""
    GPIO_HI_OUT_CLR

Perform an atomic bit-clear on GPIO\\_HI\\_OUT, i.e. `GPIO\\_HI\\_OUT &amp;= ~wdata`
"""
GPIO_HI_OUT_CLR

end # register GPIO_HI_OUT_CLR

"""
    GPIO_HI_OUT_XOR

QSPI output value XOR
"""
module GPIO_HI_OUT_XORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct GPIO_HI_OUT_XORStruct(regAddress)
	GPIO_HI_OUT_XOR:6::Write
	_:26
end
const Reg = GPIO_HI_OUT_XORStruct

"""
    GPIO_HI_OUT_XOR

Perform an atomic bitwise XOR on GPIO\\_HI\\_OUT, i.e. `GPIO\\_HI\\_OUT ^= wdata`
"""
GPIO_HI_OUT_XOR

end # register GPIO_HI_OUT_XOR

"""
    GPIO_HI_OE

QSPI output enable
"""
module GPIO_HI_OEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct GPIO_HI_OEStruct(regAddress)
	GPIO_HI_OE:6::ReadWrite
	_:26
end
const Reg = GPIO_HI_OEStruct

"""
    GPIO_HI_OE

Set output enable (1/0 -&gt; output/input) for QSPI IO0...5.

Reading back gives the last value written.

If core 0 and core 1 both write to GPIO\\_HI\\_OE simultaneously (or to a SET/CLR/XOR alias),

the result is as though the write from core 0 took place first,

and the write from core 1 was then applied to that intermediate result.
"""
GPIO_HI_OE

end # register GPIO_HI_OE

"""
    GPIO_HI_OE_SET

QSPI output enable set
"""
module GPIO_HI_OE_SETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct GPIO_HI_OE_SETStruct(regAddress)
	GPIO_HI_OE_SET:6::Write
	_:26
end
const Reg = GPIO_HI_OE_SETStruct

"""
    GPIO_HI_OE_SET

Perform an atomic bit-set on GPIO\\_HI\\_OE, i.e. `GPIO\\_HI\\_OE |= wdata`
"""
GPIO_HI_OE_SET

end # register GPIO_HI_OE_SET

"""
    GPIO_HI_OE_CLR

QSPI output enable clear
"""
module GPIO_HI_OE_CLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct GPIO_HI_OE_CLRStruct(regAddress)
	GPIO_HI_OE_CLR:6::Write
	_:26
end
const Reg = GPIO_HI_OE_CLRStruct

"""
    GPIO_HI_OE_CLR

Perform an atomic bit-clear on GPIO\\_HI\\_OE, i.e. `GPIO\\_HI\\_OE &amp;= ~wdata`
"""
GPIO_HI_OE_CLR

end # register GPIO_HI_OE_CLR

"""
    GPIO_HI_OE_XOR

QSPI output enable XOR
"""
module GPIO_HI_OE_XORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct GPIO_HI_OE_XORStruct(regAddress)
	GPIO_HI_OE_XOR:6::Write
	_:26
end
const Reg = GPIO_HI_OE_XORStruct

"""
    GPIO_HI_OE_XOR

Perform an atomic bitwise XOR on GPIO\\_HI\\_OE, i.e. `GPIO\\_HI\\_OE ^= wdata`
"""
GPIO_HI_OE_XOR

end # register GPIO_HI_OE_XOR

"""
    FIFO_ST

Status register for inter-core FIFOs (mailboxes).

There is one FIFO in the core 0 -&gt; core 1 direction, and one core 1 -&gt; core 0. Both are 32 bits wide and 8 words deep.

Core 0 can see the read side of the 1-&gt;0 FIFO (RX), and the write side of 0-&gt;1 FIFO (TX).

Core 1 can see the read side of the 0-&gt;1 FIFO (RX), and the write side of 1-&gt;0 FIFO (TX).

The SIO IRQ for each core is the logical OR of the VLD, WOF and ROE fields of its FIFO\\_ST register.
"""
module FIFO_STMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct FIFO_STStruct(regAddress)
	VLD:1::Read
	RDY:1::Read
	WOF:1::ReadWrite
	ROE:1::ReadWrite
	_:28
end
const Reg = FIFO_STStruct

"""
    VLD

Value is 1 if this core's RX FIFO is not empty (i.e. if FIFO\\_RD is valid)
"""
VLD

"""
    RDY

Value is 1 if this core's TX FIFO is not full (i.e. if FIFO\\_WR is ready for more data)
"""
RDY

"""
    WOF

Sticky flag indicating the TX FIFO was written when full. This write was ignored by the FIFO.
"""
WOF

"""
    ROE

Sticky flag indicating the RX FIFO was read when empty. This read was ignored by the FIFO.
"""
ROE

end # register FIFO_ST

"""
    FIFO_WR

Write access to this core's TX FIFO
"""
module FIFO_WRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct FIFO_WRStruct(regAddress)
	FIFO_WR:32
end
const Reg = FIFO_WRStruct

end # register FIFO_WR

"""
    FIFO_RD

Read access to this core's RX FIFO
"""
module FIFO_RDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct FIFO_RDStruct(regAddress)
	FIFO_RD:32
end
const Reg = FIFO_RDStruct

end # register FIFO_RD

"""
    SPINLOCK_ST

Spinlock state

A bitmap containing the state of all 32 spinlocks (1=locked).

Mainly intended for debugging.
"""
module SPINLOCK_STMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct SPINLOCK_STStruct(regAddress)
	SPINLOCK_ST:32
end
const Reg = SPINLOCK_STStruct

end # register SPINLOCK_ST

"""
    DIV_UDIVIDEND

Divider unsigned dividend

Write to the DIVIDEND operand of the divider, i.e. the p in `p / q`.

Any operand write starts a new calculation. The results appear in QUOTIENT, REMAINDER.

UDIVIDEND/SDIVIDEND are aliases of the same internal register. The U alias starts an

unsigned calculation, and the S alias starts a signed calculation.
"""
module DIV_UDIVIDENDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct DIV_UDIVIDENDStruct(regAddress)
	DIV_UDIVIDEND:32
end
const Reg = DIV_UDIVIDENDStruct

end # register DIV_UDIVIDEND

"""
    DIV_UDIVISOR

Divider unsigned divisor

Write to the DIVISOR operand of the divider, i.e. the q in `p / q`.

Any operand write starts a new calculation. The results appear in QUOTIENT, REMAINDER.

UDIVISOR/SDIVISOR are aliases of the same internal register. The U alias starts an

unsigned calculation, and the S alias starts a signed calculation.
"""
module DIV_UDIVISORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct DIV_UDIVISORStruct(regAddress)
	DIV_UDIVISOR:32
end
const Reg = DIV_UDIVISORStruct

end # register DIV_UDIVISOR

"""
    DIV_SDIVIDEND

Divider signed dividend

The same as UDIVIDEND, but starts a signed calculation, rather than unsigned.
"""
module DIV_SDIVIDENDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct DIV_SDIVIDENDStruct(regAddress)
	DIV_SDIVIDEND:32
end
const Reg = DIV_SDIVIDENDStruct

end # register DIV_SDIVIDEND

"""
    DIV_SDIVISOR

Divider signed divisor

The same as UDIVISOR, but starts a signed calculation, rather than unsigned.
"""
module DIV_SDIVISORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct DIV_SDIVISORStruct(regAddress)
	DIV_SDIVISOR:32
end
const Reg = DIV_SDIVISORStruct

end # register DIV_SDIVISOR

"""
    DIV_QUOTIENT

Divider result quotient

The result of `DIVIDEND / DIVISOR` (division). Contents undefined while CSR\\_READY is low.

For signed calculations, QUOTIENT is negative when the signs of DIVIDEND and DIVISOR differ.

This register can be written to directly, for context save/restore purposes. This halts any

in-progress calculation and sets the CSR\\_READY and CSR\\_DIRTY flags.

Reading from QUOTIENT clears the CSR\\_DIRTY flag, so should read results in the order

REMAINDER, QUOTIENT if CSR\\_DIRTY is used.
"""
module DIV_QUOTIENTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct DIV_QUOTIENTStruct(regAddress)
	DIV_QUOTIENT:32
end
const Reg = DIV_QUOTIENTStruct

end # register DIV_QUOTIENT

"""
    DIV_REMAINDER

Divider result remainder

The result of `DIVIDEND % DIVISOR` (modulo). Contents undefined while CSR\\_READY is low.

For signed calculations, REMAINDER is negative only when DIVIDEND is negative.

This register can be written to directly, for context save/restore purposes. This halts any

in-progress calculation and sets the CSR\\_READY and CSR\\_DIRTY flags.
"""
module DIV_REMAINDERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct DIV_REMAINDERStruct(regAddress)
	DIV_REMAINDER:32
end
const Reg = DIV_REMAINDERStruct

end # register DIV_REMAINDER

"""
    DIV_CSR

Control and status register for divider.
"""
module DIV_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct DIV_CSRStruct(regAddress)
	READY:1::Read
	DIRTY:1::Read
	_:30
end
const Reg = DIV_CSRStruct

"""
    READY

Reads as 0 when a calculation is in progress, 1 otherwise.

Writing an operand (xDIVIDEND, xDIVISOR) will immediately start a new calculation, no

matter if one is already in progress.

Writing to a result register will immediately terminate any in-progress calculation

and set the READY and DIRTY flags.
"""
READY

"""
    DIRTY

Changes to 1 when any register is written, and back to 0 when QUOTIENT is read.

Software can use this flag to make save/restore more efficient (skip if not DIRTY).

If the flag is used in this way, it's recommended to either read QUOTIENT only,

or REMAINDER and then QUOTIENT, to prevent data loss on context switch.
"""
DIRTY

end # register DIV_CSR

"""
    INTERP0_ACCUM0

Read/write access to accumulator 0
"""
module INTERP0_ACCUM0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct INTERP0_ACCUM0Struct(regAddress)
	INTERP0_ACCUM0:32
end
const Reg = INTERP0_ACCUM0Struct

end # register INTERP0_ACCUM0

"""
    INTERP0_ACCUM1

Read/write access to accumulator 1
"""
module INTERP0_ACCUM1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct INTERP0_ACCUM1Struct(regAddress)
	INTERP0_ACCUM1:32
end
const Reg = INTERP0_ACCUM1Struct

end # register INTERP0_ACCUM1

"""
    INTERP0_BASE0

Read/write access to BASE0 register.
"""
module INTERP0_BASE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct INTERP0_BASE0Struct(regAddress)
	INTERP0_BASE0:32
end
const Reg = INTERP0_BASE0Struct

end # register INTERP0_BASE0

"""
    INTERP0_BASE1

Read/write access to BASE1 register.
"""
module INTERP0_BASE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct INTERP0_BASE1Struct(regAddress)
	INTERP0_BASE1:32
end
const Reg = INTERP0_BASE1Struct

end # register INTERP0_BASE1

"""
    INTERP0_BASE2

Read/write access to BASE2 register.
"""
module INTERP0_BASE2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct INTERP0_BASE2Struct(regAddress)
	INTERP0_BASE2:32
end
const Reg = INTERP0_BASE2Struct

end # register INTERP0_BASE2

"""
    INTERP0_POP_LANE0

Read LANE0 result, and simultaneously write lane results to both accumulators (POP).
"""
module INTERP0_POP_LANE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct INTERP0_POP_LANE0Struct(regAddress)
	INTERP0_POP_LANE0:32
end
const Reg = INTERP0_POP_LANE0Struct

end # register INTERP0_POP_LANE0

"""
    INTERP0_POP_LANE1

Read LANE1 result, and simultaneously write lane results to both accumulators (POP).
"""
module INTERP0_POP_LANE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct INTERP0_POP_LANE1Struct(regAddress)
	INTERP0_POP_LANE1:32
end
const Reg = INTERP0_POP_LANE1Struct

end # register INTERP0_POP_LANE1

"""
    INTERP0_POP_FULL

Read FULL result, and simultaneously write lane results to both accumulators (POP).
"""
module INTERP0_POP_FULLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct INTERP0_POP_FULLStruct(regAddress)
	INTERP0_POP_FULL:32
end
const Reg = INTERP0_POP_FULLStruct

end # register INTERP0_POP_FULL

"""
    INTERP0_PEEK_LANE0

Read LANE0 result, without altering any internal state (PEEK).
"""
module INTERP0_PEEK_LANE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct INTERP0_PEEK_LANE0Struct(regAddress)
	INTERP0_PEEK_LANE0:32
end
const Reg = INTERP0_PEEK_LANE0Struct

end # register INTERP0_PEEK_LANE0

"""
    INTERP0_PEEK_LANE1

Read LANE1 result, without altering any internal state (PEEK).
"""
module INTERP0_PEEK_LANE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct INTERP0_PEEK_LANE1Struct(regAddress)
	INTERP0_PEEK_LANE1:32
end
const Reg = INTERP0_PEEK_LANE1Struct

end # register INTERP0_PEEK_LANE1

"""
    INTERP0_PEEK_FULL

Read FULL result, without altering any internal state (PEEK).
"""
module INTERP0_PEEK_FULLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct INTERP0_PEEK_FULLStruct(regAddress)
	INTERP0_PEEK_FULL:32
end
const Reg = INTERP0_PEEK_FULLStruct

end # register INTERP0_PEEK_FULL

"""
    INTERP0_CTRL_LANE0

Control register for lane 0
"""
module INTERP0_CTRL_LANE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct INTERP0_CTRL_LANE0Struct(regAddress)
	SHIFT:5::ReadWrite
	MASK_LSB:5::ReadWrite
	MASK_MSB:5::ReadWrite
	SIGNED:1::ReadWrite
	CROSS_INPUT:1::ReadWrite
	CROSS_RESULT:1::ReadWrite
	ADD_RAW:1::ReadWrite
	FORCE_MSB:2::ReadWrite
	BLEND:1::ReadWrite
	_:1
	OVERF0:1::Read
	OVERF1:1::Read
	OVERF:1::Read
	_:6
end
const Reg = INTERP0_CTRL_LANE0Struct

"""
    SHIFT

Logical right-shift applied to accumulator before masking
"""
SHIFT

"""
    MASK_LSB

The least-significant bit allowed to pass by the mask (inclusive)
"""
MASK_LSB

"""
    MASK_MSB

The most-significant bit allowed to pass by the mask (inclusive)

Setting MSB &lt; LSB may cause chip to turn inside-out
"""
MASK_MSB

"""
    SIGNED

If SIGNED is set, the shifted and masked accumulator value is sign-extended to 32 bits

before adding to BASE0, and LANE0 PEEK/POP appear extended to 32 bits when read by processor.
"""
SIGNED

"""
    CROSS_INPUT

If 1, feed the opposite lane's accumulator into this lane's shift + mask hardware.

Takes effect even if ADD\\_RAW is set (the CROSS\\_INPUT mux is before the shift+mask bypass)
"""
CROSS_INPUT

"""
    CROSS_RESULT

If 1, feed the opposite lane's result into this lane's accumulator on POP.
"""
CROSS_RESULT

"""
    ADD_RAW

If 1, mask + shift is bypassed for LANE0 result. This does not affect FULL result.
"""
ADD_RAW

"""
    FORCE_MSB

ORed into bits 29:28 of the lane result presented to the processor on the bus.

No effect on the internal 32-bit datapath. Handy for using a lane to generate sequence

of pointers into flash or SRAM.
"""
FORCE_MSB

"""
    BLEND

Only present on INTERP0 on each core. If BLEND mode is enabled:

  - LANE1 result is a linear interpolation between BASE0 and BASE1, controlled

by the 8 LSBs of lane 1 shift and mask value (a fractional number between

0 and 255/256ths)

  - LANE0 result does not have BASE0 added (yields only the 8 LSBs of lane 1 shift+mask value)

  - FULL result does not have lane 1 shift+mask value added (BASE2 + lane 0 shift+mask)

LANE1 SIGNED flag controls whether the interpolation is signed or unsigned.
"""
BLEND

"""
    OVERF0

Indicates if any masked-off MSBs in ACCUM0 are set.
"""
OVERF0

"""
    OVERF1

Indicates if any masked-off MSBs in ACCUM1 are set.
"""
OVERF1

"""
    OVERF

Set if either OVERF0 or OVERF1 is set.
"""
OVERF

end # register INTERP0_CTRL_LANE0

"""
    INTERP0_CTRL_LANE1

Control register for lane 1
"""
module INTERP0_CTRL_LANE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct INTERP0_CTRL_LANE1Struct(regAddress)
	SHIFT:5::ReadWrite
	MASK_LSB:5::ReadWrite
	MASK_MSB:5::ReadWrite
	SIGNED:1::ReadWrite
	CROSS_INPUT:1::ReadWrite
	CROSS_RESULT:1::ReadWrite
	ADD_RAW:1::ReadWrite
	FORCE_MSB:2::ReadWrite
	_:11
end
const Reg = INTERP0_CTRL_LANE1Struct

"""
    SHIFT

Logical right-shift applied to accumulator before masking
"""
SHIFT

"""
    MASK_LSB

The least-significant bit allowed to pass by the mask (inclusive)
"""
MASK_LSB

"""
    MASK_MSB

The most-significant bit allowed to pass by the mask (inclusive)

Setting MSB &lt; LSB may cause chip to turn inside-out
"""
MASK_MSB

"""
    SIGNED

If SIGNED is set, the shifted and masked accumulator value is sign-extended to 32 bits

before adding to BASE1, and LANE1 PEEK/POP appear extended to 32 bits when read by processor.
"""
SIGNED

"""
    CROSS_INPUT

If 1, feed the opposite lane's accumulator into this lane's shift + mask hardware.

Takes effect even if ADD\\_RAW is set (the CROSS\\_INPUT mux is before the shift+mask bypass)
"""
CROSS_INPUT

"""
    CROSS_RESULT

If 1, feed the opposite lane's result into this lane's accumulator on POP.
"""
CROSS_RESULT

"""
    ADD_RAW

If 1, mask + shift is bypassed for LANE1 result. This does not affect FULL result.
"""
ADD_RAW

"""
    FORCE_MSB

ORed into bits 29:28 of the lane result presented to the processor on the bus.

No effect on the internal 32-bit datapath. Handy for using a lane to generate sequence

of pointers into flash or SRAM.
"""
FORCE_MSB

end # register INTERP0_CTRL_LANE1

"""
    INTERP0_ACCUM0_ADD

Values written here are atomically added to ACCUM0

Reading yields lane 0's raw shift and mask value (BASE0 not added).
"""
module INTERP0_ACCUM0_ADDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000b4
@regdef struct INTERP0_ACCUM0_ADDStruct(regAddress)
	INTERP0_ACCUM0_ADD:24::ReadWrite
	_:8
end
const Reg = INTERP0_ACCUM0_ADDStruct

"""
    INTERP0_ACCUM0_ADD

Field has no description!
"""
INTERP0_ACCUM0_ADD

end # register INTERP0_ACCUM0_ADD

"""
    INTERP0_ACCUM1_ADD

Values written here are atomically added to ACCUM1

Reading yields lane 1's raw shift and mask value (BASE1 not added).
"""
module INTERP0_ACCUM1_ADDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000b8
@regdef struct INTERP0_ACCUM1_ADDStruct(regAddress)
	INTERP0_ACCUM1_ADD:24::ReadWrite
	_:8
end
const Reg = INTERP0_ACCUM1_ADDStruct

"""
    INTERP0_ACCUM1_ADD

Field has no description!
"""
INTERP0_ACCUM1_ADD

end # register INTERP0_ACCUM1_ADD

"""
    INTERP0_BASE_1AND0

On write, the lower 16 bits go to BASE0, upper bits to BASE1 simultaneously.

Each half is sign-extended to 32 bits if that lane's SIGNED flag is set.
"""
module INTERP0_BASE_1AND0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000bc
@regdef struct INTERP0_BASE_1AND0Struct(regAddress)
	INTERP0_BASE_1AND0:32
end
const Reg = INTERP0_BASE_1AND0Struct

end # register INTERP0_BASE_1AND0

"""
    INTERP1_ACCUM0

Read/write access to accumulator 0
"""
module INTERP1_ACCUM0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000c0
@regdef struct INTERP1_ACCUM0Struct(regAddress)
	INTERP1_ACCUM0:32
end
const Reg = INTERP1_ACCUM0Struct

end # register INTERP1_ACCUM0

"""
    INTERP1_ACCUM1

Read/write access to accumulator 1
"""
module INTERP1_ACCUM1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000c4
@regdef struct INTERP1_ACCUM1Struct(regAddress)
	INTERP1_ACCUM1:32
end
const Reg = INTERP1_ACCUM1Struct

end # register INTERP1_ACCUM1

"""
    INTERP1_BASE0

Read/write access to BASE0 register.
"""
module INTERP1_BASE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000c8
@regdef struct INTERP1_BASE0Struct(regAddress)
	INTERP1_BASE0:32
end
const Reg = INTERP1_BASE0Struct

end # register INTERP1_BASE0

"""
    INTERP1_BASE1

Read/write access to BASE1 register.
"""
module INTERP1_BASE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000cc
@regdef struct INTERP1_BASE1Struct(regAddress)
	INTERP1_BASE1:32
end
const Reg = INTERP1_BASE1Struct

end # register INTERP1_BASE1

"""
    INTERP1_BASE2

Read/write access to BASE2 register.
"""
module INTERP1_BASE2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000d0
@regdef struct INTERP1_BASE2Struct(regAddress)
	INTERP1_BASE2:32
end
const Reg = INTERP1_BASE2Struct

end # register INTERP1_BASE2

"""
    INTERP1_POP_LANE0

Read LANE0 result, and simultaneously write lane results to both accumulators (POP).
"""
module INTERP1_POP_LANE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000d4
@regdef struct INTERP1_POP_LANE0Struct(regAddress)
	INTERP1_POP_LANE0:32
end
const Reg = INTERP1_POP_LANE0Struct

end # register INTERP1_POP_LANE0

"""
    INTERP1_POP_LANE1

Read LANE1 result, and simultaneously write lane results to both accumulators (POP).
"""
module INTERP1_POP_LANE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000d8
@regdef struct INTERP1_POP_LANE1Struct(regAddress)
	INTERP1_POP_LANE1:32
end
const Reg = INTERP1_POP_LANE1Struct

end # register INTERP1_POP_LANE1

"""
    INTERP1_POP_FULL

Read FULL result, and simultaneously write lane results to both accumulators (POP).
"""
module INTERP1_POP_FULLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000dc
@regdef struct INTERP1_POP_FULLStruct(regAddress)
	INTERP1_POP_FULL:32
end
const Reg = INTERP1_POP_FULLStruct

end # register INTERP1_POP_FULL

"""
    INTERP1_PEEK_LANE0

Read LANE0 result, without altering any internal state (PEEK).
"""
module INTERP1_PEEK_LANE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000e0
@regdef struct INTERP1_PEEK_LANE0Struct(regAddress)
	INTERP1_PEEK_LANE0:32
end
const Reg = INTERP1_PEEK_LANE0Struct

end # register INTERP1_PEEK_LANE0

"""
    INTERP1_PEEK_LANE1

Read LANE1 result, without altering any internal state (PEEK).
"""
module INTERP1_PEEK_LANE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000e4
@regdef struct INTERP1_PEEK_LANE1Struct(regAddress)
	INTERP1_PEEK_LANE1:32
end
const Reg = INTERP1_PEEK_LANE1Struct

end # register INTERP1_PEEK_LANE1

"""
    INTERP1_PEEK_FULL

Read FULL result, without altering any internal state (PEEK).
"""
module INTERP1_PEEK_FULLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000e8
@regdef struct INTERP1_PEEK_FULLStruct(regAddress)
	INTERP1_PEEK_FULL:32
end
const Reg = INTERP1_PEEK_FULLStruct

end # register INTERP1_PEEK_FULL

"""
    INTERP1_CTRL_LANE0

Control register for lane 0
"""
module INTERP1_CTRL_LANE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000ec
@regdef struct INTERP1_CTRL_LANE0Struct(regAddress)
	SHIFT:5::ReadWrite
	MASK_LSB:5::ReadWrite
	MASK_MSB:5::ReadWrite
	SIGNED:1::ReadWrite
	CROSS_INPUT:1::ReadWrite
	CROSS_RESULT:1::ReadWrite
	ADD_RAW:1::ReadWrite
	FORCE_MSB:2::ReadWrite
	_:1
	CLAMP:1::ReadWrite
	OVERF0:1::Read
	OVERF1:1::Read
	OVERF:1::Read
	_:6
end
const Reg = INTERP1_CTRL_LANE0Struct

"""
    SHIFT

Logical right-shift applied to accumulator before masking
"""
SHIFT

"""
    MASK_LSB

The least-significant bit allowed to pass by the mask (inclusive)
"""
MASK_LSB

"""
    MASK_MSB

The most-significant bit allowed to pass by the mask (inclusive)

Setting MSB &lt; LSB may cause chip to turn inside-out
"""
MASK_MSB

"""
    SIGNED

If SIGNED is set, the shifted and masked accumulator value is sign-extended to 32 bits

before adding to BASE0, and LANE0 PEEK/POP appear extended to 32 bits when read by processor.
"""
SIGNED

"""
    CROSS_INPUT

If 1, feed the opposite lane's accumulator into this lane's shift + mask hardware.

Takes effect even if ADD\\_RAW is set (the CROSS\\_INPUT mux is before the shift+mask bypass)
"""
CROSS_INPUT

"""
    CROSS_RESULT

If 1, feed the opposite lane's result into this lane's accumulator on POP.
"""
CROSS_RESULT

"""
    ADD_RAW

If 1, mask + shift is bypassed for LANE0 result. This does not affect FULL result.
"""
ADD_RAW

"""
    FORCE_MSB

ORed into bits 29:28 of the lane result presented to the processor on the bus.

No effect on the internal 32-bit datapath. Handy for using a lane to generate sequence

of pointers into flash or SRAM.
"""
FORCE_MSB

"""
    CLAMP

Only present on INTERP1 on each core. If CLAMP mode is enabled:

  - LANE0 result is shifted and masked ACCUM0, clamped by a lower bound of

BASE0 and an upper bound of BASE1.

  - Signedness of these comparisons is determined by LANE0\\_CTRL\\_SIGNED
"""
CLAMP

"""
    OVERF0

Indicates if any masked-off MSBs in ACCUM0 are set.
"""
OVERF0

"""
    OVERF1

Indicates if any masked-off MSBs in ACCUM1 are set.
"""
OVERF1

"""
    OVERF

Set if either OVERF0 or OVERF1 is set.
"""
OVERF

end # register INTERP1_CTRL_LANE0

"""
    INTERP1_CTRL_LANE1

Control register for lane 1
"""
module INTERP1_CTRL_LANE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000f0
@regdef struct INTERP1_CTRL_LANE1Struct(regAddress)
	SHIFT:5::ReadWrite
	MASK_LSB:5::ReadWrite
	MASK_MSB:5::ReadWrite
	SIGNED:1::ReadWrite
	CROSS_INPUT:1::ReadWrite
	CROSS_RESULT:1::ReadWrite
	ADD_RAW:1::ReadWrite
	FORCE_MSB:2::ReadWrite
	_:11
end
const Reg = INTERP1_CTRL_LANE1Struct

"""
    SHIFT

Logical right-shift applied to accumulator before masking
"""
SHIFT

"""
    MASK_LSB

The least-significant bit allowed to pass by the mask (inclusive)
"""
MASK_LSB

"""
    MASK_MSB

The most-significant bit allowed to pass by the mask (inclusive)

Setting MSB &lt; LSB may cause chip to turn inside-out
"""
MASK_MSB

"""
    SIGNED

If SIGNED is set, the shifted and masked accumulator value is sign-extended to 32 bits

before adding to BASE1, and LANE1 PEEK/POP appear extended to 32 bits when read by processor.
"""
SIGNED

"""
    CROSS_INPUT

If 1, feed the opposite lane's accumulator into this lane's shift + mask hardware.

Takes effect even if ADD\\_RAW is set (the CROSS\\_INPUT mux is before the shift+mask bypass)
"""
CROSS_INPUT

"""
    CROSS_RESULT

If 1, feed the opposite lane's result into this lane's accumulator on POP.
"""
CROSS_RESULT

"""
    ADD_RAW

If 1, mask + shift is bypassed for LANE1 result. This does not affect FULL result.
"""
ADD_RAW

"""
    FORCE_MSB

ORed into bits 29:28 of the lane result presented to the processor on the bus.

No effect on the internal 32-bit datapath. Handy for using a lane to generate sequence

of pointers into flash or SRAM.
"""
FORCE_MSB

end # register INTERP1_CTRL_LANE1

"""
    INTERP1_ACCUM0_ADD

Values written here are atomically added to ACCUM0

Reading yields lane 0's raw shift and mask value (BASE0 not added).
"""
module INTERP1_ACCUM0_ADDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct INTERP1_ACCUM0_ADDStruct(regAddress)
	INTERP1_ACCUM0_ADD:24::ReadWrite
	_:8
end
const Reg = INTERP1_ACCUM0_ADDStruct

"""
    INTERP1_ACCUM0_ADD

Field has no description!
"""
INTERP1_ACCUM0_ADD

end # register INTERP1_ACCUM0_ADD

"""
    INTERP1_ACCUM1_ADD

Values written here are atomically added to ACCUM1

Reading yields lane 1's raw shift and mask value (BASE1 not added).
"""
module INTERP1_ACCUM1_ADDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct INTERP1_ACCUM1_ADDStruct(regAddress)
	INTERP1_ACCUM1_ADD:24::ReadWrite
	_:8
end
const Reg = INTERP1_ACCUM1_ADDStruct

"""
    INTERP1_ACCUM1_ADD

Field has no description!
"""
INTERP1_ACCUM1_ADD

end # register INTERP1_ACCUM1_ADD

"""
    INTERP1_BASE_1AND0

On write, the lower 16 bits go to BASE0, upper bits to BASE1 simultaneously.

Each half is sign-extended to 32 bits if that lane's SIGNED flag is set.
"""
module INTERP1_BASE_1AND0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x00000000000000fc
@regdef struct INTERP1_BASE_1AND0Struct(regAddress)
	INTERP1_BASE_1AND0:32
end
const Reg = INTERP1_BASE_1AND0Struct

end # register INTERP1_BASE_1AND0

"""
    SPINLOCK0

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000100
@regdef struct SPINLOCK0Struct(regAddress)
	SPINLOCK0:32
end
const Reg = SPINLOCK0Struct

end # register SPINLOCK0

"""
    SPINLOCK1

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000104
@regdef struct SPINLOCK1Struct(regAddress)
	SPINLOCK1:32
end
const Reg = SPINLOCK1Struct

end # register SPINLOCK1

"""
    SPINLOCK2

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000108
@regdef struct SPINLOCK2Struct(regAddress)
	SPINLOCK2:32
end
const Reg = SPINLOCK2Struct

end # register SPINLOCK2

"""
    SPINLOCK3

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000010c
@regdef struct SPINLOCK3Struct(regAddress)
	SPINLOCK3:32
end
const Reg = SPINLOCK3Struct

end # register SPINLOCK3

"""
    SPINLOCK4

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK4Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000110
@regdef struct SPINLOCK4Struct(regAddress)
	SPINLOCK4:32
end
const Reg = SPINLOCK4Struct

end # register SPINLOCK4

"""
    SPINLOCK5

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK5Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000114
@regdef struct SPINLOCK5Struct(regAddress)
	SPINLOCK5:32
end
const Reg = SPINLOCK5Struct

end # register SPINLOCK5

"""
    SPINLOCK6

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK6Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000118
@regdef struct SPINLOCK6Struct(regAddress)
	SPINLOCK6:32
end
const Reg = SPINLOCK6Struct

end # register SPINLOCK6

"""
    SPINLOCK7

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK7Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000011c
@regdef struct SPINLOCK7Struct(regAddress)
	SPINLOCK7:32
end
const Reg = SPINLOCK7Struct

end # register SPINLOCK7

"""
    SPINLOCK8

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK8Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000120
@regdef struct SPINLOCK8Struct(regAddress)
	SPINLOCK8:32
end
const Reg = SPINLOCK8Struct

end # register SPINLOCK8

"""
    SPINLOCK9

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK9Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000124
@regdef struct SPINLOCK9Struct(regAddress)
	SPINLOCK9:32
end
const Reg = SPINLOCK9Struct

end # register SPINLOCK9

"""
    SPINLOCK10

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK10Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000128
@regdef struct SPINLOCK10Struct(regAddress)
	SPINLOCK10:32
end
const Reg = SPINLOCK10Struct

end # register SPINLOCK10

"""
    SPINLOCK11

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK11Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000012c
@regdef struct SPINLOCK11Struct(regAddress)
	SPINLOCK11:32
end
const Reg = SPINLOCK11Struct

end # register SPINLOCK11

"""
    SPINLOCK12

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK12Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000130
@regdef struct SPINLOCK12Struct(regAddress)
	SPINLOCK12:32
end
const Reg = SPINLOCK12Struct

end # register SPINLOCK12

"""
    SPINLOCK13

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK13Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000134
@regdef struct SPINLOCK13Struct(regAddress)
	SPINLOCK13:32
end
const Reg = SPINLOCK13Struct

end # register SPINLOCK13

"""
    SPINLOCK14

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK14Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000138
@regdef struct SPINLOCK14Struct(regAddress)
	SPINLOCK14:32
end
const Reg = SPINLOCK14Struct

end # register SPINLOCK14

"""
    SPINLOCK15

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK15Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000013c
@regdef struct SPINLOCK15Struct(regAddress)
	SPINLOCK15:32
end
const Reg = SPINLOCK15Struct

end # register SPINLOCK15

"""
    SPINLOCK16

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK16Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000140
@regdef struct SPINLOCK16Struct(regAddress)
	SPINLOCK16:32
end
const Reg = SPINLOCK16Struct

end # register SPINLOCK16

"""
    SPINLOCK17

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK17Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000144
@regdef struct SPINLOCK17Struct(regAddress)
	SPINLOCK17:32
end
const Reg = SPINLOCK17Struct

end # register SPINLOCK17

"""
    SPINLOCK18

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK18Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000148
@regdef struct SPINLOCK18Struct(regAddress)
	SPINLOCK18:32
end
const Reg = SPINLOCK18Struct

end # register SPINLOCK18

"""
    SPINLOCK19

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK19Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000014c
@regdef struct SPINLOCK19Struct(regAddress)
	SPINLOCK19:32
end
const Reg = SPINLOCK19Struct

end # register SPINLOCK19

"""
    SPINLOCK20

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK20Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000150
@regdef struct SPINLOCK20Struct(regAddress)
	SPINLOCK20:32
end
const Reg = SPINLOCK20Struct

end # register SPINLOCK20

"""
    SPINLOCK21

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK21Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000154
@regdef struct SPINLOCK21Struct(regAddress)
	SPINLOCK21:32
end
const Reg = SPINLOCK21Struct

end # register SPINLOCK21

"""
    SPINLOCK22

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK22Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000158
@regdef struct SPINLOCK22Struct(regAddress)
	SPINLOCK22:32
end
const Reg = SPINLOCK22Struct

end # register SPINLOCK22

"""
    SPINLOCK23

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK23Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000015c
@regdef struct SPINLOCK23Struct(regAddress)
	SPINLOCK23:32
end
const Reg = SPINLOCK23Struct

end # register SPINLOCK23

"""
    SPINLOCK24

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK24Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000160
@regdef struct SPINLOCK24Struct(regAddress)
	SPINLOCK24:32
end
const Reg = SPINLOCK24Struct

end # register SPINLOCK24

"""
    SPINLOCK25

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK25Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000164
@regdef struct SPINLOCK25Struct(regAddress)
	SPINLOCK25:32
end
const Reg = SPINLOCK25Struct

end # register SPINLOCK25

"""
    SPINLOCK26

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK26Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000168
@regdef struct SPINLOCK26Struct(regAddress)
	SPINLOCK26:32
end
const Reg = SPINLOCK26Struct

end # register SPINLOCK26

"""
    SPINLOCK27

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK27Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000016c
@regdef struct SPINLOCK27Struct(regAddress)
	SPINLOCK27:32
end
const Reg = SPINLOCK27Struct

end # register SPINLOCK27

"""
    SPINLOCK28

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK28Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000170
@regdef struct SPINLOCK28Struct(regAddress)
	SPINLOCK28:32
end
const Reg = SPINLOCK28Struct

end # register SPINLOCK28

"""
    SPINLOCK29

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK29Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000174
@regdef struct SPINLOCK29Struct(regAddress)
	SPINLOCK29:32
end
const Reg = SPINLOCK29Struct

end # register SPINLOCK29

"""
    SPINLOCK30

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK30Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x0000000000000178
@regdef struct SPINLOCK30Struct(regAddress)
	SPINLOCK30:32
end
const Reg = SPINLOCK30Struct

end # register SPINLOCK30

"""
    SPINLOCK31

Reading from a spinlock address will:

  - Return 0 if lock is already locked

  - Otherwise return nonzero, and simultaneously claim the lock\n

Writing (any value) releases the lock.

If core 0 and core 1 attempt to claim the same lock simultaneously, core 0 wins.

The value returned on success is 0x1 &lt;&lt; lock number.
"""
module SPINLOCK31Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SIO: baseAddress

const regAddress = baseAddress + 0x000000000000017c
@regdef struct SPINLOCK31Struct(regAddress)
	SPINLOCK31:32
end
const Reg = SPINLOCK31Struct

end # register SPINLOCK31

end # peripheral

