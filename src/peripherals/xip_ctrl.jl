"""
    XIP_CTRL

QSPI flash execute-in-place block
"""
module XIP_CTRL

const baseAddress = Ptr{UInt32}(335544320)

"""
    CTRL

Cache control
"""
module CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CTRLStruct(regAddress)
	EN:1::ReadWrite
	ERR_BADWRITE:1::ReadWrite
	_:1
	POWER_DOWN:1::ReadWrite
	_:28
end
const Reg = CTRLStruct

"""
    EN

When 1, enable the cache. When the cache is disabled, all XIP accesses

will go straight to the flash, without querying the cache. When enabled,

cacheable XIP accesses will query the cache, and the flash will

not be accessed if the tag matches and the valid bit is set.\n

If the cache is enabled, cache-as-SRAM accesses have no effect on the

cache data RAM, and will produce a bus error response.
"""
EN

"""
    ERR_BADWRITE

When 1, writes to any alias other than 0x0 (caching, allocating)

will produce a bus fault. When 0, these writes are silently ignored.

In either case, writes to the 0x0 alias will deallocate on tag match,

as usual.
"""
ERR_BADWRITE

"""
    POWER_DOWN

When 1, the cache memories are powered down. They retain state,

but can not be accessed. This reduces static power dissipation.

Writing 1 to this bit forces CTRL\\_EN to 0, i.e. the cache cannot

be enabled when powered down.

Cache-as-SRAM accesses will produce a bus error response when

the cache is powered down.
"""
POWER_DOWN

end # register CTRL

"""
    FLUSH

Cache Flush control
"""
module FLUSHMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct FLUSHStruct(regAddress)
	FLUSH:1::ReadWrite
	_:31
end
const Reg = FLUSHStruct

"""
    FLUSH

Write 1 to flush the cache. This clears the tag memory, but

the data memory retains its contents. (This means cache-as-SRAM

contents is not affected by flush or reset.)

Reading will hold the bus (stall the processor) until the flush

completes. Alternatively STAT can be polled until completion.
"""
FLUSH

end # register FLUSH

"""
    STAT

Cache Status
"""
module STATMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct STATStruct(regAddress)
	FLUSH_READY:1::Read
	FIFO_EMPTY:1::Read
	FIFO_FULL:1::Read
	_:29
end
const Reg = STATStruct

"""
    FLUSH_READY

Reads as 0 while a cache flush is in progress, and 1 otherwise.

The cache is flushed whenever the XIP block is reset, and also

when requested via the FLUSH register.
"""
FLUSH_READY

"""
    FIFO_EMPTY

When 1, indicates the XIP streaming FIFO is completely empty.
"""
FIFO_EMPTY

"""
    FIFO_FULL

When 1, indicates the XIP streaming FIFO is completely full.

The streaming FIFO is 2 entries deep, so the full and empty

flag allow its level to be ascertained.
"""
FIFO_FULL

end # register STAT

"""
    CTR_HIT

Cache Hit counter

A 32 bit saturating counter that increments upon each cache hit,

i.e. when an XIP access is serviced directly from cached data.

Write any value to clear.
"""
module CTR_HITMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct CTR_HITStruct(regAddress)
	CTR_HIT:32
end
const Reg = CTR_HITStruct

end # register CTR_HIT

"""
    CTR_ACC

Cache Access counter

A 32 bit saturating counter that increments upon each XIP access,

whether the cache is hit or not. This includes noncacheable accesses.

Write any value to clear.
"""
module CTR_ACCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct CTR_ACCStruct(regAddress)
	CTR_ACC:32
end
const Reg = CTR_ACCStruct

end # register CTR_ACC

"""
    STREAM_ADDR

FIFO stream address
"""
module STREAM_ADDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct STREAM_ADDRStruct(regAddress)
	_:2
	STREAM_ADDR:30::ReadWrite
end
const Reg = STREAM_ADDRStruct

"""
    STREAM_ADDR

The address of the next word to be streamed from flash to the streaming FIFO.

Increments automatically after each flash access.

Write the initial access address here before starting a streaming read.
"""
STREAM_ADDR

end # register STREAM_ADDR

"""
    STREAM_CTR

FIFO stream control
"""
module STREAM_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct STREAM_CTRStruct(regAddress)
	STREAM_CTR:22::ReadWrite
	_:10
end
const Reg = STREAM_CTRStruct

"""
    STREAM_CTR

Write a nonzero value to start a streaming read. This will then

progress in the background, using flash idle cycles to transfer

a linear data block from flash to the streaming FIFO.

Decrements automatically (1 at a time) as the stream

progresses, and halts on reaching 0.

Write 0 to halt an in-progress stream, and discard any in-flight

read, so that a new stream can immediately be started (after

draining the FIFO and reinitialising STREAM\\_ADDR)
"""
STREAM_CTR

end # register STREAM_CTR

"""
    STREAM_FIFO

FIFO stream data

Streamed data is buffered here, for retrieval by the system DMA.

This FIFO can also be accessed via the XIP\\_AUX slave, to avoid exposing

the DMA to bus stalls caused by other XIP traffic.
"""
module STREAM_FIFOMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_CTRL: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct STREAM_FIFOStruct(regAddress)
	STREAM_FIFO:32
end
const Reg = STREAM_FIFOStruct

end # register STREAM_FIFO

end # peripheral

