"""
    IO_BANK0

No description of peripheral!
"""
module IO_BANK0

const baseAddress = Ptr{UInt32}(1073823744)

"""
    GPIO0_STATUS

GPIO status
"""
module GPIO0_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct GPIO0_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO0_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO0_STATUS

"""
    GPIO0_CTRL

GPIO control including function select and overrides.
"""
module GPIO0_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct GPIO0_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO0_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO0_CTRL

"""
    GPIO1_STATUS

GPIO status
"""
module GPIO1_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct GPIO1_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO1_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO1_STATUS

"""
    GPIO1_CTRL

GPIO control including function select and overrides.
"""
module GPIO1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct GPIO1_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO1_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO1_CTRL

"""
    GPIO2_STATUS

GPIO status
"""
module GPIO2_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct GPIO2_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO2_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO2_STATUS

"""
    GPIO2_CTRL

GPIO control including function select and overrides.
"""
module GPIO2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct GPIO2_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO2_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO2_CTRL

"""
    GPIO3_STATUS

GPIO status
"""
module GPIO3_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct GPIO3_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO3_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO3_STATUS

"""
    GPIO3_CTRL

GPIO control including function select and overrides.
"""
module GPIO3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct GPIO3_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO3_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO3_CTRL

"""
    GPIO4_STATUS

GPIO status
"""
module GPIO4_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct GPIO4_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO4_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO4_STATUS

"""
    GPIO4_CTRL

GPIO control including function select and overrides.
"""
module GPIO4_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct GPIO4_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO4_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO4_CTRL

"""
    GPIO5_STATUS

GPIO status
"""
module GPIO5_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct GPIO5_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO5_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO5_STATUS

"""
    GPIO5_CTRL

GPIO control including function select and overrides.
"""
module GPIO5_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct GPIO5_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO5_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO5_CTRL

"""
    GPIO6_STATUS

GPIO status
"""
module GPIO6_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct GPIO6_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO6_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO6_STATUS

"""
    GPIO6_CTRL

GPIO control including function select and overrides.
"""
module GPIO6_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct GPIO6_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO6_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO6_CTRL

"""
    GPIO7_STATUS

GPIO status
"""
module GPIO7_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct GPIO7_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO7_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO7_STATUS

"""
    GPIO7_CTRL

GPIO control including function select and overrides.
"""
module GPIO7_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct GPIO7_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO7_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO7_CTRL

"""
    GPIO8_STATUS

GPIO status
"""
module GPIO8_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct GPIO8_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO8_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO8_STATUS

"""
    GPIO8_CTRL

GPIO control including function select and overrides.
"""
module GPIO8_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct GPIO8_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO8_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO8_CTRL

"""
    GPIO9_STATUS

GPIO status
"""
module GPIO9_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct GPIO9_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO9_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO9_STATUS

"""
    GPIO9_CTRL

GPIO control including function select and overrides.
"""
module GPIO9_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct GPIO9_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO9_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO9_CTRL

"""
    GPIO10_STATUS

GPIO status
"""
module GPIO10_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct GPIO10_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO10_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO10_STATUS

"""
    GPIO10_CTRL

GPIO control including function select and overrides.
"""
module GPIO10_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct GPIO10_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO10_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO10_CTRL

"""
    GPIO11_STATUS

GPIO status
"""
module GPIO11_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct GPIO11_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO11_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO11_STATUS

"""
    GPIO11_CTRL

GPIO control including function select and overrides.
"""
module GPIO11_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct GPIO11_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO11_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO11_CTRL

"""
    GPIO12_STATUS

GPIO status
"""
module GPIO12_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct GPIO12_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO12_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO12_STATUS

"""
    GPIO12_CTRL

GPIO control including function select and overrides.
"""
module GPIO12_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct GPIO12_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO12_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO12_CTRL

"""
    GPIO13_STATUS

GPIO status
"""
module GPIO13_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct GPIO13_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO13_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO13_STATUS

"""
    GPIO13_CTRL

GPIO control including function select and overrides.
"""
module GPIO13_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct GPIO13_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO13_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO13_CTRL

"""
    GPIO14_STATUS

GPIO status
"""
module GPIO14_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct GPIO14_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO14_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO14_STATUS

"""
    GPIO14_CTRL

GPIO control including function select and overrides.
"""
module GPIO14_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct GPIO14_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO14_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO14_CTRL

"""
    GPIO15_STATUS

GPIO status
"""
module GPIO15_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct GPIO15_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO15_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO15_STATUS

"""
    GPIO15_CTRL

GPIO control including function select and overrides.
"""
module GPIO15_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct GPIO15_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO15_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO15_CTRL

"""
    GPIO16_STATUS

GPIO status
"""
module GPIO16_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct GPIO16_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO16_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO16_STATUS

"""
    GPIO16_CTRL

GPIO control including function select and overrides.
"""
module GPIO16_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct GPIO16_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO16_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO16_CTRL

"""
    GPIO17_STATUS

GPIO status
"""
module GPIO17_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct GPIO17_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO17_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO17_STATUS

"""
    GPIO17_CTRL

GPIO control including function select and overrides.
"""
module GPIO17_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct GPIO17_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO17_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO17_CTRL

"""
    GPIO18_STATUS

GPIO status
"""
module GPIO18_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct GPIO18_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO18_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO18_STATUS

"""
    GPIO18_CTRL

GPIO control including function select and overrides.
"""
module GPIO18_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct GPIO18_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO18_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO18_CTRL

"""
    GPIO19_STATUS

GPIO status
"""
module GPIO19_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct GPIO19_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO19_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO19_STATUS

"""
    GPIO19_CTRL

GPIO control including function select and overrides.
"""
module GPIO19_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct GPIO19_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO19_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO19_CTRL

"""
    GPIO20_STATUS

GPIO status
"""
module GPIO20_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct GPIO20_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO20_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO20_STATUS

"""
    GPIO20_CTRL

GPIO control including function select and overrides.
"""
module GPIO20_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct GPIO20_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO20_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO20_CTRL

"""
    GPIO21_STATUS

GPIO status
"""
module GPIO21_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct GPIO21_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO21_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO21_STATUS

"""
    GPIO21_CTRL

GPIO control including function select and overrides.
"""
module GPIO21_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct GPIO21_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO21_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO21_CTRL

"""
    GPIO22_STATUS

GPIO status
"""
module GPIO22_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct GPIO22_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO22_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO22_STATUS

"""
    GPIO22_CTRL

GPIO control including function select and overrides.
"""
module GPIO22_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000b4
@regdef struct GPIO22_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO22_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO22_CTRL

"""
    GPIO23_STATUS

GPIO status
"""
module GPIO23_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000b8
@regdef struct GPIO23_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO23_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO23_STATUS

"""
    GPIO23_CTRL

GPIO control including function select and overrides.
"""
module GPIO23_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000bc
@regdef struct GPIO23_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO23_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO23_CTRL

"""
    GPIO24_STATUS

GPIO status
"""
module GPIO24_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000c0
@regdef struct GPIO24_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO24_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO24_STATUS

"""
    GPIO24_CTRL

GPIO control including function select and overrides.
"""
module GPIO24_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000c4
@regdef struct GPIO24_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO24_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO24_CTRL

"""
    GPIO25_STATUS

GPIO status
"""
module GPIO25_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000c8
@regdef struct GPIO25_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO25_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO25_STATUS

"""
    GPIO25_CTRL

GPIO control including function select and overrides.
"""
module GPIO25_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000cc
@regdef struct GPIO25_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO25_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO25_CTRL

"""
    GPIO26_STATUS

GPIO status
"""
module GPIO26_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000d0
@regdef struct GPIO26_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO26_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO26_STATUS

"""
    GPIO26_CTRL

GPIO control including function select and overrides.
"""
module GPIO26_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000d4
@regdef struct GPIO26_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO26_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO26_CTRL

"""
    GPIO27_STATUS

GPIO status
"""
module GPIO27_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000d8
@regdef struct GPIO27_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO27_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO27_STATUS

"""
    GPIO27_CTRL

GPIO control including function select and overrides.
"""
module GPIO27_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000dc
@regdef struct GPIO27_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO27_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO27_CTRL

"""
    GPIO28_STATUS

GPIO status
"""
module GPIO28_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000e0
@regdef struct GPIO28_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO28_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO28_STATUS

"""
    GPIO28_CTRL

GPIO control including function select and overrides.
"""
module GPIO28_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000e4
@regdef struct GPIO28_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO28_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO28_CTRL

"""
    GPIO29_STATUS

GPIO status
"""
module GPIO29_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000e8
@regdef struct GPIO29_STATUSStruct(regAddress)
	_:8
	OUTFROMPERI:1::Read
	OUTTOPAD:1::Read
	_:2
	OEFROMPERI:1::Read
	OETOPAD:1::Read
	_:3
	INFROMPAD:1::Read
	_:1
	INTOPERI:1::Read
	_:4
	IRQFROMPAD:1::Read
	_:1
	IRQTOPROC:1::Read
	_:5
end
const Reg = GPIO29_STATUSStruct

"""
    OUTFROMPERI

output signal from selected peripheral, before register override is applied
"""
OUTFROMPERI

"""
    OUTTOPAD

output signal to pad after register override is applied
"""
OUTTOPAD

"""
    OEFROMPERI

output enable from selected peripheral, before register override is applied
"""
OEFROMPERI

"""
    OETOPAD

output enable to pad after register override is applied
"""
OETOPAD

"""
    INFROMPAD

input signal from pad, before override is applied
"""
INFROMPAD

"""
    INTOPERI

input signal to peripheral, after override is applied
"""
INTOPERI

"""
    IRQFROMPAD

interrupt from pad before override is applied
"""
IRQFROMPAD

"""
    IRQTOPROC

interrupt to processors, after override is applied
"""
IRQTOPROC

end # register GPIO29_STATUS

"""
    GPIO29_CTRL

GPIO control including function select and overrides.
"""
module GPIO29_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000ec
@regdef struct GPIO29_CTRLStruct(regAddress)
	FUNCSEL:5::ReadWrite
	_:3
	OUTOVER:2::ReadWrite
	_:2
	OEOVER:2::ReadWrite
	_:2
	INOVER:2::ReadWrite
	_:10
	IRQOVER:2::ReadWrite
	_:2
end
const Reg = GPIO29_CTRLStruct

"""
    FUNCSEL

0-31 -&gt; selects pin function according to the gpio table

31 == NULL
"""
FUNCSEL

"""
    OUTOVER

Field has no description!
"""
OUTOVER

"""
    OEOVER

Field has no description!
"""
OEOVER

"""
    INOVER

Field has no description!
"""
INOVER

"""
    IRQOVER

Field has no description!
"""
IRQOVER

end # register GPIO29_CTRL

"""
    INTR0

Raw Interrupts
"""
module INTR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000f0
@regdef struct INTR0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::Read
	GPIO0_LEVEL_HIGH:1::Read
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::Read
	GPIO1_LEVEL_HIGH:1::Read
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::Read
	GPIO2_LEVEL_HIGH:1::Read
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::Read
	GPIO3_LEVEL_HIGH:1::Read
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::Read
	GPIO4_LEVEL_HIGH:1::Read
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::Read
	GPIO5_LEVEL_HIGH:1::Read
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::Read
	GPIO6_LEVEL_HIGH:1::Read
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::Read
	GPIO7_LEVEL_HIGH:1::Read
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = INTR0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register INTR0

"""
    INTR1

Raw Interrupts
"""
module INTR1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct INTR1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::Read
	GPIO8_LEVEL_HIGH:1::Read
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::Read
	GPIO9_LEVEL_HIGH:1::Read
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::Read
	GPIO10_LEVEL_HIGH:1::Read
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::Read
	GPIO11_LEVEL_HIGH:1::Read
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::Read
	GPIO12_LEVEL_HIGH:1::Read
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::Read
	GPIO13_LEVEL_HIGH:1::Read
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::Read
	GPIO14_LEVEL_HIGH:1::Read
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::Read
	GPIO15_LEVEL_HIGH:1::Read
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = INTR1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register INTR1

"""
    INTR2

Raw Interrupts
"""
module INTR2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct INTR2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::Read
	GPIO16_LEVEL_HIGH:1::Read
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::Read
	GPIO17_LEVEL_HIGH:1::Read
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::Read
	GPIO18_LEVEL_HIGH:1::Read
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::Read
	GPIO19_LEVEL_HIGH:1::Read
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::Read
	GPIO20_LEVEL_HIGH:1::Read
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::Read
	GPIO21_LEVEL_HIGH:1::Read
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::Read
	GPIO22_LEVEL_HIGH:1::Read
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::Read
	GPIO23_LEVEL_HIGH:1::Read
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = INTR2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register INTR2

"""
    INTR3

Raw Interrupts
"""
module INTR3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x00000000000000fc
@regdef struct INTR3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::Read
	GPIO24_LEVEL_HIGH:1::Read
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::Read
	GPIO25_LEVEL_HIGH:1::Read
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::Read
	GPIO26_LEVEL_HIGH:1::Read
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::Read
	GPIO27_LEVEL_HIGH:1::Read
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::Read
	GPIO28_LEVEL_HIGH:1::Read
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::Read
	GPIO29_LEVEL_HIGH:1::Read
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = INTR3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register INTR3

"""
    PROC0_INTE0

Interrupt Enable for proc0
"""
module PROC0_INTE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000100
@regdef struct PROC0_INTE0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::ReadWrite
	GPIO0_LEVEL_HIGH:1::ReadWrite
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::ReadWrite
	GPIO1_LEVEL_HIGH:1::ReadWrite
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::ReadWrite
	GPIO2_LEVEL_HIGH:1::ReadWrite
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::ReadWrite
	GPIO3_LEVEL_HIGH:1::ReadWrite
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::ReadWrite
	GPIO4_LEVEL_HIGH:1::ReadWrite
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::ReadWrite
	GPIO5_LEVEL_HIGH:1::ReadWrite
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::ReadWrite
	GPIO6_LEVEL_HIGH:1::ReadWrite
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::ReadWrite
	GPIO7_LEVEL_HIGH:1::ReadWrite
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC0_INTE0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register PROC0_INTE0

"""
    PROC0_INTE1

Interrupt Enable for proc0
"""
module PROC0_INTE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000104
@regdef struct PROC0_INTE1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::ReadWrite
	GPIO8_LEVEL_HIGH:1::ReadWrite
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::ReadWrite
	GPIO9_LEVEL_HIGH:1::ReadWrite
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::ReadWrite
	GPIO10_LEVEL_HIGH:1::ReadWrite
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::ReadWrite
	GPIO11_LEVEL_HIGH:1::ReadWrite
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::ReadWrite
	GPIO12_LEVEL_HIGH:1::ReadWrite
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::ReadWrite
	GPIO13_LEVEL_HIGH:1::ReadWrite
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::ReadWrite
	GPIO14_LEVEL_HIGH:1::ReadWrite
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::ReadWrite
	GPIO15_LEVEL_HIGH:1::ReadWrite
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC0_INTE1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register PROC0_INTE1

"""
    PROC0_INTE2

Interrupt Enable for proc0
"""
module PROC0_INTE2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000108
@regdef struct PROC0_INTE2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::ReadWrite
	GPIO16_LEVEL_HIGH:1::ReadWrite
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::ReadWrite
	GPIO17_LEVEL_HIGH:1::ReadWrite
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::ReadWrite
	GPIO18_LEVEL_HIGH:1::ReadWrite
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::ReadWrite
	GPIO19_LEVEL_HIGH:1::ReadWrite
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::ReadWrite
	GPIO20_LEVEL_HIGH:1::ReadWrite
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::ReadWrite
	GPIO21_LEVEL_HIGH:1::ReadWrite
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::ReadWrite
	GPIO22_LEVEL_HIGH:1::ReadWrite
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::ReadWrite
	GPIO23_LEVEL_HIGH:1::ReadWrite
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC0_INTE2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register PROC0_INTE2

"""
    PROC0_INTE3

Interrupt Enable for proc0
"""
module PROC0_INTE3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000010c
@regdef struct PROC0_INTE3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::ReadWrite
	GPIO24_LEVEL_HIGH:1::ReadWrite
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::ReadWrite
	GPIO25_LEVEL_HIGH:1::ReadWrite
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::ReadWrite
	GPIO26_LEVEL_HIGH:1::ReadWrite
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::ReadWrite
	GPIO27_LEVEL_HIGH:1::ReadWrite
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::ReadWrite
	GPIO28_LEVEL_HIGH:1::ReadWrite
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::ReadWrite
	GPIO29_LEVEL_HIGH:1::ReadWrite
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC0_INTE3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register PROC0_INTE3

"""
    PROC0_INTF0

Interrupt Force for proc0
"""
module PROC0_INTF0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000110
@regdef struct PROC0_INTF0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::ReadWrite
	GPIO0_LEVEL_HIGH:1::ReadWrite
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::ReadWrite
	GPIO1_LEVEL_HIGH:1::ReadWrite
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::ReadWrite
	GPIO2_LEVEL_HIGH:1::ReadWrite
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::ReadWrite
	GPIO3_LEVEL_HIGH:1::ReadWrite
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::ReadWrite
	GPIO4_LEVEL_HIGH:1::ReadWrite
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::ReadWrite
	GPIO5_LEVEL_HIGH:1::ReadWrite
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::ReadWrite
	GPIO6_LEVEL_HIGH:1::ReadWrite
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::ReadWrite
	GPIO7_LEVEL_HIGH:1::ReadWrite
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC0_INTF0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register PROC0_INTF0

"""
    PROC0_INTF1

Interrupt Force for proc0
"""
module PROC0_INTF1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000114
@regdef struct PROC0_INTF1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::ReadWrite
	GPIO8_LEVEL_HIGH:1::ReadWrite
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::ReadWrite
	GPIO9_LEVEL_HIGH:1::ReadWrite
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::ReadWrite
	GPIO10_LEVEL_HIGH:1::ReadWrite
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::ReadWrite
	GPIO11_LEVEL_HIGH:1::ReadWrite
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::ReadWrite
	GPIO12_LEVEL_HIGH:1::ReadWrite
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::ReadWrite
	GPIO13_LEVEL_HIGH:1::ReadWrite
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::ReadWrite
	GPIO14_LEVEL_HIGH:1::ReadWrite
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::ReadWrite
	GPIO15_LEVEL_HIGH:1::ReadWrite
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC0_INTF1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register PROC0_INTF1

"""
    PROC0_INTF2

Interrupt Force for proc0
"""
module PROC0_INTF2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000118
@regdef struct PROC0_INTF2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::ReadWrite
	GPIO16_LEVEL_HIGH:1::ReadWrite
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::ReadWrite
	GPIO17_LEVEL_HIGH:1::ReadWrite
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::ReadWrite
	GPIO18_LEVEL_HIGH:1::ReadWrite
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::ReadWrite
	GPIO19_LEVEL_HIGH:1::ReadWrite
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::ReadWrite
	GPIO20_LEVEL_HIGH:1::ReadWrite
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::ReadWrite
	GPIO21_LEVEL_HIGH:1::ReadWrite
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::ReadWrite
	GPIO22_LEVEL_HIGH:1::ReadWrite
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::ReadWrite
	GPIO23_LEVEL_HIGH:1::ReadWrite
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC0_INTF2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register PROC0_INTF2

"""
    PROC0_INTF3

Interrupt Force for proc0
"""
module PROC0_INTF3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000011c
@regdef struct PROC0_INTF3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::ReadWrite
	GPIO24_LEVEL_HIGH:1::ReadWrite
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::ReadWrite
	GPIO25_LEVEL_HIGH:1::ReadWrite
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::ReadWrite
	GPIO26_LEVEL_HIGH:1::ReadWrite
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::ReadWrite
	GPIO27_LEVEL_HIGH:1::ReadWrite
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::ReadWrite
	GPIO28_LEVEL_HIGH:1::ReadWrite
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::ReadWrite
	GPIO29_LEVEL_HIGH:1::ReadWrite
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC0_INTF3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register PROC0_INTF3

"""
    PROC0_INTS0

Interrupt status after masking &amp; forcing for proc0
"""
module PROC0_INTS0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000120
@regdef struct PROC0_INTS0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::Read
	GPIO0_LEVEL_HIGH:1::Read
	GPIO0_EDGE_LOW:1::Read
	GPIO0_EDGE_HIGH:1::Read
	GPIO1_LEVEL_LOW:1::Read
	GPIO1_LEVEL_HIGH:1::Read
	GPIO1_EDGE_LOW:1::Read
	GPIO1_EDGE_HIGH:1::Read
	GPIO2_LEVEL_LOW:1::Read
	GPIO2_LEVEL_HIGH:1::Read
	GPIO2_EDGE_LOW:1::Read
	GPIO2_EDGE_HIGH:1::Read
	GPIO3_LEVEL_LOW:1::Read
	GPIO3_LEVEL_HIGH:1::Read
	GPIO3_EDGE_LOW:1::Read
	GPIO3_EDGE_HIGH:1::Read
	GPIO4_LEVEL_LOW:1::Read
	GPIO4_LEVEL_HIGH:1::Read
	GPIO4_EDGE_LOW:1::Read
	GPIO4_EDGE_HIGH:1::Read
	GPIO5_LEVEL_LOW:1::Read
	GPIO5_LEVEL_HIGH:1::Read
	GPIO5_EDGE_LOW:1::Read
	GPIO5_EDGE_HIGH:1::Read
	GPIO6_LEVEL_LOW:1::Read
	GPIO6_LEVEL_HIGH:1::Read
	GPIO6_EDGE_LOW:1::Read
	GPIO6_EDGE_HIGH:1::Read
	GPIO7_LEVEL_LOW:1::Read
	GPIO7_LEVEL_HIGH:1::Read
	GPIO7_EDGE_LOW:1::Read
	GPIO7_EDGE_HIGH:1::Read
end
const Reg = PROC0_INTS0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register PROC0_INTS0

"""
    PROC0_INTS1

Interrupt status after masking &amp; forcing for proc0
"""
module PROC0_INTS1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000124
@regdef struct PROC0_INTS1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::Read
	GPIO8_LEVEL_HIGH:1::Read
	GPIO8_EDGE_LOW:1::Read
	GPIO8_EDGE_HIGH:1::Read
	GPIO9_LEVEL_LOW:1::Read
	GPIO9_LEVEL_HIGH:1::Read
	GPIO9_EDGE_LOW:1::Read
	GPIO9_EDGE_HIGH:1::Read
	GPIO10_LEVEL_LOW:1::Read
	GPIO10_LEVEL_HIGH:1::Read
	GPIO10_EDGE_LOW:1::Read
	GPIO10_EDGE_HIGH:1::Read
	GPIO11_LEVEL_LOW:1::Read
	GPIO11_LEVEL_HIGH:1::Read
	GPIO11_EDGE_LOW:1::Read
	GPIO11_EDGE_HIGH:1::Read
	GPIO12_LEVEL_LOW:1::Read
	GPIO12_LEVEL_HIGH:1::Read
	GPIO12_EDGE_LOW:1::Read
	GPIO12_EDGE_HIGH:1::Read
	GPIO13_LEVEL_LOW:1::Read
	GPIO13_LEVEL_HIGH:1::Read
	GPIO13_EDGE_LOW:1::Read
	GPIO13_EDGE_HIGH:1::Read
	GPIO14_LEVEL_LOW:1::Read
	GPIO14_LEVEL_HIGH:1::Read
	GPIO14_EDGE_LOW:1::Read
	GPIO14_EDGE_HIGH:1::Read
	GPIO15_LEVEL_LOW:1::Read
	GPIO15_LEVEL_HIGH:1::Read
	GPIO15_EDGE_LOW:1::Read
	GPIO15_EDGE_HIGH:1::Read
end
const Reg = PROC0_INTS1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register PROC0_INTS1

"""
    PROC0_INTS2

Interrupt status after masking &amp; forcing for proc0
"""
module PROC0_INTS2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000128
@regdef struct PROC0_INTS2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::Read
	GPIO16_LEVEL_HIGH:1::Read
	GPIO16_EDGE_LOW:1::Read
	GPIO16_EDGE_HIGH:1::Read
	GPIO17_LEVEL_LOW:1::Read
	GPIO17_LEVEL_HIGH:1::Read
	GPIO17_EDGE_LOW:1::Read
	GPIO17_EDGE_HIGH:1::Read
	GPIO18_LEVEL_LOW:1::Read
	GPIO18_LEVEL_HIGH:1::Read
	GPIO18_EDGE_LOW:1::Read
	GPIO18_EDGE_HIGH:1::Read
	GPIO19_LEVEL_LOW:1::Read
	GPIO19_LEVEL_HIGH:1::Read
	GPIO19_EDGE_LOW:1::Read
	GPIO19_EDGE_HIGH:1::Read
	GPIO20_LEVEL_LOW:1::Read
	GPIO20_LEVEL_HIGH:1::Read
	GPIO20_EDGE_LOW:1::Read
	GPIO20_EDGE_HIGH:1::Read
	GPIO21_LEVEL_LOW:1::Read
	GPIO21_LEVEL_HIGH:1::Read
	GPIO21_EDGE_LOW:1::Read
	GPIO21_EDGE_HIGH:1::Read
	GPIO22_LEVEL_LOW:1::Read
	GPIO22_LEVEL_HIGH:1::Read
	GPIO22_EDGE_LOW:1::Read
	GPIO22_EDGE_HIGH:1::Read
	GPIO23_LEVEL_LOW:1::Read
	GPIO23_LEVEL_HIGH:1::Read
	GPIO23_EDGE_LOW:1::Read
	GPIO23_EDGE_HIGH:1::Read
end
const Reg = PROC0_INTS2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register PROC0_INTS2

"""
    PROC0_INTS3

Interrupt status after masking &amp; forcing for proc0
"""
module PROC0_INTS3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000012c
@regdef struct PROC0_INTS3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::Read
	GPIO24_LEVEL_HIGH:1::Read
	GPIO24_EDGE_LOW:1::Read
	GPIO24_EDGE_HIGH:1::Read
	GPIO25_LEVEL_LOW:1::Read
	GPIO25_LEVEL_HIGH:1::Read
	GPIO25_EDGE_LOW:1::Read
	GPIO25_EDGE_HIGH:1::Read
	GPIO26_LEVEL_LOW:1::Read
	GPIO26_LEVEL_HIGH:1::Read
	GPIO26_EDGE_LOW:1::Read
	GPIO26_EDGE_HIGH:1::Read
	GPIO27_LEVEL_LOW:1::Read
	GPIO27_LEVEL_HIGH:1::Read
	GPIO27_EDGE_LOW:1::Read
	GPIO27_EDGE_HIGH:1::Read
	GPIO28_LEVEL_LOW:1::Read
	GPIO28_LEVEL_HIGH:1::Read
	GPIO28_EDGE_LOW:1::Read
	GPIO28_EDGE_HIGH:1::Read
	GPIO29_LEVEL_LOW:1::Read
	GPIO29_LEVEL_HIGH:1::Read
	GPIO29_EDGE_LOW:1::Read
	GPIO29_EDGE_HIGH:1::Read
	_:8
end
const Reg = PROC0_INTS3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register PROC0_INTS3

"""
    PROC1_INTE0

Interrupt Enable for proc1
"""
module PROC1_INTE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000130
@regdef struct PROC1_INTE0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::ReadWrite
	GPIO0_LEVEL_HIGH:1::ReadWrite
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::ReadWrite
	GPIO1_LEVEL_HIGH:1::ReadWrite
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::ReadWrite
	GPIO2_LEVEL_HIGH:1::ReadWrite
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::ReadWrite
	GPIO3_LEVEL_HIGH:1::ReadWrite
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::ReadWrite
	GPIO4_LEVEL_HIGH:1::ReadWrite
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::ReadWrite
	GPIO5_LEVEL_HIGH:1::ReadWrite
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::ReadWrite
	GPIO6_LEVEL_HIGH:1::ReadWrite
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::ReadWrite
	GPIO7_LEVEL_HIGH:1::ReadWrite
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC1_INTE0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register PROC1_INTE0

"""
    PROC1_INTE1

Interrupt Enable for proc1
"""
module PROC1_INTE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000134
@regdef struct PROC1_INTE1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::ReadWrite
	GPIO8_LEVEL_HIGH:1::ReadWrite
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::ReadWrite
	GPIO9_LEVEL_HIGH:1::ReadWrite
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::ReadWrite
	GPIO10_LEVEL_HIGH:1::ReadWrite
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::ReadWrite
	GPIO11_LEVEL_HIGH:1::ReadWrite
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::ReadWrite
	GPIO12_LEVEL_HIGH:1::ReadWrite
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::ReadWrite
	GPIO13_LEVEL_HIGH:1::ReadWrite
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::ReadWrite
	GPIO14_LEVEL_HIGH:1::ReadWrite
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::ReadWrite
	GPIO15_LEVEL_HIGH:1::ReadWrite
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC1_INTE1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register PROC1_INTE1

"""
    PROC1_INTE2

Interrupt Enable for proc1
"""
module PROC1_INTE2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000138
@regdef struct PROC1_INTE2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::ReadWrite
	GPIO16_LEVEL_HIGH:1::ReadWrite
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::ReadWrite
	GPIO17_LEVEL_HIGH:1::ReadWrite
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::ReadWrite
	GPIO18_LEVEL_HIGH:1::ReadWrite
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::ReadWrite
	GPIO19_LEVEL_HIGH:1::ReadWrite
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::ReadWrite
	GPIO20_LEVEL_HIGH:1::ReadWrite
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::ReadWrite
	GPIO21_LEVEL_HIGH:1::ReadWrite
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::ReadWrite
	GPIO22_LEVEL_HIGH:1::ReadWrite
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::ReadWrite
	GPIO23_LEVEL_HIGH:1::ReadWrite
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC1_INTE2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register PROC1_INTE2

"""
    PROC1_INTE3

Interrupt Enable for proc1
"""
module PROC1_INTE3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000013c
@regdef struct PROC1_INTE3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::ReadWrite
	GPIO24_LEVEL_HIGH:1::ReadWrite
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::ReadWrite
	GPIO25_LEVEL_HIGH:1::ReadWrite
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::ReadWrite
	GPIO26_LEVEL_HIGH:1::ReadWrite
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::ReadWrite
	GPIO27_LEVEL_HIGH:1::ReadWrite
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::ReadWrite
	GPIO28_LEVEL_HIGH:1::ReadWrite
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::ReadWrite
	GPIO29_LEVEL_HIGH:1::ReadWrite
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC1_INTE3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register PROC1_INTE3

"""
    PROC1_INTF0

Interrupt Force for proc1
"""
module PROC1_INTF0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000140
@regdef struct PROC1_INTF0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::ReadWrite
	GPIO0_LEVEL_HIGH:1::ReadWrite
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::ReadWrite
	GPIO1_LEVEL_HIGH:1::ReadWrite
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::ReadWrite
	GPIO2_LEVEL_HIGH:1::ReadWrite
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::ReadWrite
	GPIO3_LEVEL_HIGH:1::ReadWrite
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::ReadWrite
	GPIO4_LEVEL_HIGH:1::ReadWrite
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::ReadWrite
	GPIO5_LEVEL_HIGH:1::ReadWrite
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::ReadWrite
	GPIO6_LEVEL_HIGH:1::ReadWrite
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::ReadWrite
	GPIO7_LEVEL_HIGH:1::ReadWrite
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC1_INTF0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register PROC1_INTF0

"""
    PROC1_INTF1

Interrupt Force for proc1
"""
module PROC1_INTF1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000144
@regdef struct PROC1_INTF1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::ReadWrite
	GPIO8_LEVEL_HIGH:1::ReadWrite
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::ReadWrite
	GPIO9_LEVEL_HIGH:1::ReadWrite
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::ReadWrite
	GPIO10_LEVEL_HIGH:1::ReadWrite
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::ReadWrite
	GPIO11_LEVEL_HIGH:1::ReadWrite
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::ReadWrite
	GPIO12_LEVEL_HIGH:1::ReadWrite
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::ReadWrite
	GPIO13_LEVEL_HIGH:1::ReadWrite
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::ReadWrite
	GPIO14_LEVEL_HIGH:1::ReadWrite
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::ReadWrite
	GPIO15_LEVEL_HIGH:1::ReadWrite
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC1_INTF1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register PROC1_INTF1

"""
    PROC1_INTF2

Interrupt Force for proc1
"""
module PROC1_INTF2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000148
@regdef struct PROC1_INTF2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::ReadWrite
	GPIO16_LEVEL_HIGH:1::ReadWrite
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::ReadWrite
	GPIO17_LEVEL_HIGH:1::ReadWrite
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::ReadWrite
	GPIO18_LEVEL_HIGH:1::ReadWrite
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::ReadWrite
	GPIO19_LEVEL_HIGH:1::ReadWrite
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::ReadWrite
	GPIO20_LEVEL_HIGH:1::ReadWrite
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::ReadWrite
	GPIO21_LEVEL_HIGH:1::ReadWrite
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::ReadWrite
	GPIO22_LEVEL_HIGH:1::ReadWrite
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::ReadWrite
	GPIO23_LEVEL_HIGH:1::ReadWrite
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = PROC1_INTF2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register PROC1_INTF2

"""
    PROC1_INTF3

Interrupt Force for proc1
"""
module PROC1_INTF3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000014c
@regdef struct PROC1_INTF3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::ReadWrite
	GPIO24_LEVEL_HIGH:1::ReadWrite
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::ReadWrite
	GPIO25_LEVEL_HIGH:1::ReadWrite
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::ReadWrite
	GPIO26_LEVEL_HIGH:1::ReadWrite
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::ReadWrite
	GPIO27_LEVEL_HIGH:1::ReadWrite
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::ReadWrite
	GPIO28_LEVEL_HIGH:1::ReadWrite
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::ReadWrite
	GPIO29_LEVEL_HIGH:1::ReadWrite
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC1_INTF3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register PROC1_INTF3

"""
    PROC1_INTS0

Interrupt status after masking &amp; forcing for proc1
"""
module PROC1_INTS0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000150
@regdef struct PROC1_INTS0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::Read
	GPIO0_LEVEL_HIGH:1::Read
	GPIO0_EDGE_LOW:1::Read
	GPIO0_EDGE_HIGH:1::Read
	GPIO1_LEVEL_LOW:1::Read
	GPIO1_LEVEL_HIGH:1::Read
	GPIO1_EDGE_LOW:1::Read
	GPIO1_EDGE_HIGH:1::Read
	GPIO2_LEVEL_LOW:1::Read
	GPIO2_LEVEL_HIGH:1::Read
	GPIO2_EDGE_LOW:1::Read
	GPIO2_EDGE_HIGH:1::Read
	GPIO3_LEVEL_LOW:1::Read
	GPIO3_LEVEL_HIGH:1::Read
	GPIO3_EDGE_LOW:1::Read
	GPIO3_EDGE_HIGH:1::Read
	GPIO4_LEVEL_LOW:1::Read
	GPIO4_LEVEL_HIGH:1::Read
	GPIO4_EDGE_LOW:1::Read
	GPIO4_EDGE_HIGH:1::Read
	GPIO5_LEVEL_LOW:1::Read
	GPIO5_LEVEL_HIGH:1::Read
	GPIO5_EDGE_LOW:1::Read
	GPIO5_EDGE_HIGH:1::Read
	GPIO6_LEVEL_LOW:1::Read
	GPIO6_LEVEL_HIGH:1::Read
	GPIO6_EDGE_LOW:1::Read
	GPIO6_EDGE_HIGH:1::Read
	GPIO7_LEVEL_LOW:1::Read
	GPIO7_LEVEL_HIGH:1::Read
	GPIO7_EDGE_LOW:1::Read
	GPIO7_EDGE_HIGH:1::Read
end
const Reg = PROC1_INTS0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register PROC1_INTS0

"""
    PROC1_INTS1

Interrupt status after masking &amp; forcing for proc1
"""
module PROC1_INTS1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000154
@regdef struct PROC1_INTS1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::Read
	GPIO8_LEVEL_HIGH:1::Read
	GPIO8_EDGE_LOW:1::Read
	GPIO8_EDGE_HIGH:1::Read
	GPIO9_LEVEL_LOW:1::Read
	GPIO9_LEVEL_HIGH:1::Read
	GPIO9_EDGE_LOW:1::Read
	GPIO9_EDGE_HIGH:1::Read
	GPIO10_LEVEL_LOW:1::Read
	GPIO10_LEVEL_HIGH:1::Read
	GPIO10_EDGE_LOW:1::Read
	GPIO10_EDGE_HIGH:1::Read
	GPIO11_LEVEL_LOW:1::Read
	GPIO11_LEVEL_HIGH:1::Read
	GPIO11_EDGE_LOW:1::Read
	GPIO11_EDGE_HIGH:1::Read
	GPIO12_LEVEL_LOW:1::Read
	GPIO12_LEVEL_HIGH:1::Read
	GPIO12_EDGE_LOW:1::Read
	GPIO12_EDGE_HIGH:1::Read
	GPIO13_LEVEL_LOW:1::Read
	GPIO13_LEVEL_HIGH:1::Read
	GPIO13_EDGE_LOW:1::Read
	GPIO13_EDGE_HIGH:1::Read
	GPIO14_LEVEL_LOW:1::Read
	GPIO14_LEVEL_HIGH:1::Read
	GPIO14_EDGE_LOW:1::Read
	GPIO14_EDGE_HIGH:1::Read
	GPIO15_LEVEL_LOW:1::Read
	GPIO15_LEVEL_HIGH:1::Read
	GPIO15_EDGE_LOW:1::Read
	GPIO15_EDGE_HIGH:1::Read
end
const Reg = PROC1_INTS1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register PROC1_INTS1

"""
    PROC1_INTS2

Interrupt status after masking &amp; forcing for proc1
"""
module PROC1_INTS2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000158
@regdef struct PROC1_INTS2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::Read
	GPIO16_LEVEL_HIGH:1::Read
	GPIO16_EDGE_LOW:1::Read
	GPIO16_EDGE_HIGH:1::Read
	GPIO17_LEVEL_LOW:1::Read
	GPIO17_LEVEL_HIGH:1::Read
	GPIO17_EDGE_LOW:1::Read
	GPIO17_EDGE_HIGH:1::Read
	GPIO18_LEVEL_LOW:1::Read
	GPIO18_LEVEL_HIGH:1::Read
	GPIO18_EDGE_LOW:1::Read
	GPIO18_EDGE_HIGH:1::Read
	GPIO19_LEVEL_LOW:1::Read
	GPIO19_LEVEL_HIGH:1::Read
	GPIO19_EDGE_LOW:1::Read
	GPIO19_EDGE_HIGH:1::Read
	GPIO20_LEVEL_LOW:1::Read
	GPIO20_LEVEL_HIGH:1::Read
	GPIO20_EDGE_LOW:1::Read
	GPIO20_EDGE_HIGH:1::Read
	GPIO21_LEVEL_LOW:1::Read
	GPIO21_LEVEL_HIGH:1::Read
	GPIO21_EDGE_LOW:1::Read
	GPIO21_EDGE_HIGH:1::Read
	GPIO22_LEVEL_LOW:1::Read
	GPIO22_LEVEL_HIGH:1::Read
	GPIO22_EDGE_LOW:1::Read
	GPIO22_EDGE_HIGH:1::Read
	GPIO23_LEVEL_LOW:1::Read
	GPIO23_LEVEL_HIGH:1::Read
	GPIO23_EDGE_LOW:1::Read
	GPIO23_EDGE_HIGH:1::Read
end
const Reg = PROC1_INTS2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register PROC1_INTS2

"""
    PROC1_INTS3

Interrupt status after masking &amp; forcing for proc1
"""
module PROC1_INTS3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000015c
@regdef struct PROC1_INTS3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::Read
	GPIO24_LEVEL_HIGH:1::Read
	GPIO24_EDGE_LOW:1::Read
	GPIO24_EDGE_HIGH:1::Read
	GPIO25_LEVEL_LOW:1::Read
	GPIO25_LEVEL_HIGH:1::Read
	GPIO25_EDGE_LOW:1::Read
	GPIO25_EDGE_HIGH:1::Read
	GPIO26_LEVEL_LOW:1::Read
	GPIO26_LEVEL_HIGH:1::Read
	GPIO26_EDGE_LOW:1::Read
	GPIO26_EDGE_HIGH:1::Read
	GPIO27_LEVEL_LOW:1::Read
	GPIO27_LEVEL_HIGH:1::Read
	GPIO27_EDGE_LOW:1::Read
	GPIO27_EDGE_HIGH:1::Read
	GPIO28_LEVEL_LOW:1::Read
	GPIO28_LEVEL_HIGH:1::Read
	GPIO28_EDGE_LOW:1::Read
	GPIO28_EDGE_HIGH:1::Read
	GPIO29_LEVEL_LOW:1::Read
	GPIO29_LEVEL_HIGH:1::Read
	GPIO29_EDGE_LOW:1::Read
	GPIO29_EDGE_HIGH:1::Read
	_:8
end
const Reg = PROC1_INTS3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register PROC1_INTS3

"""
    DORMANT_WAKE_INTE0

Interrupt Enable for dormant\\_wake
"""
module DORMANT_WAKE_INTE0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000160
@regdef struct DORMANT_WAKE_INTE0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::ReadWrite
	GPIO0_LEVEL_HIGH:1::ReadWrite
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::ReadWrite
	GPIO1_LEVEL_HIGH:1::ReadWrite
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::ReadWrite
	GPIO2_LEVEL_HIGH:1::ReadWrite
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::ReadWrite
	GPIO3_LEVEL_HIGH:1::ReadWrite
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::ReadWrite
	GPIO4_LEVEL_HIGH:1::ReadWrite
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::ReadWrite
	GPIO5_LEVEL_HIGH:1::ReadWrite
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::ReadWrite
	GPIO6_LEVEL_HIGH:1::ReadWrite
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::ReadWrite
	GPIO7_LEVEL_HIGH:1::ReadWrite
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = DORMANT_WAKE_INTE0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register DORMANT_WAKE_INTE0

"""
    DORMANT_WAKE_INTE1

Interrupt Enable for dormant\\_wake
"""
module DORMANT_WAKE_INTE1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000164
@regdef struct DORMANT_WAKE_INTE1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::ReadWrite
	GPIO8_LEVEL_HIGH:1::ReadWrite
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::ReadWrite
	GPIO9_LEVEL_HIGH:1::ReadWrite
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::ReadWrite
	GPIO10_LEVEL_HIGH:1::ReadWrite
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::ReadWrite
	GPIO11_LEVEL_HIGH:1::ReadWrite
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::ReadWrite
	GPIO12_LEVEL_HIGH:1::ReadWrite
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::ReadWrite
	GPIO13_LEVEL_HIGH:1::ReadWrite
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::ReadWrite
	GPIO14_LEVEL_HIGH:1::ReadWrite
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::ReadWrite
	GPIO15_LEVEL_HIGH:1::ReadWrite
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = DORMANT_WAKE_INTE1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register DORMANT_WAKE_INTE1

"""
    DORMANT_WAKE_INTE2

Interrupt Enable for dormant\\_wake
"""
module DORMANT_WAKE_INTE2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000168
@regdef struct DORMANT_WAKE_INTE2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::ReadWrite
	GPIO16_LEVEL_HIGH:1::ReadWrite
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::ReadWrite
	GPIO17_LEVEL_HIGH:1::ReadWrite
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::ReadWrite
	GPIO18_LEVEL_HIGH:1::ReadWrite
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::ReadWrite
	GPIO19_LEVEL_HIGH:1::ReadWrite
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::ReadWrite
	GPIO20_LEVEL_HIGH:1::ReadWrite
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::ReadWrite
	GPIO21_LEVEL_HIGH:1::ReadWrite
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::ReadWrite
	GPIO22_LEVEL_HIGH:1::ReadWrite
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::ReadWrite
	GPIO23_LEVEL_HIGH:1::ReadWrite
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = DORMANT_WAKE_INTE2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register DORMANT_WAKE_INTE2

"""
    DORMANT_WAKE_INTE3

Interrupt Enable for dormant\\_wake
"""
module DORMANT_WAKE_INTE3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000016c
@regdef struct DORMANT_WAKE_INTE3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::ReadWrite
	GPIO24_LEVEL_HIGH:1::ReadWrite
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::ReadWrite
	GPIO25_LEVEL_HIGH:1::ReadWrite
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::ReadWrite
	GPIO26_LEVEL_HIGH:1::ReadWrite
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::ReadWrite
	GPIO27_LEVEL_HIGH:1::ReadWrite
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::ReadWrite
	GPIO28_LEVEL_HIGH:1::ReadWrite
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::ReadWrite
	GPIO29_LEVEL_HIGH:1::ReadWrite
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = DORMANT_WAKE_INTE3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register DORMANT_WAKE_INTE3

"""
    DORMANT_WAKE_INTF0

Interrupt Force for dormant\\_wake
"""
module DORMANT_WAKE_INTF0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000170
@regdef struct DORMANT_WAKE_INTF0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::ReadWrite
	GPIO0_LEVEL_HIGH:1::ReadWrite
	GPIO0_EDGE_LOW:1::ReadWrite
	GPIO0_EDGE_HIGH:1::ReadWrite
	GPIO1_LEVEL_LOW:1::ReadWrite
	GPIO1_LEVEL_HIGH:1::ReadWrite
	GPIO1_EDGE_LOW:1::ReadWrite
	GPIO1_EDGE_HIGH:1::ReadWrite
	GPIO2_LEVEL_LOW:1::ReadWrite
	GPIO2_LEVEL_HIGH:1::ReadWrite
	GPIO2_EDGE_LOW:1::ReadWrite
	GPIO2_EDGE_HIGH:1::ReadWrite
	GPIO3_LEVEL_LOW:1::ReadWrite
	GPIO3_LEVEL_HIGH:1::ReadWrite
	GPIO3_EDGE_LOW:1::ReadWrite
	GPIO3_EDGE_HIGH:1::ReadWrite
	GPIO4_LEVEL_LOW:1::ReadWrite
	GPIO4_LEVEL_HIGH:1::ReadWrite
	GPIO4_EDGE_LOW:1::ReadWrite
	GPIO4_EDGE_HIGH:1::ReadWrite
	GPIO5_LEVEL_LOW:1::ReadWrite
	GPIO5_LEVEL_HIGH:1::ReadWrite
	GPIO5_EDGE_LOW:1::ReadWrite
	GPIO5_EDGE_HIGH:1::ReadWrite
	GPIO6_LEVEL_LOW:1::ReadWrite
	GPIO6_LEVEL_HIGH:1::ReadWrite
	GPIO6_EDGE_LOW:1::ReadWrite
	GPIO6_EDGE_HIGH:1::ReadWrite
	GPIO7_LEVEL_LOW:1::ReadWrite
	GPIO7_LEVEL_HIGH:1::ReadWrite
	GPIO7_EDGE_LOW:1::ReadWrite
	GPIO7_EDGE_HIGH:1::ReadWrite
end
const Reg = DORMANT_WAKE_INTF0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register DORMANT_WAKE_INTF0

"""
    DORMANT_WAKE_INTF1

Interrupt Force for dormant\\_wake
"""
module DORMANT_WAKE_INTF1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000174
@regdef struct DORMANT_WAKE_INTF1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::ReadWrite
	GPIO8_LEVEL_HIGH:1::ReadWrite
	GPIO8_EDGE_LOW:1::ReadWrite
	GPIO8_EDGE_HIGH:1::ReadWrite
	GPIO9_LEVEL_LOW:1::ReadWrite
	GPIO9_LEVEL_HIGH:1::ReadWrite
	GPIO9_EDGE_LOW:1::ReadWrite
	GPIO9_EDGE_HIGH:1::ReadWrite
	GPIO10_LEVEL_LOW:1::ReadWrite
	GPIO10_LEVEL_HIGH:1::ReadWrite
	GPIO10_EDGE_LOW:1::ReadWrite
	GPIO10_EDGE_HIGH:1::ReadWrite
	GPIO11_LEVEL_LOW:1::ReadWrite
	GPIO11_LEVEL_HIGH:1::ReadWrite
	GPIO11_EDGE_LOW:1::ReadWrite
	GPIO11_EDGE_HIGH:1::ReadWrite
	GPIO12_LEVEL_LOW:1::ReadWrite
	GPIO12_LEVEL_HIGH:1::ReadWrite
	GPIO12_EDGE_LOW:1::ReadWrite
	GPIO12_EDGE_HIGH:1::ReadWrite
	GPIO13_LEVEL_LOW:1::ReadWrite
	GPIO13_LEVEL_HIGH:1::ReadWrite
	GPIO13_EDGE_LOW:1::ReadWrite
	GPIO13_EDGE_HIGH:1::ReadWrite
	GPIO14_LEVEL_LOW:1::ReadWrite
	GPIO14_LEVEL_HIGH:1::ReadWrite
	GPIO14_EDGE_LOW:1::ReadWrite
	GPIO14_EDGE_HIGH:1::ReadWrite
	GPIO15_LEVEL_LOW:1::ReadWrite
	GPIO15_LEVEL_HIGH:1::ReadWrite
	GPIO15_EDGE_LOW:1::ReadWrite
	GPIO15_EDGE_HIGH:1::ReadWrite
end
const Reg = DORMANT_WAKE_INTF1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register DORMANT_WAKE_INTF1

"""
    DORMANT_WAKE_INTF2

Interrupt Force for dormant\\_wake
"""
module DORMANT_WAKE_INTF2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000178
@regdef struct DORMANT_WAKE_INTF2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::ReadWrite
	GPIO16_LEVEL_HIGH:1::ReadWrite
	GPIO16_EDGE_LOW:1::ReadWrite
	GPIO16_EDGE_HIGH:1::ReadWrite
	GPIO17_LEVEL_LOW:1::ReadWrite
	GPIO17_LEVEL_HIGH:1::ReadWrite
	GPIO17_EDGE_LOW:1::ReadWrite
	GPIO17_EDGE_HIGH:1::ReadWrite
	GPIO18_LEVEL_LOW:1::ReadWrite
	GPIO18_LEVEL_HIGH:1::ReadWrite
	GPIO18_EDGE_LOW:1::ReadWrite
	GPIO18_EDGE_HIGH:1::ReadWrite
	GPIO19_LEVEL_LOW:1::ReadWrite
	GPIO19_LEVEL_HIGH:1::ReadWrite
	GPIO19_EDGE_LOW:1::ReadWrite
	GPIO19_EDGE_HIGH:1::ReadWrite
	GPIO20_LEVEL_LOW:1::ReadWrite
	GPIO20_LEVEL_HIGH:1::ReadWrite
	GPIO20_EDGE_LOW:1::ReadWrite
	GPIO20_EDGE_HIGH:1::ReadWrite
	GPIO21_LEVEL_LOW:1::ReadWrite
	GPIO21_LEVEL_HIGH:1::ReadWrite
	GPIO21_EDGE_LOW:1::ReadWrite
	GPIO21_EDGE_HIGH:1::ReadWrite
	GPIO22_LEVEL_LOW:1::ReadWrite
	GPIO22_LEVEL_HIGH:1::ReadWrite
	GPIO22_EDGE_LOW:1::ReadWrite
	GPIO22_EDGE_HIGH:1::ReadWrite
	GPIO23_LEVEL_LOW:1::ReadWrite
	GPIO23_LEVEL_HIGH:1::ReadWrite
	GPIO23_EDGE_LOW:1::ReadWrite
	GPIO23_EDGE_HIGH:1::ReadWrite
end
const Reg = DORMANT_WAKE_INTF2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register DORMANT_WAKE_INTF2

"""
    DORMANT_WAKE_INTF3

Interrupt Force for dormant\\_wake
"""
module DORMANT_WAKE_INTF3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000017c
@regdef struct DORMANT_WAKE_INTF3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::ReadWrite
	GPIO24_LEVEL_HIGH:1::ReadWrite
	GPIO24_EDGE_LOW:1::ReadWrite
	GPIO24_EDGE_HIGH:1::ReadWrite
	GPIO25_LEVEL_LOW:1::ReadWrite
	GPIO25_LEVEL_HIGH:1::ReadWrite
	GPIO25_EDGE_LOW:1::ReadWrite
	GPIO25_EDGE_HIGH:1::ReadWrite
	GPIO26_LEVEL_LOW:1::ReadWrite
	GPIO26_LEVEL_HIGH:1::ReadWrite
	GPIO26_EDGE_LOW:1::ReadWrite
	GPIO26_EDGE_HIGH:1::ReadWrite
	GPIO27_LEVEL_LOW:1::ReadWrite
	GPIO27_LEVEL_HIGH:1::ReadWrite
	GPIO27_EDGE_LOW:1::ReadWrite
	GPIO27_EDGE_HIGH:1::ReadWrite
	GPIO28_LEVEL_LOW:1::ReadWrite
	GPIO28_LEVEL_HIGH:1::ReadWrite
	GPIO28_EDGE_LOW:1::ReadWrite
	GPIO28_EDGE_HIGH:1::ReadWrite
	GPIO29_LEVEL_LOW:1::ReadWrite
	GPIO29_LEVEL_HIGH:1::ReadWrite
	GPIO29_EDGE_LOW:1::ReadWrite
	GPIO29_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = DORMANT_WAKE_INTF3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register DORMANT_WAKE_INTF3

"""
    DORMANT_WAKE_INTS0

Interrupt status after masking &amp; forcing for dormant\\_wake
"""
module DORMANT_WAKE_INTS0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000180
@regdef struct DORMANT_WAKE_INTS0Struct(regAddress)
	GPIO0_LEVEL_LOW:1::Read
	GPIO0_LEVEL_HIGH:1::Read
	GPIO0_EDGE_LOW:1::Read
	GPIO0_EDGE_HIGH:1::Read
	GPIO1_LEVEL_LOW:1::Read
	GPIO1_LEVEL_HIGH:1::Read
	GPIO1_EDGE_LOW:1::Read
	GPIO1_EDGE_HIGH:1::Read
	GPIO2_LEVEL_LOW:1::Read
	GPIO2_LEVEL_HIGH:1::Read
	GPIO2_EDGE_LOW:1::Read
	GPIO2_EDGE_HIGH:1::Read
	GPIO3_LEVEL_LOW:1::Read
	GPIO3_LEVEL_HIGH:1::Read
	GPIO3_EDGE_LOW:1::Read
	GPIO3_EDGE_HIGH:1::Read
	GPIO4_LEVEL_LOW:1::Read
	GPIO4_LEVEL_HIGH:1::Read
	GPIO4_EDGE_LOW:1::Read
	GPIO4_EDGE_HIGH:1::Read
	GPIO5_LEVEL_LOW:1::Read
	GPIO5_LEVEL_HIGH:1::Read
	GPIO5_EDGE_LOW:1::Read
	GPIO5_EDGE_HIGH:1::Read
	GPIO6_LEVEL_LOW:1::Read
	GPIO6_LEVEL_HIGH:1::Read
	GPIO6_EDGE_LOW:1::Read
	GPIO6_EDGE_HIGH:1::Read
	GPIO7_LEVEL_LOW:1::Read
	GPIO7_LEVEL_HIGH:1::Read
	GPIO7_EDGE_LOW:1::Read
	GPIO7_EDGE_HIGH:1::Read
end
const Reg = DORMANT_WAKE_INTS0Struct

"""
    GPIO0_LEVEL_LOW

Field has no description!
"""
GPIO0_LEVEL_LOW

"""
    GPIO0_LEVEL_HIGH

Field has no description!
"""
GPIO0_LEVEL_HIGH

"""
    GPIO0_EDGE_LOW

Field has no description!
"""
GPIO0_EDGE_LOW

"""
    GPIO0_EDGE_HIGH

Field has no description!
"""
GPIO0_EDGE_HIGH

"""
    GPIO1_LEVEL_LOW

Field has no description!
"""
GPIO1_LEVEL_LOW

"""
    GPIO1_LEVEL_HIGH

Field has no description!
"""
GPIO1_LEVEL_HIGH

"""
    GPIO1_EDGE_LOW

Field has no description!
"""
GPIO1_EDGE_LOW

"""
    GPIO1_EDGE_HIGH

Field has no description!
"""
GPIO1_EDGE_HIGH

"""
    GPIO2_LEVEL_LOW

Field has no description!
"""
GPIO2_LEVEL_LOW

"""
    GPIO2_LEVEL_HIGH

Field has no description!
"""
GPIO2_LEVEL_HIGH

"""
    GPIO2_EDGE_LOW

Field has no description!
"""
GPIO2_EDGE_LOW

"""
    GPIO2_EDGE_HIGH

Field has no description!
"""
GPIO2_EDGE_HIGH

"""
    GPIO3_LEVEL_LOW

Field has no description!
"""
GPIO3_LEVEL_LOW

"""
    GPIO3_LEVEL_HIGH

Field has no description!
"""
GPIO3_LEVEL_HIGH

"""
    GPIO3_EDGE_LOW

Field has no description!
"""
GPIO3_EDGE_LOW

"""
    GPIO3_EDGE_HIGH

Field has no description!
"""
GPIO3_EDGE_HIGH

"""
    GPIO4_LEVEL_LOW

Field has no description!
"""
GPIO4_LEVEL_LOW

"""
    GPIO4_LEVEL_HIGH

Field has no description!
"""
GPIO4_LEVEL_HIGH

"""
    GPIO4_EDGE_LOW

Field has no description!
"""
GPIO4_EDGE_LOW

"""
    GPIO4_EDGE_HIGH

Field has no description!
"""
GPIO4_EDGE_HIGH

"""
    GPIO5_LEVEL_LOW

Field has no description!
"""
GPIO5_LEVEL_LOW

"""
    GPIO5_LEVEL_HIGH

Field has no description!
"""
GPIO5_LEVEL_HIGH

"""
    GPIO5_EDGE_LOW

Field has no description!
"""
GPIO5_EDGE_LOW

"""
    GPIO5_EDGE_HIGH

Field has no description!
"""
GPIO5_EDGE_HIGH

"""
    GPIO6_LEVEL_LOW

Field has no description!
"""
GPIO6_LEVEL_LOW

"""
    GPIO6_LEVEL_HIGH

Field has no description!
"""
GPIO6_LEVEL_HIGH

"""
    GPIO6_EDGE_LOW

Field has no description!
"""
GPIO6_EDGE_LOW

"""
    GPIO6_EDGE_HIGH

Field has no description!
"""
GPIO6_EDGE_HIGH

"""
    GPIO7_LEVEL_LOW

Field has no description!
"""
GPIO7_LEVEL_LOW

"""
    GPIO7_LEVEL_HIGH

Field has no description!
"""
GPIO7_LEVEL_HIGH

"""
    GPIO7_EDGE_LOW

Field has no description!
"""
GPIO7_EDGE_LOW

"""
    GPIO7_EDGE_HIGH

Field has no description!
"""
GPIO7_EDGE_HIGH

end # register DORMANT_WAKE_INTS0

"""
    DORMANT_WAKE_INTS1

Interrupt status after masking &amp; forcing for dormant\\_wake
"""
module DORMANT_WAKE_INTS1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000184
@regdef struct DORMANT_WAKE_INTS1Struct(regAddress)
	GPIO8_LEVEL_LOW:1::Read
	GPIO8_LEVEL_HIGH:1::Read
	GPIO8_EDGE_LOW:1::Read
	GPIO8_EDGE_HIGH:1::Read
	GPIO9_LEVEL_LOW:1::Read
	GPIO9_LEVEL_HIGH:1::Read
	GPIO9_EDGE_LOW:1::Read
	GPIO9_EDGE_HIGH:1::Read
	GPIO10_LEVEL_LOW:1::Read
	GPIO10_LEVEL_HIGH:1::Read
	GPIO10_EDGE_LOW:1::Read
	GPIO10_EDGE_HIGH:1::Read
	GPIO11_LEVEL_LOW:1::Read
	GPIO11_LEVEL_HIGH:1::Read
	GPIO11_EDGE_LOW:1::Read
	GPIO11_EDGE_HIGH:1::Read
	GPIO12_LEVEL_LOW:1::Read
	GPIO12_LEVEL_HIGH:1::Read
	GPIO12_EDGE_LOW:1::Read
	GPIO12_EDGE_HIGH:1::Read
	GPIO13_LEVEL_LOW:1::Read
	GPIO13_LEVEL_HIGH:1::Read
	GPIO13_EDGE_LOW:1::Read
	GPIO13_EDGE_HIGH:1::Read
	GPIO14_LEVEL_LOW:1::Read
	GPIO14_LEVEL_HIGH:1::Read
	GPIO14_EDGE_LOW:1::Read
	GPIO14_EDGE_HIGH:1::Read
	GPIO15_LEVEL_LOW:1::Read
	GPIO15_LEVEL_HIGH:1::Read
	GPIO15_EDGE_LOW:1::Read
	GPIO15_EDGE_HIGH:1::Read
end
const Reg = DORMANT_WAKE_INTS1Struct

"""
    GPIO8_LEVEL_LOW

Field has no description!
"""
GPIO8_LEVEL_LOW

"""
    GPIO8_LEVEL_HIGH

Field has no description!
"""
GPIO8_LEVEL_HIGH

"""
    GPIO8_EDGE_LOW

Field has no description!
"""
GPIO8_EDGE_LOW

"""
    GPIO8_EDGE_HIGH

Field has no description!
"""
GPIO8_EDGE_HIGH

"""
    GPIO9_LEVEL_LOW

Field has no description!
"""
GPIO9_LEVEL_LOW

"""
    GPIO9_LEVEL_HIGH

Field has no description!
"""
GPIO9_LEVEL_HIGH

"""
    GPIO9_EDGE_LOW

Field has no description!
"""
GPIO9_EDGE_LOW

"""
    GPIO9_EDGE_HIGH

Field has no description!
"""
GPIO9_EDGE_HIGH

"""
    GPIO10_LEVEL_LOW

Field has no description!
"""
GPIO10_LEVEL_LOW

"""
    GPIO10_LEVEL_HIGH

Field has no description!
"""
GPIO10_LEVEL_HIGH

"""
    GPIO10_EDGE_LOW

Field has no description!
"""
GPIO10_EDGE_LOW

"""
    GPIO10_EDGE_HIGH

Field has no description!
"""
GPIO10_EDGE_HIGH

"""
    GPIO11_LEVEL_LOW

Field has no description!
"""
GPIO11_LEVEL_LOW

"""
    GPIO11_LEVEL_HIGH

Field has no description!
"""
GPIO11_LEVEL_HIGH

"""
    GPIO11_EDGE_LOW

Field has no description!
"""
GPIO11_EDGE_LOW

"""
    GPIO11_EDGE_HIGH

Field has no description!
"""
GPIO11_EDGE_HIGH

"""
    GPIO12_LEVEL_LOW

Field has no description!
"""
GPIO12_LEVEL_LOW

"""
    GPIO12_LEVEL_HIGH

Field has no description!
"""
GPIO12_LEVEL_HIGH

"""
    GPIO12_EDGE_LOW

Field has no description!
"""
GPIO12_EDGE_LOW

"""
    GPIO12_EDGE_HIGH

Field has no description!
"""
GPIO12_EDGE_HIGH

"""
    GPIO13_LEVEL_LOW

Field has no description!
"""
GPIO13_LEVEL_LOW

"""
    GPIO13_LEVEL_HIGH

Field has no description!
"""
GPIO13_LEVEL_HIGH

"""
    GPIO13_EDGE_LOW

Field has no description!
"""
GPIO13_EDGE_LOW

"""
    GPIO13_EDGE_HIGH

Field has no description!
"""
GPIO13_EDGE_HIGH

"""
    GPIO14_LEVEL_LOW

Field has no description!
"""
GPIO14_LEVEL_LOW

"""
    GPIO14_LEVEL_HIGH

Field has no description!
"""
GPIO14_LEVEL_HIGH

"""
    GPIO14_EDGE_LOW

Field has no description!
"""
GPIO14_EDGE_LOW

"""
    GPIO14_EDGE_HIGH

Field has no description!
"""
GPIO14_EDGE_HIGH

"""
    GPIO15_LEVEL_LOW

Field has no description!
"""
GPIO15_LEVEL_LOW

"""
    GPIO15_LEVEL_HIGH

Field has no description!
"""
GPIO15_LEVEL_HIGH

"""
    GPIO15_EDGE_LOW

Field has no description!
"""
GPIO15_EDGE_LOW

"""
    GPIO15_EDGE_HIGH

Field has no description!
"""
GPIO15_EDGE_HIGH

end # register DORMANT_WAKE_INTS1

"""
    DORMANT_WAKE_INTS2

Interrupt status after masking &amp; forcing for dormant\\_wake
"""
module DORMANT_WAKE_INTS2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x0000000000000188
@regdef struct DORMANT_WAKE_INTS2Struct(regAddress)
	GPIO16_LEVEL_LOW:1::Read
	GPIO16_LEVEL_HIGH:1::Read
	GPIO16_EDGE_LOW:1::Read
	GPIO16_EDGE_HIGH:1::Read
	GPIO17_LEVEL_LOW:1::Read
	GPIO17_LEVEL_HIGH:1::Read
	GPIO17_EDGE_LOW:1::Read
	GPIO17_EDGE_HIGH:1::Read
	GPIO18_LEVEL_LOW:1::Read
	GPIO18_LEVEL_HIGH:1::Read
	GPIO18_EDGE_LOW:1::Read
	GPIO18_EDGE_HIGH:1::Read
	GPIO19_LEVEL_LOW:1::Read
	GPIO19_LEVEL_HIGH:1::Read
	GPIO19_EDGE_LOW:1::Read
	GPIO19_EDGE_HIGH:1::Read
	GPIO20_LEVEL_LOW:1::Read
	GPIO20_LEVEL_HIGH:1::Read
	GPIO20_EDGE_LOW:1::Read
	GPIO20_EDGE_HIGH:1::Read
	GPIO21_LEVEL_LOW:1::Read
	GPIO21_LEVEL_HIGH:1::Read
	GPIO21_EDGE_LOW:1::Read
	GPIO21_EDGE_HIGH:1::Read
	GPIO22_LEVEL_LOW:1::Read
	GPIO22_LEVEL_HIGH:1::Read
	GPIO22_EDGE_LOW:1::Read
	GPIO22_EDGE_HIGH:1::Read
	GPIO23_LEVEL_LOW:1::Read
	GPIO23_LEVEL_HIGH:1::Read
	GPIO23_EDGE_LOW:1::Read
	GPIO23_EDGE_HIGH:1::Read
end
const Reg = DORMANT_WAKE_INTS2Struct

"""
    GPIO16_LEVEL_LOW

Field has no description!
"""
GPIO16_LEVEL_LOW

"""
    GPIO16_LEVEL_HIGH

Field has no description!
"""
GPIO16_LEVEL_HIGH

"""
    GPIO16_EDGE_LOW

Field has no description!
"""
GPIO16_EDGE_LOW

"""
    GPIO16_EDGE_HIGH

Field has no description!
"""
GPIO16_EDGE_HIGH

"""
    GPIO17_LEVEL_LOW

Field has no description!
"""
GPIO17_LEVEL_LOW

"""
    GPIO17_LEVEL_HIGH

Field has no description!
"""
GPIO17_LEVEL_HIGH

"""
    GPIO17_EDGE_LOW

Field has no description!
"""
GPIO17_EDGE_LOW

"""
    GPIO17_EDGE_HIGH

Field has no description!
"""
GPIO17_EDGE_HIGH

"""
    GPIO18_LEVEL_LOW

Field has no description!
"""
GPIO18_LEVEL_LOW

"""
    GPIO18_LEVEL_HIGH

Field has no description!
"""
GPIO18_LEVEL_HIGH

"""
    GPIO18_EDGE_LOW

Field has no description!
"""
GPIO18_EDGE_LOW

"""
    GPIO18_EDGE_HIGH

Field has no description!
"""
GPIO18_EDGE_HIGH

"""
    GPIO19_LEVEL_LOW

Field has no description!
"""
GPIO19_LEVEL_LOW

"""
    GPIO19_LEVEL_HIGH

Field has no description!
"""
GPIO19_LEVEL_HIGH

"""
    GPIO19_EDGE_LOW

Field has no description!
"""
GPIO19_EDGE_LOW

"""
    GPIO19_EDGE_HIGH

Field has no description!
"""
GPIO19_EDGE_HIGH

"""
    GPIO20_LEVEL_LOW

Field has no description!
"""
GPIO20_LEVEL_LOW

"""
    GPIO20_LEVEL_HIGH

Field has no description!
"""
GPIO20_LEVEL_HIGH

"""
    GPIO20_EDGE_LOW

Field has no description!
"""
GPIO20_EDGE_LOW

"""
    GPIO20_EDGE_HIGH

Field has no description!
"""
GPIO20_EDGE_HIGH

"""
    GPIO21_LEVEL_LOW

Field has no description!
"""
GPIO21_LEVEL_LOW

"""
    GPIO21_LEVEL_HIGH

Field has no description!
"""
GPIO21_LEVEL_HIGH

"""
    GPIO21_EDGE_LOW

Field has no description!
"""
GPIO21_EDGE_LOW

"""
    GPIO21_EDGE_HIGH

Field has no description!
"""
GPIO21_EDGE_HIGH

"""
    GPIO22_LEVEL_LOW

Field has no description!
"""
GPIO22_LEVEL_LOW

"""
    GPIO22_LEVEL_HIGH

Field has no description!
"""
GPIO22_LEVEL_HIGH

"""
    GPIO22_EDGE_LOW

Field has no description!
"""
GPIO22_EDGE_LOW

"""
    GPIO22_EDGE_HIGH

Field has no description!
"""
GPIO22_EDGE_HIGH

"""
    GPIO23_LEVEL_LOW

Field has no description!
"""
GPIO23_LEVEL_LOW

"""
    GPIO23_LEVEL_HIGH

Field has no description!
"""
GPIO23_LEVEL_HIGH

"""
    GPIO23_EDGE_LOW

Field has no description!
"""
GPIO23_EDGE_LOW

"""
    GPIO23_EDGE_HIGH

Field has no description!
"""
GPIO23_EDGE_HIGH

end # register DORMANT_WAKE_INTS2

"""
    DORMANT_WAKE_INTS3

Interrupt status after masking &amp; forcing for dormant\\_wake
"""
module DORMANT_WAKE_INTS3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_BANK0: baseAddress

const regAddress = baseAddress + 0x000000000000018c
@regdef struct DORMANT_WAKE_INTS3Struct(regAddress)
	GPIO24_LEVEL_LOW:1::Read
	GPIO24_LEVEL_HIGH:1::Read
	GPIO24_EDGE_LOW:1::Read
	GPIO24_EDGE_HIGH:1::Read
	GPIO25_LEVEL_LOW:1::Read
	GPIO25_LEVEL_HIGH:1::Read
	GPIO25_EDGE_LOW:1::Read
	GPIO25_EDGE_HIGH:1::Read
	GPIO26_LEVEL_LOW:1::Read
	GPIO26_LEVEL_HIGH:1::Read
	GPIO26_EDGE_LOW:1::Read
	GPIO26_EDGE_HIGH:1::Read
	GPIO27_LEVEL_LOW:1::Read
	GPIO27_LEVEL_HIGH:1::Read
	GPIO27_EDGE_LOW:1::Read
	GPIO27_EDGE_HIGH:1::Read
	GPIO28_LEVEL_LOW:1::Read
	GPIO28_LEVEL_HIGH:1::Read
	GPIO28_EDGE_LOW:1::Read
	GPIO28_EDGE_HIGH:1::Read
	GPIO29_LEVEL_LOW:1::Read
	GPIO29_LEVEL_HIGH:1::Read
	GPIO29_EDGE_LOW:1::Read
	GPIO29_EDGE_HIGH:1::Read
	_:8
end
const Reg = DORMANT_WAKE_INTS3Struct

"""
    GPIO24_LEVEL_LOW

Field has no description!
"""
GPIO24_LEVEL_LOW

"""
    GPIO24_LEVEL_HIGH

Field has no description!
"""
GPIO24_LEVEL_HIGH

"""
    GPIO24_EDGE_LOW

Field has no description!
"""
GPIO24_EDGE_LOW

"""
    GPIO24_EDGE_HIGH

Field has no description!
"""
GPIO24_EDGE_HIGH

"""
    GPIO25_LEVEL_LOW

Field has no description!
"""
GPIO25_LEVEL_LOW

"""
    GPIO25_LEVEL_HIGH

Field has no description!
"""
GPIO25_LEVEL_HIGH

"""
    GPIO25_EDGE_LOW

Field has no description!
"""
GPIO25_EDGE_LOW

"""
    GPIO25_EDGE_HIGH

Field has no description!
"""
GPIO25_EDGE_HIGH

"""
    GPIO26_LEVEL_LOW

Field has no description!
"""
GPIO26_LEVEL_LOW

"""
    GPIO26_LEVEL_HIGH

Field has no description!
"""
GPIO26_LEVEL_HIGH

"""
    GPIO26_EDGE_LOW

Field has no description!
"""
GPIO26_EDGE_LOW

"""
    GPIO26_EDGE_HIGH

Field has no description!
"""
GPIO26_EDGE_HIGH

"""
    GPIO27_LEVEL_LOW

Field has no description!
"""
GPIO27_LEVEL_LOW

"""
    GPIO27_LEVEL_HIGH

Field has no description!
"""
GPIO27_LEVEL_HIGH

"""
    GPIO27_EDGE_LOW

Field has no description!
"""
GPIO27_EDGE_LOW

"""
    GPIO27_EDGE_HIGH

Field has no description!
"""
GPIO27_EDGE_HIGH

"""
    GPIO28_LEVEL_LOW

Field has no description!
"""
GPIO28_LEVEL_LOW

"""
    GPIO28_LEVEL_HIGH

Field has no description!
"""
GPIO28_LEVEL_HIGH

"""
    GPIO28_EDGE_LOW

Field has no description!
"""
GPIO28_EDGE_LOW

"""
    GPIO28_EDGE_HIGH

Field has no description!
"""
GPIO28_EDGE_HIGH

"""
    GPIO29_LEVEL_LOW

Field has no description!
"""
GPIO29_LEVEL_LOW

"""
    GPIO29_LEVEL_HIGH

Field has no description!
"""
GPIO29_LEVEL_HIGH

"""
    GPIO29_EDGE_LOW

Field has no description!
"""
GPIO29_EDGE_LOW

"""
    GPIO29_EDGE_HIGH

Field has no description!
"""
GPIO29_EDGE_HIGH

end # register DORMANT_WAKE_INTS3

end # peripheral

