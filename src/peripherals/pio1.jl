"""
    PIO1

Programmable IO block
"""
module PIO1

const baseAddress = Ptr{UInt32}(1345323008)

"""
    CTRL

PIO control register
"""
module CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CTRLStruct(regAddress)
	SM_ENABLE:4::ReadWrite
	SM_RESTART:4::ReadWrite
	CLKDIV_RESTART:4::ReadWrite
	_:20
end
const Reg = CTRLStruct

"""
    SM_ENABLE

Enable/disable each of the four state machines by writing 1/0 to each of these four bits. When disabled, a state machine will cease executing instructions, except those written directly to SMx\\_INSTR by the system. Multiple bits can be set/cleared at once to run/halt multiple state machines simultaneously.
"""
SM_ENABLE

"""
    SM_RESTART

Write 1 to instantly clear internal SM state which may be otherwise difficult to access and will affect future execution.\n

Specifically, the following are cleared: input and output shift counters; the contents of the input shift register; the delay counter; the waiting-on-IRQ state; any stalled instruction written to SMx\\_INSTR or run by OUT/MOV EXEC; any pin write left asserted due to OUT\\_STICKY.\n

The program counter, the contents of the output shift register and the X/Y scratch registers are not affected.
"""
SM_RESTART

"""
    CLKDIV_RESTART

Restart a state machine's clock divider from an initial phase of 0. Clock dividers are free-running, so once started, their output (including fractional jitter) is completely determined by the integer/fractional divisor configured in SMx\\_CLKDIV. This means that, if multiple clock dividers with the same divisor are restarted simultaneously, by writing multiple 1 bits to this field, the execution clocks of those state machines will run in precise lockstep.\n

Note that setting/clearing SM\\_ENABLE does not stop the clock divider from running, so once multiple state machines' clocks are synchronised, it is safe to disable/reenable a state machine, whilst keeping the clock dividers in sync.\n

Note also that CLKDIV\\_RESTART can be written to whilst the state machine is running, and this is useful to resynchronise clock dividers after the divisors (SMx\\_CLKDIV) have been changed on-the-fly.
"""
CLKDIV_RESTART

end # register CTRL

"""
    FSTAT

FIFO status register
"""
module FSTATMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct FSTATStruct(regAddress)
	RXFULL:4::Read
	_:4
	RXEMPTY:4::Read
	_:4
	TXFULL:4::Read
	_:4
	TXEMPTY:4::Read
	_:4
end
const Reg = FSTATStruct

"""
    RXFULL

State machine RX FIFO is full
"""
RXFULL

"""
    RXEMPTY

State machine RX FIFO is empty
"""
RXEMPTY

"""
    TXFULL

State machine TX FIFO is full
"""
TXFULL

"""
    TXEMPTY

State machine TX FIFO is empty
"""
TXEMPTY

end # register FSTAT

"""
    FDEBUG

FIFO debug register
"""
module FDEBUGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct FDEBUGStruct(regAddress)
	RXSTALL:4::ReadWrite
	_:4
	RXUNDER:4::ReadWrite
	_:4
	TXOVER:4::ReadWrite
	_:4
	TXSTALL:4::ReadWrite
	_:4
end
const Reg = FDEBUGStruct

"""
    RXSTALL

State machine has stalled on full RX FIFO during a blocking PUSH, or an IN with autopush enabled. This flag is also set when a nonblocking PUSH to a full FIFO took place, in which case the state machine has dropped data. Write 1 to clear.
"""
RXSTALL

"""
    RXUNDER

RX FIFO underflow (i.e. read-on-empty by the system) has occurred. Write 1 to clear. Note that read-on-empty does not perturb the state of the FIFO in any way, but the data returned by reading from an empty FIFO is undefined, so this flag generally only becomes set due to some kind of software error.
"""
RXUNDER

"""
    TXOVER

TX FIFO overflow (i.e. write-on-full by the system) has occurred. Write 1 to clear. Note that write-on-full does not alter the state or contents of the FIFO in any way, but the data that the system attempted to write is dropped, so if this flag is set, your software has quite likely dropped some data on the floor.
"""
TXOVER

"""
    TXSTALL

State machine has stalled on empty TX FIFO during a blocking PULL, or an OUT with autopull enabled. Write 1 to clear.
"""
TXSTALL

end # register FDEBUG

"""
    FLEVEL

FIFO levels
"""
module FLEVELMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct FLEVELStruct(regAddress)
	TX0:4::Read
	RX0:4::Read
	TX1:4::Read
	RX1:4::Read
	TX2:4::Read
	RX2:4::Read
	TX3:4::Read
	RX3:4::Read
end
const Reg = FLEVELStruct

"""
    TX0

Field has no description!
"""
TX0

"""
    RX0

Field has no description!
"""
RX0

"""
    TX1

Field has no description!
"""
TX1

"""
    RX1

Field has no description!
"""
RX1

"""
    TX2

Field has no description!
"""
TX2

"""
    RX2

Field has no description!
"""
RX2

"""
    TX3

Field has no description!
"""
TX3

"""
    RX3

Field has no description!
"""
RX3

end # register FLEVEL

"""
    TXF0

Direct write access to the TX FIFO for this state machine. Each write pushes one word to the FIFO. Attempting to write to a full FIFO has no effect on the FIFO state or contents, and sets the sticky FDEBUG\\_TXOVER error flag for this FIFO.
"""
module TXF0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct TXF0Struct(regAddress)
	TXF0:32
end
const Reg = TXF0Struct

end # register TXF0

"""
    TXF1

Direct write access to the TX FIFO for this state machine. Each write pushes one word to the FIFO. Attempting to write to a full FIFO has no effect on the FIFO state or contents, and sets the sticky FDEBUG\\_TXOVER error flag for this FIFO.
"""
module TXF1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct TXF1Struct(regAddress)
	TXF1:32
end
const Reg = TXF1Struct

end # register TXF1

"""
    TXF2

Direct write access to the TX FIFO for this state machine. Each write pushes one word to the FIFO. Attempting to write to a full FIFO has no effect on the FIFO state or contents, and sets the sticky FDEBUG\\_TXOVER error flag for this FIFO.
"""
module TXF2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct TXF2Struct(regAddress)
	TXF2:32
end
const Reg = TXF2Struct

end # register TXF2

"""
    TXF3

Direct write access to the TX FIFO for this state machine. Each write pushes one word to the FIFO. Attempting to write to a full FIFO has no effect on the FIFO state or contents, and sets the sticky FDEBUG\\_TXOVER error flag for this FIFO.
"""
module TXF3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct TXF3Struct(regAddress)
	TXF3:32
end
const Reg = TXF3Struct

end # register TXF3

"""
    RXF0

Direct read access to the RX FIFO for this state machine. Each read pops one word from the FIFO. Attempting to read from an empty FIFO has no effect on the FIFO state, and sets the sticky FDEBUG\\_RXUNDER error flag for this FIFO. The data returned to the system on a read from an empty FIFO is undefined.
"""
module RXF0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct RXF0Struct(regAddress)
	RXF0:32
end
const Reg = RXF0Struct

end # register RXF0

"""
    RXF1

Direct read access to the RX FIFO for this state machine. Each read pops one word from the FIFO. Attempting to read from an empty FIFO has no effect on the FIFO state, and sets the sticky FDEBUG\\_RXUNDER error flag for this FIFO. The data returned to the system on a read from an empty FIFO is undefined.
"""
module RXF1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct RXF1Struct(regAddress)
	RXF1:32
end
const Reg = RXF1Struct

end # register RXF1

"""
    RXF2

Direct read access to the RX FIFO for this state machine. Each read pops one word from the FIFO. Attempting to read from an empty FIFO has no effect on the FIFO state, and sets the sticky FDEBUG\\_RXUNDER error flag for this FIFO. The data returned to the system on a read from an empty FIFO is undefined.
"""
module RXF2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct RXF2Struct(regAddress)
	RXF2:32
end
const Reg = RXF2Struct

end # register RXF2

"""
    RXF3

Direct read access to the RX FIFO for this state machine. Each read pops one word from the FIFO. Attempting to read from an empty FIFO has no effect on the FIFO state, and sets the sticky FDEBUG\\_RXUNDER error flag for this FIFO. The data returned to the system on a read from an empty FIFO is undefined.
"""
module RXF3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct RXF3Struct(regAddress)
	RXF3:32
end
const Reg = RXF3Struct

end # register RXF3

"""
    IRQ

State machine IRQ flags register. Write 1 to clear. There are 8 state machine IRQ flags, which can be set, cleared, and waited on by the state machines. There's no fixed association between flags and state machines -- any state machine can use any flag.\n

Any of the 8 flags can be used for timing synchronisation between state machines, using IRQ and WAIT instructions. The lower four of these flags are also routed out to system-level interrupt requests, alongside FIFO status interrupts -- see e.g. IRQ0\\_INTE.
"""
module IRQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct IRQStruct(regAddress)
	IRQ:8::ReadWrite
	_:24
end
const Reg = IRQStruct

"""
    IRQ

Field has no description!
"""
IRQ

end # register IRQ

"""
    IRQ_FORCE

Writing a 1 to each of these bits will forcibly assert the corresponding IRQ. Note this is different to the INTF register: writing here affects PIO internal state. INTF just asserts the processor-facing IRQ signal for testing ISRs, and is not visible to the state machines.
"""
module IRQ_FORCEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct IRQ_FORCEStruct(regAddress)
	IRQ_FORCE:8::Write
	_:24
end
const Reg = IRQ_FORCEStruct

"""
    IRQ_FORCE

Field has no description!
"""
IRQ_FORCE

end # register IRQ_FORCE

"""
    INPUT_SYNC_BYPASS

There is a 2-flipflop synchronizer on each GPIO input, which protects PIO logic from metastabilities. This increases input delay, and for fast synchronous IO (e.g. SPI) these synchronizers may need to be bypassed. Each bit in this register corresponds to one GPIO.

0 -&gt; input is synchronized (default)

1 -&gt; synchronizer is bypassed

If in doubt, leave this register as all zeroes.
"""
module INPUT_SYNC_BYPASSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct INPUT_SYNC_BYPASSStruct(regAddress)
	INPUT_SYNC_BYPASS:32
end
const Reg = INPUT_SYNC_BYPASSStruct

end # register INPUT_SYNC_BYPASS

"""
    DBG_PADOUT

Read to sample the pad output values PIO is currently driving to the GPIOs. On RP2040 there are 30 GPIOs, so the two most significant bits are hardwired to 0.
"""
module DBG_PADOUTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct DBG_PADOUTStruct(regAddress)
	DBG_PADOUT:32
end
const Reg = DBG_PADOUTStruct

end # register DBG_PADOUT

"""
    DBG_PADOE

Read to sample the pad output enables (direction) PIO is currently driving to the GPIOs. On RP2040 there are 30 GPIOs, so the two most significant bits are hardwired to 0.
"""
module DBG_PADOEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct DBG_PADOEStruct(regAddress)
	DBG_PADOE:32
end
const Reg = DBG_PADOEStruct

end # register DBG_PADOE

"""
    DBG_CFGINFO

The PIO hardware has some free parameters that may vary between chip products.

These should be provided in the chip datasheet, but are also exposed here.
"""
module DBG_CFGINFOMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct DBG_CFGINFOStruct(regAddress)
	FIFO_DEPTH:6::Read
	_:2
	SM_COUNT:4::Read
	_:4
	IMEM_SIZE:6::Read
	_:10
end
const Reg = DBG_CFGINFOStruct

"""
    FIFO_DEPTH

The depth of the state machine TX/RX FIFOs, measured in words.

Joining fifos via SHIFTCTRL\\_FJOIN gives one FIFO with double

this depth.
"""
FIFO_DEPTH

"""
    SM_COUNT

The number of state machines this PIO instance is equipped with.
"""
SM_COUNT

"""
    IMEM_SIZE

The size of the instruction memory, measured in units of one instruction
"""
IMEM_SIZE

end # register DBG_CFGINFO

"""
    INSTR_MEM0

Write-only access to instruction memory location 0
"""
module INSTR_MEM0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct INSTR_MEM0Struct(regAddress)
	INSTR_MEM0:16::Write
	_:16
end
const Reg = INSTR_MEM0Struct

"""
    INSTR_MEM0

Field has no description!
"""
INSTR_MEM0

end # register INSTR_MEM0

"""
    INSTR_MEM1

Write-only access to instruction memory location 1
"""
module INSTR_MEM1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct INSTR_MEM1Struct(regAddress)
	INSTR_MEM1:16::Write
	_:16
end
const Reg = INSTR_MEM1Struct

"""
    INSTR_MEM1

Field has no description!
"""
INSTR_MEM1

end # register INSTR_MEM1

"""
    INSTR_MEM2

Write-only access to instruction memory location 2
"""
module INSTR_MEM2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct INSTR_MEM2Struct(regAddress)
	INSTR_MEM2:16::Write
	_:16
end
const Reg = INSTR_MEM2Struct

"""
    INSTR_MEM2

Field has no description!
"""
INSTR_MEM2

end # register INSTR_MEM2

"""
    INSTR_MEM3

Write-only access to instruction memory location 3
"""
module INSTR_MEM3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct INSTR_MEM3Struct(regAddress)
	INSTR_MEM3:16::Write
	_:16
end
const Reg = INSTR_MEM3Struct

"""
    INSTR_MEM3

Field has no description!
"""
INSTR_MEM3

end # register INSTR_MEM3

"""
    INSTR_MEM4

Write-only access to instruction memory location 4
"""
module INSTR_MEM4Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct INSTR_MEM4Struct(regAddress)
	INSTR_MEM4:16::Write
	_:16
end
const Reg = INSTR_MEM4Struct

"""
    INSTR_MEM4

Field has no description!
"""
INSTR_MEM4

end # register INSTR_MEM4

"""
    INSTR_MEM5

Write-only access to instruction memory location 5
"""
module INSTR_MEM5Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct INSTR_MEM5Struct(regAddress)
	INSTR_MEM5:16::Write
	_:16
end
const Reg = INSTR_MEM5Struct

"""
    INSTR_MEM5

Field has no description!
"""
INSTR_MEM5

end # register INSTR_MEM5

"""
    INSTR_MEM6

Write-only access to instruction memory location 6
"""
module INSTR_MEM6Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct INSTR_MEM6Struct(regAddress)
	INSTR_MEM6:16::Write
	_:16
end
const Reg = INSTR_MEM6Struct

"""
    INSTR_MEM6

Field has no description!
"""
INSTR_MEM6

end # register INSTR_MEM6

"""
    INSTR_MEM7

Write-only access to instruction memory location 7
"""
module INSTR_MEM7Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct INSTR_MEM7Struct(regAddress)
	INSTR_MEM7:16::Write
	_:16
end
const Reg = INSTR_MEM7Struct

"""
    INSTR_MEM7

Field has no description!
"""
INSTR_MEM7

end # register INSTR_MEM7

"""
    INSTR_MEM8

Write-only access to instruction memory location 8
"""
module INSTR_MEM8Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct INSTR_MEM8Struct(regAddress)
	INSTR_MEM8:16::Write
	_:16
end
const Reg = INSTR_MEM8Struct

"""
    INSTR_MEM8

Field has no description!
"""
INSTR_MEM8

end # register INSTR_MEM8

"""
    INSTR_MEM9

Write-only access to instruction memory location 9
"""
module INSTR_MEM9Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct INSTR_MEM9Struct(regAddress)
	INSTR_MEM9:16::Write
	_:16
end
const Reg = INSTR_MEM9Struct

"""
    INSTR_MEM9

Field has no description!
"""
INSTR_MEM9

end # register INSTR_MEM9

"""
    INSTR_MEM10

Write-only access to instruction memory location 10
"""
module INSTR_MEM10Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct INSTR_MEM10Struct(regAddress)
	INSTR_MEM10:16::Write
	_:16
end
const Reg = INSTR_MEM10Struct

"""
    INSTR_MEM10

Field has no description!
"""
INSTR_MEM10

end # register INSTR_MEM10

"""
    INSTR_MEM11

Write-only access to instruction memory location 11
"""
module INSTR_MEM11Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct INSTR_MEM11Struct(regAddress)
	INSTR_MEM11:16::Write
	_:16
end
const Reg = INSTR_MEM11Struct

"""
    INSTR_MEM11

Field has no description!
"""
INSTR_MEM11

end # register INSTR_MEM11

"""
    INSTR_MEM12

Write-only access to instruction memory location 12
"""
module INSTR_MEM12Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct INSTR_MEM12Struct(regAddress)
	INSTR_MEM12:16::Write
	_:16
end
const Reg = INSTR_MEM12Struct

"""
    INSTR_MEM12

Field has no description!
"""
INSTR_MEM12

end # register INSTR_MEM12

"""
    INSTR_MEM13

Write-only access to instruction memory location 13
"""
module INSTR_MEM13Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct INSTR_MEM13Struct(regAddress)
	INSTR_MEM13:16::Write
	_:16
end
const Reg = INSTR_MEM13Struct

"""
    INSTR_MEM13

Field has no description!
"""
INSTR_MEM13

end # register INSTR_MEM13

"""
    INSTR_MEM14

Write-only access to instruction memory location 14
"""
module INSTR_MEM14Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct INSTR_MEM14Struct(regAddress)
	INSTR_MEM14:16::Write
	_:16
end
const Reg = INSTR_MEM14Struct

"""
    INSTR_MEM14

Field has no description!
"""
INSTR_MEM14

end # register INSTR_MEM14

"""
    INSTR_MEM15

Write-only access to instruction memory location 15
"""
module INSTR_MEM15Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct INSTR_MEM15Struct(regAddress)
	INSTR_MEM15:16::Write
	_:16
end
const Reg = INSTR_MEM15Struct

"""
    INSTR_MEM15

Field has no description!
"""
INSTR_MEM15

end # register INSTR_MEM15

"""
    INSTR_MEM16

Write-only access to instruction memory location 16
"""
module INSTR_MEM16Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct INSTR_MEM16Struct(regAddress)
	INSTR_MEM16:16::Write
	_:16
end
const Reg = INSTR_MEM16Struct

"""
    INSTR_MEM16

Field has no description!
"""
INSTR_MEM16

end # register INSTR_MEM16

"""
    INSTR_MEM17

Write-only access to instruction memory location 17
"""
module INSTR_MEM17Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct INSTR_MEM17Struct(regAddress)
	INSTR_MEM17:16::Write
	_:16
end
const Reg = INSTR_MEM17Struct

"""
    INSTR_MEM17

Field has no description!
"""
INSTR_MEM17

end # register INSTR_MEM17

"""
    INSTR_MEM18

Write-only access to instruction memory location 18
"""
module INSTR_MEM18Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct INSTR_MEM18Struct(regAddress)
	INSTR_MEM18:16::Write
	_:16
end
const Reg = INSTR_MEM18Struct

"""
    INSTR_MEM18

Field has no description!
"""
INSTR_MEM18

end # register INSTR_MEM18

"""
    INSTR_MEM19

Write-only access to instruction memory location 19
"""
module INSTR_MEM19Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct INSTR_MEM19Struct(regAddress)
	INSTR_MEM19:16::Write
	_:16
end
const Reg = INSTR_MEM19Struct

"""
    INSTR_MEM19

Field has no description!
"""
INSTR_MEM19

end # register INSTR_MEM19

"""
    INSTR_MEM20

Write-only access to instruction memory location 20
"""
module INSTR_MEM20Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct INSTR_MEM20Struct(regAddress)
	INSTR_MEM20:16::Write
	_:16
end
const Reg = INSTR_MEM20Struct

"""
    INSTR_MEM20

Field has no description!
"""
INSTR_MEM20

end # register INSTR_MEM20

"""
    INSTR_MEM21

Write-only access to instruction memory location 21
"""
module INSTR_MEM21Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct INSTR_MEM21Struct(regAddress)
	INSTR_MEM21:16::Write
	_:16
end
const Reg = INSTR_MEM21Struct

"""
    INSTR_MEM21

Field has no description!
"""
INSTR_MEM21

end # register INSTR_MEM21

"""
    INSTR_MEM22

Write-only access to instruction memory location 22
"""
module INSTR_MEM22Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct INSTR_MEM22Struct(regAddress)
	INSTR_MEM22:16::Write
	_:16
end
const Reg = INSTR_MEM22Struct

"""
    INSTR_MEM22

Field has no description!
"""
INSTR_MEM22

end # register INSTR_MEM22

"""
    INSTR_MEM23

Write-only access to instruction memory location 23
"""
module INSTR_MEM23Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct INSTR_MEM23Struct(regAddress)
	INSTR_MEM23:16::Write
	_:16
end
const Reg = INSTR_MEM23Struct

"""
    INSTR_MEM23

Field has no description!
"""
INSTR_MEM23

end # register INSTR_MEM23

"""
    INSTR_MEM24

Write-only access to instruction memory location 24
"""
module INSTR_MEM24Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct INSTR_MEM24Struct(regAddress)
	INSTR_MEM24:16::Write
	_:16
end
const Reg = INSTR_MEM24Struct

"""
    INSTR_MEM24

Field has no description!
"""
INSTR_MEM24

end # register INSTR_MEM24

"""
    INSTR_MEM25

Write-only access to instruction memory location 25
"""
module INSTR_MEM25Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct INSTR_MEM25Struct(regAddress)
	INSTR_MEM25:16::Write
	_:16
end
const Reg = INSTR_MEM25Struct

"""
    INSTR_MEM25

Field has no description!
"""
INSTR_MEM25

end # register INSTR_MEM25

"""
    INSTR_MEM26

Write-only access to instruction memory location 26
"""
module INSTR_MEM26Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct INSTR_MEM26Struct(regAddress)
	INSTR_MEM26:16::Write
	_:16
end
const Reg = INSTR_MEM26Struct

"""
    INSTR_MEM26

Field has no description!
"""
INSTR_MEM26

end # register INSTR_MEM26

"""
    INSTR_MEM27

Write-only access to instruction memory location 27
"""
module INSTR_MEM27Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000b4
@regdef struct INSTR_MEM27Struct(regAddress)
	INSTR_MEM27:16::Write
	_:16
end
const Reg = INSTR_MEM27Struct

"""
    INSTR_MEM27

Field has no description!
"""
INSTR_MEM27

end # register INSTR_MEM27

"""
    INSTR_MEM28

Write-only access to instruction memory location 28
"""
module INSTR_MEM28Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000b8
@regdef struct INSTR_MEM28Struct(regAddress)
	INSTR_MEM28:16::Write
	_:16
end
const Reg = INSTR_MEM28Struct

"""
    INSTR_MEM28

Field has no description!
"""
INSTR_MEM28

end # register INSTR_MEM28

"""
    INSTR_MEM29

Write-only access to instruction memory location 29
"""
module INSTR_MEM29Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000bc
@regdef struct INSTR_MEM29Struct(regAddress)
	INSTR_MEM29:16::Write
	_:16
end
const Reg = INSTR_MEM29Struct

"""
    INSTR_MEM29

Field has no description!
"""
INSTR_MEM29

end # register INSTR_MEM29

"""
    INSTR_MEM30

Write-only access to instruction memory location 30
"""
module INSTR_MEM30Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000c0
@regdef struct INSTR_MEM30Struct(regAddress)
	INSTR_MEM30:16::Write
	_:16
end
const Reg = INSTR_MEM30Struct

"""
    INSTR_MEM30

Field has no description!
"""
INSTR_MEM30

end # register INSTR_MEM30

"""
    INSTR_MEM31

Write-only access to instruction memory location 31
"""
module INSTR_MEM31Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000c4
@regdef struct INSTR_MEM31Struct(regAddress)
	INSTR_MEM31:16::Write
	_:16
end
const Reg = INSTR_MEM31Struct

"""
    INSTR_MEM31

Field has no description!
"""
INSTR_MEM31

end # register INSTR_MEM31

"""
    SM0_CLKDIV

Clock divisor register for state machine 0

Frequency = clock freq / (CLKDIV\\_INT + CLKDIV\\_FRAC / 256)
"""
module SM0_CLKDIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000c8
@regdef struct SM0_CLKDIVStruct(regAddress)
	_:8
	FRAC:8::ReadWrite
	INT:16::ReadWrite
end
const Reg = SM0_CLKDIVStruct

"""
    FRAC

Fractional part of clock divisor
"""
FRAC

"""
    INT

Effective frequency is sysclk/(int + frac/256).

Value of 0 is interpreted as 65536. If INT is 0, FRAC must also be 0.
"""
INT

end # register SM0_CLKDIV

"""
    SM0_EXECCTRL

Execution/behavioural settings for state machine 0
"""
module SM0_EXECCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000cc
@regdef struct SM0_EXECCTRLStruct(regAddress)
	STATUS_N:4::ReadWrite
	STATUS_SEL:1::ReadWrite
	_:2
	WRAP_BOTTOM:5::ReadWrite
	WRAP_TOP:5::ReadWrite
	OUT_STICKY:1::ReadWrite
	INLINE_OUT_EN:1::ReadWrite
	OUT_EN_SEL:5::ReadWrite
	JMP_PIN:5::ReadWrite
	SIDE_PINDIR:1::ReadWrite
	SIDE_EN:1::ReadWrite
	EXEC_STALLED:1::Read
end
const Reg = SM0_EXECCTRLStruct

"""
    STATUS_N

Comparison level for the MOV x, STATUS instruction
"""
STATUS_N

"""
    STATUS_SEL

Comparison used for the MOV x, STATUS instruction.
"""
STATUS_SEL

"""
    WRAP_BOTTOM

After reaching wrap\\_top, execution is wrapped to this address.
"""
WRAP_BOTTOM

"""
    WRAP_TOP

After reaching this address, execution is wrapped to wrap\\_bottom.

If the instruction is a jump, and the jump condition is true, the jump takes priority.
"""
WRAP_TOP

"""
    OUT_STICKY

Continuously assert the most recent OUT/SET to the pins
"""
OUT_STICKY

"""
    INLINE_OUT_EN

If 1, use a bit of OUT data as an auxiliary write enable

When used in conjunction with OUT\\_STICKY, writes with an enable of 0 will

deassert the latest pin write. This can create useful masking/override behaviour

due to the priority ordering of state machine pin writes (SM0 &lt; SM1 &lt; ...)
"""
INLINE_OUT_EN

"""
    OUT_EN_SEL

Which data bit to use for inline OUT enable
"""
OUT_EN_SEL

"""
    JMP_PIN

The GPIO number to use as condition for JMP PIN. Unaffected by input mapping.
"""
JMP_PIN

"""
    SIDE_PINDIR

If 1, side-set data is asserted to pin directions, instead of pin values
"""
SIDE_PINDIR

"""
    SIDE_EN

If 1, the MSB of the Delay/Side-set instruction field is used as side-set enable, rather than a side-set data bit. This allows instructions to perform side-set optionally, rather than on every instruction, but the maximum possible side-set width is reduced from 5 to 4. Note that the value of PINCTRL\\_SIDESET\\_COUNT is inclusive of this enable bit.
"""
SIDE_EN

"""
    EXEC_STALLED

If 1, an instruction written to SMx\\_INSTR is stalled, and latched by the state machine. Will clear to 0 once this instruction completes.
"""
EXEC_STALLED

end # register SM0_EXECCTRL

"""
    SM0_SHIFTCTRL

Control behaviour of the input/output shift registers for state machine 0
"""
module SM0_SHIFTCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000d0
@regdef struct SM0_SHIFTCTRLStruct(regAddress)
	_:16
	AUTOPUSH:1::ReadWrite
	AUTOPULL:1::ReadWrite
	IN_SHIFTDIR:1::ReadWrite
	OUT_SHIFTDIR:1::ReadWrite
	PUSH_THRESH:5::ReadWrite
	PULL_THRESH:5::ReadWrite
	FJOIN_TX:1::ReadWrite
	FJOIN_RX:1::ReadWrite
end
const Reg = SM0_SHIFTCTRLStruct

"""
    AUTOPUSH

Push automatically when the input shift register is filled, i.e. on an IN instruction which causes the input shift counter to reach or exceed PUSH\\_THRESH.
"""
AUTOPUSH

"""
    AUTOPULL

Pull automatically when the output shift register is emptied, i.e. on or following an OUT instruction which causes the output shift counter to reach or exceed PULL\\_THRESH.
"""
AUTOPULL

"""
    IN_SHIFTDIR

1 = shift input shift register to right (data enters from left). 0 = to left.
"""
IN_SHIFTDIR

"""
    OUT_SHIFTDIR

1 = shift out of output shift register to right. 0 = to left.
"""
OUT_SHIFTDIR

"""
    PUSH_THRESH

Number of bits shifted into ISR before autopush, or conditional push (PUSH IFFULL), will take place.

Write 0 for value of 32.
"""
PUSH_THRESH

"""
    PULL_THRESH

Number of bits shifted out of OSR before autopull, or conditional pull (PULL IFEMPTY), will take place.

Write 0 for value of 32.
"""
PULL_THRESH

"""
    FJOIN_TX

When 1, TX FIFO steals the RX FIFO's storage, and becomes twice as deep.

RX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_TX

"""
    FJOIN_RX

When 1, RX FIFO steals the TX FIFO's storage, and becomes twice as deep.

TX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_RX

end # register SM0_SHIFTCTRL

"""
    SM0_ADDR

Current instruction address of state machine 0
"""
module SM0_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000d4
@regdef struct SM0_ADDRStruct(regAddress)
	SM0_ADDR:5::Read
	_:27
end
const Reg = SM0_ADDRStruct

"""
    SM0_ADDR

Field has no description!
"""
SM0_ADDR

end # register SM0_ADDR

"""
    SM0_INSTR

Read to see the instruction currently addressed by state machine 0's program counter

Write to execute an instruction immediately (including jumps) and then resume execution.
"""
module SM0_INSTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000d8
@regdef struct SM0_INSTRStruct(regAddress)
	SM0_INSTR:16::ReadWrite
	_:16
end
const Reg = SM0_INSTRStruct

"""
    SM0_INSTR

Field has no description!
"""
SM0_INSTR

end # register SM0_INSTR

"""
    SM0_PINCTRL

State machine pin control
"""
module SM0_PINCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000dc
@regdef struct SM0_PINCTRLStruct(regAddress)
	OUT_BASE:5::ReadWrite
	SET_BASE:5::ReadWrite
	SIDESET_BASE:5::ReadWrite
	IN_BASE:5::ReadWrite
	OUT_COUNT:6::ReadWrite
	SET_COUNT:3::ReadWrite
	SIDESET_COUNT:3::ReadWrite
end
const Reg = SM0_PINCTRLStruct

"""
    OUT_BASE

The lowest-numbered pin that will be affected by an OUT PINS, OUT PINDIRS or MOV PINS instruction. The data written to this pin will always be the least-significant bit of the OUT or MOV data.
"""
OUT_BASE

"""
    SET_BASE

The lowest-numbered pin that will be affected by a SET PINS or SET PINDIRS instruction. The data written to this pin is the least-significant bit of the SET data.
"""
SET_BASE

"""
    SIDESET_BASE

The lowest-numbered pin that will be affected by a side-set operation. The MSBs of an instruction's side-set/delay field (up to 5, determined by SIDESET\\_COUNT) are used for side-set data, with the remaining LSBs used for delay. The least-significant bit of the side-set portion is the bit written to this pin, with more-significant bits written to higher-numbered pins.
"""
SIDESET_BASE

"""
    IN_BASE

The pin which is mapped to the least-significant bit of a state machine's IN data bus. Higher-numbered pins are mapped to consecutively more-significant data bits, with a modulo of 32 applied to pin number.
"""
IN_BASE

"""
    OUT_COUNT

The number of pins asserted by an OUT PINS, OUT PINDIRS or MOV PINS instruction. In the range 0 to 32 inclusive.
"""
OUT_COUNT

"""
    SET_COUNT

The number of pins asserted by a SET. In the range 0 to 5 inclusive.
"""
SET_COUNT

"""
    SIDESET_COUNT

The number of MSBs of the Delay/Side-set instruction field which are used for side-set. Inclusive of the enable bit, if present. Minimum of 0 (all delay bits, no side-set) and maximum of 5 (all side-set, no delay).
"""
SIDESET_COUNT

end # register SM0_PINCTRL

"""
    SM1_CLKDIV

Clock divisor register for state machine 1

Frequency = clock freq / (CLKDIV\\_INT + CLKDIV\\_FRAC / 256)
"""
module SM1_CLKDIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000e0
@regdef struct SM1_CLKDIVStruct(regAddress)
	_:8
	FRAC:8::ReadWrite
	INT:16::ReadWrite
end
const Reg = SM1_CLKDIVStruct

"""
    FRAC

Fractional part of clock divisor
"""
FRAC

"""
    INT

Effective frequency is sysclk/(int + frac/256).

Value of 0 is interpreted as 65536. If INT is 0, FRAC must also be 0.
"""
INT

end # register SM1_CLKDIV

"""
    SM1_EXECCTRL

Execution/behavioural settings for state machine 1
"""
module SM1_EXECCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000e4
@regdef struct SM1_EXECCTRLStruct(regAddress)
	STATUS_N:4::ReadWrite
	STATUS_SEL:1::ReadWrite
	_:2
	WRAP_BOTTOM:5::ReadWrite
	WRAP_TOP:5::ReadWrite
	OUT_STICKY:1::ReadWrite
	INLINE_OUT_EN:1::ReadWrite
	OUT_EN_SEL:5::ReadWrite
	JMP_PIN:5::ReadWrite
	SIDE_PINDIR:1::ReadWrite
	SIDE_EN:1::ReadWrite
	EXEC_STALLED:1::Read
end
const Reg = SM1_EXECCTRLStruct

"""
    STATUS_N

Comparison level for the MOV x, STATUS instruction
"""
STATUS_N

"""
    STATUS_SEL

Comparison used for the MOV x, STATUS instruction.
"""
STATUS_SEL

"""
    WRAP_BOTTOM

After reaching wrap\\_top, execution is wrapped to this address.
"""
WRAP_BOTTOM

"""
    WRAP_TOP

After reaching this address, execution is wrapped to wrap\\_bottom.

If the instruction is a jump, and the jump condition is true, the jump takes priority.
"""
WRAP_TOP

"""
    OUT_STICKY

Continuously assert the most recent OUT/SET to the pins
"""
OUT_STICKY

"""
    INLINE_OUT_EN

If 1, use a bit of OUT data as an auxiliary write enable

When used in conjunction with OUT\\_STICKY, writes with an enable of 0 will

deassert the latest pin write. This can create useful masking/override behaviour

due to the priority ordering of state machine pin writes (SM0 &lt; SM1 &lt; ...)
"""
INLINE_OUT_EN

"""
    OUT_EN_SEL

Which data bit to use for inline OUT enable
"""
OUT_EN_SEL

"""
    JMP_PIN

The GPIO number to use as condition for JMP PIN. Unaffected by input mapping.
"""
JMP_PIN

"""
    SIDE_PINDIR

If 1, side-set data is asserted to pin directions, instead of pin values
"""
SIDE_PINDIR

"""
    SIDE_EN

If 1, the MSB of the Delay/Side-set instruction field is used as side-set enable, rather than a side-set data bit. This allows instructions to perform side-set optionally, rather than on every instruction, but the maximum possible side-set width is reduced from 5 to 4. Note that the value of PINCTRL\\_SIDESET\\_COUNT is inclusive of this enable bit.
"""
SIDE_EN

"""
    EXEC_STALLED

If 1, an instruction written to SMx\\_INSTR is stalled, and latched by the state machine. Will clear to 0 once this instruction completes.
"""
EXEC_STALLED

end # register SM1_EXECCTRL

"""
    SM1_SHIFTCTRL

Control behaviour of the input/output shift registers for state machine 1
"""
module SM1_SHIFTCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000e8
@regdef struct SM1_SHIFTCTRLStruct(regAddress)
	_:16
	AUTOPUSH:1::ReadWrite
	AUTOPULL:1::ReadWrite
	IN_SHIFTDIR:1::ReadWrite
	OUT_SHIFTDIR:1::ReadWrite
	PUSH_THRESH:5::ReadWrite
	PULL_THRESH:5::ReadWrite
	FJOIN_TX:1::ReadWrite
	FJOIN_RX:1::ReadWrite
end
const Reg = SM1_SHIFTCTRLStruct

"""
    AUTOPUSH

Push automatically when the input shift register is filled, i.e. on an IN instruction which causes the input shift counter to reach or exceed PUSH\\_THRESH.
"""
AUTOPUSH

"""
    AUTOPULL

Pull automatically when the output shift register is emptied, i.e. on or following an OUT instruction which causes the output shift counter to reach or exceed PULL\\_THRESH.
"""
AUTOPULL

"""
    IN_SHIFTDIR

1 = shift input shift register to right (data enters from left). 0 = to left.
"""
IN_SHIFTDIR

"""
    OUT_SHIFTDIR

1 = shift out of output shift register to right. 0 = to left.
"""
OUT_SHIFTDIR

"""
    PUSH_THRESH

Number of bits shifted into ISR before autopush, or conditional push (PUSH IFFULL), will take place.

Write 0 for value of 32.
"""
PUSH_THRESH

"""
    PULL_THRESH

Number of bits shifted out of OSR before autopull, or conditional pull (PULL IFEMPTY), will take place.

Write 0 for value of 32.
"""
PULL_THRESH

"""
    FJOIN_TX

When 1, TX FIFO steals the RX FIFO's storage, and becomes twice as deep.

RX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_TX

"""
    FJOIN_RX

When 1, RX FIFO steals the TX FIFO's storage, and becomes twice as deep.

TX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_RX

end # register SM1_SHIFTCTRL

"""
    SM1_ADDR

Current instruction address of state machine 1
"""
module SM1_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000ec
@regdef struct SM1_ADDRStruct(regAddress)
	SM1_ADDR:5::Read
	_:27
end
const Reg = SM1_ADDRStruct

"""
    SM1_ADDR

Field has no description!
"""
SM1_ADDR

end # register SM1_ADDR

"""
    SM1_INSTR

Read to see the instruction currently addressed by state machine 1's program counter

Write to execute an instruction immediately (including jumps) and then resume execution.
"""
module SM1_INSTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000f0
@regdef struct SM1_INSTRStruct(regAddress)
	SM1_INSTR:16::ReadWrite
	_:16
end
const Reg = SM1_INSTRStruct

"""
    SM1_INSTR

Field has no description!
"""
SM1_INSTR

end # register SM1_INSTR

"""
    SM1_PINCTRL

State machine pin control
"""
module SM1_PINCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct SM1_PINCTRLStruct(regAddress)
	OUT_BASE:5::ReadWrite
	SET_BASE:5::ReadWrite
	SIDESET_BASE:5::ReadWrite
	IN_BASE:5::ReadWrite
	OUT_COUNT:6::ReadWrite
	SET_COUNT:3::ReadWrite
	SIDESET_COUNT:3::ReadWrite
end
const Reg = SM1_PINCTRLStruct

"""
    OUT_BASE

The lowest-numbered pin that will be affected by an OUT PINS, OUT PINDIRS or MOV PINS instruction. The data written to this pin will always be the least-significant bit of the OUT or MOV data.
"""
OUT_BASE

"""
    SET_BASE

The lowest-numbered pin that will be affected by a SET PINS or SET PINDIRS instruction. The data written to this pin is the least-significant bit of the SET data.
"""
SET_BASE

"""
    SIDESET_BASE

The lowest-numbered pin that will be affected by a side-set operation. The MSBs of an instruction's side-set/delay field (up to 5, determined by SIDESET\\_COUNT) are used for side-set data, with the remaining LSBs used for delay. The least-significant bit of the side-set portion is the bit written to this pin, with more-significant bits written to higher-numbered pins.
"""
SIDESET_BASE

"""
    IN_BASE

The pin which is mapped to the least-significant bit of a state machine's IN data bus. Higher-numbered pins are mapped to consecutively more-significant data bits, with a modulo of 32 applied to pin number.
"""
IN_BASE

"""
    OUT_COUNT

The number of pins asserted by an OUT PINS, OUT PINDIRS or MOV PINS instruction. In the range 0 to 32 inclusive.
"""
OUT_COUNT

"""
    SET_COUNT

The number of pins asserted by a SET. In the range 0 to 5 inclusive.
"""
SET_COUNT

"""
    SIDESET_COUNT

The number of MSBs of the Delay/Side-set instruction field which are used for side-set. Inclusive of the enable bit, if present. Minimum of 0 (all delay bits, no side-set) and maximum of 5 (all side-set, no delay).
"""
SIDESET_COUNT

end # register SM1_PINCTRL

"""
    SM2_CLKDIV

Clock divisor register for state machine 2

Frequency = clock freq / (CLKDIV\\_INT + CLKDIV\\_FRAC / 256)
"""
module SM2_CLKDIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct SM2_CLKDIVStruct(regAddress)
	_:8
	FRAC:8::ReadWrite
	INT:16::ReadWrite
end
const Reg = SM2_CLKDIVStruct

"""
    FRAC

Fractional part of clock divisor
"""
FRAC

"""
    INT

Effective frequency is sysclk/(int + frac/256).

Value of 0 is interpreted as 65536. If INT is 0, FRAC must also be 0.
"""
INT

end # register SM2_CLKDIV

"""
    SM2_EXECCTRL

Execution/behavioural settings for state machine 2
"""
module SM2_EXECCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x00000000000000fc
@regdef struct SM2_EXECCTRLStruct(regAddress)
	STATUS_N:4::ReadWrite
	STATUS_SEL:1::ReadWrite
	_:2
	WRAP_BOTTOM:5::ReadWrite
	WRAP_TOP:5::ReadWrite
	OUT_STICKY:1::ReadWrite
	INLINE_OUT_EN:1::ReadWrite
	OUT_EN_SEL:5::ReadWrite
	JMP_PIN:5::ReadWrite
	SIDE_PINDIR:1::ReadWrite
	SIDE_EN:1::ReadWrite
	EXEC_STALLED:1::Read
end
const Reg = SM2_EXECCTRLStruct

"""
    STATUS_N

Comparison level for the MOV x, STATUS instruction
"""
STATUS_N

"""
    STATUS_SEL

Comparison used for the MOV x, STATUS instruction.
"""
STATUS_SEL

"""
    WRAP_BOTTOM

After reaching wrap\\_top, execution is wrapped to this address.
"""
WRAP_BOTTOM

"""
    WRAP_TOP

After reaching this address, execution is wrapped to wrap\\_bottom.

If the instruction is a jump, and the jump condition is true, the jump takes priority.
"""
WRAP_TOP

"""
    OUT_STICKY

Continuously assert the most recent OUT/SET to the pins
"""
OUT_STICKY

"""
    INLINE_OUT_EN

If 1, use a bit of OUT data as an auxiliary write enable

When used in conjunction with OUT\\_STICKY, writes with an enable of 0 will

deassert the latest pin write. This can create useful masking/override behaviour

due to the priority ordering of state machine pin writes (SM0 &lt; SM1 &lt; ...)
"""
INLINE_OUT_EN

"""
    OUT_EN_SEL

Which data bit to use for inline OUT enable
"""
OUT_EN_SEL

"""
    JMP_PIN

The GPIO number to use as condition for JMP PIN. Unaffected by input mapping.
"""
JMP_PIN

"""
    SIDE_PINDIR

If 1, side-set data is asserted to pin directions, instead of pin values
"""
SIDE_PINDIR

"""
    SIDE_EN

If 1, the MSB of the Delay/Side-set instruction field is used as side-set enable, rather than a side-set data bit. This allows instructions to perform side-set optionally, rather than on every instruction, but the maximum possible side-set width is reduced from 5 to 4. Note that the value of PINCTRL\\_SIDESET\\_COUNT is inclusive of this enable bit.
"""
SIDE_EN

"""
    EXEC_STALLED

If 1, an instruction written to SMx\\_INSTR is stalled, and latched by the state machine. Will clear to 0 once this instruction completes.
"""
EXEC_STALLED

end # register SM2_EXECCTRL

"""
    SM2_SHIFTCTRL

Control behaviour of the input/output shift registers for state machine 2
"""
module SM2_SHIFTCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000100
@regdef struct SM2_SHIFTCTRLStruct(regAddress)
	_:16
	AUTOPUSH:1::ReadWrite
	AUTOPULL:1::ReadWrite
	IN_SHIFTDIR:1::ReadWrite
	OUT_SHIFTDIR:1::ReadWrite
	PUSH_THRESH:5::ReadWrite
	PULL_THRESH:5::ReadWrite
	FJOIN_TX:1::ReadWrite
	FJOIN_RX:1::ReadWrite
end
const Reg = SM2_SHIFTCTRLStruct

"""
    AUTOPUSH

Push automatically when the input shift register is filled, i.e. on an IN instruction which causes the input shift counter to reach or exceed PUSH\\_THRESH.
"""
AUTOPUSH

"""
    AUTOPULL

Pull automatically when the output shift register is emptied, i.e. on or following an OUT instruction which causes the output shift counter to reach or exceed PULL\\_THRESH.
"""
AUTOPULL

"""
    IN_SHIFTDIR

1 = shift input shift register to right (data enters from left). 0 = to left.
"""
IN_SHIFTDIR

"""
    OUT_SHIFTDIR

1 = shift out of output shift register to right. 0 = to left.
"""
OUT_SHIFTDIR

"""
    PUSH_THRESH

Number of bits shifted into ISR before autopush, or conditional push (PUSH IFFULL), will take place.

Write 0 for value of 32.
"""
PUSH_THRESH

"""
    PULL_THRESH

Number of bits shifted out of OSR before autopull, or conditional pull (PULL IFEMPTY), will take place.

Write 0 for value of 32.
"""
PULL_THRESH

"""
    FJOIN_TX

When 1, TX FIFO steals the RX FIFO's storage, and becomes twice as deep.

RX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_TX

"""
    FJOIN_RX

When 1, RX FIFO steals the TX FIFO's storage, and becomes twice as deep.

TX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_RX

end # register SM2_SHIFTCTRL

"""
    SM2_ADDR

Current instruction address of state machine 2
"""
module SM2_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000104
@regdef struct SM2_ADDRStruct(regAddress)
	SM2_ADDR:5::Read
	_:27
end
const Reg = SM2_ADDRStruct

"""
    SM2_ADDR

Field has no description!
"""
SM2_ADDR

end # register SM2_ADDR

"""
    SM2_INSTR

Read to see the instruction currently addressed by state machine 2's program counter

Write to execute an instruction immediately (including jumps) and then resume execution.
"""
module SM2_INSTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000108
@regdef struct SM2_INSTRStruct(regAddress)
	SM2_INSTR:16::ReadWrite
	_:16
end
const Reg = SM2_INSTRStruct

"""
    SM2_INSTR

Field has no description!
"""
SM2_INSTR

end # register SM2_INSTR

"""
    SM2_PINCTRL

State machine pin control
"""
module SM2_PINCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000010c
@regdef struct SM2_PINCTRLStruct(regAddress)
	OUT_BASE:5::ReadWrite
	SET_BASE:5::ReadWrite
	SIDESET_BASE:5::ReadWrite
	IN_BASE:5::ReadWrite
	OUT_COUNT:6::ReadWrite
	SET_COUNT:3::ReadWrite
	SIDESET_COUNT:3::ReadWrite
end
const Reg = SM2_PINCTRLStruct

"""
    OUT_BASE

The lowest-numbered pin that will be affected by an OUT PINS, OUT PINDIRS or MOV PINS instruction. The data written to this pin will always be the least-significant bit of the OUT or MOV data.
"""
OUT_BASE

"""
    SET_BASE

The lowest-numbered pin that will be affected by a SET PINS or SET PINDIRS instruction. The data written to this pin is the least-significant bit of the SET data.
"""
SET_BASE

"""
    SIDESET_BASE

The lowest-numbered pin that will be affected by a side-set operation. The MSBs of an instruction's side-set/delay field (up to 5, determined by SIDESET\\_COUNT) are used for side-set data, with the remaining LSBs used for delay. The least-significant bit of the side-set portion is the bit written to this pin, with more-significant bits written to higher-numbered pins.
"""
SIDESET_BASE

"""
    IN_BASE

The pin which is mapped to the least-significant bit of a state machine's IN data bus. Higher-numbered pins are mapped to consecutively more-significant data bits, with a modulo of 32 applied to pin number.
"""
IN_BASE

"""
    OUT_COUNT

The number of pins asserted by an OUT PINS, OUT PINDIRS or MOV PINS instruction. In the range 0 to 32 inclusive.
"""
OUT_COUNT

"""
    SET_COUNT

The number of pins asserted by a SET. In the range 0 to 5 inclusive.
"""
SET_COUNT

"""
    SIDESET_COUNT

The number of MSBs of the Delay/Side-set instruction field which are used for side-set. Inclusive of the enable bit, if present. Minimum of 0 (all delay bits, no side-set) and maximum of 5 (all side-set, no delay).
"""
SIDESET_COUNT

end # register SM2_PINCTRL

"""
    SM3_CLKDIV

Clock divisor register for state machine 3

Frequency = clock freq / (CLKDIV\\_INT + CLKDIV\\_FRAC / 256)
"""
module SM3_CLKDIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000110
@regdef struct SM3_CLKDIVStruct(regAddress)
	_:8
	FRAC:8::ReadWrite
	INT:16::ReadWrite
end
const Reg = SM3_CLKDIVStruct

"""
    FRAC

Fractional part of clock divisor
"""
FRAC

"""
    INT

Effective frequency is sysclk/(int + frac/256).

Value of 0 is interpreted as 65536. If INT is 0, FRAC must also be 0.
"""
INT

end # register SM3_CLKDIV

"""
    SM3_EXECCTRL

Execution/behavioural settings for state machine 3
"""
module SM3_EXECCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000114
@regdef struct SM3_EXECCTRLStruct(regAddress)
	STATUS_N:4::ReadWrite
	STATUS_SEL:1::ReadWrite
	_:2
	WRAP_BOTTOM:5::ReadWrite
	WRAP_TOP:5::ReadWrite
	OUT_STICKY:1::ReadWrite
	INLINE_OUT_EN:1::ReadWrite
	OUT_EN_SEL:5::ReadWrite
	JMP_PIN:5::ReadWrite
	SIDE_PINDIR:1::ReadWrite
	SIDE_EN:1::ReadWrite
	EXEC_STALLED:1::Read
end
const Reg = SM3_EXECCTRLStruct

"""
    STATUS_N

Comparison level for the MOV x, STATUS instruction
"""
STATUS_N

"""
    STATUS_SEL

Comparison used for the MOV x, STATUS instruction.
"""
STATUS_SEL

"""
    WRAP_BOTTOM

After reaching wrap\\_top, execution is wrapped to this address.
"""
WRAP_BOTTOM

"""
    WRAP_TOP

After reaching this address, execution is wrapped to wrap\\_bottom.

If the instruction is a jump, and the jump condition is true, the jump takes priority.
"""
WRAP_TOP

"""
    OUT_STICKY

Continuously assert the most recent OUT/SET to the pins
"""
OUT_STICKY

"""
    INLINE_OUT_EN

If 1, use a bit of OUT data as an auxiliary write enable

When used in conjunction with OUT\\_STICKY, writes with an enable of 0 will

deassert the latest pin write. This can create useful masking/override behaviour

due to the priority ordering of state machine pin writes (SM0 &lt; SM1 &lt; ...)
"""
INLINE_OUT_EN

"""
    OUT_EN_SEL

Which data bit to use for inline OUT enable
"""
OUT_EN_SEL

"""
    JMP_PIN

The GPIO number to use as condition for JMP PIN. Unaffected by input mapping.
"""
JMP_PIN

"""
    SIDE_PINDIR

If 1, side-set data is asserted to pin directions, instead of pin values
"""
SIDE_PINDIR

"""
    SIDE_EN

If 1, the MSB of the Delay/Side-set instruction field is used as side-set enable, rather than a side-set data bit. This allows instructions to perform side-set optionally, rather than on every instruction, but the maximum possible side-set width is reduced from 5 to 4. Note that the value of PINCTRL\\_SIDESET\\_COUNT is inclusive of this enable bit.
"""
SIDE_EN

"""
    EXEC_STALLED

If 1, an instruction written to SMx\\_INSTR is stalled, and latched by the state machine. Will clear to 0 once this instruction completes.
"""
EXEC_STALLED

end # register SM3_EXECCTRL

"""
    SM3_SHIFTCTRL

Control behaviour of the input/output shift registers for state machine 3
"""
module SM3_SHIFTCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000118
@regdef struct SM3_SHIFTCTRLStruct(regAddress)
	_:16
	AUTOPUSH:1::ReadWrite
	AUTOPULL:1::ReadWrite
	IN_SHIFTDIR:1::ReadWrite
	OUT_SHIFTDIR:1::ReadWrite
	PUSH_THRESH:5::ReadWrite
	PULL_THRESH:5::ReadWrite
	FJOIN_TX:1::ReadWrite
	FJOIN_RX:1::ReadWrite
end
const Reg = SM3_SHIFTCTRLStruct

"""
    AUTOPUSH

Push automatically when the input shift register is filled, i.e. on an IN instruction which causes the input shift counter to reach or exceed PUSH\\_THRESH.
"""
AUTOPUSH

"""
    AUTOPULL

Pull automatically when the output shift register is emptied, i.e. on or following an OUT instruction which causes the output shift counter to reach or exceed PULL\\_THRESH.
"""
AUTOPULL

"""
    IN_SHIFTDIR

1 = shift input shift register to right (data enters from left). 0 = to left.
"""
IN_SHIFTDIR

"""
    OUT_SHIFTDIR

1 = shift out of output shift register to right. 0 = to left.
"""
OUT_SHIFTDIR

"""
    PUSH_THRESH

Number of bits shifted into ISR before autopush, or conditional push (PUSH IFFULL), will take place.

Write 0 for value of 32.
"""
PUSH_THRESH

"""
    PULL_THRESH

Number of bits shifted out of OSR before autopull, or conditional pull (PULL IFEMPTY), will take place.

Write 0 for value of 32.
"""
PULL_THRESH

"""
    FJOIN_TX

When 1, TX FIFO steals the RX FIFO's storage, and becomes twice as deep.

RX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_TX

"""
    FJOIN_RX

When 1, RX FIFO steals the TX FIFO's storage, and becomes twice as deep.

TX FIFO is disabled as a result (always reads as both full and empty).

FIFOs are flushed when this bit is changed.
"""
FJOIN_RX

end # register SM3_SHIFTCTRL

"""
    SM3_ADDR

Current instruction address of state machine 3
"""
module SM3_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000011c
@regdef struct SM3_ADDRStruct(regAddress)
	SM3_ADDR:5::Read
	_:27
end
const Reg = SM3_ADDRStruct

"""
    SM3_ADDR

Field has no description!
"""
SM3_ADDR

end # register SM3_ADDR

"""
    SM3_INSTR

Read to see the instruction currently addressed by state machine 3's program counter

Write to execute an instruction immediately (including jumps) and then resume execution.
"""
module SM3_INSTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000120
@regdef struct SM3_INSTRStruct(regAddress)
	SM3_INSTR:16::ReadWrite
	_:16
end
const Reg = SM3_INSTRStruct

"""
    SM3_INSTR

Field has no description!
"""
SM3_INSTR

end # register SM3_INSTR

"""
    SM3_PINCTRL

State machine pin control
"""
module SM3_PINCTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000124
@regdef struct SM3_PINCTRLStruct(regAddress)
	OUT_BASE:5::ReadWrite
	SET_BASE:5::ReadWrite
	SIDESET_BASE:5::ReadWrite
	IN_BASE:5::ReadWrite
	OUT_COUNT:6::ReadWrite
	SET_COUNT:3::ReadWrite
	SIDESET_COUNT:3::ReadWrite
end
const Reg = SM3_PINCTRLStruct

"""
    OUT_BASE

The lowest-numbered pin that will be affected by an OUT PINS, OUT PINDIRS or MOV PINS instruction. The data written to this pin will always be the least-significant bit of the OUT or MOV data.
"""
OUT_BASE

"""
    SET_BASE

The lowest-numbered pin that will be affected by a SET PINS or SET PINDIRS instruction. The data written to this pin is the least-significant bit of the SET data.
"""
SET_BASE

"""
    SIDESET_BASE

The lowest-numbered pin that will be affected by a side-set operation. The MSBs of an instruction's side-set/delay field (up to 5, determined by SIDESET\\_COUNT) are used for side-set data, with the remaining LSBs used for delay. The least-significant bit of the side-set portion is the bit written to this pin, with more-significant bits written to higher-numbered pins.
"""
SIDESET_BASE

"""
    IN_BASE

The pin which is mapped to the least-significant bit of a state machine's IN data bus. Higher-numbered pins are mapped to consecutively more-significant data bits, with a modulo of 32 applied to pin number.
"""
IN_BASE

"""
    OUT_COUNT

The number of pins asserted by an OUT PINS, OUT PINDIRS or MOV PINS instruction. In the range 0 to 32 inclusive.
"""
OUT_COUNT

"""
    SET_COUNT

The number of pins asserted by a SET. In the range 0 to 5 inclusive.
"""
SET_COUNT

"""
    SIDESET_COUNT

The number of MSBs of the Delay/Side-set instruction field which are used for side-set. Inclusive of the enable bit, if present. Minimum of 0 (all delay bits, no side-set) and maximum of 5 (all side-set, no delay).
"""
SIDESET_COUNT

end # register SM3_PINCTRL

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000128
@regdef struct INTRStruct(regAddress)
	SM0_RXNEMPTY:1::Read
	SM1_RXNEMPTY:1::Read
	SM2_RXNEMPTY:1::Read
	SM3_RXNEMPTY:1::Read
	SM0_TXNFULL:1::Read
	SM1_TXNFULL:1::Read
	SM2_TXNFULL:1::Read
	SM3_TXNFULL:1::Read
	SM0:1::Read
	SM1:1::Read
	SM2:1::Read
	SM3:1::Read
	_:20
end
const Reg = INTRStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register INTR

"""
    IRQ0_INTE

Interrupt Enable for irq0
"""
module IRQ0_INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000012c
@regdef struct IRQ0_INTEStruct(regAddress)
	SM0_RXNEMPTY:1::ReadWrite
	SM1_RXNEMPTY:1::ReadWrite
	SM2_RXNEMPTY:1::ReadWrite
	SM3_RXNEMPTY:1::ReadWrite
	SM0_TXNFULL:1::ReadWrite
	SM1_TXNFULL:1::ReadWrite
	SM2_TXNFULL:1::ReadWrite
	SM3_TXNFULL:1::ReadWrite
	SM0:1::ReadWrite
	SM1:1::ReadWrite
	SM2:1::ReadWrite
	SM3:1::ReadWrite
	_:20
end
const Reg = IRQ0_INTEStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register IRQ0_INTE

"""
    IRQ0_INTF

Interrupt Force for irq0
"""
module IRQ0_INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000130
@regdef struct IRQ0_INTFStruct(regAddress)
	SM0_RXNEMPTY:1::ReadWrite
	SM1_RXNEMPTY:1::ReadWrite
	SM2_RXNEMPTY:1::ReadWrite
	SM3_RXNEMPTY:1::ReadWrite
	SM0_TXNFULL:1::ReadWrite
	SM1_TXNFULL:1::ReadWrite
	SM2_TXNFULL:1::ReadWrite
	SM3_TXNFULL:1::ReadWrite
	SM0:1::ReadWrite
	SM1:1::ReadWrite
	SM2:1::ReadWrite
	SM3:1::ReadWrite
	_:20
end
const Reg = IRQ0_INTFStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register IRQ0_INTF

"""
    IRQ0_INTS

Interrupt status after masking &amp; forcing for irq0
"""
module IRQ0_INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000134
@regdef struct IRQ0_INTSStruct(regAddress)
	SM0_RXNEMPTY:1::Read
	SM1_RXNEMPTY:1::Read
	SM2_RXNEMPTY:1::Read
	SM3_RXNEMPTY:1::Read
	SM0_TXNFULL:1::Read
	SM1_TXNFULL:1::Read
	SM2_TXNFULL:1::Read
	SM3_TXNFULL:1::Read
	SM0:1::Read
	SM1:1::Read
	SM2:1::Read
	SM3:1::Read
	_:20
end
const Reg = IRQ0_INTSStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register IRQ0_INTS

"""
    IRQ1_INTE

Interrupt Enable for irq1
"""
module IRQ1_INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000138
@regdef struct IRQ1_INTEStruct(regAddress)
	SM0_RXNEMPTY:1::ReadWrite
	SM1_RXNEMPTY:1::ReadWrite
	SM2_RXNEMPTY:1::ReadWrite
	SM3_RXNEMPTY:1::ReadWrite
	SM0_TXNFULL:1::ReadWrite
	SM1_TXNFULL:1::ReadWrite
	SM2_TXNFULL:1::ReadWrite
	SM3_TXNFULL:1::ReadWrite
	SM0:1::ReadWrite
	SM1:1::ReadWrite
	SM2:1::ReadWrite
	SM3:1::ReadWrite
	_:20
end
const Reg = IRQ1_INTEStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register IRQ1_INTE

"""
    IRQ1_INTF

Interrupt Force for irq1
"""
module IRQ1_INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x000000000000013c
@regdef struct IRQ1_INTFStruct(regAddress)
	SM0_RXNEMPTY:1::ReadWrite
	SM1_RXNEMPTY:1::ReadWrite
	SM2_RXNEMPTY:1::ReadWrite
	SM3_RXNEMPTY:1::ReadWrite
	SM0_TXNFULL:1::ReadWrite
	SM1_TXNFULL:1::ReadWrite
	SM2_TXNFULL:1::ReadWrite
	SM3_TXNFULL:1::ReadWrite
	SM0:1::ReadWrite
	SM1:1::ReadWrite
	SM2:1::ReadWrite
	SM3:1::ReadWrite
	_:20
end
const Reg = IRQ1_INTFStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register IRQ1_INTF

"""
    IRQ1_INTS

Interrupt status after masking &amp; forcing for irq1
"""
module IRQ1_INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PIO1: baseAddress

const regAddress = baseAddress + 0x0000000000000140
@regdef struct IRQ1_INTSStruct(regAddress)
	SM0_RXNEMPTY:1::Read
	SM1_RXNEMPTY:1::Read
	SM2_RXNEMPTY:1::Read
	SM3_RXNEMPTY:1::Read
	SM0_TXNFULL:1::Read
	SM1_TXNFULL:1::Read
	SM2_TXNFULL:1::Read
	SM3_TXNFULL:1::Read
	SM0:1::Read
	SM1:1::Read
	SM2:1::Read
	SM3:1::Read
	_:20
end
const Reg = IRQ1_INTSStruct

"""
    SM0_RXNEMPTY

Field has no description!
"""
SM0_RXNEMPTY

"""
    SM1_RXNEMPTY

Field has no description!
"""
SM1_RXNEMPTY

"""
    SM2_RXNEMPTY

Field has no description!
"""
SM2_RXNEMPTY

"""
    SM3_RXNEMPTY

Field has no description!
"""
SM3_RXNEMPTY

"""
    SM0_TXNFULL

Field has no description!
"""
SM0_TXNFULL

"""
    SM1_TXNFULL

Field has no description!
"""
SM1_TXNFULL

"""
    SM2_TXNFULL

Field has no description!
"""
SM2_TXNFULL

"""
    SM3_TXNFULL

Field has no description!
"""
SM3_TXNFULL

"""
    SM0

Field has no description!
"""
SM0

"""
    SM1

Field has no description!
"""
SM1

"""
    SM2

Field has no description!
"""
SM2

"""
    SM3

Field has no description!
"""
SM3

end # register IRQ1_INTS

end # peripheral

