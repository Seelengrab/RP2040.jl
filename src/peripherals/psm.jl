"""
    PSM

No description of peripheral!
"""
module PSM

const baseAddress = Ptr{UInt32}(1073807360)

"""
    FRCE_ON

Force block out of reset (i.e. power it on)
"""
module FRCE_ONMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PSM: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct FRCE_ONStruct(regAddress)
	rosc:1::ReadWrite
	xosc:1::ReadWrite
	clocks:1::ReadWrite
	resets:1::ReadWrite
	busfabric:1::ReadWrite
	rom:1::ReadWrite
	sram0:1::ReadWrite
	sram1:1::ReadWrite
	sram2:1::ReadWrite
	sram3:1::ReadWrite
	sram4:1::ReadWrite
	sram5:1::ReadWrite
	xip:1::ReadWrite
	vreg_and_chip_reset:1::ReadWrite
	sio:1::ReadWrite
	proc0:1::ReadWrite
	proc1:1::ReadWrite
	_:15
end
const Reg = FRCE_ONStruct

"""
    rosc

Field has no description!
"""
rosc

"""
    xosc

Field has no description!
"""
xosc

"""
    clocks

Field has no description!
"""
clocks

"""
    resets

Field has no description!
"""
resets

"""
    busfabric

Field has no description!
"""
busfabric

"""
    rom

Field has no description!
"""
rom

"""
    sram0

Field has no description!
"""
sram0

"""
    sram1

Field has no description!
"""
sram1

"""
    sram2

Field has no description!
"""
sram2

"""
    sram3

Field has no description!
"""
sram3

"""
    sram4

Field has no description!
"""
sram4

"""
    sram5

Field has no description!
"""
sram5

"""
    xip

Field has no description!
"""
xip

"""
    vreg_and_chip_reset

Field has no description!
"""
vreg_and_chip_reset

"""
    sio

Field has no description!
"""
sio

"""
    proc0

Field has no description!
"""
proc0

"""
    proc1

Field has no description!
"""
proc1

end # register FRCE_ON

"""
    FRCE_OFF

Force into reset (i.e. power it off)
"""
module FRCE_OFFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PSM: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct FRCE_OFFStruct(regAddress)
	rosc:1::ReadWrite
	xosc:1::ReadWrite
	clocks:1::ReadWrite
	resets:1::ReadWrite
	busfabric:1::ReadWrite
	rom:1::ReadWrite
	sram0:1::ReadWrite
	sram1:1::ReadWrite
	sram2:1::ReadWrite
	sram3:1::ReadWrite
	sram4:1::ReadWrite
	sram5:1::ReadWrite
	xip:1::ReadWrite
	vreg_and_chip_reset:1::ReadWrite
	sio:1::ReadWrite
	proc0:1::ReadWrite
	proc1:1::ReadWrite
	_:15
end
const Reg = FRCE_OFFStruct

"""
    rosc

Field has no description!
"""
rosc

"""
    xosc

Field has no description!
"""
xosc

"""
    clocks

Field has no description!
"""
clocks

"""
    resets

Field has no description!
"""
resets

"""
    busfabric

Field has no description!
"""
busfabric

"""
    rom

Field has no description!
"""
rom

"""
    sram0

Field has no description!
"""
sram0

"""
    sram1

Field has no description!
"""
sram1

"""
    sram2

Field has no description!
"""
sram2

"""
    sram3

Field has no description!
"""
sram3

"""
    sram4

Field has no description!
"""
sram4

"""
    sram5

Field has no description!
"""
sram5

"""
    xip

Field has no description!
"""
xip

"""
    vreg_and_chip_reset

Field has no description!
"""
vreg_and_chip_reset

"""
    sio

Field has no description!
"""
sio

"""
    proc0

Field has no description!
"""
proc0

"""
    proc1

Field has no description!
"""
proc1

end # register FRCE_OFF

"""
    WDSEL

Set to 1 if this peripheral should be reset when the watchdog fires.
"""
module WDSELMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PSM: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct WDSELStruct(regAddress)
	rosc:1::ReadWrite
	xosc:1::ReadWrite
	clocks:1::ReadWrite
	resets:1::ReadWrite
	busfabric:1::ReadWrite
	rom:1::ReadWrite
	sram0:1::ReadWrite
	sram1:1::ReadWrite
	sram2:1::ReadWrite
	sram3:1::ReadWrite
	sram4:1::ReadWrite
	sram5:1::ReadWrite
	xip:1::ReadWrite
	vreg_and_chip_reset:1::ReadWrite
	sio:1::ReadWrite
	proc0:1::ReadWrite
	proc1:1::ReadWrite
	_:15
end
const Reg = WDSELStruct

"""
    rosc

Field has no description!
"""
rosc

"""
    xosc

Field has no description!
"""
xosc

"""
    clocks

Field has no description!
"""
clocks

"""
    resets

Field has no description!
"""
resets

"""
    busfabric

Field has no description!
"""
busfabric

"""
    rom

Field has no description!
"""
rom

"""
    sram0

Field has no description!
"""
sram0

"""
    sram1

Field has no description!
"""
sram1

"""
    sram2

Field has no description!
"""
sram2

"""
    sram3

Field has no description!
"""
sram3

"""
    sram4

Field has no description!
"""
sram4

"""
    sram5

Field has no description!
"""
sram5

"""
    xip

Field has no description!
"""
xip

"""
    vreg_and_chip_reset

Field has no description!
"""
vreg_and_chip_reset

"""
    sio

Field has no description!
"""
sio

"""
    proc0

Field has no description!
"""
proc0

"""
    proc1

Field has no description!
"""
proc1

end # register WDSEL

"""
    DONE

Indicates the peripheral's registers are ready to access.
"""
module DONEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PSM: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct DONEStruct(regAddress)
	rosc:1::Read
	xosc:1::Read
	clocks:1::Read
	resets:1::Read
	busfabric:1::Read
	rom:1::Read
	sram0:1::Read
	sram1:1::Read
	sram2:1::Read
	sram3:1::Read
	sram4:1::Read
	sram5:1::Read
	xip:1::Read
	vreg_and_chip_reset:1::Read
	sio:1::Read
	proc0:1::Read
	proc1:1::Read
	_:15
end
const Reg = DONEStruct

"""
    rosc

Field has no description!
"""
rosc

"""
    xosc

Field has no description!
"""
xosc

"""
    clocks

Field has no description!
"""
clocks

"""
    resets

Field has no description!
"""
resets

"""
    busfabric

Field has no description!
"""
busfabric

"""
    rom

Field has no description!
"""
rom

"""
    sram0

Field has no description!
"""
sram0

"""
    sram1

Field has no description!
"""
sram1

"""
    sram2

Field has no description!
"""
sram2

"""
    sram3

Field has no description!
"""
sram3

"""
    sram4

Field has no description!
"""
sram4

"""
    sram5

Field has no description!
"""
sram5

"""
    xip

Field has no description!
"""
xip

"""
    vreg_and_chip_reset

Field has no description!
"""
vreg_and_chip_reset

"""
    sio

Field has no description!
"""
sio

"""
    proc0

Field has no description!
"""
proc0

"""
    proc1

Field has no description!
"""
proc1

end # register DONE

end # peripheral

