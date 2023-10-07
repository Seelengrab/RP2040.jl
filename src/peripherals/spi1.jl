"""
    SPI1

No description of peripheral!
"""
module SPI1

const baseAddress = Ptr{UInt32}(1074003968)

"""
    SSPCR0

Control register 0, SSPCR0 on page 3-4
"""
module SSPCR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct SSPCR0Struct(regAddress)
	DSS:4::ReadWrite
	FRF:2::ReadWrite
	SPO:1::ReadWrite
	SPH:1::ReadWrite
	SCR:8::ReadWrite
	_:16
end
const Reg = SSPCR0Struct

"""
    DSS

Data Size Select: 0000 Reserved, undefined operation. 0001 Reserved, undefined operation. 0010 Reserved, undefined operation. 0011 4-bit data. 0100 5-bit data. 0101 6-bit data. 0110 7-bit data. 0111 8-bit data. 1000 9-bit data. 1001 10-bit data. 1010 11-bit data. 1011 12-bit data. 1100 13-bit data. 1101 14-bit data. 1110 15-bit data. 1111 16-bit data.
"""
DSS

"""
    FRF

Frame format: 00 Motorola SPI frame format. 01 TI synchronous serial frame format. 10 National Microwire frame format. 11 Reserved, undefined operation.
"""
FRF

"""
    SPO

SSPCLKOUT polarity, applicable to Motorola SPI frame format only. See Motorola SPI frame format on page 2-10.
"""
SPO

"""
    SPH

SSPCLKOUT phase, applicable to Motorola SPI frame format only. See Motorola SPI frame format on page 2-10.
"""
SPH

"""
    SCR

Serial clock rate. The value SCR is used to generate the transmit and receive bit rate of the PrimeCell SSP. The bit rate is: F SSPCLK CPSDVSR x (1+SCR) where CPSDVSR is an even value from 2-254, programmed through the SSPCPSR register and SCR is a value from 0-255.
"""
SCR

end # register SSPCR0

"""
    SSPCR1

Control register 1, SSPCR1 on page 3-5
"""
module SSPCR1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct SSPCR1Struct(regAddress)
	LBM:1::ReadWrite
	SSE:1::ReadWrite
	MS:1::ReadWrite
	SOD:1::ReadWrite
	_:28
end
const Reg = SSPCR1Struct

"""
    LBM

Loop back mode: 0 Normal serial port operation enabled. 1 Output of transmit serial shifter is connected to input of receive serial shifter internally.
"""
LBM

"""
    SSE

Synchronous serial port enable: 0 SSP operation disabled. 1 SSP operation enabled.
"""
SSE

"""
    MS

Master or slave mode select. This bit can be modified only when the PrimeCell SSP is disabled, SSE=0: 0 Device configured as master, default. 1 Device configured as slave.
"""
MS

"""
    SOD

Slave-mode output disable. This bit is relevant only in the slave mode, MS=1. In multiple-slave systems, it is possible for an PrimeCell SSP master to broadcast a message to all slaves in the system while ensuring that only one slave drives data onto its serial output line. In such systems the RXD lines from multiple slaves could be tied together. To operate in such systems, the SOD bit can be set if the PrimeCell SSP slave is not supposed to drive the SSPTXD line: 0 SSP can drive the SSPTXD output in slave mode. 1 SSP must not drive the SSPTXD output in slave mode.
"""
SOD

end # register SSPCR1

"""
    SSPDR

Data register, SSPDR on page 3-6
"""
module SSPDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct SSPDRStruct(regAddress)
	DATA:16::ReadWrite
	_:16
end
const Reg = SSPDRStruct

"""
    DATA

Transmit/Receive FIFO: Read Receive FIFO. Write Transmit FIFO. You must right-justify data when the PrimeCell SSP is programmed for a data size that is less than 16 bits. Unused bits at the top are ignored by transmit logic. The receive logic automatically right-justifies.
"""
DATA

end # register SSPDR

"""
    SSPSR

Status register, SSPSR on page 3-7
"""
module SSPSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct SSPSRStruct(regAddress)
	TFE:1::Read
	TNF:1::Read
	RNE:1::Read
	RFF:1::Read
	BSY:1::Read
	_:27
end
const Reg = SSPSRStruct

"""
    TFE

Transmit FIFO empty, RO: 0 Transmit FIFO is not empty. 1 Transmit FIFO is empty.
"""
TFE

"""
    TNF

Transmit FIFO not full, RO: 0 Transmit FIFO is full. 1 Transmit FIFO is not full.
"""
TNF

"""
    RNE

Receive FIFO not empty, RO: 0 Receive FIFO is empty. 1 Receive FIFO is not empty.
"""
RNE

"""
    RFF

Receive FIFO full, RO: 0 Receive FIFO is not full. 1 Receive FIFO is full.
"""
RFF

"""
    BSY

PrimeCell SSP busy flag, RO: 0 SSP is idle. 1 SSP is currently transmitting and/or receiving a frame or the transmit FIFO is not empty.
"""
BSY

end # register SSPSR

"""
    SSPCPSR

Clock prescale register, SSPCPSR on page 3-8
"""
module SSPCPSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct SSPCPSRStruct(regAddress)
	CPSDVSR:8::ReadWrite
	_:24
end
const Reg = SSPCPSRStruct

"""
    CPSDVSR

Clock prescale divisor. Must be an even number from 2-254, depending on the frequency of SSPCLK. The least significant bit always returns zero on reads.
"""
CPSDVSR

end # register SSPCPSR

"""
    SSPIMSC

Interrupt mask set or clear register, SSPIMSC on page 3-9
"""
module SSPIMSCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct SSPIMSCStruct(regAddress)
	RORIM:1::ReadWrite
	RTIM:1::ReadWrite
	RXIM:1::ReadWrite
	TXIM:1::ReadWrite
	_:28
end
const Reg = SSPIMSCStruct

"""
    RORIM

Receive overrun interrupt mask: 0 Receive FIFO written to while full condition interrupt is masked. 1 Receive FIFO written to while full condition interrupt is not masked.
"""
RORIM

"""
    RTIM

Receive timeout interrupt mask: 0 Receive FIFO not empty and no read prior to timeout period interrupt is masked. 1 Receive FIFO not empty and no read prior to timeout period interrupt is not masked.
"""
RTIM

"""
    RXIM

Receive FIFO interrupt mask: 0 Receive FIFO half full or less condition interrupt is masked. 1 Receive FIFO half full or less condition interrupt is not masked.
"""
RXIM

"""
    TXIM

Transmit FIFO interrupt mask: 0 Transmit FIFO half empty or less condition interrupt is masked. 1 Transmit FIFO half empty or less condition interrupt is not masked.
"""
TXIM

end # register SSPIMSC

"""
    SSPRIS

Raw interrupt status register, SSPRIS on page 3-10
"""
module SSPRISMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct SSPRISStruct(regAddress)
	RORRIS:1::Read
	RTRIS:1::Read
	RXRIS:1::Read
	TXRIS:1::Read
	_:28
end
const Reg = SSPRISStruct

"""
    RORRIS

Gives the raw interrupt state, prior to masking, of the SSPRORINTR interrupt
"""
RORRIS

"""
    RTRIS

Gives the raw interrupt state, prior to masking, of the SSPRTINTR interrupt
"""
RTRIS

"""
    RXRIS

Gives the raw interrupt state, prior to masking, of the SSPRXINTR interrupt
"""
RXRIS

"""
    TXRIS

Gives the raw interrupt state, prior to masking, of the SSPTXINTR interrupt
"""
TXRIS

end # register SSPRIS

"""
    SSPMIS

Masked interrupt status register, SSPMIS on page 3-11
"""
module SSPMISMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct SSPMISStruct(regAddress)
	RORMIS:1::Read
	RTMIS:1::Read
	RXMIS:1::Read
	TXMIS:1::Read
	_:28
end
const Reg = SSPMISStruct

"""
    RORMIS

Gives the receive over run masked interrupt status, after masking, of the SSPRORINTR interrupt
"""
RORMIS

"""
    RTMIS

Gives the receive timeout masked interrupt state, after masking, of the SSPRTINTR interrupt
"""
RTMIS

"""
    RXMIS

Gives the receive FIFO masked interrupt state, after masking, of the SSPRXINTR interrupt
"""
RXMIS

"""
    TXMIS

Gives the transmit FIFO masked interrupt state, after masking, of the SSPTXINTR interrupt
"""
TXMIS

end # register SSPMIS

"""
    SSPICR

Interrupt clear register, SSPICR on page 3-11
"""
module SSPICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct SSPICRStruct(regAddress)
	RORIC:1::ReadWrite
	RTIC:1::ReadWrite
	_:30
end
const Reg = SSPICRStruct

"""
    RORIC

Clears the SSPRORINTR interrupt
"""
RORIC

"""
    RTIC

Clears the SSPRTINTR interrupt
"""
RTIC

end # register SSPICR

"""
    SSPDMACR

DMA control register, SSPDMACR on page 3-12
"""
module SSPDMACRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct SSPDMACRStruct(regAddress)
	RXDMAE:1::ReadWrite
	TXDMAE:1::ReadWrite
	_:30
end
const Reg = SSPDMACRStruct

"""
    RXDMAE

Receive DMA Enable. If this bit is set to 1, DMA for the receive FIFO is enabled.
"""
RXDMAE

"""
    TXDMAE

Transmit DMA Enable. If this bit is set to 1, DMA for the transmit FIFO is enabled.
"""
TXDMAE

end # register SSPDMACR

"""
    SSPPERIPHID0

Peripheral identification registers, SSPPeriphID0-3 on page 3-13
"""
module SSPPERIPHID0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000fe0
@regdef struct SSPPERIPHID0Struct(regAddress)
	PARTNUMBER0:8::Read
	_:24
end
const Reg = SSPPERIPHID0Struct

"""
    PARTNUMBER0

These bits read back as 0x22
"""
PARTNUMBER0

end # register SSPPERIPHID0

"""
    SSPPERIPHID1

Peripheral identification registers, SSPPeriphID0-3 on page 3-13
"""
module SSPPERIPHID1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000fe4
@regdef struct SSPPERIPHID1Struct(regAddress)
	PARTNUMBER1:4::Read
	DESIGNER0:4::Read
	_:24
end
const Reg = SSPPERIPHID1Struct

"""
    PARTNUMBER1

These bits read back as 0x0
"""
PARTNUMBER1

"""
    DESIGNER0

These bits read back as 0x1
"""
DESIGNER0

end # register SSPPERIPHID1

"""
    SSPPERIPHID2

Peripheral identification registers, SSPPeriphID0-3 on page 3-13
"""
module SSPPERIPHID2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000fe8
@regdef struct SSPPERIPHID2Struct(regAddress)
	DESIGNER1:4::Read
	REVISION:4::Read
	_:24
end
const Reg = SSPPERIPHID2Struct

"""
    DESIGNER1

These bits read back as 0x4
"""
DESIGNER1

"""
    REVISION

These bits return the peripheral revision
"""
REVISION

end # register SSPPERIPHID2

"""
    SSPPERIPHID3

Peripheral identification registers, SSPPeriphID0-3 on page 3-13
"""
module SSPPERIPHID3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000fec
@regdef struct SSPPERIPHID3Struct(regAddress)
	CONFIGURATION:8::Read
	_:24
end
const Reg = SSPPERIPHID3Struct

"""
    CONFIGURATION

These bits read back as 0x00
"""
CONFIGURATION

end # register SSPPERIPHID3

"""
    SSPPCELLID0

PrimeCell identification registers, SSPPCellID0-3 on page 3-16
"""
module SSPPCELLID0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000ff0
@regdef struct SSPPCELLID0Struct(regAddress)
	SSPPCELLID0:8::Read
	_:24
end
const Reg = SSPPCELLID0Struct

"""
    SSPPCELLID0

These bits read back as 0x0D
"""
SSPPCELLID0

end # register SSPPCELLID0

"""
    SSPPCELLID1

PrimeCell identification registers, SSPPCellID0-3 on page 3-16
"""
module SSPPCELLID1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000ff4
@regdef struct SSPPCELLID1Struct(regAddress)
	SSPPCELLID1:8::Read
	_:24
end
const Reg = SSPPCELLID1Struct

"""
    SSPPCELLID1

These bits read back as 0xF0
"""
SSPPCELLID1

end # register SSPPCELLID1

"""
    SSPPCELLID2

PrimeCell identification registers, SSPPCellID0-3 on page 3-16
"""
module SSPPCELLID2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000ff8
@regdef struct SSPPCELLID2Struct(regAddress)
	SSPPCELLID2:8::Read
	_:24
end
const Reg = SSPPCELLID2Struct

"""
    SSPPCELLID2

These bits read back as 0x05
"""
SSPPCELLID2

end # register SSPPCELLID2

"""
    SSPPCELLID3

PrimeCell identification registers, SSPPCellID0-3 on page 3-16
"""
module SSPPCELLID3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..SPI1: baseAddress

const regAddress = baseAddress + 0x0000000000000ffc
@regdef struct SSPPCELLID3Struct(regAddress)
	SSPPCELLID3:8::Read
	_:24
end
const Reg = SSPPCELLID3Struct

"""
    SSPPCELLID3

These bits read back as 0xB1
"""
SSPPCELLID3

end # register SSPPCELLID3

end # peripheral

