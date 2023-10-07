"""
    TBMAN

Testbench manager. Allows the programmer to know what platform their software is running on.
"""
module TBMAN

const baseAddress = Ptr{UInt32}(1074184192)

"""
    PLATFORM

Indicates the type of platform in use
"""
module PLATFORMMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TBMAN: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct PLATFORMStruct(regAddress)
	ASIC:1::Read
	FPGA:1::Read
	_:30
end
const Reg = PLATFORMStruct

"""
    ASIC

Indicates the platform is an ASIC
"""
ASIC

"""
    FPGA

Indicates the platform is an FPGA
"""
FPGA

end # register PLATFORM

end # peripheral

