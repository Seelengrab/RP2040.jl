"""
    XIP_SSI

DW\\_apb\\_ssi has the following features:

* APB interface - Allows for easy integration into a DesignWare Synthesizable Components for AMBA 2 implementation.

* APB3 and APB4 protocol support.

* Scalable APB data bus width - Supports APB data bus widths of 8, 16, and 32 bits.

* Serial-master or serial-slave operation - Enables serial communication with serial-master or serial-slave peripheral devices.

* Programmable Dual/Quad/Octal SPI support in Master Mode.

* Dual Data Rate (DDR) and Read Data Strobe (RDS) Support - Enables the DW\\_apb\\_ssi master to perform operations with the device in DDR and RDS modes when working in Dual/Quad/Octal mode of operation.

* Data Mask Support - Enables the DW\\_apb\\_ssi to selectively update the bytes in the device. This feature is applicable only in enhanced SPI modes.

* eXecute-In-Place (XIP) support - Enables the DW\\_apb\\_ssi master to behave as a memory mapped I/O and fetches the data from the device based on the APB read request. This feature is applicable only in enhanced SPI modes.

* DMA Controller Interface - Enables the DW\\_apb\\_ssi to interface to a DMA controller over the bus using a handshaking interface for transfer requests.

* Independent masking of interrupts - Master collision, transmit FIFO overflow, transmit FIFO empty, receive FIFO full, receive FIFO underflow, and receive FIFO overflow interrupts can all be masked independently.

* Multi-master contention detection - Informs the processor of multiple serial-master accesses on the serial bus.

* Bypass of meta-stability flip-flops for synchronous clocks - When the APB clock (pclk) and the DW\\_apb\\_ssi serial clock (ssi\\_clk) are synchronous, meta-stable flip-flops are not used when transferring control signals across these clock domains.

* Programmable delay on the sample time of the received serial data bit (rxd); enables programmable control of routing delays resulting in higher serial data-bit rates.

* Programmable features:

  - Serial interface operation - Choice of Motorola SPI, Texas Instruments Synchronous Serial Protocol or National Semiconductor Microwire.

  - Clock bit-rate - Dynamic control of the serial bit rate of the data transfer; used in only serial-master mode of operation.

  - Data Item size (4 to 32 bits) - Item size of each data transfer under the control of the programmer.

* Configured features:

  - FIFO depth - 16 words deep. The FIFO width is fixed at 32 bits.

  - 1 slave select output.

  - Hardware slave-select - Dedicated hardware slave-select line.

  - Combined interrupt line - one combined interrupt line from the DW\\_apb\\_ssi to the interrupt controller.

  - Interrupt polarity - active high interrupt lines.

  - Serial clock polarity - low serial-clock polarity directly after reset.

  - Serial clock phase - capture on first edge of serial-clock directly after reset.
"""
module XIP_SSI

const baseAddress = Ptr{UInt32}(402653184)

"""
    CTRLR0

Control register 0
"""
module CTRLR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CTRLR0Struct(regAddress)
	DFS:4::ReadWrite
	FRF:2::ReadWrite
	SCPH:1::ReadWrite
	SCPOL:1::ReadWrite
	TMOD:2::ReadWrite
	SLV_OE:1::ReadWrite
	SRL:1::ReadWrite
	CFS:4::ReadWrite
	DFS_32:5::ReadWrite
	SPI_FRF:2::ReadWrite
	_:1
	SSTE:1::ReadWrite
	_:7
end
const Reg = CTRLR0Struct

"""
    DFS

Data frame size
"""
DFS

"""
    FRF

Frame format
"""
FRF

"""
    SCPH

Serial clock phase
"""
SCPH

"""
    SCPOL

Serial clock polarity
"""
SCPOL

"""
    TMOD

Transfer mode
"""
TMOD

"""
    SLV_OE

Slave output enable
"""
SLV_OE

"""
    SRL

Shift register loop (test mode)
"""
SRL

"""
    CFS

Control frame size

Value of n -&gt; n+1 clocks per frame.
"""
CFS

"""
    DFS_32

Data frame size in 32b transfer mode

Value of n -&gt; n+1 clocks per frame.
"""
DFS_32

"""
    SPI_FRF

SPI frame format
"""
SPI_FRF

"""
    SSTE

Slave select toggle enable
"""
SSTE

end # register CTRLR0

"""
    CTRLR1

Master Control register 1
"""
module CTRLR1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct CTRLR1Struct(regAddress)
	NDF:16::ReadWrite
	_:16
end
const Reg = CTRLR1Struct

"""
    NDF

Number of data frames
"""
NDF

end # register CTRLR1

"""
    SSIENR

SSI Enable
"""
module SSIENRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct SSIENRStruct(regAddress)
	SSI_EN:1::ReadWrite
	_:31
end
const Reg = SSIENRStruct

"""
    SSI_EN

SSI enable
"""
SSI_EN

end # register SSIENR

"""
    MWCR

Microwire Control
"""
module MWCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct MWCRStruct(regAddress)
	MWMOD:1::ReadWrite
	MDD:1::ReadWrite
	MHS:1::ReadWrite
	_:29
end
const Reg = MWCRStruct

"""
    MWMOD

Microwire transfer mode
"""
MWMOD

"""
    MDD

Microwire control
"""
MDD

"""
    MHS

Microwire handshaking
"""
MHS

end # register MWCR

"""
    SER

Slave enable
"""
module SERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct SERStruct(regAddress)
	SER:1::ReadWrite
	_:31
end
const Reg = SERStruct

"""
    SER

For each bit:

0 -&gt; slave not selected

1 -&gt; slave selected
"""
SER

end # register SER

"""
    BAUDR

Baud rate
"""
module BAUDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct BAUDRStruct(regAddress)
	SCKDV:16::ReadWrite
	_:16
end
const Reg = BAUDRStruct

"""
    SCKDV

SSI clock divider
"""
SCKDV

end # register BAUDR

"""
    TXFTLR

TX FIFO threshold level
"""
module TXFTLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct TXFTLRStruct(regAddress)
	TFT:8::ReadWrite
	_:24
end
const Reg = TXFTLRStruct

"""
    TFT

Transmit FIFO threshold
"""
TFT

end # register TXFTLR

"""
    RXFTLR

RX FIFO threshold level
"""
module RXFTLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct RXFTLRStruct(regAddress)
	RFT:8::ReadWrite
	_:24
end
const Reg = RXFTLRStruct

"""
    RFT

Receive FIFO threshold
"""
RFT

end # register RXFTLR

"""
    TXFLR

TX FIFO level
"""
module TXFLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct TXFLRStruct(regAddress)
	TFTFL:8::Read
	_:24
end
const Reg = TXFLRStruct

"""
    TFTFL

Transmit FIFO level
"""
TFTFL

end # register TXFLR

"""
    RXFLR

RX FIFO level
"""
module RXFLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct RXFLRStruct(regAddress)
	RXTFL:8::Read
	_:24
end
const Reg = RXFLRStruct

"""
    RXTFL

Receive FIFO level
"""
RXTFL

end # register RXFLR

"""
    SR

Status register
"""
module SRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct SRStruct(regAddress)
	BUSY:1::Read
	TFNF:1::Read
	TFE:1::Read
	RFNE:1::Read
	RFF:1::Read
	TXE:1::Read
	DCOL:1::Read
	_:25
end
const Reg = SRStruct

"""
    BUSY

SSI busy flag
"""
BUSY

"""
    TFNF

Transmit FIFO not full
"""
TFNF

"""
    TFE

Transmit FIFO empty
"""
TFE

"""
    RFNE

Receive FIFO not empty
"""
RFNE

"""
    RFF

Receive FIFO full
"""
RFF

"""
    TXE

Transmission error
"""
TXE

"""
    DCOL

Data collision error
"""
DCOL

end # register SR

"""
    IMR

Interrupt mask
"""
module IMRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct IMRStruct(regAddress)
	TXEIM:1::ReadWrite
	TXOIM:1::ReadWrite
	RXUIM:1::ReadWrite
	RXOIM:1::ReadWrite
	RXFIM:1::ReadWrite
	MSTIM:1::ReadWrite
	_:26
end
const Reg = IMRStruct

"""
    TXEIM

Transmit FIFO empty interrupt mask
"""
TXEIM

"""
    TXOIM

Transmit FIFO overflow interrupt mask
"""
TXOIM

"""
    RXUIM

Receive FIFO underflow interrupt mask
"""
RXUIM

"""
    RXOIM

Receive FIFO overflow interrupt mask
"""
RXOIM

"""
    RXFIM

Receive FIFO full interrupt mask
"""
RXFIM

"""
    MSTIM

Multi-master contention interrupt mask
"""
MSTIM

end # register IMR

"""
    ISR

Interrupt status
"""
module ISRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct ISRStruct(regAddress)
	TXEIS:1::Read
	TXOIS:1::Read
	RXUIS:1::Read
	RXOIS:1::Read
	RXFIS:1::Read
	MSTIS:1::Read
	_:26
end
const Reg = ISRStruct

"""
    TXEIS

Transmit FIFO empty interrupt status
"""
TXEIS

"""
    TXOIS

Transmit FIFO overflow interrupt status
"""
TXOIS

"""
    RXUIS

Receive FIFO underflow interrupt status
"""
RXUIS

"""
    RXOIS

Receive FIFO overflow interrupt status
"""
RXOIS

"""
    RXFIS

Receive FIFO full interrupt status
"""
RXFIS

"""
    MSTIS

Multi-master contention interrupt status
"""
MSTIS

end # register ISR

"""
    RISR

Raw interrupt status
"""
module RISRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct RISRStruct(regAddress)
	TXEIR:1::Read
	TXOIR:1::Read
	RXUIR:1::Read
	RXOIR:1::Read
	RXFIR:1::Read
	MSTIR:1::Read
	_:26
end
const Reg = RISRStruct

"""
    TXEIR

Transmit FIFO empty raw interrupt status
"""
TXEIR

"""
    TXOIR

Transmit FIFO overflow raw interrupt status
"""
TXOIR

"""
    RXUIR

Receive FIFO underflow raw interrupt status
"""
RXUIR

"""
    RXOIR

Receive FIFO overflow raw interrupt status
"""
RXOIR

"""
    RXFIR

Receive FIFO full raw interrupt status
"""
RXFIR

"""
    MSTIR

Multi-master contention raw interrupt status
"""
MSTIR

end # register RISR

"""
    TXOICR

TX FIFO overflow interrupt clear
"""
module TXOICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct TXOICRStruct(regAddress)
	TXOICR:1::Read
	_:31
end
const Reg = TXOICRStruct

"""
    TXOICR

Clear-on-read transmit FIFO overflow interrupt
"""
TXOICR

end # register TXOICR

"""
    RXOICR

RX FIFO overflow interrupt clear
"""
module RXOICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct RXOICRStruct(regAddress)
	RXOICR:1::Read
	_:31
end
const Reg = RXOICRStruct

"""
    RXOICR

Clear-on-read receive FIFO overflow interrupt
"""
RXOICR

end # register RXOICR

"""
    RXUICR

RX FIFO underflow interrupt clear
"""
module RXUICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct RXUICRStruct(regAddress)
	RXUICR:1::Read
	_:31
end
const Reg = RXUICRStruct

"""
    RXUICR

Clear-on-read receive FIFO underflow interrupt
"""
RXUICR

end # register RXUICR

"""
    MSTICR

Multi-master interrupt clear
"""
module MSTICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct MSTICRStruct(regAddress)
	MSTICR:1::Read
	_:31
end
const Reg = MSTICRStruct

"""
    MSTICR

Clear-on-read multi-master contention interrupt
"""
MSTICR

end # register MSTICR

"""
    ICR

Interrupt clear
"""
module ICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct ICRStruct(regAddress)
	ICR:1::Read
	_:31
end
const Reg = ICRStruct

"""
    ICR

Clear-on-read all active interrupts
"""
ICR

end # register ICR

"""
    DMACR

DMA control
"""
module DMACRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct DMACRStruct(regAddress)
	RDMAE:1::ReadWrite
	TDMAE:1::ReadWrite
	_:30
end
const Reg = DMACRStruct

"""
    RDMAE

Receive DMA enable
"""
RDMAE

"""
    TDMAE

Transmit DMA enable
"""
TDMAE

end # register DMACR

"""
    DMATDLR

DMA TX data level
"""
module DMATDLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct DMATDLRStruct(regAddress)
	DMATDL:8::ReadWrite
	_:24
end
const Reg = DMATDLRStruct

"""
    DMATDL

Transmit data watermark level
"""
DMATDL

end # register DMATDLR

"""
    DMARDLR

DMA RX data level
"""
module DMARDLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct DMARDLRStruct(regAddress)
	DMARDL:8::ReadWrite
	_:24
end
const Reg = DMARDLRStruct

"""
    DMARDL

Receive data watermark level (DMARDLR+1)
"""
DMARDL

end # register DMARDLR

"""
    IDR

Identification register
"""
module IDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct IDRStruct(regAddress)
	IDCODE:32::Read
end
const Reg = IDRStruct

"""
    IDCODE

Peripheral dentification code
"""
IDCODE

end # register IDR

"""
    SSI_VERSION_ID

Version ID
"""
module SSI_VERSION_IDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct SSI_VERSION_IDStruct(regAddress)
	SSI_COMP_VERSION:32::Read
end
const Reg = SSI_VERSION_IDStruct

"""
    SSI_COMP_VERSION

SNPS component version (format X.YY)
"""
SSI_COMP_VERSION

end # register SSI_VERSION_ID

"""
    DR0

Data Register 0 (of 36)
"""
module DR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct DR0Struct(regAddress)
	DR:32::ReadWrite
end
const Reg = DR0Struct

"""
    DR

First data register of 36
"""
DR

end # register DR0

"""
    RX_SAMPLE_DLY

RX sample delay
"""
module RX_SAMPLE_DLYMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x00000000000000f0
@regdef struct RX_SAMPLE_DLYStruct(regAddress)
	RSD:8::ReadWrite
	_:24
end
const Reg = RX_SAMPLE_DLYStruct

"""
    RSD

RXD sample delay (in SCLK cycles)
"""
RSD

end # register RX_SAMPLE_DLY

"""
    SPI_CTRLR0

SPI control
"""
module SPI_CTRLR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct SPI_CTRLR0Struct(regAddress)
	TRANS_TYPE:2::ReadWrite
	ADDR_L:4::ReadWrite
	_:2
	INST_L:2::ReadWrite
	_:1
	WAIT_CYCLES:5::ReadWrite
	SPI_DDR_EN:1::ReadWrite
	INST_DDR_EN:1::ReadWrite
	SPI_RXDS_EN:1::ReadWrite
	_:5
	XIP_CMD:8::ReadWrite
end
const Reg = SPI_CTRLR0Struct

"""
    TRANS_TYPE

Address and instruction transfer format
"""
TRANS_TYPE

"""
    ADDR_L

Address length (0b-60b in 4b increments)
"""
ADDR_L

"""
    INST_L

Instruction length (0/4/8/16b)
"""
INST_L

"""
    WAIT_CYCLES

Wait cycles between control frame transmit and data reception (in SCLK cycles)
"""
WAIT_CYCLES

"""
    SPI_DDR_EN

SPI DDR transfer enable
"""
SPI_DDR_EN

"""
    INST_DDR_EN

Instruction DDR transfer enable
"""
INST_DDR_EN

"""
    SPI_RXDS_EN

Read data strobe enable
"""
SPI_RXDS_EN

"""
    XIP_CMD

SPI Command to send in XIP mode (INST\\_L = 8-bit) or to append to Address (INST\\_L = 0-bit)
"""
XIP_CMD

end # register SPI_CTRLR0

"""
    TXD_DRIVE_EDGE

TX drive edge
"""
module TXD_DRIVE_EDGEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..XIP_SSI: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct TXD_DRIVE_EDGEStruct(regAddress)
	TDE:8::ReadWrite
	_:24
end
const Reg = TXD_DRIVE_EDGEStruct

"""
    TDE

TXD drive edge
"""
TDE

end # register TXD_DRIVE_EDGE

end # peripheral

