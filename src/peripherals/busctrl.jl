"""
    BUSCTRL

Register block for busfabric control signals and performance counters
"""
module BUSCTRL

const baseAddress = Ptr{UInt32}(1073938432)

"""
    BUS_PRIORITY

Set the priority of each master for bus arbitration.
"""
module BUS_PRIORITYMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct BUS_PRIORITYStruct(regAddress)
	PROC0:1::ReadWrite
	_:3
	PROC1:1::ReadWrite
	_:3
	DMA_R:1::ReadWrite
	_:3
	DMA_W:1::ReadWrite
	_:19
end
const Reg = BUS_PRIORITYStruct

"""
    PROC0

0 - low priority, 1 - high priority
"""
PROC0

"""
    PROC1

0 - low priority, 1 - high priority
"""
PROC1

"""
    DMA_R

0 - low priority, 1 - high priority
"""
DMA_R

"""
    DMA_W

0 - low priority, 1 - high priority
"""
DMA_W

end # register BUS_PRIORITY

"""
    BUS_PRIORITY_ACK

Bus priority acknowledge
"""
module BUS_PRIORITY_ACKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct BUS_PRIORITY_ACKStruct(regAddress)
	BUS_PRIORITY_ACK:1::Read
	_:31
end
const Reg = BUS_PRIORITY_ACKStruct

"""
    BUS_PRIORITY_ACK

Goes to 1 once all arbiters have registered the new global priority levels.

Arbiters update their local priority when servicing a new nonsequential access.

In normal circumstances this will happen almost immediately.
"""
BUS_PRIORITY_ACK

end # register BUS_PRIORITY_ACK

"""
    PERFCTR0

Bus fabric performance counter 0
"""
module PERFCTR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct PERFCTR0Struct(regAddress)
	PERFCTR0:24::ReadWrite
	_:8
end
const Reg = PERFCTR0Struct

"""
    PERFCTR0

Busfabric saturating performance counter 0

Count some event signal from the busfabric arbiters.

Write any value to clear. Select an event to count using PERFSEL0
"""
PERFCTR0

end # register PERFCTR0

"""
    PERFSEL0

Bus fabric performance event select for PERFCTR0
"""
module PERFSEL0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct PERFSEL0Struct(regAddress)
	PERFSEL0:5::ReadWrite
	_:27
end
const Reg = PERFSEL0Struct

"""
    PERFSEL0

Select an event for PERFCTR0. Count either contested accesses, or all accesses, on a downstream port of the main crossbar.
"""
PERFSEL0

end # register PERFSEL0

"""
    PERFCTR1

Bus fabric performance counter 1
"""
module PERFCTR1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct PERFCTR1Struct(regAddress)
	PERFCTR1:24::ReadWrite
	_:8
end
const Reg = PERFCTR1Struct

"""
    PERFCTR1

Busfabric saturating performance counter 1

Count some event signal from the busfabric arbiters.

Write any value to clear. Select an event to count using PERFSEL1
"""
PERFCTR1

end # register PERFCTR1

"""
    PERFSEL1

Bus fabric performance event select for PERFCTR1
"""
module PERFSEL1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct PERFSEL1Struct(regAddress)
	PERFSEL1:5::ReadWrite
	_:27
end
const Reg = PERFSEL1Struct

"""
    PERFSEL1

Select an event for PERFCTR1. Count either contested accesses, or all accesses, on a downstream port of the main crossbar.
"""
PERFSEL1

end # register PERFSEL1

"""
    PERFCTR2

Bus fabric performance counter 2
"""
module PERFCTR2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct PERFCTR2Struct(regAddress)
	PERFCTR2:24::ReadWrite
	_:8
end
const Reg = PERFCTR2Struct

"""
    PERFCTR2

Busfabric saturating performance counter 2

Count some event signal from the busfabric arbiters.

Write any value to clear. Select an event to count using PERFSEL2
"""
PERFCTR2

end # register PERFCTR2

"""
    PERFSEL2

Bus fabric performance event select for PERFCTR2
"""
module PERFSEL2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct PERFSEL2Struct(regAddress)
	PERFSEL2:5::ReadWrite
	_:27
end
const Reg = PERFSEL2Struct

"""
    PERFSEL2

Select an event for PERFCTR2. Count either contested accesses, or all accesses, on a downstream port of the main crossbar.
"""
PERFSEL2

end # register PERFSEL2

"""
    PERFCTR3

Bus fabric performance counter 3
"""
module PERFCTR3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct PERFCTR3Struct(regAddress)
	PERFCTR3:24::ReadWrite
	_:8
end
const Reg = PERFCTR3Struct

"""
    PERFCTR3

Busfabric saturating performance counter 3

Count some event signal from the busfabric arbiters.

Write any value to clear. Select an event to count using PERFSEL3
"""
PERFCTR3

end # register PERFCTR3

"""
    PERFSEL3

Bus fabric performance event select for PERFCTR3
"""
module PERFSEL3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..BUSCTRL: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct PERFSEL3Struct(regAddress)
	PERFSEL3:5::ReadWrite
	_:27
end
const Reg = PERFSEL3Struct

"""
    PERFSEL3

Select an event for PERFCTR3. Count either contested accesses, or all accesses, on a downstream port of the main crossbar.
"""
PERFSEL3

end # register PERFSEL3

end # peripheral

