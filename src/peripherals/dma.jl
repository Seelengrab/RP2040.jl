"""
    DMA

DMA with separate read and write masters
"""
module DMA

const baseAddress = Ptr{UInt32}(1342177280)

"""
    CH0_READ_ADDR

DMA Channel 0 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH0_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CH0_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH0_READ_ADDRStruct

end # register CH0_READ_ADDR

"""
    CH0_WRITE_ADDR

DMA Channel 0 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH0_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct CH0_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH0_WRITE_ADDRStruct

end # register CH0_WRITE_ADDR

"""
    CH0_TRANS_COUNT

DMA Channel 0 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH0_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct CH0_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH0_TRANS_COUNTStruct

end # register CH0_TRANS_COUNT

"""
    CH0_CTRL_TRIG

DMA Channel 0 Control and Status
"""
module CH0_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct CH0_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH0_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH0_CTRL_TRIG

"""
    CH0_AL1_CTRL

Alias for channel 0 CTRL register
"""
module CH0_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct CH0_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH0_AL1_CTRLStruct

end # register CH0_AL1_CTRL

"""
    CH0_AL1_READ_ADDR

Alias for channel 0 READ\\_ADDR register
"""
module CH0_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct CH0_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH0_AL1_READ_ADDRStruct

end # register CH0_AL1_READ_ADDR

"""
    CH0_AL1_WRITE_ADDR

Alias for channel 0 WRITE\\_ADDR register
"""
module CH0_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct CH0_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH0_AL1_WRITE_ADDRStruct

end # register CH0_AL1_WRITE_ADDR

"""
    CH0_AL1_TRANS_COUNT_TRIG

Alias for channel 0 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH0_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct CH0_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH0_AL1_TRANS_COUNT_TRIGStruct

end # register CH0_AL1_TRANS_COUNT_TRIG

"""
    CH0_AL2_CTRL

Alias for channel 0 CTRL register
"""
module CH0_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct CH0_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH0_AL2_CTRLStruct

end # register CH0_AL2_CTRL

"""
    CH0_AL2_TRANS_COUNT

Alias for channel 0 TRANS\\_COUNT register
"""
module CH0_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct CH0_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH0_AL2_TRANS_COUNTStruct

end # register CH0_AL2_TRANS_COUNT

"""
    CH0_AL2_READ_ADDR

Alias for channel 0 READ\\_ADDR register
"""
module CH0_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct CH0_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH0_AL2_READ_ADDRStruct

end # register CH0_AL2_READ_ADDR

"""
    CH0_AL2_WRITE_ADDR_TRIG

Alias for channel 0 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH0_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct CH0_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH0_AL2_WRITE_ADDR_TRIGStruct

end # register CH0_AL2_WRITE_ADDR_TRIG

"""
    CH0_AL3_CTRL

Alias for channel 0 CTRL register
"""
module CH0_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct CH0_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH0_AL3_CTRLStruct

end # register CH0_AL3_CTRL

"""
    CH0_AL3_WRITE_ADDR

Alias for channel 0 WRITE\\_ADDR register
"""
module CH0_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct CH0_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH0_AL3_WRITE_ADDRStruct

end # register CH0_AL3_WRITE_ADDR

"""
    CH0_AL3_TRANS_COUNT

Alias for channel 0 TRANS\\_COUNT register
"""
module CH0_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct CH0_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH0_AL3_TRANS_COUNTStruct

end # register CH0_AL3_TRANS_COUNT

"""
    CH0_AL3_READ_ADDR_TRIG

Alias for channel 0 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH0_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct CH0_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH0_AL3_READ_ADDR_TRIGStruct

end # register CH0_AL3_READ_ADDR_TRIG

"""
    CH1_READ_ADDR

DMA Channel 1 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct CH1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH1_READ_ADDRStruct

end # register CH1_READ_ADDR

"""
    CH1_WRITE_ADDR

DMA Channel 1 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct CH1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH1_WRITE_ADDRStruct

end # register CH1_WRITE_ADDR

"""
    CH1_TRANS_COUNT

DMA Channel 1 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH1_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct CH1_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH1_TRANS_COUNTStruct

end # register CH1_TRANS_COUNT

"""
    CH1_CTRL_TRIG

DMA Channel 1 Control and Status
"""
module CH1_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct CH1_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH1_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH1_CTRL_TRIG

"""
    CH1_AL1_CTRL

Alias for channel 1 CTRL register
"""
module CH1_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct CH1_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH1_AL1_CTRLStruct

end # register CH1_AL1_CTRL

"""
    CH1_AL1_READ_ADDR

Alias for channel 1 READ\\_ADDR register
"""
module CH1_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct CH1_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH1_AL1_READ_ADDRStruct

end # register CH1_AL1_READ_ADDR

"""
    CH1_AL1_WRITE_ADDR

Alias for channel 1 WRITE\\_ADDR register
"""
module CH1_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct CH1_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH1_AL1_WRITE_ADDRStruct

end # register CH1_AL1_WRITE_ADDR

"""
    CH1_AL1_TRANS_COUNT_TRIG

Alias for channel 1 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH1_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct CH1_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH1_AL1_TRANS_COUNT_TRIGStruct

end # register CH1_AL1_TRANS_COUNT_TRIG

"""
    CH1_AL2_CTRL

Alias for channel 1 CTRL register
"""
module CH1_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct CH1_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH1_AL2_CTRLStruct

end # register CH1_AL2_CTRL

"""
    CH1_AL2_TRANS_COUNT

Alias for channel 1 TRANS\\_COUNT register
"""
module CH1_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct CH1_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH1_AL2_TRANS_COUNTStruct

end # register CH1_AL2_TRANS_COUNT

"""
    CH1_AL2_READ_ADDR

Alias for channel 1 READ\\_ADDR register
"""
module CH1_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct CH1_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH1_AL2_READ_ADDRStruct

end # register CH1_AL2_READ_ADDR

"""
    CH1_AL2_WRITE_ADDR_TRIG

Alias for channel 1 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH1_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct CH1_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH1_AL2_WRITE_ADDR_TRIGStruct

end # register CH1_AL2_WRITE_ADDR_TRIG

"""
    CH1_AL3_CTRL

Alias for channel 1 CTRL register
"""
module CH1_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct CH1_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH1_AL3_CTRLStruct

end # register CH1_AL3_CTRL

"""
    CH1_AL3_WRITE_ADDR

Alias for channel 1 WRITE\\_ADDR register
"""
module CH1_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct CH1_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH1_AL3_WRITE_ADDRStruct

end # register CH1_AL3_WRITE_ADDR

"""
    CH1_AL3_TRANS_COUNT

Alias for channel 1 TRANS\\_COUNT register
"""
module CH1_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct CH1_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH1_AL3_TRANS_COUNTStruct

end # register CH1_AL3_TRANS_COUNT

"""
    CH1_AL3_READ_ADDR_TRIG

Alias for channel 1 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH1_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct CH1_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH1_AL3_READ_ADDR_TRIGStruct

end # register CH1_AL3_READ_ADDR_TRIG

"""
    CH2_READ_ADDR

DMA Channel 2 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct CH2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH2_READ_ADDRStruct

end # register CH2_READ_ADDR

"""
    CH2_WRITE_ADDR

DMA Channel 2 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH2_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct CH2_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH2_WRITE_ADDRStruct

end # register CH2_WRITE_ADDR

"""
    CH2_TRANS_COUNT

DMA Channel 2 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct CH2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH2_TRANS_COUNTStruct

end # register CH2_TRANS_COUNT

"""
    CH2_CTRL_TRIG

DMA Channel 2 Control and Status
"""
module CH2_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct CH2_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH2_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH2_CTRL_TRIG

"""
    CH2_AL1_CTRL

Alias for channel 2 CTRL register
"""
module CH2_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct CH2_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH2_AL1_CTRLStruct

end # register CH2_AL1_CTRL

"""
    CH2_AL1_READ_ADDR

Alias for channel 2 READ\\_ADDR register
"""
module CH2_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct CH2_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH2_AL1_READ_ADDRStruct

end # register CH2_AL1_READ_ADDR

"""
    CH2_AL1_WRITE_ADDR

Alias for channel 2 WRITE\\_ADDR register
"""
module CH2_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct CH2_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH2_AL1_WRITE_ADDRStruct

end # register CH2_AL1_WRITE_ADDR

"""
    CH2_AL1_TRANS_COUNT_TRIG

Alias for channel 2 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH2_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct CH2_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH2_AL1_TRANS_COUNT_TRIGStruct

end # register CH2_AL1_TRANS_COUNT_TRIG

"""
    CH2_AL2_CTRL

Alias for channel 2 CTRL register
"""
module CH2_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct CH2_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH2_AL2_CTRLStruct

end # register CH2_AL2_CTRL

"""
    CH2_AL2_TRANS_COUNT

Alias for channel 2 TRANS\\_COUNT register
"""
module CH2_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct CH2_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH2_AL2_TRANS_COUNTStruct

end # register CH2_AL2_TRANS_COUNT

"""
    CH2_AL2_READ_ADDR

Alias for channel 2 READ\\_ADDR register
"""
module CH2_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct CH2_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH2_AL2_READ_ADDRStruct

end # register CH2_AL2_READ_ADDR

"""
    CH2_AL2_WRITE_ADDR_TRIG

Alias for channel 2 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH2_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct CH2_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH2_AL2_WRITE_ADDR_TRIGStruct

end # register CH2_AL2_WRITE_ADDR_TRIG

"""
    CH2_AL3_CTRL

Alias for channel 2 CTRL register
"""
module CH2_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct CH2_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH2_AL3_CTRLStruct

end # register CH2_AL3_CTRL

"""
    CH2_AL3_WRITE_ADDR

Alias for channel 2 WRITE\\_ADDR register
"""
module CH2_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000b4
@regdef struct CH2_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH2_AL3_WRITE_ADDRStruct

end # register CH2_AL3_WRITE_ADDR

"""
    CH2_AL3_TRANS_COUNT

Alias for channel 2 TRANS\\_COUNT register
"""
module CH2_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000b8
@regdef struct CH2_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH2_AL3_TRANS_COUNTStruct

end # register CH2_AL3_TRANS_COUNT

"""
    CH2_AL3_READ_ADDR_TRIG

Alias for channel 2 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH2_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000bc
@regdef struct CH2_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH2_AL3_READ_ADDR_TRIGStruct

end # register CH2_AL3_READ_ADDR_TRIG

"""
    CH3_READ_ADDR

DMA Channel 3 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH3_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000c0
@regdef struct CH3_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH3_READ_ADDRStruct

end # register CH3_READ_ADDR

"""
    CH3_WRITE_ADDR

DMA Channel 3 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000c4
@regdef struct CH3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH3_WRITE_ADDRStruct

end # register CH3_WRITE_ADDR

"""
    CH3_TRANS_COUNT

DMA Channel 3 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000c8
@regdef struct CH3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH3_TRANS_COUNTStruct

end # register CH3_TRANS_COUNT

"""
    CH3_CTRL_TRIG

DMA Channel 3 Control and Status
"""
module CH3_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000cc
@regdef struct CH3_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH3_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH3_CTRL_TRIG

"""
    CH3_AL1_CTRL

Alias for channel 3 CTRL register
"""
module CH3_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000d0
@regdef struct CH3_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH3_AL1_CTRLStruct

end # register CH3_AL1_CTRL

"""
    CH3_AL1_READ_ADDR

Alias for channel 3 READ\\_ADDR register
"""
module CH3_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000d4
@regdef struct CH3_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH3_AL1_READ_ADDRStruct

end # register CH3_AL1_READ_ADDR

"""
    CH3_AL1_WRITE_ADDR

Alias for channel 3 WRITE\\_ADDR register
"""
module CH3_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000d8
@regdef struct CH3_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH3_AL1_WRITE_ADDRStruct

end # register CH3_AL1_WRITE_ADDR

"""
    CH3_AL1_TRANS_COUNT_TRIG

Alias for channel 3 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH3_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000dc
@regdef struct CH3_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH3_AL1_TRANS_COUNT_TRIGStruct

end # register CH3_AL1_TRANS_COUNT_TRIG

"""
    CH3_AL2_CTRL

Alias for channel 3 CTRL register
"""
module CH3_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000e0
@regdef struct CH3_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH3_AL2_CTRLStruct

end # register CH3_AL2_CTRL

"""
    CH3_AL2_TRANS_COUNT

Alias for channel 3 TRANS\\_COUNT register
"""
module CH3_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000e4
@regdef struct CH3_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH3_AL2_TRANS_COUNTStruct

end # register CH3_AL2_TRANS_COUNT

"""
    CH3_AL2_READ_ADDR

Alias for channel 3 READ\\_ADDR register
"""
module CH3_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000e8
@regdef struct CH3_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH3_AL2_READ_ADDRStruct

end # register CH3_AL2_READ_ADDR

"""
    CH3_AL2_WRITE_ADDR_TRIG

Alias for channel 3 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH3_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000ec
@regdef struct CH3_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH3_AL2_WRITE_ADDR_TRIGStruct

end # register CH3_AL2_WRITE_ADDR_TRIG

"""
    CH3_AL3_CTRL

Alias for channel 3 CTRL register
"""
module CH3_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000f0
@regdef struct CH3_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH3_AL3_CTRLStruct

end # register CH3_AL3_CTRL

"""
    CH3_AL3_WRITE_ADDR

Alias for channel 3 WRITE\\_ADDR register
"""
module CH3_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct CH3_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH3_AL3_WRITE_ADDRStruct

end # register CH3_AL3_WRITE_ADDR

"""
    CH3_AL3_TRANS_COUNT

Alias for channel 3 TRANS\\_COUNT register
"""
module CH3_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct CH3_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH3_AL3_TRANS_COUNTStruct

end # register CH3_AL3_TRANS_COUNT

"""
    CH3_AL3_READ_ADDR_TRIG

Alias for channel 3 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH3_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000000fc
@regdef struct CH3_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH3_AL3_READ_ADDR_TRIGStruct

end # register CH3_AL3_READ_ADDR_TRIG

"""
    CH4_READ_ADDR

DMA Channel 4 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH4_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000100
@regdef struct CH4_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH4_READ_ADDRStruct

end # register CH4_READ_ADDR

"""
    CH4_WRITE_ADDR

DMA Channel 4 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH4_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000104
@regdef struct CH4_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH4_WRITE_ADDRStruct

end # register CH4_WRITE_ADDR

"""
    CH4_TRANS_COUNT

DMA Channel 4 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH4_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000108
@regdef struct CH4_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH4_TRANS_COUNTStruct

end # register CH4_TRANS_COUNT

"""
    CH4_CTRL_TRIG

DMA Channel 4 Control and Status
"""
module CH4_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000010c
@regdef struct CH4_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH4_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH4_CTRL_TRIG

"""
    CH4_AL1_CTRL

Alias for channel 4 CTRL register
"""
module CH4_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000110
@regdef struct CH4_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH4_AL1_CTRLStruct

end # register CH4_AL1_CTRL

"""
    CH4_AL1_READ_ADDR

Alias for channel 4 READ\\_ADDR register
"""
module CH4_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000114
@regdef struct CH4_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH4_AL1_READ_ADDRStruct

end # register CH4_AL1_READ_ADDR

"""
    CH4_AL1_WRITE_ADDR

Alias for channel 4 WRITE\\_ADDR register
"""
module CH4_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000118
@regdef struct CH4_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH4_AL1_WRITE_ADDRStruct

end # register CH4_AL1_WRITE_ADDR

"""
    CH4_AL1_TRANS_COUNT_TRIG

Alias for channel 4 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH4_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000011c
@regdef struct CH4_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH4_AL1_TRANS_COUNT_TRIGStruct

end # register CH4_AL1_TRANS_COUNT_TRIG

"""
    CH4_AL2_CTRL

Alias for channel 4 CTRL register
"""
module CH4_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000120
@regdef struct CH4_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH4_AL2_CTRLStruct

end # register CH4_AL2_CTRL

"""
    CH4_AL2_TRANS_COUNT

Alias for channel 4 TRANS\\_COUNT register
"""
module CH4_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000124
@regdef struct CH4_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH4_AL2_TRANS_COUNTStruct

end # register CH4_AL2_TRANS_COUNT

"""
    CH4_AL2_READ_ADDR

Alias for channel 4 READ\\_ADDR register
"""
module CH4_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000128
@regdef struct CH4_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH4_AL2_READ_ADDRStruct

end # register CH4_AL2_READ_ADDR

"""
    CH4_AL2_WRITE_ADDR_TRIG

Alias for channel 4 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH4_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000012c
@regdef struct CH4_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH4_AL2_WRITE_ADDR_TRIGStruct

end # register CH4_AL2_WRITE_ADDR_TRIG

"""
    CH4_AL3_CTRL

Alias for channel 4 CTRL register
"""
module CH4_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000130
@regdef struct CH4_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH4_AL3_CTRLStruct

end # register CH4_AL3_CTRL

"""
    CH4_AL3_WRITE_ADDR

Alias for channel 4 WRITE\\_ADDR register
"""
module CH4_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000134
@regdef struct CH4_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH4_AL3_WRITE_ADDRStruct

end # register CH4_AL3_WRITE_ADDR

"""
    CH4_AL3_TRANS_COUNT

Alias for channel 4 TRANS\\_COUNT register
"""
module CH4_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000138
@regdef struct CH4_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH4_AL3_TRANS_COUNTStruct

end # register CH4_AL3_TRANS_COUNT

"""
    CH4_AL3_READ_ADDR_TRIG

Alias for channel 4 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH4_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000013c
@regdef struct CH4_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH4_AL3_READ_ADDR_TRIGStruct

end # register CH4_AL3_READ_ADDR_TRIG

"""
    CH5_READ_ADDR

DMA Channel 5 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH5_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000140
@regdef struct CH5_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH5_READ_ADDRStruct

end # register CH5_READ_ADDR

"""
    CH5_WRITE_ADDR

DMA Channel 5 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH5_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000144
@regdef struct CH5_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH5_WRITE_ADDRStruct

end # register CH5_WRITE_ADDR

"""
    CH5_TRANS_COUNT

DMA Channel 5 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH5_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000148
@regdef struct CH5_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH5_TRANS_COUNTStruct

end # register CH5_TRANS_COUNT

"""
    CH5_CTRL_TRIG

DMA Channel 5 Control and Status
"""
module CH5_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000014c
@regdef struct CH5_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH5_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH5_CTRL_TRIG

"""
    CH5_AL1_CTRL

Alias for channel 5 CTRL register
"""
module CH5_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000150
@regdef struct CH5_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH5_AL1_CTRLStruct

end # register CH5_AL1_CTRL

"""
    CH5_AL1_READ_ADDR

Alias for channel 5 READ\\_ADDR register
"""
module CH5_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000154
@regdef struct CH5_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH5_AL1_READ_ADDRStruct

end # register CH5_AL1_READ_ADDR

"""
    CH5_AL1_WRITE_ADDR

Alias for channel 5 WRITE\\_ADDR register
"""
module CH5_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000158
@regdef struct CH5_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH5_AL1_WRITE_ADDRStruct

end # register CH5_AL1_WRITE_ADDR

"""
    CH5_AL1_TRANS_COUNT_TRIG

Alias for channel 5 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH5_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000015c
@regdef struct CH5_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH5_AL1_TRANS_COUNT_TRIGStruct

end # register CH5_AL1_TRANS_COUNT_TRIG

"""
    CH5_AL2_CTRL

Alias for channel 5 CTRL register
"""
module CH5_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000160
@regdef struct CH5_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH5_AL2_CTRLStruct

end # register CH5_AL2_CTRL

"""
    CH5_AL2_TRANS_COUNT

Alias for channel 5 TRANS\\_COUNT register
"""
module CH5_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000164
@regdef struct CH5_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH5_AL2_TRANS_COUNTStruct

end # register CH5_AL2_TRANS_COUNT

"""
    CH5_AL2_READ_ADDR

Alias for channel 5 READ\\_ADDR register
"""
module CH5_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000168
@regdef struct CH5_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH5_AL2_READ_ADDRStruct

end # register CH5_AL2_READ_ADDR

"""
    CH5_AL2_WRITE_ADDR_TRIG

Alias for channel 5 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH5_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000016c
@regdef struct CH5_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH5_AL2_WRITE_ADDR_TRIGStruct

end # register CH5_AL2_WRITE_ADDR_TRIG

"""
    CH5_AL3_CTRL

Alias for channel 5 CTRL register
"""
module CH5_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000170
@regdef struct CH5_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH5_AL3_CTRLStruct

end # register CH5_AL3_CTRL

"""
    CH5_AL3_WRITE_ADDR

Alias for channel 5 WRITE\\_ADDR register
"""
module CH5_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000174
@regdef struct CH5_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH5_AL3_WRITE_ADDRStruct

end # register CH5_AL3_WRITE_ADDR

"""
    CH5_AL3_TRANS_COUNT

Alias for channel 5 TRANS\\_COUNT register
"""
module CH5_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000178
@regdef struct CH5_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH5_AL3_TRANS_COUNTStruct

end # register CH5_AL3_TRANS_COUNT

"""
    CH5_AL3_READ_ADDR_TRIG

Alias for channel 5 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH5_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000017c
@regdef struct CH5_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH5_AL3_READ_ADDR_TRIGStruct

end # register CH5_AL3_READ_ADDR_TRIG

"""
    CH6_READ_ADDR

DMA Channel 6 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH6_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000180
@regdef struct CH6_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH6_READ_ADDRStruct

end # register CH6_READ_ADDR

"""
    CH6_WRITE_ADDR

DMA Channel 6 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH6_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000184
@regdef struct CH6_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH6_WRITE_ADDRStruct

end # register CH6_WRITE_ADDR

"""
    CH6_TRANS_COUNT

DMA Channel 6 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH6_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000188
@regdef struct CH6_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH6_TRANS_COUNTStruct

end # register CH6_TRANS_COUNT

"""
    CH6_CTRL_TRIG

DMA Channel 6 Control and Status
"""
module CH6_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000018c
@regdef struct CH6_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH6_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH6_CTRL_TRIG

"""
    CH6_AL1_CTRL

Alias for channel 6 CTRL register
"""
module CH6_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000190
@regdef struct CH6_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH6_AL1_CTRLStruct

end # register CH6_AL1_CTRL

"""
    CH6_AL1_READ_ADDR

Alias for channel 6 READ\\_ADDR register
"""
module CH6_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000194
@regdef struct CH6_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH6_AL1_READ_ADDRStruct

end # register CH6_AL1_READ_ADDR

"""
    CH6_AL1_WRITE_ADDR

Alias for channel 6 WRITE\\_ADDR register
"""
module CH6_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000198
@regdef struct CH6_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH6_AL1_WRITE_ADDRStruct

end # register CH6_AL1_WRITE_ADDR

"""
    CH6_AL1_TRANS_COUNT_TRIG

Alias for channel 6 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH6_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000019c
@regdef struct CH6_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH6_AL1_TRANS_COUNT_TRIGStruct

end # register CH6_AL1_TRANS_COUNT_TRIG

"""
    CH6_AL2_CTRL

Alias for channel 6 CTRL register
"""
module CH6_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001a0
@regdef struct CH6_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH6_AL2_CTRLStruct

end # register CH6_AL2_CTRL

"""
    CH6_AL2_TRANS_COUNT

Alias for channel 6 TRANS\\_COUNT register
"""
module CH6_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001a4
@regdef struct CH6_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH6_AL2_TRANS_COUNTStruct

end # register CH6_AL2_TRANS_COUNT

"""
    CH6_AL2_READ_ADDR

Alias for channel 6 READ\\_ADDR register
"""
module CH6_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001a8
@regdef struct CH6_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH6_AL2_READ_ADDRStruct

end # register CH6_AL2_READ_ADDR

"""
    CH6_AL2_WRITE_ADDR_TRIG

Alias for channel 6 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH6_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001ac
@regdef struct CH6_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH6_AL2_WRITE_ADDR_TRIGStruct

end # register CH6_AL2_WRITE_ADDR_TRIG

"""
    CH6_AL3_CTRL

Alias for channel 6 CTRL register
"""
module CH6_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001b0
@regdef struct CH6_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH6_AL3_CTRLStruct

end # register CH6_AL3_CTRL

"""
    CH6_AL3_WRITE_ADDR

Alias for channel 6 WRITE\\_ADDR register
"""
module CH6_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001b4
@regdef struct CH6_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH6_AL3_WRITE_ADDRStruct

end # register CH6_AL3_WRITE_ADDR

"""
    CH6_AL3_TRANS_COUNT

Alias for channel 6 TRANS\\_COUNT register
"""
module CH6_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001b8
@regdef struct CH6_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH6_AL3_TRANS_COUNTStruct

end # register CH6_AL3_TRANS_COUNT

"""
    CH6_AL3_READ_ADDR_TRIG

Alias for channel 6 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH6_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001bc
@regdef struct CH6_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH6_AL3_READ_ADDR_TRIGStruct

end # register CH6_AL3_READ_ADDR_TRIG

"""
    CH7_READ_ADDR

DMA Channel 7 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH7_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001c0
@regdef struct CH7_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH7_READ_ADDRStruct

end # register CH7_READ_ADDR

"""
    CH7_WRITE_ADDR

DMA Channel 7 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH7_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001c4
@regdef struct CH7_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH7_WRITE_ADDRStruct

end # register CH7_WRITE_ADDR

"""
    CH7_TRANS_COUNT

DMA Channel 7 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH7_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001c8
@regdef struct CH7_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH7_TRANS_COUNTStruct

end # register CH7_TRANS_COUNT

"""
    CH7_CTRL_TRIG

DMA Channel 7 Control and Status
"""
module CH7_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001cc
@regdef struct CH7_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH7_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH7_CTRL_TRIG

"""
    CH7_AL1_CTRL

Alias for channel 7 CTRL register
"""
module CH7_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001d0
@regdef struct CH7_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH7_AL1_CTRLStruct

end # register CH7_AL1_CTRL

"""
    CH7_AL1_READ_ADDR

Alias for channel 7 READ\\_ADDR register
"""
module CH7_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001d4
@regdef struct CH7_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH7_AL1_READ_ADDRStruct

end # register CH7_AL1_READ_ADDR

"""
    CH7_AL1_WRITE_ADDR

Alias for channel 7 WRITE\\_ADDR register
"""
module CH7_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001d8
@regdef struct CH7_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH7_AL1_WRITE_ADDRStruct

end # register CH7_AL1_WRITE_ADDR

"""
    CH7_AL1_TRANS_COUNT_TRIG

Alias for channel 7 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH7_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001dc
@regdef struct CH7_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH7_AL1_TRANS_COUNT_TRIGStruct

end # register CH7_AL1_TRANS_COUNT_TRIG

"""
    CH7_AL2_CTRL

Alias for channel 7 CTRL register
"""
module CH7_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001e0
@regdef struct CH7_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH7_AL2_CTRLStruct

end # register CH7_AL2_CTRL

"""
    CH7_AL2_TRANS_COUNT

Alias for channel 7 TRANS\\_COUNT register
"""
module CH7_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001e4
@regdef struct CH7_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH7_AL2_TRANS_COUNTStruct

end # register CH7_AL2_TRANS_COUNT

"""
    CH7_AL2_READ_ADDR

Alias for channel 7 READ\\_ADDR register
"""
module CH7_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001e8
@regdef struct CH7_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH7_AL2_READ_ADDRStruct

end # register CH7_AL2_READ_ADDR

"""
    CH7_AL2_WRITE_ADDR_TRIG

Alias for channel 7 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH7_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001ec
@regdef struct CH7_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH7_AL2_WRITE_ADDR_TRIGStruct

end # register CH7_AL2_WRITE_ADDR_TRIG

"""
    CH7_AL3_CTRL

Alias for channel 7 CTRL register
"""
module CH7_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001f0
@regdef struct CH7_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH7_AL3_CTRLStruct

end # register CH7_AL3_CTRL

"""
    CH7_AL3_WRITE_ADDR

Alias for channel 7 WRITE\\_ADDR register
"""
module CH7_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001f4
@regdef struct CH7_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH7_AL3_WRITE_ADDRStruct

end # register CH7_AL3_WRITE_ADDR

"""
    CH7_AL3_TRANS_COUNT

Alias for channel 7 TRANS\\_COUNT register
"""
module CH7_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001f8
@regdef struct CH7_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH7_AL3_TRANS_COUNTStruct

end # register CH7_AL3_TRANS_COUNT

"""
    CH7_AL3_READ_ADDR_TRIG

Alias for channel 7 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH7_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000001fc
@regdef struct CH7_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH7_AL3_READ_ADDR_TRIGStruct

end # register CH7_AL3_READ_ADDR_TRIG

"""
    CH8_READ_ADDR

DMA Channel 8 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH8_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000200
@regdef struct CH8_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH8_READ_ADDRStruct

end # register CH8_READ_ADDR

"""
    CH8_WRITE_ADDR

DMA Channel 8 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH8_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000204
@regdef struct CH8_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH8_WRITE_ADDRStruct

end # register CH8_WRITE_ADDR

"""
    CH8_TRANS_COUNT

DMA Channel 8 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH8_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000208
@regdef struct CH8_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH8_TRANS_COUNTStruct

end # register CH8_TRANS_COUNT

"""
    CH8_CTRL_TRIG

DMA Channel 8 Control and Status
"""
module CH8_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000020c
@regdef struct CH8_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH8_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH8_CTRL_TRIG

"""
    CH8_AL1_CTRL

Alias for channel 8 CTRL register
"""
module CH8_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000210
@regdef struct CH8_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH8_AL1_CTRLStruct

end # register CH8_AL1_CTRL

"""
    CH8_AL1_READ_ADDR

Alias for channel 8 READ\\_ADDR register
"""
module CH8_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000214
@regdef struct CH8_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH8_AL1_READ_ADDRStruct

end # register CH8_AL1_READ_ADDR

"""
    CH8_AL1_WRITE_ADDR

Alias for channel 8 WRITE\\_ADDR register
"""
module CH8_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000218
@regdef struct CH8_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH8_AL1_WRITE_ADDRStruct

end # register CH8_AL1_WRITE_ADDR

"""
    CH8_AL1_TRANS_COUNT_TRIG

Alias for channel 8 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH8_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000021c
@regdef struct CH8_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH8_AL1_TRANS_COUNT_TRIGStruct

end # register CH8_AL1_TRANS_COUNT_TRIG

"""
    CH8_AL2_CTRL

Alias for channel 8 CTRL register
"""
module CH8_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000220
@regdef struct CH8_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH8_AL2_CTRLStruct

end # register CH8_AL2_CTRL

"""
    CH8_AL2_TRANS_COUNT

Alias for channel 8 TRANS\\_COUNT register
"""
module CH8_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000224
@regdef struct CH8_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH8_AL2_TRANS_COUNTStruct

end # register CH8_AL2_TRANS_COUNT

"""
    CH8_AL2_READ_ADDR

Alias for channel 8 READ\\_ADDR register
"""
module CH8_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000228
@regdef struct CH8_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH8_AL2_READ_ADDRStruct

end # register CH8_AL2_READ_ADDR

"""
    CH8_AL2_WRITE_ADDR_TRIG

Alias for channel 8 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH8_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000022c
@regdef struct CH8_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH8_AL2_WRITE_ADDR_TRIGStruct

end # register CH8_AL2_WRITE_ADDR_TRIG

"""
    CH8_AL3_CTRL

Alias for channel 8 CTRL register
"""
module CH8_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000230
@regdef struct CH8_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH8_AL3_CTRLStruct

end # register CH8_AL3_CTRL

"""
    CH8_AL3_WRITE_ADDR

Alias for channel 8 WRITE\\_ADDR register
"""
module CH8_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000234
@regdef struct CH8_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH8_AL3_WRITE_ADDRStruct

end # register CH8_AL3_WRITE_ADDR

"""
    CH8_AL3_TRANS_COUNT

Alias for channel 8 TRANS\\_COUNT register
"""
module CH8_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000238
@regdef struct CH8_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH8_AL3_TRANS_COUNTStruct

end # register CH8_AL3_TRANS_COUNT

"""
    CH8_AL3_READ_ADDR_TRIG

Alias for channel 8 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH8_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000023c
@regdef struct CH8_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH8_AL3_READ_ADDR_TRIGStruct

end # register CH8_AL3_READ_ADDR_TRIG

"""
    CH9_READ_ADDR

DMA Channel 9 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH9_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000240
@regdef struct CH9_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH9_READ_ADDRStruct

end # register CH9_READ_ADDR

"""
    CH9_WRITE_ADDR

DMA Channel 9 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH9_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000244
@regdef struct CH9_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH9_WRITE_ADDRStruct

end # register CH9_WRITE_ADDR

"""
    CH9_TRANS_COUNT

DMA Channel 9 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH9_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000248
@regdef struct CH9_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH9_TRANS_COUNTStruct

end # register CH9_TRANS_COUNT

"""
    CH9_CTRL_TRIG

DMA Channel 9 Control and Status
"""
module CH9_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000024c
@regdef struct CH9_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH9_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH9_CTRL_TRIG

"""
    CH9_AL1_CTRL

Alias for channel 9 CTRL register
"""
module CH9_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000250
@regdef struct CH9_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH9_AL1_CTRLStruct

end # register CH9_AL1_CTRL

"""
    CH9_AL1_READ_ADDR

Alias for channel 9 READ\\_ADDR register
"""
module CH9_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000254
@regdef struct CH9_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH9_AL1_READ_ADDRStruct

end # register CH9_AL1_READ_ADDR

"""
    CH9_AL1_WRITE_ADDR

Alias for channel 9 WRITE\\_ADDR register
"""
module CH9_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000258
@regdef struct CH9_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH9_AL1_WRITE_ADDRStruct

end # register CH9_AL1_WRITE_ADDR

"""
    CH9_AL1_TRANS_COUNT_TRIG

Alias for channel 9 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH9_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000025c
@regdef struct CH9_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH9_AL1_TRANS_COUNT_TRIGStruct

end # register CH9_AL1_TRANS_COUNT_TRIG

"""
    CH9_AL2_CTRL

Alias for channel 9 CTRL register
"""
module CH9_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000260
@regdef struct CH9_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH9_AL2_CTRLStruct

end # register CH9_AL2_CTRL

"""
    CH9_AL2_TRANS_COUNT

Alias for channel 9 TRANS\\_COUNT register
"""
module CH9_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000264
@regdef struct CH9_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH9_AL2_TRANS_COUNTStruct

end # register CH9_AL2_TRANS_COUNT

"""
    CH9_AL2_READ_ADDR

Alias for channel 9 READ\\_ADDR register
"""
module CH9_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000268
@regdef struct CH9_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH9_AL2_READ_ADDRStruct

end # register CH9_AL2_READ_ADDR

"""
    CH9_AL2_WRITE_ADDR_TRIG

Alias for channel 9 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH9_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000026c
@regdef struct CH9_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH9_AL2_WRITE_ADDR_TRIGStruct

end # register CH9_AL2_WRITE_ADDR_TRIG

"""
    CH9_AL3_CTRL

Alias for channel 9 CTRL register
"""
module CH9_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000270
@regdef struct CH9_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH9_AL3_CTRLStruct

end # register CH9_AL3_CTRL

"""
    CH9_AL3_WRITE_ADDR

Alias for channel 9 WRITE\\_ADDR register
"""
module CH9_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000274
@regdef struct CH9_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH9_AL3_WRITE_ADDRStruct

end # register CH9_AL3_WRITE_ADDR

"""
    CH9_AL3_TRANS_COUNT

Alias for channel 9 TRANS\\_COUNT register
"""
module CH9_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000278
@regdef struct CH9_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH9_AL3_TRANS_COUNTStruct

end # register CH9_AL3_TRANS_COUNT

"""
    CH9_AL3_READ_ADDR_TRIG

Alias for channel 9 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH9_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000027c
@regdef struct CH9_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH9_AL3_READ_ADDR_TRIGStruct

end # register CH9_AL3_READ_ADDR_TRIG

"""
    CH10_READ_ADDR

DMA Channel 10 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH10_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000280
@regdef struct CH10_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH10_READ_ADDRStruct

end # register CH10_READ_ADDR

"""
    CH10_WRITE_ADDR

DMA Channel 10 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH10_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000284
@regdef struct CH10_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH10_WRITE_ADDRStruct

end # register CH10_WRITE_ADDR

"""
    CH10_TRANS_COUNT

DMA Channel 10 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH10_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000288
@regdef struct CH10_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH10_TRANS_COUNTStruct

end # register CH10_TRANS_COUNT

"""
    CH10_CTRL_TRIG

DMA Channel 10 Control and Status
"""
module CH10_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000028c
@regdef struct CH10_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH10_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH10_CTRL_TRIG

"""
    CH10_AL1_CTRL

Alias for channel 10 CTRL register
"""
module CH10_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000290
@regdef struct CH10_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH10_AL1_CTRLStruct

end # register CH10_AL1_CTRL

"""
    CH10_AL1_READ_ADDR

Alias for channel 10 READ\\_ADDR register
"""
module CH10_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000294
@regdef struct CH10_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH10_AL1_READ_ADDRStruct

end # register CH10_AL1_READ_ADDR

"""
    CH10_AL1_WRITE_ADDR

Alias for channel 10 WRITE\\_ADDR register
"""
module CH10_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000298
@regdef struct CH10_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH10_AL1_WRITE_ADDRStruct

end # register CH10_AL1_WRITE_ADDR

"""
    CH10_AL1_TRANS_COUNT_TRIG

Alias for channel 10 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH10_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000029c
@regdef struct CH10_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH10_AL1_TRANS_COUNT_TRIGStruct

end # register CH10_AL1_TRANS_COUNT_TRIG

"""
    CH10_AL2_CTRL

Alias for channel 10 CTRL register
"""
module CH10_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002a0
@regdef struct CH10_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH10_AL2_CTRLStruct

end # register CH10_AL2_CTRL

"""
    CH10_AL2_TRANS_COUNT

Alias for channel 10 TRANS\\_COUNT register
"""
module CH10_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002a4
@regdef struct CH10_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH10_AL2_TRANS_COUNTStruct

end # register CH10_AL2_TRANS_COUNT

"""
    CH10_AL2_READ_ADDR

Alias for channel 10 READ\\_ADDR register
"""
module CH10_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002a8
@regdef struct CH10_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH10_AL2_READ_ADDRStruct

end # register CH10_AL2_READ_ADDR

"""
    CH10_AL2_WRITE_ADDR_TRIG

Alias for channel 10 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH10_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002ac
@regdef struct CH10_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH10_AL2_WRITE_ADDR_TRIGStruct

end # register CH10_AL2_WRITE_ADDR_TRIG

"""
    CH10_AL3_CTRL

Alias for channel 10 CTRL register
"""
module CH10_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002b0
@regdef struct CH10_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH10_AL3_CTRLStruct

end # register CH10_AL3_CTRL

"""
    CH10_AL3_WRITE_ADDR

Alias for channel 10 WRITE\\_ADDR register
"""
module CH10_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002b4
@regdef struct CH10_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH10_AL3_WRITE_ADDRStruct

end # register CH10_AL3_WRITE_ADDR

"""
    CH10_AL3_TRANS_COUNT

Alias for channel 10 TRANS\\_COUNT register
"""
module CH10_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002b8
@regdef struct CH10_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH10_AL3_TRANS_COUNTStruct

end # register CH10_AL3_TRANS_COUNT

"""
    CH10_AL3_READ_ADDR_TRIG

Alias for channel 10 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH10_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002bc
@regdef struct CH10_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH10_AL3_READ_ADDR_TRIGStruct

end # register CH10_AL3_READ_ADDR_TRIG

"""
    CH11_READ_ADDR

DMA Channel 11 Read Address pointer

This register updates automatically each time a read completes. The current value is the next address to be read by this channel.
"""
module CH11_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002c0
@regdef struct CH11_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH11_READ_ADDRStruct

end # register CH11_READ_ADDR

"""
    CH11_WRITE_ADDR

DMA Channel 11 Write Address pointer

This register updates automatically each time a write completes. The current value is the next address to be written by this channel.
"""
module CH11_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002c4
@regdef struct CH11_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH11_WRITE_ADDRStruct

end # register CH11_WRITE_ADDR

"""
    CH11_TRANS_COUNT

DMA Channel 11 Transfer Count

Program the number of bus transfers a channel will perform before halting. Note that, if transfers are larger than one byte in size, this is not equal to the number of bytes transferred (see CTRL\\_DATA\\_SIZE).\n

When the channel is active, reading this register shows the number of transfers remaining, updating automatically each time a write transfer completes.\n

Writing this register sets the RELOAD value for the transfer counter. Each time this channel is triggered, the RELOAD value is copied into the live transfer counter. The channel can be started multiple times, and will perform the same number of transfers each time, as programmed by most recent write.\n

The RELOAD value can be observed at CHx\\_DBG\\_TCR. If TRANS\\_COUNT is used as a trigger, the written value is used immediately as the length of the new transfer sequence, as well as being written to RELOAD.
"""
module CH11_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002c8
@regdef struct CH11_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH11_TRANS_COUNTStruct

end # register CH11_TRANS_COUNT

"""
    CH11_CTRL_TRIG

DMA Channel 11 Control and Status
"""
module CH11_CTRL_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002cc
@regdef struct CH11_CTRL_TRIGStruct(regAddress)
	EN:1::ReadWrite
	HIGH_PRIORITY:1::ReadWrite
	DATA_SIZE:2::ReadWrite
	INCR_READ:1::ReadWrite
	INCR_WRITE:1::ReadWrite
	RING_SIZE:4::ReadWrite
	RING_SEL:1::ReadWrite
	CHAIN_TO:4::ReadWrite
	TREQ_SEL:6::ReadWrite
	IRQ_QUIET:1::ReadWrite
	BSWAP:1::ReadWrite
	SNIFF_EN:1::ReadWrite
	BUSY:1::Read
	_:4
	WRITE_ERROR:1::ReadWrite
	READ_ERROR:1::ReadWrite
	AHB_ERROR:1::Read
end
const Reg = CH11_CTRL_TRIGStruct

"""
    EN

DMA Channel Enable.

When 1, the channel will respond to triggering events, which will cause it to become BUSY and start transferring data. When 0, the channel will ignore triggers, stop issuing transfers, and pause the current transfer sequence (i.e. BUSY will remain high if already high)
"""
EN

"""
    HIGH_PRIORITY

HIGH\\_PRIORITY gives a channel preferential treatment in issue scheduling: in each scheduling round, all high priority channels are considered first, and then only a single low priority channel, before returning to the high priority channels.\n

This only affects the order in which the DMA schedules channels. The DMA's bus priority is not changed. If the DMA is not saturated then a low priority channel will see no loss of throughput.
"""
HIGH_PRIORITY

"""
    DATA_SIZE

Set the size of each bus transfer (byte/halfword/word). READ\\_ADDR and WRITE\\_ADDR advance by this amount (1/2/4 bytes) with each transfer.
"""
DATA_SIZE

"""
    INCR_READ

If 1, the read address increments with each transfer. If 0, each read is directed to the same, initial address.\n

Generally this should be disabled for peripheral-to-memory transfers.
"""
INCR_READ

"""
    INCR_WRITE

If 1, the write address increments with each transfer. If 0, each write is directed to the same, initial address.\n

Generally this should be disabled for memory-to-peripheral transfers.
"""
INCR_WRITE

"""
    RING_SIZE

Size of address wrap region. If 0, don't wrap. For values n &gt; 0, only the lower n bits of the address will change. This wraps the address on a (1 &lt;&lt; n) byte boundary, facilitating access to naturally-aligned ring buffers.\n

Ring sizes between 2 and 32768 bytes are possible. This can apply to either read or write addresses, based on value of RING\\_SEL.
"""
RING_SIZE

"""
    RING_SEL

Select whether RING\\_SIZE applies to read or write addresses.

If 0, read addresses are wrapped on a (1 &lt;&lt; RING\\_SIZE) boundary. If 1, write addresses are wrapped.
"""
RING_SEL

"""
    CHAIN_TO

When this channel completes, it will trigger the channel indicated by CHAIN\\_TO. Disable by setting CHAIN\\_TO = \\_(this channel)\\_.
"""
CHAIN_TO

"""
    TREQ_SEL

Select a Transfer Request signal.

The channel uses the transfer request signal to pace its data transfer rate. Sources for TREQ signals are internal (TIMERS) or external (DREQ, a Data Request from the system).

0x0 to 0x3a -&gt; select DREQ n as TREQ
"""
TREQ_SEL

"""
    IRQ_QUIET

In QUIET mode, the channel does not generate IRQs at the end of every transfer block. Instead, an IRQ is raised when NULL is written to a trigger register, indicating the end of a control block chain.\n

This reduces the number of interrupts to be serviced by the CPU when transferring a DMA chain of many small control blocks.
"""
IRQ_QUIET

"""
    BSWAP

Apply byte-swap transformation to DMA data.

For byte data, this has no effect. For halfword data, the two bytes of each halfword are swapped. For word data, the four bytes of each word are swapped to reverse order.
"""
BSWAP

"""
    SNIFF_EN

If 1, this channel's data transfers are visible to the sniff hardware, and each transfer will advance the state of the checksum. This only applies if the sniff hardware is enabled, and has this channel selected.\n

This allows checksum to be enabled or disabled on a per-control- block basis.
"""
SNIFF_EN

"""
    BUSY

This flag goes high when the channel starts a new transfer sequence, and low when the last transfer of that sequence completes. Clearing EN while BUSY is high pauses the channel, and BUSY will stay high while paused.\n

To terminate a sequence early (and clear the BUSY flag), see CHAN\\_ABORT.
"""
BUSY

"""
    WRITE_ERROR

If 1, the channel received a write bus error. Write one to clear.

WRITE\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 5 transfers later)
"""
WRITE_ERROR

"""
    READ_ERROR

If 1, the channel received a read bus error. Write one to clear.

READ\\_ADDR shows the approximate address where the bus error was encountered (will not be earlier, or more than 3 transfers later)
"""
READ_ERROR

"""
    AHB_ERROR

Logical OR of the READ\\_ERROR and WRITE\\_ERROR flags. The channel halts when it encounters any bus error, and always raises its channel IRQ flag.
"""
AHB_ERROR

end # register CH11_CTRL_TRIG

"""
    CH11_AL1_CTRL

Alias for channel 11 CTRL register
"""
module CH11_AL1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002d0
@regdef struct CH11_AL1_CTRLStruct(regAddress)
	_:32
end
const Reg = CH11_AL1_CTRLStruct

end # register CH11_AL1_CTRL

"""
    CH11_AL1_READ_ADDR

Alias for channel 11 READ\\_ADDR register
"""
module CH11_AL1_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002d4
@regdef struct CH11_AL1_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH11_AL1_READ_ADDRStruct

end # register CH11_AL1_READ_ADDR

"""
    CH11_AL1_WRITE_ADDR

Alias for channel 11 WRITE\\_ADDR register
"""
module CH11_AL1_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002d8
@regdef struct CH11_AL1_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH11_AL1_WRITE_ADDRStruct

end # register CH11_AL1_WRITE_ADDR

"""
    CH11_AL1_TRANS_COUNT_TRIG

Alias for channel 11 TRANS\\_COUNT register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH11_AL1_TRANS_COUNT_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002dc
@regdef struct CH11_AL1_TRANS_COUNT_TRIGStruct(regAddress)
	_:32
end
const Reg = CH11_AL1_TRANS_COUNT_TRIGStruct

end # register CH11_AL1_TRANS_COUNT_TRIG

"""
    CH11_AL2_CTRL

Alias for channel 11 CTRL register
"""
module CH11_AL2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002e0
@regdef struct CH11_AL2_CTRLStruct(regAddress)
	_:32
end
const Reg = CH11_AL2_CTRLStruct

end # register CH11_AL2_CTRL

"""
    CH11_AL2_TRANS_COUNT

Alias for channel 11 TRANS\\_COUNT register
"""
module CH11_AL2_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002e4
@regdef struct CH11_AL2_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH11_AL2_TRANS_COUNTStruct

end # register CH11_AL2_TRANS_COUNT

"""
    CH11_AL2_READ_ADDR

Alias for channel 11 READ\\_ADDR register
"""
module CH11_AL2_READ_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002e8
@regdef struct CH11_AL2_READ_ADDRStruct(regAddress)
	_:32
end
const Reg = CH11_AL2_READ_ADDRStruct

end # register CH11_AL2_READ_ADDR

"""
    CH11_AL2_WRITE_ADDR_TRIG

Alias for channel 11 WRITE\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH11_AL2_WRITE_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002ec
@regdef struct CH11_AL2_WRITE_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH11_AL2_WRITE_ADDR_TRIGStruct

end # register CH11_AL2_WRITE_ADDR_TRIG

"""
    CH11_AL3_CTRL

Alias for channel 11 CTRL register
"""
module CH11_AL3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002f0
@regdef struct CH11_AL3_CTRLStruct(regAddress)
	_:32
end
const Reg = CH11_AL3_CTRLStruct

end # register CH11_AL3_CTRL

"""
    CH11_AL3_WRITE_ADDR

Alias for channel 11 WRITE\\_ADDR register
"""
module CH11_AL3_WRITE_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002f4
@regdef struct CH11_AL3_WRITE_ADDRStruct(regAddress)
	_:32
end
const Reg = CH11_AL3_WRITE_ADDRStruct

end # register CH11_AL3_WRITE_ADDR

"""
    CH11_AL3_TRANS_COUNT

Alias for channel 11 TRANS\\_COUNT register
"""
module CH11_AL3_TRANS_COUNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002f8
@regdef struct CH11_AL3_TRANS_COUNTStruct(regAddress)
	_:32
end
const Reg = CH11_AL3_TRANS_COUNTStruct

end # register CH11_AL3_TRANS_COUNT

"""
    CH11_AL3_READ_ADDR_TRIG

Alias for channel 11 READ\\_ADDR register

This is a trigger register (0xc). Writing a nonzero value will

reload the channel counter and start the channel.
"""
module CH11_AL3_READ_ADDR_TRIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000002fc
@regdef struct CH11_AL3_READ_ADDR_TRIGStruct(regAddress)
	_:32
end
const Reg = CH11_AL3_READ_ADDR_TRIGStruct

end # register CH11_AL3_READ_ADDR_TRIG

"""
    INTR

Interrupt Status (raw)
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000400
@regdef struct INTRStruct(regAddress)
	INTR:16::ReadWrite
	_:16
end
const Reg = INTRStruct

"""
    INTR

Raw interrupt status for DMA Channels 0..15. Bit n corresponds to channel n. Ignores any masking or forcing. Channel interrupts can be cleared by writing a bit mask to INTR, INTS0 or INTS1.\n

Channel interrupts can be routed to either of two system-level IRQs based on INTE0 and INTE1.\n

This can be used vector different channel interrupts to different ISRs: this might be done to allow NVIC IRQ preemption for more time-critical channels, or to spread IRQ load across different cores.\n

It is also valid to ignore this behaviour and just use INTE0/INTS0/IRQ 0.
"""
INTR

end # register INTR

"""
    INTE0

Interrupt Enables for IRQ 0
"""
module INTE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000404
@regdef struct INTE0Struct(regAddress)
	INTE0:16::ReadWrite
	_:16
end
const Reg = INTE0Struct

"""
    INTE0

Set bit n to pass interrupts from channel n to DMA IRQ 0.
"""
INTE0

end # register INTE0

"""
    INTF0

Force Interrupts
"""
module INTF0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000408
@regdef struct INTF0Struct(regAddress)
	INTF0:16::ReadWrite
	_:16
end
const Reg = INTF0Struct

"""
    INTF0

Write 1s to force the corresponding bits in INTE0. The interrupt remains asserted until INTF0 is cleared.
"""
INTF0

end # register INTF0

"""
    INTS0

Interrupt Status for IRQ 0
"""
module INTS0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000040c
@regdef struct INTS0Struct(regAddress)
	INTS0:16::ReadWrite
	_:16
end
const Reg = INTS0Struct

"""
    INTS0

Indicates active channel interrupt requests which are currently causing IRQ 0 to be asserted.

Channel interrupts can be cleared by writing a bit mask here.
"""
INTS0

end # register INTS0

"""
    INTE1

Interrupt Enables for IRQ 1
"""
module INTE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000414
@regdef struct INTE1Struct(regAddress)
	INTE1:16::ReadWrite
	_:16
end
const Reg = INTE1Struct

"""
    INTE1

Set bit n to pass interrupts from channel n to DMA IRQ 1.
"""
INTE1

end # register INTE1

"""
    INTF1

Force Interrupts for IRQ 1
"""
module INTF1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000418
@regdef struct INTF1Struct(regAddress)
	INTF1:16::ReadWrite
	_:16
end
const Reg = INTF1Struct

"""
    INTF1

Write 1s to force the corresponding bits in INTE0. The interrupt remains asserted until INTF0 is cleared.
"""
INTF1

end # register INTF1

"""
    INTS1

Interrupt Status (masked) for IRQ 1
"""
module INTS1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000041c
@regdef struct INTS1Struct(regAddress)
	INTS1:16::ReadWrite
	_:16
end
const Reg = INTS1Struct

"""
    INTS1

Indicates active channel interrupt requests which are currently causing IRQ 1 to be asserted.

Channel interrupts can be cleared by writing a bit mask here.
"""
INTS1

end # register INTS1

"""
    TIMER0

Pacing (X/Y) Fractional Timer

The pacing timer produces TREQ assertions at a rate set by ((X/Y) * sys\\_clk). This equation is evaluated every sys\\_clk cycles and therefore can only generate TREQs at a rate of 1 per sys\\_clk (i.e. permanent TREQ) or less.
"""
module TIMER0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000420
@regdef struct TIMER0Struct(regAddress)
	Y:16::ReadWrite
	X:16::ReadWrite
end
const Reg = TIMER0Struct

"""
    Y

Pacing Timer Divisor. Specifies the Y value for the (X/Y) fractional timer.
"""
Y

"""
    X

Pacing Timer Dividend. Specifies the X value for the (X/Y) fractional timer.
"""
X

end # register TIMER0

"""
    TIMER1

Pacing (X/Y) Fractional Timer

The pacing timer produces TREQ assertions at a rate set by ((X/Y) * sys\\_clk). This equation is evaluated every sys\\_clk cycles and therefore can only generate TREQs at a rate of 1 per sys\\_clk (i.e. permanent TREQ) or less.
"""
module TIMER1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000424
@regdef struct TIMER1Struct(regAddress)
	Y:16::ReadWrite
	X:16::ReadWrite
end
const Reg = TIMER1Struct

"""
    Y

Pacing Timer Divisor. Specifies the Y value for the (X/Y) fractional timer.
"""
Y

"""
    X

Pacing Timer Dividend. Specifies the X value for the (X/Y) fractional timer.
"""
X

end # register TIMER1

"""
    TIMER2

Pacing (X/Y) Fractional Timer

The pacing timer produces TREQ assertions at a rate set by ((X/Y) * sys\\_clk). This equation is evaluated every sys\\_clk cycles and therefore can only generate TREQs at a rate of 1 per sys\\_clk (i.e. permanent TREQ) or less.
"""
module TIMER2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000428
@regdef struct TIMER2Struct(regAddress)
	Y:16::ReadWrite
	X:16::ReadWrite
end
const Reg = TIMER2Struct

"""
    Y

Pacing Timer Divisor. Specifies the Y value for the (X/Y) fractional timer.
"""
Y

"""
    X

Pacing Timer Dividend. Specifies the X value for the (X/Y) fractional timer.
"""
X

end # register TIMER2

"""
    TIMER3

Pacing (X/Y) Fractional Timer

The pacing timer produces TREQ assertions at a rate set by ((X/Y) * sys\\_clk). This equation is evaluated every sys\\_clk cycles and therefore can only generate TREQs at a rate of 1 per sys\\_clk (i.e. permanent TREQ) or less.
"""
module TIMER3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x000000000000042c
@regdef struct TIMER3Struct(regAddress)
	Y:16::ReadWrite
	X:16::ReadWrite
end
const Reg = TIMER3Struct

"""
    Y

Pacing Timer Divisor. Specifies the Y value for the (X/Y) fractional timer.
"""
Y

"""
    X

Pacing Timer Dividend. Specifies the X value for the (X/Y) fractional timer.
"""
X

end # register TIMER3

"""
    MULTI_CHAN_TRIGGER

Trigger one or more channels simultaneously
"""
module MULTI_CHAN_TRIGGERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000430
@regdef struct MULTI_CHAN_TRIGGERStruct(regAddress)
	MULTI_CHAN_TRIGGER:16::ReadWrite
	_:16
end
const Reg = MULTI_CHAN_TRIGGERStruct

"""
    MULTI_CHAN_TRIGGER

Each bit in this register corresponds to a DMA channel. Writing a 1 to the relevant bit is the same as writing to that channel's trigger register; the channel will start if it is currently enabled and not already busy.
"""
MULTI_CHAN_TRIGGER

end # register MULTI_CHAN_TRIGGER

"""
    SNIFF_CTRL

Sniffer Control
"""
module SNIFF_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000434
@regdef struct SNIFF_CTRLStruct(regAddress)
	EN:1::ReadWrite
	DMACH:4::ReadWrite
	CALC:4::ReadWrite
	BSWAP:1::ReadWrite
	OUT_REV:1::ReadWrite
	OUT_INV:1::ReadWrite
	_:20
end
const Reg = SNIFF_CTRLStruct

"""
    EN

Enable sniffer
"""
EN

"""
    DMACH

DMA channel for Sniffer to observe
"""
DMACH

"""
    CALC

Field has no description!
"""
CALC

"""
    BSWAP

Locally perform a byte reverse on the sniffed data, before feeding into checksum.\n

Note that the sniff hardware is downstream of the DMA channel byteswap performed in the read master: if channel CTRL\\_BSWAP and SNIFF\\_CTRL\\_BSWAP are both enabled, their effects cancel from the sniffer's point of view.
"""
BSWAP

"""
    OUT_REV

If set, the result appears bit-reversed when read. This does not affect the way the checksum is calculated; the result is transformed on-the-fly between the result register and the bus.
"""
OUT_REV

"""
    OUT_INV

If set, the result appears inverted (bitwise complement) when read. This does not affect the way the checksum is calculated; the result is transformed on-the-fly between the result register and the bus.
"""
OUT_INV

end # register SNIFF_CTRL

"""
    SNIFF_DATA

Data accumulator for sniff hardware

Write an initial seed value here before starting a DMA transfer on the channel indicated by SNIFF\\_CTRL\\_DMACH. The hardware will update this register each time it observes a read from the indicated channel. Once the channel completes, the final result can be read from this register.
"""
module SNIFF_DATAMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000438
@regdef struct SNIFF_DATAStruct(regAddress)
	_:32
end
const Reg = SNIFF_DATAStruct

end # register SNIFF_DATA

"""
    FIFO_LEVELS

Debug RAF, WAF, TDF levels
"""
module FIFO_LEVELSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000440
@regdef struct FIFO_LEVELSStruct(regAddress)
	TDF_LVL:8::Read
	WAF_LVL:8::Read
	RAF_LVL:8::Read
	_:8
end
const Reg = FIFO_LEVELSStruct

"""
    TDF_LVL

Current Transfer-Data-FIFO fill level
"""
TDF_LVL

"""
    WAF_LVL

Current Write-Address-FIFO fill level
"""
WAF_LVL

"""
    RAF_LVL

Current Read-Address-FIFO fill level
"""
RAF_LVL

end # register FIFO_LEVELS

"""
    CHAN_ABORT

Abort an in-progress transfer sequence on one or more channels
"""
module CHAN_ABORTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000444
@regdef struct CHAN_ABORTStruct(regAddress)
	CHAN_ABORT:16::ReadWrite
	_:16
end
const Reg = CHAN_ABORTStruct

"""
    CHAN_ABORT

Each bit corresponds to a channel. Writing a 1 aborts whatever transfer sequence is in progress on that channel. The bit will remain high until any in-flight transfers have been flushed through the address and data FIFOs.\n

After writing, this register must be polled until it returns all-zero. Until this point, it is unsafe to restart the channel.
"""
CHAN_ABORT

end # register CHAN_ABORT

"""
    N_CHANNELS

The number of channels this DMA instance is equipped with. This DMA supports up to 16 hardware channels, but can be configured with as few as one, to minimise silicon area.
"""
module N_CHANNELSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000448
@regdef struct N_CHANNELSStruct(regAddress)
	N_CHANNELS:5::Read
	_:27
end
const Reg = N_CHANNELSStruct

"""
    N_CHANNELS

Field has no description!
"""
N_CHANNELS

end # register N_CHANNELS

"""
    CH0_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH0_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000800
@regdef struct CH0_DBG_CTDREQStruct(regAddress)
	CH0_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH0_DBG_CTDREQStruct

"""
    CH0_DBG_CTDREQ

Field has no description!
"""
CH0_DBG_CTDREQ

end # register CH0_DBG_CTDREQ

"""
    CH0_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH0_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000804
@regdef struct CH0_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH0_DBG_TCRStruct

end # register CH0_DBG_TCR

"""
    CH1_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH1_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000840
@regdef struct CH1_DBG_CTDREQStruct(regAddress)
	CH1_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH1_DBG_CTDREQStruct

"""
    CH1_DBG_CTDREQ

Field has no description!
"""
CH1_DBG_CTDREQ

end # register CH1_DBG_CTDREQ

"""
    CH1_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH1_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000844
@regdef struct CH1_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH1_DBG_TCRStruct

end # register CH1_DBG_TCR

"""
    CH2_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH2_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000880
@regdef struct CH2_DBG_CTDREQStruct(regAddress)
	CH2_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH2_DBG_CTDREQStruct

"""
    CH2_DBG_CTDREQ

Field has no description!
"""
CH2_DBG_CTDREQ

end # register CH2_DBG_CTDREQ

"""
    CH2_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH2_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000884
@regdef struct CH2_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH2_DBG_TCRStruct

end # register CH2_DBG_TCR

"""
    CH3_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH3_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000008c0
@regdef struct CH3_DBG_CTDREQStruct(regAddress)
	CH3_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH3_DBG_CTDREQStruct

"""
    CH3_DBG_CTDREQ

Field has no description!
"""
CH3_DBG_CTDREQ

end # register CH3_DBG_CTDREQ

"""
    CH3_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH3_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000008c4
@regdef struct CH3_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH3_DBG_TCRStruct

end # register CH3_DBG_TCR

"""
    CH4_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH4_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000900
@regdef struct CH4_DBG_CTDREQStruct(regAddress)
	CH4_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH4_DBG_CTDREQStruct

"""
    CH4_DBG_CTDREQ

Field has no description!
"""
CH4_DBG_CTDREQ

end # register CH4_DBG_CTDREQ

"""
    CH4_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH4_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000904
@regdef struct CH4_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH4_DBG_TCRStruct

end # register CH4_DBG_TCR

"""
    CH5_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH5_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000940
@regdef struct CH5_DBG_CTDREQStruct(regAddress)
	CH5_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH5_DBG_CTDREQStruct

"""
    CH5_DBG_CTDREQ

Field has no description!
"""
CH5_DBG_CTDREQ

end # register CH5_DBG_CTDREQ

"""
    CH5_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH5_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000944
@regdef struct CH5_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH5_DBG_TCRStruct

end # register CH5_DBG_TCR

"""
    CH6_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH6_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000980
@regdef struct CH6_DBG_CTDREQStruct(regAddress)
	CH6_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH6_DBG_CTDREQStruct

"""
    CH6_DBG_CTDREQ

Field has no description!
"""
CH6_DBG_CTDREQ

end # register CH6_DBG_CTDREQ

"""
    CH6_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH6_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000984
@regdef struct CH6_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH6_DBG_TCRStruct

end # register CH6_DBG_TCR

"""
    CH7_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH7_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000009c0
@regdef struct CH7_DBG_CTDREQStruct(regAddress)
	CH7_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH7_DBG_CTDREQStruct

"""
    CH7_DBG_CTDREQ

Field has no description!
"""
CH7_DBG_CTDREQ

end # register CH7_DBG_CTDREQ

"""
    CH7_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH7_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x00000000000009c4
@regdef struct CH7_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH7_DBG_TCRStruct

end # register CH7_DBG_TCR

"""
    CH8_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH8_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000a00
@regdef struct CH8_DBG_CTDREQStruct(regAddress)
	CH8_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH8_DBG_CTDREQStruct

"""
    CH8_DBG_CTDREQ

Field has no description!
"""
CH8_DBG_CTDREQ

end # register CH8_DBG_CTDREQ

"""
    CH8_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH8_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000a04
@regdef struct CH8_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH8_DBG_TCRStruct

end # register CH8_DBG_TCR

"""
    CH9_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH9_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000a40
@regdef struct CH9_DBG_CTDREQStruct(regAddress)
	CH9_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH9_DBG_CTDREQStruct

"""
    CH9_DBG_CTDREQ

Field has no description!
"""
CH9_DBG_CTDREQ

end # register CH9_DBG_CTDREQ

"""
    CH9_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH9_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000a44
@regdef struct CH9_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH9_DBG_TCRStruct

end # register CH9_DBG_TCR

"""
    CH10_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH10_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000a80
@regdef struct CH10_DBG_CTDREQStruct(regAddress)
	CH10_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH10_DBG_CTDREQStruct

"""
    CH10_DBG_CTDREQ

Field has no description!
"""
CH10_DBG_CTDREQ

end # register CH10_DBG_CTDREQ

"""
    CH10_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH10_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000a84
@regdef struct CH10_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH10_DBG_TCRStruct

end # register CH10_DBG_TCR

"""
    CH11_DBG_CTDREQ

Read: get channel DREQ counter (i.e. how many accesses the DMA expects it can perform on the peripheral without overflow/underflow. Write any value: clears the counter, and cause channel to re-initiate DREQ handshake.
"""
module CH11_DBG_CTDREQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000ac0
@regdef struct CH11_DBG_CTDREQStruct(regAddress)
	CH11_DBG_CTDREQ:6::ReadWrite
	_:26
end
const Reg = CH11_DBG_CTDREQStruct

"""
    CH11_DBG_CTDREQ

Field has no description!
"""
CH11_DBG_CTDREQ

end # register CH11_DBG_CTDREQ

"""
    CH11_DBG_TCR

Read to get channel TRANS\\_COUNT reload value, i.e. the length of the next transfer
"""
module CH11_DBG_TCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..DMA: baseAddress

const regAddress = baseAddress + 0x0000000000000ac4
@regdef struct CH11_DBG_TCRStruct(regAddress)
	_:32
end
const Reg = CH11_DBG_TCRStruct

end # register CH11_DBG_TCR

end # peripheral

