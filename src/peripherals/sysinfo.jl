"""
    SYSINFO

No description of peripheral!
"""
module SYSINFO

const baseAddress = Ptr{UInt32}(1073741824)

"""
    CHIP_ID

JEDEC JEP-106 compliant chip identifier.
"""
module CHIP_IDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSINFO: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CHIP_IDStruct(regAddress)
	MANUFACTURER:12::Read
	PART:16::Read
	REVISION:4::Read
end
const Reg = CHIP_IDStruct

"""
    MANUFACTURER

Field has no description!
"""
MANUFACTURER

"""
    PART

Field has no description!
"""
PART

"""
    REVISION

Field has no description!
"""
REVISION

end # register CHIP_ID

"""
    PLATFORM

Platform register. Allows software to know what environment it is running in.
"""
module PLATFORMMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSINFO: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct PLATFORMStruct(regAddress)
	FPGA:1::Read
	ASIC:1::Read
	_:30
end
const Reg = PLATFORMStruct

"""
    FPGA

Field has no description!
"""
FPGA

"""
    ASIC

Field has no description!
"""
ASIC

end # register PLATFORM

"""
    GITREF_RP2040

Git hash of the chip source. Used to identify chip version.
"""
module GITREF_RP2040Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SYSINFO: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct GITREF_RP2040Struct(regAddress)
	_:32
end
const Reg = GITREF_RP2040Struct

end # register GITREF_RP2040

end # peripheral

