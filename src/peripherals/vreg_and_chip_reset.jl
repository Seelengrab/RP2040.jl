"""
    VREG_AND_CHIP_RESET

control and status for on-chip voltage regulator and chip level reset subsystem
"""
module VREG_AND_CHIP_RESET

const baseAddress = Ptr{UInt32}(1074151424)

"""
    VREG

Voltage regulator control and status
"""
module VREGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..VREG_AND_CHIP_RESET: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct VREGStruct(regAddress)
	EN:1::ReadWrite
	HIZ:1::ReadWrite
	_:2
	VSEL:4::ReadWrite
	_:4
	ROK:1::Read
	_:19
end
const Reg = VREGStruct

"""
    EN

enable

0=not enabled, 1=enabled
"""
EN

"""
    HIZ

high impedance mode select

0=not in high impedance mode, 1=in high impedance mode
"""
HIZ

"""
    VSEL

output voltage select

0000 to 0101 - 0.80V

0110         - 0.85V

0111         - 0.90V

1000         - 0.95V

1001         - 1.00V

1010         - 1.05V

1011         - 1.10V (default)

1100         - 1.15V

1101         - 1.20V

1110         - 1.25V

1111         - 1.30V
"""
VSEL

"""
    ROK

regulation status

0=not in regulation, 1=in regulation
"""
ROK

end # register VREG

"""
    BOD

brown-out detection control
"""
module BODMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..VREG_AND_CHIP_RESET: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct BODStruct(regAddress)
	EN:1::ReadWrite
	_:3
	VSEL:4::ReadWrite
	_:24
end
const Reg = BODStruct

"""
    EN

enable

0=not enabled, 1=enabled
"""
EN

"""
    VSEL

threshold select

0000 - 0.473V

0001 - 0.516V

0010 - 0.559V

0011 - 0.602V

0100 - 0.645V

0101 - 0.688V

0110 - 0.731V

0111 - 0.774V

1000 - 0.817V

1001 - 0.860V (default)

1010 - 0.903V

1011 - 0.946V

1100 - 0.989V

1101 - 1.032V

1110 - 1.075V

1111 - 1.118V
"""
VSEL

end # register BOD

"""
    CHIP_RESET

Chip reset control and status
"""
module CHIP_RESETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..VREG_AND_CHIP_RESET: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct CHIP_RESETStruct(regAddress)
	_:8
	HAD_POR:1::Read
	_:7
	HAD_RUN:1::Read
	_:3
	HAD_PSM_RESTART:1::Read
	_:3
	PSM_RESTART_FLAG:1::ReadWrite
	_:7
end
const Reg = CHIP_RESETStruct

"""
    HAD_POR

Last reset was from the power-on reset or brown-out detection blocks
"""
HAD_POR

"""
    HAD_RUN

Last reset was from the RUN pin
"""
HAD_RUN

"""
    HAD_PSM_RESTART

Last reset was from the debug port
"""
HAD_PSM_RESTART

"""
    PSM_RESTART_FLAG

This is set by psm\\_restart from the debugger.

Its purpose is to branch bootcode to a safe mode when the debugger has issued a psm\\_restart in order to recover from a boot lock-up.

In the safe mode the debugger can repair the boot code, clear this flag then reboot the processor.
"""
PSM_RESTART_FLAG

end # register CHIP_RESET

end # peripheral

