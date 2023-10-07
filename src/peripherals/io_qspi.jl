"""
    IO_QSPI

No description of peripheral!
"""
module IO_QSPI

const baseAddress = Ptr{UInt32}(1073840128)

"""
    GPIO_QSPI_SCLK_STATUS

GPIO status
"""
module GPIO_QSPI_SCLK_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct GPIO_QSPI_SCLK_STATUSStruct(regAddress)
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
const Reg = GPIO_QSPI_SCLK_STATUSStruct

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

end # register GPIO_QSPI_SCLK_STATUS

"""
    GPIO_QSPI_SCLK_CTRL

GPIO control including function select and overrides.
"""
module GPIO_QSPI_SCLK_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct GPIO_QSPI_SCLK_CTRLStruct(regAddress)
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
const Reg = GPIO_QSPI_SCLK_CTRLStruct

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

end # register GPIO_QSPI_SCLK_CTRL

"""
    GPIO_QSPI_SS_STATUS

GPIO status
"""
module GPIO_QSPI_SS_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct GPIO_QSPI_SS_STATUSStruct(regAddress)
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
const Reg = GPIO_QSPI_SS_STATUSStruct

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

end # register GPIO_QSPI_SS_STATUS

"""
    GPIO_QSPI_SS_CTRL

GPIO control including function select and overrides.
"""
module GPIO_QSPI_SS_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct GPIO_QSPI_SS_CTRLStruct(regAddress)
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
const Reg = GPIO_QSPI_SS_CTRLStruct

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

end # register GPIO_QSPI_SS_CTRL

"""
    GPIO_QSPI_SD0_STATUS

GPIO status
"""
module GPIO_QSPI_SD0_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct GPIO_QSPI_SD0_STATUSStruct(regAddress)
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
const Reg = GPIO_QSPI_SD0_STATUSStruct

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

end # register GPIO_QSPI_SD0_STATUS

"""
    GPIO_QSPI_SD0_CTRL

GPIO control including function select and overrides.
"""
module GPIO_QSPI_SD0_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct GPIO_QSPI_SD0_CTRLStruct(regAddress)
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
const Reg = GPIO_QSPI_SD0_CTRLStruct

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

end # register GPIO_QSPI_SD0_CTRL

"""
    GPIO_QSPI_SD1_STATUS

GPIO status
"""
module GPIO_QSPI_SD1_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct GPIO_QSPI_SD1_STATUSStruct(regAddress)
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
const Reg = GPIO_QSPI_SD1_STATUSStruct

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

end # register GPIO_QSPI_SD1_STATUS

"""
    GPIO_QSPI_SD1_CTRL

GPIO control including function select and overrides.
"""
module GPIO_QSPI_SD1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct GPIO_QSPI_SD1_CTRLStruct(regAddress)
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
const Reg = GPIO_QSPI_SD1_CTRLStruct

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

end # register GPIO_QSPI_SD1_CTRL

"""
    GPIO_QSPI_SD2_STATUS

GPIO status
"""
module GPIO_QSPI_SD2_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct GPIO_QSPI_SD2_STATUSStruct(regAddress)
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
const Reg = GPIO_QSPI_SD2_STATUSStruct

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

end # register GPIO_QSPI_SD2_STATUS

"""
    GPIO_QSPI_SD2_CTRL

GPIO control including function select and overrides.
"""
module GPIO_QSPI_SD2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct GPIO_QSPI_SD2_CTRLStruct(regAddress)
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
const Reg = GPIO_QSPI_SD2_CTRLStruct

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

end # register GPIO_QSPI_SD2_CTRL

"""
    GPIO_QSPI_SD3_STATUS

GPIO status
"""
module GPIO_QSPI_SD3_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct GPIO_QSPI_SD3_STATUSStruct(regAddress)
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
const Reg = GPIO_QSPI_SD3_STATUSStruct

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

end # register GPIO_QSPI_SD3_STATUS

"""
    GPIO_QSPI_SD3_CTRL

GPIO control including function select and overrides.
"""
module GPIO_QSPI_SD3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct GPIO_QSPI_SD3_CTRLStruct(regAddress)
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
const Reg = GPIO_QSPI_SD3_CTRLStruct

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

end # register GPIO_QSPI_SD3_CTRL

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct INTRStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::Read
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::Read
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::Read
	GPIO_QSPI_SS_LEVEL_HIGH:1::Read
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::Read
	GPIO_QSPI_SD0_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::Read
	GPIO_QSPI_SD1_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::Read
	GPIO_QSPI_SD2_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::Read
	GPIO_QSPI_SD3_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = INTRStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register INTR

"""
    PROC0_INTE

Interrupt Enable for proc0
"""
module PROC0_INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct PROC0_INTEStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC0_INTEStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register PROC0_INTE

"""
    PROC0_INTF

Interrupt Force for proc0
"""
module PROC0_INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct PROC0_INTFStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC0_INTFStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register PROC0_INTF

"""
    PROC0_INTS

Interrupt status after masking &amp; forcing for proc0
"""
module PROC0_INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct PROC0_INTSStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::Read
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::Read
	GPIO_QSPI_SCLK_EDGE_LOW:1::Read
	GPIO_QSPI_SCLK_EDGE_HIGH:1::Read
	GPIO_QSPI_SS_LEVEL_LOW:1::Read
	GPIO_QSPI_SS_LEVEL_HIGH:1::Read
	GPIO_QSPI_SS_EDGE_LOW:1::Read
	GPIO_QSPI_SS_EDGE_HIGH:1::Read
	GPIO_QSPI_SD0_LEVEL_LOW:1::Read
	GPIO_QSPI_SD0_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD0_EDGE_LOW:1::Read
	GPIO_QSPI_SD0_EDGE_HIGH:1::Read
	GPIO_QSPI_SD1_LEVEL_LOW:1::Read
	GPIO_QSPI_SD1_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD1_EDGE_LOW:1::Read
	GPIO_QSPI_SD1_EDGE_HIGH:1::Read
	GPIO_QSPI_SD2_LEVEL_LOW:1::Read
	GPIO_QSPI_SD2_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD2_EDGE_LOW:1::Read
	GPIO_QSPI_SD2_EDGE_HIGH:1::Read
	GPIO_QSPI_SD3_LEVEL_LOW:1::Read
	GPIO_QSPI_SD3_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD3_EDGE_LOW:1::Read
	GPIO_QSPI_SD3_EDGE_HIGH:1::Read
	_:8
end
const Reg = PROC0_INTSStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register PROC0_INTS

"""
    PROC1_INTE

Interrupt Enable for proc1
"""
module PROC1_INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct PROC1_INTEStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC1_INTEStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register PROC1_INTE

"""
    PROC1_INTF

Interrupt Force for proc1
"""
module PROC1_INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct PROC1_INTFStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = PROC1_INTFStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register PROC1_INTF

"""
    PROC1_INTS

Interrupt status after masking &amp; forcing for proc1
"""
module PROC1_INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct PROC1_INTSStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::Read
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::Read
	GPIO_QSPI_SCLK_EDGE_LOW:1::Read
	GPIO_QSPI_SCLK_EDGE_HIGH:1::Read
	GPIO_QSPI_SS_LEVEL_LOW:1::Read
	GPIO_QSPI_SS_LEVEL_HIGH:1::Read
	GPIO_QSPI_SS_EDGE_LOW:1::Read
	GPIO_QSPI_SS_EDGE_HIGH:1::Read
	GPIO_QSPI_SD0_LEVEL_LOW:1::Read
	GPIO_QSPI_SD0_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD0_EDGE_LOW:1::Read
	GPIO_QSPI_SD0_EDGE_HIGH:1::Read
	GPIO_QSPI_SD1_LEVEL_LOW:1::Read
	GPIO_QSPI_SD1_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD1_EDGE_LOW:1::Read
	GPIO_QSPI_SD1_EDGE_HIGH:1::Read
	GPIO_QSPI_SD2_LEVEL_LOW:1::Read
	GPIO_QSPI_SD2_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD2_EDGE_LOW:1::Read
	GPIO_QSPI_SD2_EDGE_HIGH:1::Read
	GPIO_QSPI_SD3_LEVEL_LOW:1::Read
	GPIO_QSPI_SD3_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD3_EDGE_LOW:1::Read
	GPIO_QSPI_SD3_EDGE_HIGH:1::Read
	_:8
end
const Reg = PROC1_INTSStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register PROC1_INTS

"""
    DORMANT_WAKE_INTE

Interrupt Enable for dormant\\_wake
"""
module DORMANT_WAKE_INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct DORMANT_WAKE_INTEStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = DORMANT_WAKE_INTEStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register DORMANT_WAKE_INTE

"""
    DORMANT_WAKE_INTF

Interrupt Force for dormant\\_wake
"""
module DORMANT_WAKE_INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct DORMANT_WAKE_INTFStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SCLK_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SS_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SS_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SS_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD0_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD0_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD1_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD1_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD2_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD2_EDGE_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_LOW:1::ReadWrite
	GPIO_QSPI_SD3_LEVEL_HIGH:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_LOW:1::ReadWrite
	GPIO_QSPI_SD3_EDGE_HIGH:1::ReadWrite
	_:8
end
const Reg = DORMANT_WAKE_INTFStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register DORMANT_WAKE_INTF

"""
    DORMANT_WAKE_INTS

Interrupt status after masking &amp; forcing for dormant\\_wake
"""
module DORMANT_WAKE_INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..IO_QSPI: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct DORMANT_WAKE_INTSStruct(regAddress)
	GPIO_QSPI_SCLK_LEVEL_LOW:1::Read
	GPIO_QSPI_SCLK_LEVEL_HIGH:1::Read
	GPIO_QSPI_SCLK_EDGE_LOW:1::Read
	GPIO_QSPI_SCLK_EDGE_HIGH:1::Read
	GPIO_QSPI_SS_LEVEL_LOW:1::Read
	GPIO_QSPI_SS_LEVEL_HIGH:1::Read
	GPIO_QSPI_SS_EDGE_LOW:1::Read
	GPIO_QSPI_SS_EDGE_HIGH:1::Read
	GPIO_QSPI_SD0_LEVEL_LOW:1::Read
	GPIO_QSPI_SD0_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD0_EDGE_LOW:1::Read
	GPIO_QSPI_SD0_EDGE_HIGH:1::Read
	GPIO_QSPI_SD1_LEVEL_LOW:1::Read
	GPIO_QSPI_SD1_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD1_EDGE_LOW:1::Read
	GPIO_QSPI_SD1_EDGE_HIGH:1::Read
	GPIO_QSPI_SD2_LEVEL_LOW:1::Read
	GPIO_QSPI_SD2_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD2_EDGE_LOW:1::Read
	GPIO_QSPI_SD2_EDGE_HIGH:1::Read
	GPIO_QSPI_SD3_LEVEL_LOW:1::Read
	GPIO_QSPI_SD3_LEVEL_HIGH:1::Read
	GPIO_QSPI_SD3_EDGE_LOW:1::Read
	GPIO_QSPI_SD3_EDGE_HIGH:1::Read
	_:8
end
const Reg = DORMANT_WAKE_INTSStruct

"""
    GPIO_QSPI_SCLK_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_LOW

"""
    GPIO_QSPI_SCLK_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_LEVEL_HIGH

"""
    GPIO_QSPI_SCLK_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_LOW

"""
    GPIO_QSPI_SCLK_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SCLK_EDGE_HIGH

"""
    GPIO_QSPI_SS_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_LOW

"""
    GPIO_QSPI_SS_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SS_LEVEL_HIGH

"""
    GPIO_QSPI_SS_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SS_EDGE_LOW

"""
    GPIO_QSPI_SS_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SS_EDGE_HIGH

"""
    GPIO_QSPI_SD0_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_LOW

"""
    GPIO_QSPI_SD0_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_LEVEL_HIGH

"""
    GPIO_QSPI_SD0_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_LOW

"""
    GPIO_QSPI_SD0_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD0_EDGE_HIGH

"""
    GPIO_QSPI_SD1_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_LOW

"""
    GPIO_QSPI_SD1_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_LEVEL_HIGH

"""
    GPIO_QSPI_SD1_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_LOW

"""
    GPIO_QSPI_SD1_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD1_EDGE_HIGH

"""
    GPIO_QSPI_SD2_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_LOW

"""
    GPIO_QSPI_SD2_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_LEVEL_HIGH

"""
    GPIO_QSPI_SD2_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_LOW

"""
    GPIO_QSPI_SD2_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD2_EDGE_HIGH

"""
    GPIO_QSPI_SD3_LEVEL_LOW

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_LOW

"""
    GPIO_QSPI_SD3_LEVEL_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_LEVEL_HIGH

"""
    GPIO_QSPI_SD3_EDGE_LOW

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_LOW

"""
    GPIO_QSPI_SD3_EDGE_HIGH

Field has no description!
"""
GPIO_QSPI_SD3_EDGE_HIGH

end # register DORMANT_WAKE_INTS

end # peripheral

