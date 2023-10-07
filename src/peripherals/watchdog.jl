"""
    WATCHDOG

No description of peripheral!
"""
module WATCHDOG

const baseAddress = Ptr{UInt32}(1074102272)

"""
    CTRL

Watchdog control

The rst\\_wdsel register determines which subsystems are reset when the watchdog is triggered.

The watchdog can be triggered in software.
"""
module CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CTRLStruct(regAddress)
	TIME:24::Read
	PAUSE_JTAG:1::ReadWrite
	PAUSE_DBG0:1::ReadWrite
	PAUSE_DBG1:1::ReadWrite
	_:3
	ENABLE:1::ReadWrite
	TRIGGER:1::ReadWrite
end
const Reg = CTRLStruct

"""
    TIME

Indicates the number of ticks / 2 (see errata RP2040-E1) before a watchdog reset will be triggered
"""
TIME

"""
    PAUSE_JTAG

Pause the watchdog timer when JTAG is accessing the bus fabric
"""
PAUSE_JTAG

"""
    PAUSE_DBG0

Pause the watchdog timer when processor 0 is in debug mode
"""
PAUSE_DBG0

"""
    PAUSE_DBG1

Pause the watchdog timer when processor 1 is in debug mode
"""
PAUSE_DBG1

"""
    ENABLE

When not enabled the watchdog timer is paused
"""
ENABLE

"""
    TRIGGER

Trigger a watchdog reset
"""
TRIGGER

end # register CTRL

"""
    LOAD

Load the watchdog timer. The maximum setting is 0xffffff which corresponds to 0xffffff / 2 ticks before triggering a watchdog reset (see errata RP2040-E1).
"""
module LOADMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct LOADStruct(regAddress)
	LOAD:24::Write
	_:8
end
const Reg = LOADStruct

"""
    LOAD

Field has no description!
"""
LOAD

end # register LOAD

"""
    REASON

Logs the reason for the last reset. Both bits are zero for the case of a hardware reset.
"""
module REASONMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct REASONStruct(regAddress)
	TIMER:1::Read
	FORCE:1::Read
	_:30
end
const Reg = REASONStruct

"""
    TIMER

Field has no description!
"""
TIMER

"""
    FORCE

Field has no description!
"""
FORCE

end # register REASON

"""
    SCRATCH0

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct SCRATCH0Struct(regAddress)
	_:32
end
const Reg = SCRATCH0Struct

end # register SCRATCH0

"""
    SCRATCH1

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct SCRATCH1Struct(regAddress)
	_:32
end
const Reg = SCRATCH1Struct

end # register SCRATCH1

"""
    SCRATCH2

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct SCRATCH2Struct(regAddress)
	_:32
end
const Reg = SCRATCH2Struct

end # register SCRATCH2

"""
    SCRATCH3

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct SCRATCH3Struct(regAddress)
	_:32
end
const Reg = SCRATCH3Struct

end # register SCRATCH3

"""
    SCRATCH4

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH4Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct SCRATCH4Struct(regAddress)
	_:32
end
const Reg = SCRATCH4Struct

end # register SCRATCH4

"""
    SCRATCH5

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH5Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct SCRATCH5Struct(regAddress)
	_:32
end
const Reg = SCRATCH5Struct

end # register SCRATCH5

"""
    SCRATCH6

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH6Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct SCRATCH6Struct(regAddress)
	_:32
end
const Reg = SCRATCH6Struct

end # register SCRATCH6

"""
    SCRATCH7

Scratch register. Information persists through soft reset of the chip.
"""
module SCRATCH7Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct SCRATCH7Struct(regAddress)
	_:32
end
const Reg = SCRATCH7Struct

end # register SCRATCH7

"""
    TICK

Controls the tick generator
"""
module TICKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..WATCHDOG: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct TICKStruct(regAddress)
	CYCLES:9::ReadWrite
	ENABLE:1::ReadWrite
	RUNNING:1::Read
	COUNT:9::Read
	_:12
end
const Reg = TICKStruct

"""
    CYCLES

Total number of clk\\_tick cycles before the next tick.
"""
CYCLES

"""
    ENABLE

start / stop tick generation
"""
ENABLE

"""
    RUNNING

Is the tick generator running?
"""
RUNNING

"""
    COUNT

Count down timer: the remaining number clk\\_tick cycles before the next tick is generated.
"""
COUNT

end # register TICK

end # peripheral

