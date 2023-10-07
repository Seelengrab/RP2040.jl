"""
    PADS_QSPI

No description of peripheral!
"""
module PADS_QSPI

const baseAddress = Ptr{UInt32}(1073872896)

"""
    VOLTAGE_SELECT

Voltage select. Per bank control
"""
module VOLTAGE_SELECTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct VOLTAGE_SELECTStruct(regAddress)
	VOLTAGE_SELECT:1::ReadWrite
	_:31
end
const Reg = VOLTAGE_SELECTStruct

"""
    VOLTAGE_SELECT

Field has no description!
"""
VOLTAGE_SELECT

end # register VOLTAGE_SELECT

"""
    GPIO_QSPI_SCLK

Pad control register
"""
module GPIO_QSPI_SCLKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct GPIO_QSPI_SCLKStruct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO_QSPI_SCLKStruct

"""
    SLEWFAST

Slew rate control. 1 = Fast, 0 = Slow
"""
SLEWFAST

"""
    SCHMITT

Enable schmitt trigger
"""
SCHMITT

"""
    PDE

Pull down enable
"""
PDE

"""
    PUE

Pull up enable
"""
PUE

"""
    DRIVE

Drive strength.
"""
DRIVE

"""
    IE

Input enable
"""
IE

"""
    OD

Output disable. Has priority over output enable from peripherals
"""
OD

end # register GPIO_QSPI_SCLK

"""
    GPIO_QSPI_SD0

Pad control register
"""
module GPIO_QSPI_SD0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct GPIO_QSPI_SD0Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO_QSPI_SD0Struct

"""
    SLEWFAST

Slew rate control. 1 = Fast, 0 = Slow
"""
SLEWFAST

"""
    SCHMITT

Enable schmitt trigger
"""
SCHMITT

"""
    PDE

Pull down enable
"""
PDE

"""
    PUE

Pull up enable
"""
PUE

"""
    DRIVE

Drive strength.
"""
DRIVE

"""
    IE

Input enable
"""
IE

"""
    OD

Output disable. Has priority over output enable from peripherals
"""
OD

end # register GPIO_QSPI_SD0

"""
    GPIO_QSPI_SD1

Pad control register
"""
module GPIO_QSPI_SD1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct GPIO_QSPI_SD1Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO_QSPI_SD1Struct

"""
    SLEWFAST

Slew rate control. 1 = Fast, 0 = Slow
"""
SLEWFAST

"""
    SCHMITT

Enable schmitt trigger
"""
SCHMITT

"""
    PDE

Pull down enable
"""
PDE

"""
    PUE

Pull up enable
"""
PUE

"""
    DRIVE

Drive strength.
"""
DRIVE

"""
    IE

Input enable
"""
IE

"""
    OD

Output disable. Has priority over output enable from peripherals
"""
OD

end # register GPIO_QSPI_SD1

"""
    GPIO_QSPI_SD2

Pad control register
"""
module GPIO_QSPI_SD2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct GPIO_QSPI_SD2Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO_QSPI_SD2Struct

"""
    SLEWFAST

Slew rate control. 1 = Fast, 0 = Slow
"""
SLEWFAST

"""
    SCHMITT

Enable schmitt trigger
"""
SCHMITT

"""
    PDE

Pull down enable
"""
PDE

"""
    PUE

Pull up enable
"""
PUE

"""
    DRIVE

Drive strength.
"""
DRIVE

"""
    IE

Input enable
"""
IE

"""
    OD

Output disable. Has priority over output enable from peripherals
"""
OD

end # register GPIO_QSPI_SD2

"""
    GPIO_QSPI_SD3

Pad control register
"""
module GPIO_QSPI_SD3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct GPIO_QSPI_SD3Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO_QSPI_SD3Struct

"""
    SLEWFAST

Slew rate control. 1 = Fast, 0 = Slow
"""
SLEWFAST

"""
    SCHMITT

Enable schmitt trigger
"""
SCHMITT

"""
    PDE

Pull down enable
"""
PDE

"""
    PUE

Pull up enable
"""
PUE

"""
    DRIVE

Drive strength.
"""
DRIVE

"""
    IE

Input enable
"""
IE

"""
    OD

Output disable. Has priority over output enable from peripherals
"""
OD

end # register GPIO_QSPI_SD3

"""
    GPIO_QSPI_SS

Pad control register
"""
module GPIO_QSPI_SSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct GPIO_QSPI_SSStruct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO_QSPI_SSStruct

"""
    SLEWFAST

Slew rate control. 1 = Fast, 0 = Slow
"""
SLEWFAST

"""
    SCHMITT

Enable schmitt trigger
"""
SCHMITT

"""
    PDE

Pull down enable
"""
PDE

"""
    PUE

Pull up enable
"""
PUE

"""
    DRIVE

Drive strength.
"""
DRIVE

"""
    IE

Input enable
"""
IE

"""
    OD

Output disable. Has priority over output enable from peripherals
"""
OD

end # register GPIO_QSPI_SS

end # peripheral

