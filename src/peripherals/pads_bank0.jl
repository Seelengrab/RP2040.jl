"""
    PADS_BANK0

No description of peripheral!
"""
module PADS_BANK0

const baseAddress = Ptr{UInt32}(1073856512)

"""
    VOLTAGE_SELECT

Voltage select. Per bank control
"""
module VOLTAGE_SELECTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

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
    GPIO0

Pad control register
"""
module GPIO0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct GPIO0Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO0Struct

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

end # register GPIO0

"""
    GPIO1

Pad control register
"""
module GPIO1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct GPIO1Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO1Struct

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

end # register GPIO1

"""
    GPIO2

Pad control register
"""
module GPIO2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct GPIO2Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO2Struct

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

end # register GPIO2

"""
    GPIO3

Pad control register
"""
module GPIO3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct GPIO3Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO3Struct

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

end # register GPIO3

"""
    GPIO4

Pad control register
"""
module GPIO4Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct GPIO4Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO4Struct

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

end # register GPIO4

"""
    GPIO5

Pad control register
"""
module GPIO5Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct GPIO5Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO5Struct

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

end # register GPIO5

"""
    GPIO6

Pad control register
"""
module GPIO6Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct GPIO6Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO6Struct

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

end # register GPIO6

"""
    GPIO7

Pad control register
"""
module GPIO7Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct GPIO7Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO7Struct

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

end # register GPIO7

"""
    GPIO8

Pad control register
"""
module GPIO8Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct GPIO8Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO8Struct

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

end # register GPIO8

"""
    GPIO9

Pad control register
"""
module GPIO9Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct GPIO9Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO9Struct

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

end # register GPIO9

"""
    GPIO10

Pad control register
"""
module GPIO10Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct GPIO10Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO10Struct

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

end # register GPIO10

"""
    GPIO11

Pad control register
"""
module GPIO11Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct GPIO11Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO11Struct

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

end # register GPIO11

"""
    GPIO12

Pad control register
"""
module GPIO12Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct GPIO12Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO12Struct

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

end # register GPIO12

"""
    GPIO13

Pad control register
"""
module GPIO13Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct GPIO13Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO13Struct

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

end # register GPIO13

"""
    GPIO14

Pad control register
"""
module GPIO14Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct GPIO14Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO14Struct

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

end # register GPIO14

"""
    GPIO15

Pad control register
"""
module GPIO15Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct GPIO15Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO15Struct

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

end # register GPIO15

"""
    GPIO16

Pad control register
"""
module GPIO16Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct GPIO16Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO16Struct

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

end # register GPIO16

"""
    GPIO17

Pad control register
"""
module GPIO17Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct GPIO17Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO17Struct

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

end # register GPIO17

"""
    GPIO18

Pad control register
"""
module GPIO18Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct GPIO18Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO18Struct

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

end # register GPIO18

"""
    GPIO19

Pad control register
"""
module GPIO19Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct GPIO19Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO19Struct

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

end # register GPIO19

"""
    GPIO20

Pad control register
"""
module GPIO20Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct GPIO20Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO20Struct

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

end # register GPIO20

"""
    GPIO21

Pad control register
"""
module GPIO21Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct GPIO21Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO21Struct

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

end # register GPIO21

"""
    GPIO22

Pad control register
"""
module GPIO22Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct GPIO22Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO22Struct

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

end # register GPIO22

"""
    GPIO23

Pad control register
"""
module GPIO23Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct GPIO23Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO23Struct

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

end # register GPIO23

"""
    GPIO24

Pad control register
"""
module GPIO24Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct GPIO24Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO24Struct

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

end # register GPIO24

"""
    GPIO25

Pad control register
"""
module GPIO25Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct GPIO25Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO25Struct

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

end # register GPIO25

"""
    GPIO26

Pad control register
"""
module GPIO26Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct GPIO26Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO26Struct

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

end # register GPIO26

"""
    GPIO27

Pad control register
"""
module GPIO27Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct GPIO27Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO27Struct

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

end # register GPIO27

"""
    GPIO28

Pad control register
"""
module GPIO28Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct GPIO28Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO28Struct

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

end # register GPIO28

"""
    GPIO29

Pad control register
"""
module GPIO29Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct GPIO29Struct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = GPIO29Struct

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

end # register GPIO29

"""
    SWCLK

Pad control register
"""
module SWCLKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct SWCLKStruct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = SWCLKStruct

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

end # register SWCLK

"""
    SWD

Pad control register
"""
module SWDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PADS_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct SWDStruct(regAddress)
	SLEWFAST:1::ReadWrite
	SCHMITT:1::ReadWrite
	PDE:1::ReadWrite
	PUE:1::ReadWrite
	DRIVE:2::ReadWrite
	IE:1::ReadWrite
	OD:1::ReadWrite
	_:24
end
const Reg = SWDStruct

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

end # register SWD

end # peripheral

