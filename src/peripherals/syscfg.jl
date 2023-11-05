"""
    SYSCFG

Register block for various chip control signals
"""
module SYSCFG

const baseAddress = Ptr{UInt32}(1073758208)

"""
    PROC0_NMI_MASK

Processor core 0 NMI source mask

Set a bit high to enable NMI from that IRQ
"""
module PROC0_NMI_MASKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct PROC0_NMI_MASKStruct(regAddress)
	PROC0_NMI_MASK:32
end
const Reg = PROC0_NMI_MASKStruct

end # register PROC0_NMI_MASK

"""
    PROC1_NMI_MASK

Processor core 1 NMI source mask

Set a bit high to enable NMI from that IRQ
"""
module PROC1_NMI_MASKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct PROC1_NMI_MASKStruct(regAddress)
	PROC1_NMI_MASK:32
end
const Reg = PROC1_NMI_MASKStruct

end # register PROC1_NMI_MASK

"""
    PROC_CONFIG

Configuration for processors
"""
module PROC_CONFIGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct PROC_CONFIGStruct(regAddress)
	PROC0_HALTED:1::Read
	PROC1_HALTED:1::Read
	_:22
	PROC0_DAP_INSTID:4::ReadWrite
	PROC1_DAP_INSTID:4::ReadWrite
end
const Reg = PROC_CONFIGStruct

"""
    PROC0_HALTED

Indication that proc0 has halted
"""
PROC0_HALTED

"""
    PROC1_HALTED

Indication that proc1 has halted
"""
PROC1_HALTED

"""
    PROC0_DAP_INSTID

Configure proc0 DAP instance ID.

Recommend that this is NOT changed until you require debug access in multi-chip environment

WARNING: do not set to 15 as this is reserved for RescueDP
"""
PROC0_DAP_INSTID

"""
    PROC1_DAP_INSTID

Configure proc1 DAP instance ID.

Recommend that this is NOT changed until you require debug access in multi-chip environment

WARNING: do not set to 15 as this is reserved for RescueDP
"""
PROC1_DAP_INSTID

end # register PROC_CONFIG

"""
    PROC_IN_SYNC_BYPASS

For each bit, if 1, bypass the input synchronizer between that GPIO

and the GPIO input register in the SIO. The input synchronizers should

generally be unbypassed, to avoid injecting metastabilities into processors.

If you're feeling brave, you can bypass to save two cycles of input

latency. This register applies to GPIO 0...29.
"""
module PROC_IN_SYNC_BYPASSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct PROC_IN_SYNC_BYPASSStruct(regAddress)
	PROC_IN_SYNC_BYPASS:30::ReadWrite
	_:2
end
const Reg = PROC_IN_SYNC_BYPASSStruct

"""
    PROC_IN_SYNC_BYPASS

Field has no description!
"""
PROC_IN_SYNC_BYPASS

end # register PROC_IN_SYNC_BYPASS

"""
    PROC_IN_SYNC_BYPASS_HI

For each bit, if 1, bypass the input synchronizer between that GPIO

and the GPIO input register in the SIO. The input synchronizers should

generally be unbypassed, to avoid injecting metastabilities into processors.

If you're feeling brave, you can bypass to save two cycles of input

latency. This register applies to GPIO 30...35 (the QSPI IOs).
"""
module PROC_IN_SYNC_BYPASS_HIMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct PROC_IN_SYNC_BYPASS_HIStruct(regAddress)
	PROC_IN_SYNC_BYPASS_HI:6::ReadWrite
	_:26
end
const Reg = PROC_IN_SYNC_BYPASS_HIStruct

"""
    PROC_IN_SYNC_BYPASS_HI

Field has no description!
"""
PROC_IN_SYNC_BYPASS_HI

end # register PROC_IN_SYNC_BYPASS_HI

"""
    DBGFORCE

Directly control the SWD debug port of either processor
"""
module DBGFORCEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct DBGFORCEStruct(regAddress)
	PROC0_SWDO:1::Read
	PROC0_SWDI:1::ReadWrite
	PROC0_SWCLK:1::ReadWrite
	PROC0_ATTACH:1::ReadWrite
	PROC1_SWDO:1::Read
	PROC1_SWDI:1::ReadWrite
	PROC1_SWCLK:1::ReadWrite
	PROC1_ATTACH:1::ReadWrite
	_:24
end
const Reg = DBGFORCEStruct

"""
    PROC0_SWDO

Observe the value of processor 0 SWDIO output.
"""
PROC0_SWDO

"""
    PROC0_SWDI

Directly drive processor 0 SWDIO input, if PROC0\\_ATTACH is set
"""
PROC0_SWDI

"""
    PROC0_SWCLK

Directly drive processor 0 SWCLK, if PROC0\\_ATTACH is set
"""
PROC0_SWCLK

"""
    PROC0_ATTACH

Attach processor 0 debug port to syscfg controls, and disconnect it from external SWD pads.
"""
PROC0_ATTACH

"""
    PROC1_SWDO

Observe the value of processor 1 SWDIO output.
"""
PROC1_SWDO

"""
    PROC1_SWDI

Directly drive processor 1 SWDIO input, if PROC1\\_ATTACH is set
"""
PROC1_SWDI

"""
    PROC1_SWCLK

Directly drive processor 1 SWCLK, if PROC1\\_ATTACH is set
"""
PROC1_SWCLK

"""
    PROC1_ATTACH

Attach processor 1 debug port to syscfg controls, and disconnect it from external SWD pads.
"""
PROC1_ATTACH

end # register DBGFORCE

"""
    MEMPOWERDOWN

Control power downs to memories. Set high to power down memories.

Use with extreme caution
"""
module MEMPOWERDOWNMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSCFG: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct MEMPOWERDOWNStruct(regAddress)
	SRAM0:1::ReadWrite
	SRAM1:1::ReadWrite
	SRAM2:1::ReadWrite
	SRAM3:1::ReadWrite
	SRAM4:1::ReadWrite
	SRAM5:1::ReadWrite
	USB:1::ReadWrite
	ROM:1::ReadWrite
	_:24
end
const Reg = MEMPOWERDOWNStruct

"""
    SRAM0

Field has no description!
"""
SRAM0

"""
    SRAM1

Field has no description!
"""
SRAM1

"""
    SRAM2

Field has no description!
"""
SRAM2

"""
    SRAM3

Field has no description!
"""
SRAM3

"""
    SRAM4

Field has no description!
"""
SRAM4

"""
    SRAM5

Field has no description!
"""
SRAM5

"""
    USB

Field has no description!
"""
USB

"""
    ROM

Field has no description!
"""
ROM

end # register MEMPOWERDOWN

end # peripheral

