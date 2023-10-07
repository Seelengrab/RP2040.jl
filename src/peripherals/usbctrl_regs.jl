"""
    USBCTRL_REGS

USB FS/LS controller device registers
"""
module USBCTRL_REGS

const baseAddress = Ptr{UInt32}(1343291392)

"""
    ADDR_ENDP

Device address and endpoint control
"""
module ADDR_ENDPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct ADDR_ENDPStruct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:12
end
const Reg = ADDR_ENDPStruct

"""
    ADDRESS

In device mode, the address that the device should respond to. Set in response to a SET\\_ADDR setup packet from the host. In host mode set to the address of the device to communicate with.
"""
ADDRESS

"""
    ENDPOINT

Device endpoint to send data to. Only valid for HOST mode.
"""
ENDPOINT

end # register ADDR_ENDP

"""
    ADDR_ENDP1

Interrupt endpoint 1. Only valid for HOST mode.
"""
module ADDR_ENDP1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct ADDR_ENDP1Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP1Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP1

"""
    ADDR_ENDP2

Interrupt endpoint 2. Only valid for HOST mode.
"""
module ADDR_ENDP2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct ADDR_ENDP2Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP2Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP2

"""
    ADDR_ENDP3

Interrupt endpoint 3. Only valid for HOST mode.
"""
module ADDR_ENDP3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct ADDR_ENDP3Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP3Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP3

"""
    ADDR_ENDP4

Interrupt endpoint 4. Only valid for HOST mode.
"""
module ADDR_ENDP4Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct ADDR_ENDP4Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP4Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP4

"""
    ADDR_ENDP5

Interrupt endpoint 5. Only valid for HOST mode.
"""
module ADDR_ENDP5Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct ADDR_ENDP5Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP5Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP5

"""
    ADDR_ENDP6

Interrupt endpoint 6. Only valid for HOST mode.
"""
module ADDR_ENDP6Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct ADDR_ENDP6Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP6Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP6

"""
    ADDR_ENDP7

Interrupt endpoint 7. Only valid for HOST mode.
"""
module ADDR_ENDP7Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct ADDR_ENDP7Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP7Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP7

"""
    ADDR_ENDP8

Interrupt endpoint 8. Only valid for HOST mode.
"""
module ADDR_ENDP8Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct ADDR_ENDP8Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP8Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP8

"""
    ADDR_ENDP9

Interrupt endpoint 9. Only valid for HOST mode.
"""
module ADDR_ENDP9Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct ADDR_ENDP9Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP9Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP9

"""
    ADDR_ENDP10

Interrupt endpoint 10. Only valid for HOST mode.
"""
module ADDR_ENDP10Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct ADDR_ENDP10Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP10Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP10

"""
    ADDR_ENDP11

Interrupt endpoint 11. Only valid for HOST mode.
"""
module ADDR_ENDP11Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct ADDR_ENDP11Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP11Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP11

"""
    ADDR_ENDP12

Interrupt endpoint 12. Only valid for HOST mode.
"""
module ADDR_ENDP12Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct ADDR_ENDP12Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP12Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP12

"""
    ADDR_ENDP13

Interrupt endpoint 13. Only valid for HOST mode.
"""
module ADDR_ENDP13Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct ADDR_ENDP13Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP13Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP13

"""
    ADDR_ENDP14

Interrupt endpoint 14. Only valid for HOST mode.
"""
module ADDR_ENDP14Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct ADDR_ENDP14Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP14Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP14

"""
    ADDR_ENDP15

Interrupt endpoint 15. Only valid for HOST mode.
"""
module ADDR_ENDP15Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct ADDR_ENDP15Struct(regAddress)
	ADDRESS:7::ReadWrite
	_:9
	ENDPOINT:4::ReadWrite
	_:5
	INTEP_DIR:1::ReadWrite
	INTEP_PREAMBLE:1::ReadWrite
	_:5
end
const Reg = ADDR_ENDP15Struct

"""
    ADDRESS

Device address
"""
ADDRESS

"""
    ENDPOINT

Endpoint number of the interrupt endpoint
"""
ENDPOINT

"""
    INTEP_DIR

Direction of the interrupt endpoint. In=0, Out=1
"""
INTEP_DIR

"""
    INTEP_PREAMBLE

Interrupt EP requires preamble (is a low speed device on a full speed hub)
"""
INTEP_PREAMBLE

end # register ADDR_ENDP15

"""
    MAIN_CTRL

Main control register
"""
module MAIN_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct MAIN_CTRLStruct(regAddress)
	CONTROLLER_EN:1::ReadWrite
	HOST_NDEVICE:1::ReadWrite
	_:29
	SIM_TIMING:1::ReadWrite
end
const Reg = MAIN_CTRLStruct

"""
    CONTROLLER_EN

Enable controller
"""
CONTROLLER_EN

"""
    HOST_NDEVICE

Device mode = 0, Host mode = 1
"""
HOST_NDEVICE

"""
    SIM_TIMING

Reduced timings for simulation
"""
SIM_TIMING

end # register MAIN_CTRL

"""
    SOF_WR

Set the SOF (Start of Frame) frame number in the host controller. The SOF packet is sent every 1ms and the host will increment the frame number by 1 each time.
"""
module SOF_WRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct SOF_WRStruct(regAddress)
	COUNT:11::Write
	_:21
end
const Reg = SOF_WRStruct

"""
    COUNT

Field has no description!
"""
COUNT

end # register SOF_WR

"""
    SOF_RD

Read the last SOF (Start of Frame) frame number seen. In device mode the last SOF received from the host. In host mode the last SOF sent by the host.
"""
module SOF_RDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct SOF_RDStruct(regAddress)
	COUNT:11::Read
	_:21
end
const Reg = SOF_RDStruct

"""
    COUNT

Field has no description!
"""
COUNT

end # register SOF_RD

"""
    SIE_CTRL

SIE control register
"""
module SIE_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct SIE_CTRLStruct(regAddress)
	START_TRANS:1::ReadWrite
	SEND_SETUP:1::ReadWrite
	SEND_DATA:1::ReadWrite
	RECEIVE_DATA:1::ReadWrite
	STOP_TRANS:1::ReadWrite
	_:1
	PREAMBLE_EN:1::ReadWrite
	_:1
	SOF_SYNC:1::ReadWrite
	SOF_EN:1::ReadWrite
	KEEP_ALIVE_EN:1::ReadWrite
	VBUS_EN:1::ReadWrite
	RESUME:1::ReadWrite
	RESET_BUS:1::ReadWrite
	_:1
	PULLDOWN_EN:1::ReadWrite
	PULLUP_EN:1::ReadWrite
	RPU_OPT:1::ReadWrite
	TRANSCEIVER_PD:1::ReadWrite
	_:5
	DIRECT_DM:1::ReadWrite
	DIRECT_DP:1::ReadWrite
	DIRECT_EN:1::ReadWrite
	EP0_INT_NAK:1::ReadWrite
	EP0_INT_2BUF:1::ReadWrite
	EP0_INT_1BUF:1::ReadWrite
	EP0_DOUBLE_BUF:1::ReadWrite
	EP0_INT_STALL:1::ReadWrite
end
const Reg = SIE_CTRLStruct

"""
    START_TRANS

Host: Start transaction
"""
START_TRANS

"""
    SEND_SETUP

Host: Send Setup packet
"""
SEND_SETUP

"""
    SEND_DATA

Host: Send transaction (OUT from host)
"""
SEND_DATA

"""
    RECEIVE_DATA

Host: Receive transaction (IN to host)
"""
RECEIVE_DATA

"""
    STOP_TRANS

Host: Stop transaction
"""
STOP_TRANS

"""
    PREAMBLE_EN

Host: Preable enable for LS device on FS hub
"""
PREAMBLE_EN

"""
    SOF_SYNC

Host: Delay packet(s) until after SOF
"""
SOF_SYNC

"""
    SOF_EN

Host: Enable SOF generation (for full speed bus)
"""
SOF_EN

"""
    KEEP_ALIVE_EN

Host: Enable keep alive packet (for low speed bus)
"""
KEEP_ALIVE_EN

"""
    VBUS_EN

Host: Enable VBUS
"""
VBUS_EN

"""
    RESUME

Device: Remote wakeup. Device can initiate its own resume after suspend.
"""
RESUME

"""
    RESET_BUS

Host: Reset bus
"""
RESET_BUS

"""
    PULLDOWN_EN

Host: Enable pull down resistors
"""
PULLDOWN_EN

"""
    PULLUP_EN

Device: Enable pull up resistor
"""
PULLUP_EN

"""
    RPU_OPT

Device: Pull-up strength (0=1K2, 1=2k3)
"""
RPU_OPT

"""
    TRANSCEIVER_PD

Power down bus transceiver
"""
TRANSCEIVER_PD

"""
    DIRECT_DM

Direct control of DM
"""
DIRECT_DM

"""
    DIRECT_DP

Direct control of DP
"""
DIRECT_DP

"""
    DIRECT_EN

Direct bus drive enable
"""
DIRECT_EN

"""
    EP0_INT_NAK

Device: Set bit in EP\\_STATUS\\_STALL\\_NAK when EP0 sends a NAK
"""
EP0_INT_NAK

"""
    EP0_INT_2BUF

Device: Set bit in BUFF\\_STATUS for every 2 buffers completed on EP0
"""
EP0_INT_2BUF

"""
    EP0_INT_1BUF

Device: Set bit in BUFF\\_STATUS for every buffer completed on EP0
"""
EP0_INT_1BUF

"""
    EP0_DOUBLE_BUF

Device: EP0 single buffered = 0, double buffered = 1
"""
EP0_DOUBLE_BUF

"""
    EP0_INT_STALL

Device: Set bit in EP\\_STATUS\\_STALL\\_NAK when EP0 sends a STALL
"""
EP0_INT_STALL

end # register SIE_CTRL

"""
    SIE_STATUS

SIE status register
"""
module SIE_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct SIE_STATUSStruct(regAddress)
	VBUS_DETECTED:1::Read
	_:1
	LINE_STATE:2::Read
	SUSPENDED:1::ReadWrite
	_:3
	SPEED:2::ReadWrite
	VBUS_OVER_CURR:1::Read
	RESUME:1::ReadWrite
	_:4
	CONNECTED:1::ReadWrite
	SETUP_REC:1::ReadWrite
	TRANS_COMPLETE:1::ReadWrite
	BUS_RESET:1::ReadWrite
	_:4
	CRC_ERROR:1::ReadWrite
	BIT_STUFF_ERROR:1::ReadWrite
	RX_OVERFLOW:1::ReadWrite
	RX_TIMEOUT:1::ReadWrite
	NAK_REC:1::ReadWrite
	STALL_REC:1::ReadWrite
	ACK_REC:1::ReadWrite
	DATA_SEQ_ERROR:1::ReadWrite
end
const Reg = SIE_STATUSStruct

"""
    VBUS_DETECTED

Device: VBUS Detected
"""
VBUS_DETECTED

"""
    LINE_STATE

USB bus line state
"""
LINE_STATE

"""
    SUSPENDED

Bus in suspended state. Valid for device and host. Host and device will go into suspend if neither Keep Alive / SOF frames are enabled.
"""
SUSPENDED

"""
    SPEED

Host: device speed. Disconnected = 00, LS = 01, FS = 10
"""
SPEED

"""
    VBUS_OVER_CURR

VBUS over current detected
"""
VBUS_OVER_CURR

"""
    RESUME

Host: Device has initiated a remote resume. Device: host has initiated a resume.
"""
RESUME

"""
    CONNECTED

Device: connected
"""
CONNECTED

"""
    SETUP_REC

Device: Setup packet received
"""
SETUP_REC

"""
    TRANS_COMPLETE

Transaction complete.\n

Raised by device if:\n

* An IN or OUT packet is sent with the `LAST\\_BUFF` bit set in the buffer control register\n

Raised by host if:\n

* A setup packet is sent when no data in or data out transaction follows * An IN packet is received and the `LAST\\_BUFF` bit is set in the buffer control register * An IN packet is received with zero length * An OUT packet is sent and the `LAST\\_BUFF` bit is set
"""
TRANS_COMPLETE

"""
    BUS_RESET

Device: bus reset received
"""
BUS_RESET

"""
    CRC_ERROR

CRC Error. Raised by the Serial RX engine.
"""
CRC_ERROR

"""
    BIT_STUFF_ERROR

Bit Stuff Error. Raised by the Serial RX engine.
"""
BIT_STUFF_ERROR

"""
    RX_OVERFLOW

RX overflow is raised by the Serial RX engine if the incoming data is too fast.
"""
RX_OVERFLOW

"""
    RX_TIMEOUT

RX timeout is raised by both the host and device if an ACK is not received in the maximum time specified by the USB spec.
"""
RX_TIMEOUT

"""
    NAK_REC

Host: NAK received
"""
NAK_REC

"""
    STALL_REC

Host: STALL received
"""
STALL_REC

"""
    ACK_REC

ACK received. Raised by both host and device.
"""
ACK_REC

"""
    DATA_SEQ_ERROR

Data Sequence Error.\n

The device can raise a sequence error in the following conditions:\n

* A SETUP packet is received followed by a DATA1 packet (data phase should always be DATA0) * An OUT packet is received from the host but doesn't match the data pid in the buffer control register read from DPSRAM\n

The host can raise a data sequence error in the following conditions:\n

* An IN packet from the device has the wrong data PID
"""
DATA_SEQ_ERROR

end # register SIE_STATUS

"""
    INT_EP_CTRL

interrupt endpoint control register
"""
module INT_EP_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct INT_EP_CTRLStruct(regAddress)
	_:1
	INT_EP_ACTIVE:15::ReadWrite
	_:16
end
const Reg = INT_EP_CTRLStruct

"""
    INT_EP_ACTIVE

Host: Enable interrupt endpoint 1 -&gt; 15
"""
INT_EP_ACTIVE

end # register INT_EP_CTRL

"""
    BUFF_STATUS

Buffer status register. A bit set here indicates that a buffer has completed on the endpoint (if the buffer interrupt is enabled). It is possible for 2 buffers to be completed, so clearing the buffer status bit may instantly re set it on the next clock cycle.
"""
module BUFF_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct BUFF_STATUSStruct(regAddress)
	EP0_IN:1::ReadWrite
	EP0_OUT:1::ReadWrite
	EP1_IN:1::ReadWrite
	EP1_OUT:1::ReadWrite
	EP2_IN:1::ReadWrite
	EP2_OUT:1::ReadWrite
	EP3_IN:1::ReadWrite
	EP3_OUT:1::ReadWrite
	EP4_IN:1::ReadWrite
	EP4_OUT:1::ReadWrite
	EP5_IN:1::ReadWrite
	EP5_OUT:1::ReadWrite
	EP6_IN:1::ReadWrite
	EP6_OUT:1::ReadWrite
	EP7_IN:1::ReadWrite
	EP7_OUT:1::ReadWrite
	EP8_IN:1::ReadWrite
	EP8_OUT:1::ReadWrite
	EP9_IN:1::ReadWrite
	EP9_OUT:1::ReadWrite
	EP10_IN:1::ReadWrite
	EP10_OUT:1::ReadWrite
	EP11_IN:1::ReadWrite
	EP11_OUT:1::ReadWrite
	EP12_IN:1::ReadWrite
	EP12_OUT:1::ReadWrite
	EP13_IN:1::ReadWrite
	EP13_OUT:1::ReadWrite
	EP14_IN:1::ReadWrite
	EP14_OUT:1::ReadWrite
	EP15_IN:1::ReadWrite
	EP15_OUT:1::ReadWrite
end
const Reg = BUFF_STATUSStruct

"""
    EP0_IN

Field has no description!
"""
EP0_IN

"""
    EP0_OUT

Field has no description!
"""
EP0_OUT

"""
    EP1_IN

Field has no description!
"""
EP1_IN

"""
    EP1_OUT

Field has no description!
"""
EP1_OUT

"""
    EP2_IN

Field has no description!
"""
EP2_IN

"""
    EP2_OUT

Field has no description!
"""
EP2_OUT

"""
    EP3_IN

Field has no description!
"""
EP3_IN

"""
    EP3_OUT

Field has no description!
"""
EP3_OUT

"""
    EP4_IN

Field has no description!
"""
EP4_IN

"""
    EP4_OUT

Field has no description!
"""
EP4_OUT

"""
    EP5_IN

Field has no description!
"""
EP5_IN

"""
    EP5_OUT

Field has no description!
"""
EP5_OUT

"""
    EP6_IN

Field has no description!
"""
EP6_IN

"""
    EP6_OUT

Field has no description!
"""
EP6_OUT

"""
    EP7_IN

Field has no description!
"""
EP7_IN

"""
    EP7_OUT

Field has no description!
"""
EP7_OUT

"""
    EP8_IN

Field has no description!
"""
EP8_IN

"""
    EP8_OUT

Field has no description!
"""
EP8_OUT

"""
    EP9_IN

Field has no description!
"""
EP9_IN

"""
    EP9_OUT

Field has no description!
"""
EP9_OUT

"""
    EP10_IN

Field has no description!
"""
EP10_IN

"""
    EP10_OUT

Field has no description!
"""
EP10_OUT

"""
    EP11_IN

Field has no description!
"""
EP11_IN

"""
    EP11_OUT

Field has no description!
"""
EP11_OUT

"""
    EP12_IN

Field has no description!
"""
EP12_IN

"""
    EP12_OUT

Field has no description!
"""
EP12_OUT

"""
    EP13_IN

Field has no description!
"""
EP13_IN

"""
    EP13_OUT

Field has no description!
"""
EP13_OUT

"""
    EP14_IN

Field has no description!
"""
EP14_IN

"""
    EP14_OUT

Field has no description!
"""
EP14_OUT

"""
    EP15_IN

Field has no description!
"""
EP15_IN

"""
    EP15_OUT

Field has no description!
"""
EP15_OUT

end # register BUFF_STATUS

"""
    BUFF_CPU_SHOULD_HANDLE

Which of the double buffers should be handled. Only valid if using an interrupt per buffer (i.e. not per 2 buffers). Not valid for host interrupt endpoint polling because they are only single buffered.
"""
module BUFF_CPU_SHOULD_HANDLEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct BUFF_CPU_SHOULD_HANDLEStruct(regAddress)
	EP0_IN:1::Read
	EP0_OUT:1::Read
	EP1_IN:1::Read
	EP1_OUT:1::Read
	EP2_IN:1::Read
	EP2_OUT:1::Read
	EP3_IN:1::Read
	EP3_OUT:1::Read
	EP4_IN:1::Read
	EP4_OUT:1::Read
	EP5_IN:1::Read
	EP5_OUT:1::Read
	EP6_IN:1::Read
	EP6_OUT:1::Read
	EP7_IN:1::Read
	EP7_OUT:1::Read
	EP8_IN:1::Read
	EP8_OUT:1::Read
	EP9_IN:1::Read
	EP9_OUT:1::Read
	EP10_IN:1::Read
	EP10_OUT:1::Read
	EP11_IN:1::Read
	EP11_OUT:1::Read
	EP12_IN:1::Read
	EP12_OUT:1::Read
	EP13_IN:1::Read
	EP13_OUT:1::Read
	EP14_IN:1::Read
	EP14_OUT:1::Read
	EP15_IN:1::Read
	EP15_OUT:1::Read
end
const Reg = BUFF_CPU_SHOULD_HANDLEStruct

"""
    EP0_IN

Field has no description!
"""
EP0_IN

"""
    EP0_OUT

Field has no description!
"""
EP0_OUT

"""
    EP1_IN

Field has no description!
"""
EP1_IN

"""
    EP1_OUT

Field has no description!
"""
EP1_OUT

"""
    EP2_IN

Field has no description!
"""
EP2_IN

"""
    EP2_OUT

Field has no description!
"""
EP2_OUT

"""
    EP3_IN

Field has no description!
"""
EP3_IN

"""
    EP3_OUT

Field has no description!
"""
EP3_OUT

"""
    EP4_IN

Field has no description!
"""
EP4_IN

"""
    EP4_OUT

Field has no description!
"""
EP4_OUT

"""
    EP5_IN

Field has no description!
"""
EP5_IN

"""
    EP5_OUT

Field has no description!
"""
EP5_OUT

"""
    EP6_IN

Field has no description!
"""
EP6_IN

"""
    EP6_OUT

Field has no description!
"""
EP6_OUT

"""
    EP7_IN

Field has no description!
"""
EP7_IN

"""
    EP7_OUT

Field has no description!
"""
EP7_OUT

"""
    EP8_IN

Field has no description!
"""
EP8_IN

"""
    EP8_OUT

Field has no description!
"""
EP8_OUT

"""
    EP9_IN

Field has no description!
"""
EP9_IN

"""
    EP9_OUT

Field has no description!
"""
EP9_OUT

"""
    EP10_IN

Field has no description!
"""
EP10_IN

"""
    EP10_OUT

Field has no description!
"""
EP10_OUT

"""
    EP11_IN

Field has no description!
"""
EP11_IN

"""
    EP11_OUT

Field has no description!
"""
EP11_OUT

"""
    EP12_IN

Field has no description!
"""
EP12_IN

"""
    EP12_OUT

Field has no description!
"""
EP12_OUT

"""
    EP13_IN

Field has no description!
"""
EP13_IN

"""
    EP13_OUT

Field has no description!
"""
EP13_OUT

"""
    EP14_IN

Field has no description!
"""
EP14_IN

"""
    EP14_OUT

Field has no description!
"""
EP14_OUT

"""
    EP15_IN

Field has no description!
"""
EP15_IN

"""
    EP15_OUT

Field has no description!
"""
EP15_OUT

end # register BUFF_CPU_SHOULD_HANDLE

"""
    EP_ABORT

Device only: Can be set to ignore the buffer control register for this endpoint in case you would like to revoke a buffer. A NAK will be sent for every access to the endpoint until this bit is cleared. A corresponding bit in `EP\\_ABORT\\_DONE` is set when it is safe to modify the buffer control register.
"""
module EP_ABORTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct EP_ABORTStruct(regAddress)
	EP0_IN:1::ReadWrite
	EP0_OUT:1::ReadWrite
	EP1_IN:1::ReadWrite
	EP1_OUT:1::ReadWrite
	EP2_IN:1::ReadWrite
	EP2_OUT:1::ReadWrite
	EP3_IN:1::ReadWrite
	EP3_OUT:1::ReadWrite
	EP4_IN:1::ReadWrite
	EP4_OUT:1::ReadWrite
	EP5_IN:1::ReadWrite
	EP5_OUT:1::ReadWrite
	EP6_IN:1::ReadWrite
	EP6_OUT:1::ReadWrite
	EP7_IN:1::ReadWrite
	EP7_OUT:1::ReadWrite
	EP8_IN:1::ReadWrite
	EP8_OUT:1::ReadWrite
	EP9_IN:1::ReadWrite
	EP9_OUT:1::ReadWrite
	EP10_IN:1::ReadWrite
	EP10_OUT:1::ReadWrite
	EP11_IN:1::ReadWrite
	EP11_OUT:1::ReadWrite
	EP12_IN:1::ReadWrite
	EP12_OUT:1::ReadWrite
	EP13_IN:1::ReadWrite
	EP13_OUT:1::ReadWrite
	EP14_IN:1::ReadWrite
	EP14_OUT:1::ReadWrite
	EP15_IN:1::ReadWrite
	EP15_OUT:1::ReadWrite
end
const Reg = EP_ABORTStruct

"""
    EP0_IN

Field has no description!
"""
EP0_IN

"""
    EP0_OUT

Field has no description!
"""
EP0_OUT

"""
    EP1_IN

Field has no description!
"""
EP1_IN

"""
    EP1_OUT

Field has no description!
"""
EP1_OUT

"""
    EP2_IN

Field has no description!
"""
EP2_IN

"""
    EP2_OUT

Field has no description!
"""
EP2_OUT

"""
    EP3_IN

Field has no description!
"""
EP3_IN

"""
    EP3_OUT

Field has no description!
"""
EP3_OUT

"""
    EP4_IN

Field has no description!
"""
EP4_IN

"""
    EP4_OUT

Field has no description!
"""
EP4_OUT

"""
    EP5_IN

Field has no description!
"""
EP5_IN

"""
    EP5_OUT

Field has no description!
"""
EP5_OUT

"""
    EP6_IN

Field has no description!
"""
EP6_IN

"""
    EP6_OUT

Field has no description!
"""
EP6_OUT

"""
    EP7_IN

Field has no description!
"""
EP7_IN

"""
    EP7_OUT

Field has no description!
"""
EP7_OUT

"""
    EP8_IN

Field has no description!
"""
EP8_IN

"""
    EP8_OUT

Field has no description!
"""
EP8_OUT

"""
    EP9_IN

Field has no description!
"""
EP9_IN

"""
    EP9_OUT

Field has no description!
"""
EP9_OUT

"""
    EP10_IN

Field has no description!
"""
EP10_IN

"""
    EP10_OUT

Field has no description!
"""
EP10_OUT

"""
    EP11_IN

Field has no description!
"""
EP11_IN

"""
    EP11_OUT

Field has no description!
"""
EP11_OUT

"""
    EP12_IN

Field has no description!
"""
EP12_IN

"""
    EP12_OUT

Field has no description!
"""
EP12_OUT

"""
    EP13_IN

Field has no description!
"""
EP13_IN

"""
    EP13_OUT

Field has no description!
"""
EP13_OUT

"""
    EP14_IN

Field has no description!
"""
EP14_IN

"""
    EP14_OUT

Field has no description!
"""
EP14_OUT

"""
    EP15_IN

Field has no description!
"""
EP15_IN

"""
    EP15_OUT

Field has no description!
"""
EP15_OUT

end # register EP_ABORT

"""
    EP_ABORT_DONE

Device only: Used in conjunction with `EP\\_ABORT`. Set once an endpoint is idle so the programmer knows it is safe to modify the buffer control register.
"""
module EP_ABORT_DONEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct EP_ABORT_DONEStruct(regAddress)
	EP0_IN:1::ReadWrite
	EP0_OUT:1::ReadWrite
	EP1_IN:1::ReadWrite
	EP1_OUT:1::ReadWrite
	EP2_IN:1::ReadWrite
	EP2_OUT:1::ReadWrite
	EP3_IN:1::ReadWrite
	EP3_OUT:1::ReadWrite
	EP4_IN:1::ReadWrite
	EP4_OUT:1::ReadWrite
	EP5_IN:1::ReadWrite
	EP5_OUT:1::ReadWrite
	EP6_IN:1::ReadWrite
	EP6_OUT:1::ReadWrite
	EP7_IN:1::ReadWrite
	EP7_OUT:1::ReadWrite
	EP8_IN:1::ReadWrite
	EP8_OUT:1::ReadWrite
	EP9_IN:1::ReadWrite
	EP9_OUT:1::ReadWrite
	EP10_IN:1::ReadWrite
	EP10_OUT:1::ReadWrite
	EP11_IN:1::ReadWrite
	EP11_OUT:1::ReadWrite
	EP12_IN:1::ReadWrite
	EP12_OUT:1::ReadWrite
	EP13_IN:1::ReadWrite
	EP13_OUT:1::ReadWrite
	EP14_IN:1::ReadWrite
	EP14_OUT:1::ReadWrite
	EP15_IN:1::ReadWrite
	EP15_OUT:1::ReadWrite
end
const Reg = EP_ABORT_DONEStruct

"""
    EP0_IN

Field has no description!
"""
EP0_IN

"""
    EP0_OUT

Field has no description!
"""
EP0_OUT

"""
    EP1_IN

Field has no description!
"""
EP1_IN

"""
    EP1_OUT

Field has no description!
"""
EP1_OUT

"""
    EP2_IN

Field has no description!
"""
EP2_IN

"""
    EP2_OUT

Field has no description!
"""
EP2_OUT

"""
    EP3_IN

Field has no description!
"""
EP3_IN

"""
    EP3_OUT

Field has no description!
"""
EP3_OUT

"""
    EP4_IN

Field has no description!
"""
EP4_IN

"""
    EP4_OUT

Field has no description!
"""
EP4_OUT

"""
    EP5_IN

Field has no description!
"""
EP5_IN

"""
    EP5_OUT

Field has no description!
"""
EP5_OUT

"""
    EP6_IN

Field has no description!
"""
EP6_IN

"""
    EP6_OUT

Field has no description!
"""
EP6_OUT

"""
    EP7_IN

Field has no description!
"""
EP7_IN

"""
    EP7_OUT

Field has no description!
"""
EP7_OUT

"""
    EP8_IN

Field has no description!
"""
EP8_IN

"""
    EP8_OUT

Field has no description!
"""
EP8_OUT

"""
    EP9_IN

Field has no description!
"""
EP9_IN

"""
    EP9_OUT

Field has no description!
"""
EP9_OUT

"""
    EP10_IN

Field has no description!
"""
EP10_IN

"""
    EP10_OUT

Field has no description!
"""
EP10_OUT

"""
    EP11_IN

Field has no description!
"""
EP11_IN

"""
    EP11_OUT

Field has no description!
"""
EP11_OUT

"""
    EP12_IN

Field has no description!
"""
EP12_IN

"""
    EP12_OUT

Field has no description!
"""
EP12_OUT

"""
    EP13_IN

Field has no description!
"""
EP13_IN

"""
    EP13_OUT

Field has no description!
"""
EP13_OUT

"""
    EP14_IN

Field has no description!
"""
EP14_IN

"""
    EP14_OUT

Field has no description!
"""
EP14_OUT

"""
    EP15_IN

Field has no description!
"""
EP15_IN

"""
    EP15_OUT

Field has no description!
"""
EP15_OUT

end # register EP_ABORT_DONE

"""
    EP_STALL_ARM

Device: this bit must be set in conjunction with the `STALL` bit in the buffer control register to send a STALL on EP0. The device controller clears these bits when a SETUP packet is received because the USB spec requires that a STALL condition is cleared when a SETUP packet is received.
"""
module EP_STALL_ARMMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct EP_STALL_ARMStruct(regAddress)
	EP0_IN:1::ReadWrite
	EP0_OUT:1::ReadWrite
	_:30
end
const Reg = EP_STALL_ARMStruct

"""
    EP0_IN

Field has no description!
"""
EP0_IN

"""
    EP0_OUT

Field has no description!
"""
EP0_OUT

end # register EP_STALL_ARM

"""
    NAK_POLL

Used by the host controller. Sets the wait time in microseconds before trying again if the device replies with a NAK.
"""
module NAK_POLLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct NAK_POLLStruct(regAddress)
	DELAY_LS:10::ReadWrite
	_:6
	DELAY_FS:10::ReadWrite
	_:6
end
const Reg = NAK_POLLStruct

"""
    DELAY_LS

NAK polling interval for a low speed device
"""
DELAY_LS

"""
    DELAY_FS

NAK polling interval for a full speed device
"""
DELAY_FS

end # register NAK_POLL

"""
    EP_STATUS_STALL_NAK

Device: bits are set when the `IRQ\\_ON\\_NAK` or `IRQ\\_ON\\_STALL` bits are set. For EP0 this comes from `SIE\\_CTRL`. For all other endpoints it comes from the endpoint control register.
"""
module EP_STATUS_STALL_NAKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct EP_STATUS_STALL_NAKStruct(regAddress)
	EP0_IN:1::ReadWrite
	EP0_OUT:1::ReadWrite
	EP1_IN:1::ReadWrite
	EP1_OUT:1::ReadWrite
	EP2_IN:1::ReadWrite
	EP2_OUT:1::ReadWrite
	EP3_IN:1::ReadWrite
	EP3_OUT:1::ReadWrite
	EP4_IN:1::ReadWrite
	EP4_OUT:1::ReadWrite
	EP5_IN:1::ReadWrite
	EP5_OUT:1::ReadWrite
	EP6_IN:1::ReadWrite
	EP6_OUT:1::ReadWrite
	EP7_IN:1::ReadWrite
	EP7_OUT:1::ReadWrite
	EP8_IN:1::ReadWrite
	EP8_OUT:1::ReadWrite
	EP9_IN:1::ReadWrite
	EP9_OUT:1::ReadWrite
	EP10_IN:1::ReadWrite
	EP10_OUT:1::ReadWrite
	EP11_IN:1::ReadWrite
	EP11_OUT:1::ReadWrite
	EP12_IN:1::ReadWrite
	EP12_OUT:1::ReadWrite
	EP13_IN:1::ReadWrite
	EP13_OUT:1::ReadWrite
	EP14_IN:1::ReadWrite
	EP14_OUT:1::ReadWrite
	EP15_IN:1::ReadWrite
	EP15_OUT:1::ReadWrite
end
const Reg = EP_STATUS_STALL_NAKStruct

"""
    EP0_IN

Field has no description!
"""
EP0_IN

"""
    EP0_OUT

Field has no description!
"""
EP0_OUT

"""
    EP1_IN

Field has no description!
"""
EP1_IN

"""
    EP1_OUT

Field has no description!
"""
EP1_OUT

"""
    EP2_IN

Field has no description!
"""
EP2_IN

"""
    EP2_OUT

Field has no description!
"""
EP2_OUT

"""
    EP3_IN

Field has no description!
"""
EP3_IN

"""
    EP3_OUT

Field has no description!
"""
EP3_OUT

"""
    EP4_IN

Field has no description!
"""
EP4_IN

"""
    EP4_OUT

Field has no description!
"""
EP4_OUT

"""
    EP5_IN

Field has no description!
"""
EP5_IN

"""
    EP5_OUT

Field has no description!
"""
EP5_OUT

"""
    EP6_IN

Field has no description!
"""
EP6_IN

"""
    EP6_OUT

Field has no description!
"""
EP6_OUT

"""
    EP7_IN

Field has no description!
"""
EP7_IN

"""
    EP7_OUT

Field has no description!
"""
EP7_OUT

"""
    EP8_IN

Field has no description!
"""
EP8_IN

"""
    EP8_OUT

Field has no description!
"""
EP8_OUT

"""
    EP9_IN

Field has no description!
"""
EP9_IN

"""
    EP9_OUT

Field has no description!
"""
EP9_OUT

"""
    EP10_IN

Field has no description!
"""
EP10_IN

"""
    EP10_OUT

Field has no description!
"""
EP10_OUT

"""
    EP11_IN

Field has no description!
"""
EP11_IN

"""
    EP11_OUT

Field has no description!
"""
EP11_OUT

"""
    EP12_IN

Field has no description!
"""
EP12_IN

"""
    EP12_OUT

Field has no description!
"""
EP12_OUT

"""
    EP13_IN

Field has no description!
"""
EP13_IN

"""
    EP13_OUT

Field has no description!
"""
EP13_OUT

"""
    EP14_IN

Field has no description!
"""
EP14_IN

"""
    EP14_OUT

Field has no description!
"""
EP14_OUT

"""
    EP15_IN

Field has no description!
"""
EP15_IN

"""
    EP15_OUT

Field has no description!
"""
EP15_OUT

end # register EP_STATUS_STALL_NAK

"""
    USB_MUXING

Where to connect the USB controller. Should be to\\_phy by default.
"""
module USB_MUXINGMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct USB_MUXINGStruct(regAddress)
	TO_PHY:1::ReadWrite
	TO_EXTPHY:1::ReadWrite
	TO_DIGITAL_PAD:1::ReadWrite
	SOFTCON:1::ReadWrite
	_:28
end
const Reg = USB_MUXINGStruct

"""
    TO_PHY

Field has no description!
"""
TO_PHY

"""
    TO_EXTPHY

Field has no description!
"""
TO_EXTPHY

"""
    TO_DIGITAL_PAD

Field has no description!
"""
TO_DIGITAL_PAD

"""
    SOFTCON

Field has no description!
"""
SOFTCON

end # register USB_MUXING

"""
    USB_PWR

Overrides for the power signals in the event that the VBUS signals are not hooked up to GPIO. Set the value of the override and then the override enable to switch over to the override value.
"""
module USB_PWRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct USB_PWRStruct(regAddress)
	VBUS_EN:1::ReadWrite
	VBUS_EN_OVERRIDE_EN:1::ReadWrite
	VBUS_DETECT:1::ReadWrite
	VBUS_DETECT_OVERRIDE_EN:1::ReadWrite
	OVERCURR_DETECT:1::ReadWrite
	OVERCURR_DETECT_EN:1::ReadWrite
	_:26
end
const Reg = USB_PWRStruct

"""
    VBUS_EN

Field has no description!
"""
VBUS_EN

"""
    VBUS_EN_OVERRIDE_EN

Field has no description!
"""
VBUS_EN_OVERRIDE_EN

"""
    VBUS_DETECT

Field has no description!
"""
VBUS_DETECT

"""
    VBUS_DETECT_OVERRIDE_EN

Field has no description!
"""
VBUS_DETECT_OVERRIDE_EN

"""
    OVERCURR_DETECT

Field has no description!
"""
OVERCURR_DETECT

"""
    OVERCURR_DETECT_EN

Field has no description!
"""
OVERCURR_DETECT_EN

end # register USB_PWR

"""
    USBPHY_DIRECT

This register allows for direct control of the USB phy. Use in conjunction with usbphy\\_direct\\_override register to enable each override bit.
"""
module USBPHY_DIRECTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct USBPHY_DIRECTStruct(regAddress)
	DP_PULLUP_HISEL:1::ReadWrite
	DP_PULLUP_EN:1::ReadWrite
	DP_PULLDN_EN:1::ReadWrite
	_:1
	DM_PULLUP_HISEL:1::ReadWrite
	DM_PULLUP_EN:1::ReadWrite
	DM_PULLDN_EN:1::ReadWrite
	_:1
	TX_DP_OE:1::ReadWrite
	TX_DM_OE:1::ReadWrite
	TX_DP:1::ReadWrite
	TX_DM:1::ReadWrite
	RX_PD:1::ReadWrite
	TX_PD:1::ReadWrite
	TX_FSSLEW:1::ReadWrite
	TX_DIFFMODE:1::ReadWrite
	RX_DD:1::Read
	RX_DP:1::Read
	RX_DM:1::Read
	DP_OVCN:1::Read
	DM_OVCN:1::Read
	DP_OVV:1::Read
	DM_OVV:1::Read
	_:9
end
const Reg = USBPHY_DIRECTStruct

"""
    DP_PULLUP_HISEL

Enable the second DP pull up resistor. 0 - Pull = Rpu2; 1 - Pull = Rpu1 + Rpu2
"""
DP_PULLUP_HISEL

"""
    DP_PULLUP_EN

DP pull up enable
"""
DP_PULLUP_EN

"""
    DP_PULLDN_EN

DP pull down enable
"""
DP_PULLDN_EN

"""
    DM_PULLUP_HISEL

Enable the second DM pull up resistor. 0 - Pull = Rpu2; 1 - Pull = Rpu1 + Rpu2
"""
DM_PULLUP_HISEL

"""
    DM_PULLUP_EN

DM pull up enable
"""
DM_PULLUP_EN

"""
    DM_PULLDN_EN

DM pull down enable
"""
DM_PULLDN_EN

"""
    TX_DP_OE

Output enable. If TX\\_DIFFMODE=1, OE for DPP/DPM diff pair. 0 - DPP/DPM in Hi-Z state; 1 - DPP/DPM driving

If TX\\_DIFFMODE=0, OE for DPP only. 0 - DPP in Hi-Z state; 1 - DPP driving
"""
TX_DP_OE

"""
    TX_DM_OE

Output enable. If TX\\_DIFFMODE=1, Ignored.

If TX\\_DIFFMODE=0, OE for DPM only. 0 - DPM in Hi-Z state; 1 - DPM driving
"""
TX_DM_OE

"""
    TX_DP

Output data. If TX\\_DIFFMODE=1, Drives DPP/DPM diff pair. TX\\_DP\\_OE=1 to enable drive. DPP=TX\\_DP, DPM=~TX\\_DP

If TX\\_DIFFMODE=0, Drives DPP only. TX\\_DP\\_OE=1 to enable drive. DPP=TX\\_DP
"""
TX_DP

"""
    TX_DM

Output data. TX\\_DIFFMODE=1, Ignored

TX\\_DIFFMODE=0, Drives DPM only. TX\\_DM\\_OE=1 to enable drive. DPM=TX\\_DM
"""
TX_DM

"""
    RX_PD

RX power down override (if override enable is set). 1 = powered down.
"""
RX_PD

"""
    TX_PD

TX power down override (if override enable is set). 1 = powered down.
"""
TX_PD

"""
    TX_FSSLEW

TX\\_FSSLEW=0: Low speed slew rate

TX\\_FSSLEW=1: Full speed slew rate
"""
TX_FSSLEW

"""
    TX_DIFFMODE

TX\\_DIFFMODE=0: Single ended mode

TX\\_DIFFMODE=1: Differential drive mode (TX\\_DM, TX\\_DM\\_OE ignored)
"""
TX_DIFFMODE

"""
    RX_DD

Differential RX
"""
RX_DD

"""
    RX_DP

DPP pin state
"""
RX_DP

"""
    RX_DM

DPM pin state
"""
RX_DM

"""
    DP_OVCN

DP overcurrent
"""
DP_OVCN

"""
    DM_OVCN

DM overcurrent
"""
DM_OVCN

"""
    DP_OVV

DP over voltage
"""
DP_OVV

"""
    DM_OVV

DM over voltage
"""
DM_OVV

end # register USBPHY_DIRECT

"""
    USBPHY_DIRECT_OVERRIDE

Override enable for each control in usbphy\\_direct
"""
module USBPHY_DIRECT_OVERRIDEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct USBPHY_DIRECT_OVERRIDEStruct(regAddress)
	DP_PULLUP_HISEL_OVERRIDE_EN:1::ReadWrite
	DM_PULLUP_HISEL_OVERRIDE_EN:1::ReadWrite
	DP_PULLUP_EN_OVERRIDE_EN:1::ReadWrite
	DP_PULLDN_EN_OVERRIDE_EN:1::ReadWrite
	DM_PULLDN_EN_OVERRIDE_EN:1::ReadWrite
	TX_DP_OE_OVERRIDE_EN:1::ReadWrite
	TX_DM_OE_OVERRIDE_EN:1::ReadWrite
	TX_DP_OVERRIDE_EN:1::ReadWrite
	TX_DM_OVERRIDE_EN:1::ReadWrite
	RX_PD_OVERRIDE_EN:1::ReadWrite
	TX_PD_OVERRIDE_EN:1::ReadWrite
	TX_FSSLEW_OVERRIDE_EN:1::ReadWrite
	DM_PULLUP_OVERRIDE_EN:1::ReadWrite
	_:2
	TX_DIFFMODE_OVERRIDE_EN:1::ReadWrite
	_:16
end
const Reg = USBPHY_DIRECT_OVERRIDEStruct

"""
    DP_PULLUP_HISEL_OVERRIDE_EN

Field has no description!
"""
DP_PULLUP_HISEL_OVERRIDE_EN

"""
    DM_PULLUP_HISEL_OVERRIDE_EN

Field has no description!
"""
DM_PULLUP_HISEL_OVERRIDE_EN

"""
    DP_PULLUP_EN_OVERRIDE_EN

Field has no description!
"""
DP_PULLUP_EN_OVERRIDE_EN

"""
    DP_PULLDN_EN_OVERRIDE_EN

Field has no description!
"""
DP_PULLDN_EN_OVERRIDE_EN

"""
    DM_PULLDN_EN_OVERRIDE_EN

Field has no description!
"""
DM_PULLDN_EN_OVERRIDE_EN

"""
    TX_DP_OE_OVERRIDE_EN

Field has no description!
"""
TX_DP_OE_OVERRIDE_EN

"""
    TX_DM_OE_OVERRIDE_EN

Field has no description!
"""
TX_DM_OE_OVERRIDE_EN

"""
    TX_DP_OVERRIDE_EN

Field has no description!
"""
TX_DP_OVERRIDE_EN

"""
    TX_DM_OVERRIDE_EN

Field has no description!
"""
TX_DM_OVERRIDE_EN

"""
    RX_PD_OVERRIDE_EN

Field has no description!
"""
RX_PD_OVERRIDE_EN

"""
    TX_PD_OVERRIDE_EN

Field has no description!
"""
TX_PD_OVERRIDE_EN

"""
    TX_FSSLEW_OVERRIDE_EN

Field has no description!
"""
TX_FSSLEW_OVERRIDE_EN

"""
    DM_PULLUP_OVERRIDE_EN

Field has no description!
"""
DM_PULLUP_OVERRIDE_EN

"""
    TX_DIFFMODE_OVERRIDE_EN

Field has no description!
"""
TX_DIFFMODE_OVERRIDE_EN

end # register USBPHY_DIRECT_OVERRIDE

"""
    USBPHY_TRIM

Used to adjust trim values of USB phy pull down resistors.
"""
module USBPHY_TRIMMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct USBPHY_TRIMStruct(regAddress)
	DP_PULLDN_TRIM:5::ReadWrite
	_:3
	DM_PULLDN_TRIM:5::ReadWrite
	_:19
end
const Reg = USBPHY_TRIMStruct

"""
    DP_PULLDN_TRIM

Value to drive to USB PHY

DP pulldown resistor trim control

Experimental data suggests that the reset value will work, but this register allows adjustment if required
"""
DP_PULLDN_TRIM

"""
    DM_PULLDN_TRIM

Value to drive to USB PHY

DM pulldown resistor trim control

Experimental data suggests that the reset value will work, but this register allows adjustment if required
"""
DM_PULLDN_TRIM

end # register USBPHY_TRIM

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct INTRStruct(regAddress)
	HOST_CONN_DIS:1::Read
	HOST_RESUME:1::Read
	HOST_SOF:1::Read
	TRANS_COMPLETE:1::Read
	BUFF_STATUS:1::Read
	ERROR_DATA_SEQ:1::Read
	ERROR_RX_TIMEOUT:1::Read
	ERROR_RX_OVERFLOW:1::Read
	ERROR_BIT_STUFF:1::Read
	ERROR_CRC:1::Read
	STALL:1::Read
	VBUS_DETECT:1::Read
	BUS_RESET:1::Read
	DEV_CONN_DIS:1::Read
	DEV_SUSPEND:1::Read
	DEV_RESUME_FROM_HOST:1::Read
	SETUP_REQ:1::Read
	DEV_SOF:1::Read
	ABORT_DONE:1::Read
	EP_STALL_NAK:1::Read
	_:12
end
const Reg = INTRStruct

"""
    HOST_CONN_DIS

Host: raised when a device is connected or disconnected (i.e. when SIE\\_STATUS.SPEED changes). Cleared by writing to SIE\\_STATUS.SPEED
"""
HOST_CONN_DIS

"""
    HOST_RESUME

Host: raised when a device wakes up the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
HOST_RESUME

"""
    HOST_SOF

Host: raised every time the host sends a SOF (Start of Frame). Cleared by reading SOF\\_RD
"""
HOST_SOF

"""
    TRANS_COMPLETE

Raised every time SIE\\_STATUS.TRANS\\_COMPLETE is set. Clear by writing to this bit.
"""
TRANS_COMPLETE

"""
    BUFF_STATUS

Raised when any bit in BUFF\\_STATUS is set. Clear by clearing all bits in BUFF\\_STATUS.
"""
BUFF_STATUS

"""
    ERROR_DATA_SEQ

Source: SIE\\_STATUS.DATA\\_SEQ\\_ERROR
"""
ERROR_DATA_SEQ

"""
    ERROR_RX_TIMEOUT

Source: SIE\\_STATUS.RX\\_TIMEOUT
"""
ERROR_RX_TIMEOUT

"""
    ERROR_RX_OVERFLOW

Source: SIE\\_STATUS.RX\\_OVERFLOW
"""
ERROR_RX_OVERFLOW

"""
    ERROR_BIT_STUFF

Source: SIE\\_STATUS.BIT\\_STUFF\\_ERROR
"""
ERROR_BIT_STUFF

"""
    ERROR_CRC

Source: SIE\\_STATUS.CRC\\_ERROR
"""
ERROR_CRC

"""
    STALL

Source: SIE\\_STATUS.STALL\\_REC
"""
STALL

"""
    VBUS_DETECT

Source: SIE\\_STATUS.VBUS\\_DETECTED
"""
VBUS_DETECT

"""
    BUS_RESET

Source: SIE\\_STATUS.BUS\\_RESET
"""
BUS_RESET

"""
    DEV_CONN_DIS

Set when the device connection state changes. Cleared by writing to SIE\\_STATUS.CONNECTED
"""
DEV_CONN_DIS

"""
    DEV_SUSPEND

Set when the device suspend state changes. Cleared by writing to SIE\\_STATUS.SUSPENDED
"""
DEV_SUSPEND

"""
    DEV_RESUME_FROM_HOST

Set when the device receives a resume from the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
DEV_RESUME_FROM_HOST

"""
    SETUP_REQ

Device. Source: SIE\\_STATUS.SETUP\\_REC
"""
SETUP_REQ

"""
    DEV_SOF

Set every time the device receives a SOF (Start of Frame) packet. Cleared by reading SOF\\_RD
"""
DEV_SOF

"""
    ABORT_DONE

Raised when any bit in ABORT\\_DONE is set. Clear by clearing all bits in ABORT\\_DONE.
"""
ABORT_DONE

"""
    EP_STALL_NAK

Raised when any bit in EP\\_STATUS\\_STALL\\_NAK is set. Clear by clearing all bits in EP\\_STATUS\\_STALL\\_NAK.
"""
EP_STALL_NAK

end # register INTR

"""
    INTE

Interrupt Enable
"""
module INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct INTEStruct(regAddress)
	HOST_CONN_DIS:1::ReadWrite
	HOST_RESUME:1::ReadWrite
	HOST_SOF:1::ReadWrite
	TRANS_COMPLETE:1::ReadWrite
	BUFF_STATUS:1::ReadWrite
	ERROR_DATA_SEQ:1::ReadWrite
	ERROR_RX_TIMEOUT:1::ReadWrite
	ERROR_RX_OVERFLOW:1::ReadWrite
	ERROR_BIT_STUFF:1::ReadWrite
	ERROR_CRC:1::ReadWrite
	STALL:1::ReadWrite
	VBUS_DETECT:1::ReadWrite
	BUS_RESET:1::ReadWrite
	DEV_CONN_DIS:1::ReadWrite
	DEV_SUSPEND:1::ReadWrite
	DEV_RESUME_FROM_HOST:1::ReadWrite
	SETUP_REQ:1::ReadWrite
	DEV_SOF:1::ReadWrite
	ABORT_DONE:1::ReadWrite
	EP_STALL_NAK:1::ReadWrite
	_:12
end
const Reg = INTEStruct

"""
    HOST_CONN_DIS

Host: raised when a device is connected or disconnected (i.e. when SIE\\_STATUS.SPEED changes). Cleared by writing to SIE\\_STATUS.SPEED
"""
HOST_CONN_DIS

"""
    HOST_RESUME

Host: raised when a device wakes up the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
HOST_RESUME

"""
    HOST_SOF

Host: raised every time the host sends a SOF (Start of Frame). Cleared by reading SOF\\_RD
"""
HOST_SOF

"""
    TRANS_COMPLETE

Raised every time SIE\\_STATUS.TRANS\\_COMPLETE is set. Clear by writing to this bit.
"""
TRANS_COMPLETE

"""
    BUFF_STATUS

Raised when any bit in BUFF\\_STATUS is set. Clear by clearing all bits in BUFF\\_STATUS.
"""
BUFF_STATUS

"""
    ERROR_DATA_SEQ

Source: SIE\\_STATUS.DATA\\_SEQ\\_ERROR
"""
ERROR_DATA_SEQ

"""
    ERROR_RX_TIMEOUT

Source: SIE\\_STATUS.RX\\_TIMEOUT
"""
ERROR_RX_TIMEOUT

"""
    ERROR_RX_OVERFLOW

Source: SIE\\_STATUS.RX\\_OVERFLOW
"""
ERROR_RX_OVERFLOW

"""
    ERROR_BIT_STUFF

Source: SIE\\_STATUS.BIT\\_STUFF\\_ERROR
"""
ERROR_BIT_STUFF

"""
    ERROR_CRC

Source: SIE\\_STATUS.CRC\\_ERROR
"""
ERROR_CRC

"""
    STALL

Source: SIE\\_STATUS.STALL\\_REC
"""
STALL

"""
    VBUS_DETECT

Source: SIE\\_STATUS.VBUS\\_DETECTED
"""
VBUS_DETECT

"""
    BUS_RESET

Source: SIE\\_STATUS.BUS\\_RESET
"""
BUS_RESET

"""
    DEV_CONN_DIS

Set when the device connection state changes. Cleared by writing to SIE\\_STATUS.CONNECTED
"""
DEV_CONN_DIS

"""
    DEV_SUSPEND

Set when the device suspend state changes. Cleared by writing to SIE\\_STATUS.SUSPENDED
"""
DEV_SUSPEND

"""
    DEV_RESUME_FROM_HOST

Set when the device receives a resume from the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
DEV_RESUME_FROM_HOST

"""
    SETUP_REQ

Device. Source: SIE\\_STATUS.SETUP\\_REC
"""
SETUP_REQ

"""
    DEV_SOF

Set every time the device receives a SOF (Start of Frame) packet. Cleared by reading SOF\\_RD
"""
DEV_SOF

"""
    ABORT_DONE

Raised when any bit in ABORT\\_DONE is set. Clear by clearing all bits in ABORT\\_DONE.
"""
ABORT_DONE

"""
    EP_STALL_NAK

Raised when any bit in EP\\_STATUS\\_STALL\\_NAK is set. Clear by clearing all bits in EP\\_STATUS\\_STALL\\_NAK.
"""
EP_STALL_NAK

end # register INTE

"""
    INTF

Interrupt Force
"""
module INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct INTFStruct(regAddress)
	HOST_CONN_DIS:1::ReadWrite
	HOST_RESUME:1::ReadWrite
	HOST_SOF:1::ReadWrite
	TRANS_COMPLETE:1::ReadWrite
	BUFF_STATUS:1::ReadWrite
	ERROR_DATA_SEQ:1::ReadWrite
	ERROR_RX_TIMEOUT:1::ReadWrite
	ERROR_RX_OVERFLOW:1::ReadWrite
	ERROR_BIT_STUFF:1::ReadWrite
	ERROR_CRC:1::ReadWrite
	STALL:1::ReadWrite
	VBUS_DETECT:1::ReadWrite
	BUS_RESET:1::ReadWrite
	DEV_CONN_DIS:1::ReadWrite
	DEV_SUSPEND:1::ReadWrite
	DEV_RESUME_FROM_HOST:1::ReadWrite
	SETUP_REQ:1::ReadWrite
	DEV_SOF:1::ReadWrite
	ABORT_DONE:1::ReadWrite
	EP_STALL_NAK:1::ReadWrite
	_:12
end
const Reg = INTFStruct

"""
    HOST_CONN_DIS

Host: raised when a device is connected or disconnected (i.e. when SIE\\_STATUS.SPEED changes). Cleared by writing to SIE\\_STATUS.SPEED
"""
HOST_CONN_DIS

"""
    HOST_RESUME

Host: raised when a device wakes up the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
HOST_RESUME

"""
    HOST_SOF

Host: raised every time the host sends a SOF (Start of Frame). Cleared by reading SOF\\_RD
"""
HOST_SOF

"""
    TRANS_COMPLETE

Raised every time SIE\\_STATUS.TRANS\\_COMPLETE is set. Clear by writing to this bit.
"""
TRANS_COMPLETE

"""
    BUFF_STATUS

Raised when any bit in BUFF\\_STATUS is set. Clear by clearing all bits in BUFF\\_STATUS.
"""
BUFF_STATUS

"""
    ERROR_DATA_SEQ

Source: SIE\\_STATUS.DATA\\_SEQ\\_ERROR
"""
ERROR_DATA_SEQ

"""
    ERROR_RX_TIMEOUT

Source: SIE\\_STATUS.RX\\_TIMEOUT
"""
ERROR_RX_TIMEOUT

"""
    ERROR_RX_OVERFLOW

Source: SIE\\_STATUS.RX\\_OVERFLOW
"""
ERROR_RX_OVERFLOW

"""
    ERROR_BIT_STUFF

Source: SIE\\_STATUS.BIT\\_STUFF\\_ERROR
"""
ERROR_BIT_STUFF

"""
    ERROR_CRC

Source: SIE\\_STATUS.CRC\\_ERROR
"""
ERROR_CRC

"""
    STALL

Source: SIE\\_STATUS.STALL\\_REC
"""
STALL

"""
    VBUS_DETECT

Source: SIE\\_STATUS.VBUS\\_DETECTED
"""
VBUS_DETECT

"""
    BUS_RESET

Source: SIE\\_STATUS.BUS\\_RESET
"""
BUS_RESET

"""
    DEV_CONN_DIS

Set when the device connection state changes. Cleared by writing to SIE\\_STATUS.CONNECTED
"""
DEV_CONN_DIS

"""
    DEV_SUSPEND

Set when the device suspend state changes. Cleared by writing to SIE\\_STATUS.SUSPENDED
"""
DEV_SUSPEND

"""
    DEV_RESUME_FROM_HOST

Set when the device receives a resume from the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
DEV_RESUME_FROM_HOST

"""
    SETUP_REQ

Device. Source: SIE\\_STATUS.SETUP\\_REC
"""
SETUP_REQ

"""
    DEV_SOF

Set every time the device receives a SOF (Start of Frame) packet. Cleared by reading SOF\\_RD
"""
DEV_SOF

"""
    ABORT_DONE

Raised when any bit in ABORT\\_DONE is set. Clear by clearing all bits in ABORT\\_DONE.
"""
ABORT_DONE

"""
    EP_STALL_NAK

Raised when any bit in EP\\_STATUS\\_STALL\\_NAK is set. Clear by clearing all bits in EP\\_STATUS\\_STALL\\_NAK.
"""
EP_STALL_NAK

end # register INTF

"""
    INTS

Interrupt status after masking &amp; forcing
"""
module INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_REGS: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct INTSStruct(regAddress)
	HOST_CONN_DIS:1::Read
	HOST_RESUME:1::Read
	HOST_SOF:1::Read
	TRANS_COMPLETE:1::Read
	BUFF_STATUS:1::Read
	ERROR_DATA_SEQ:1::Read
	ERROR_RX_TIMEOUT:1::Read
	ERROR_RX_OVERFLOW:1::Read
	ERROR_BIT_STUFF:1::Read
	ERROR_CRC:1::Read
	STALL:1::Read
	VBUS_DETECT:1::Read
	BUS_RESET:1::Read
	DEV_CONN_DIS:1::Read
	DEV_SUSPEND:1::Read
	DEV_RESUME_FROM_HOST:1::Read
	SETUP_REQ:1::Read
	DEV_SOF:1::Read
	ABORT_DONE:1::Read
	EP_STALL_NAK:1::Read
	_:12
end
const Reg = INTSStruct

"""
    HOST_CONN_DIS

Host: raised when a device is connected or disconnected (i.e. when SIE\\_STATUS.SPEED changes). Cleared by writing to SIE\\_STATUS.SPEED
"""
HOST_CONN_DIS

"""
    HOST_RESUME

Host: raised when a device wakes up the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
HOST_RESUME

"""
    HOST_SOF

Host: raised every time the host sends a SOF (Start of Frame). Cleared by reading SOF\\_RD
"""
HOST_SOF

"""
    TRANS_COMPLETE

Raised every time SIE\\_STATUS.TRANS\\_COMPLETE is set. Clear by writing to this bit.
"""
TRANS_COMPLETE

"""
    BUFF_STATUS

Raised when any bit in BUFF\\_STATUS is set. Clear by clearing all bits in BUFF\\_STATUS.
"""
BUFF_STATUS

"""
    ERROR_DATA_SEQ

Source: SIE\\_STATUS.DATA\\_SEQ\\_ERROR
"""
ERROR_DATA_SEQ

"""
    ERROR_RX_TIMEOUT

Source: SIE\\_STATUS.RX\\_TIMEOUT
"""
ERROR_RX_TIMEOUT

"""
    ERROR_RX_OVERFLOW

Source: SIE\\_STATUS.RX\\_OVERFLOW
"""
ERROR_RX_OVERFLOW

"""
    ERROR_BIT_STUFF

Source: SIE\\_STATUS.BIT\\_STUFF\\_ERROR
"""
ERROR_BIT_STUFF

"""
    ERROR_CRC

Source: SIE\\_STATUS.CRC\\_ERROR
"""
ERROR_CRC

"""
    STALL

Source: SIE\\_STATUS.STALL\\_REC
"""
STALL

"""
    VBUS_DETECT

Source: SIE\\_STATUS.VBUS\\_DETECTED
"""
VBUS_DETECT

"""
    BUS_RESET

Source: SIE\\_STATUS.BUS\\_RESET
"""
BUS_RESET

"""
    DEV_CONN_DIS

Set when the device connection state changes. Cleared by writing to SIE\\_STATUS.CONNECTED
"""
DEV_CONN_DIS

"""
    DEV_SUSPEND

Set when the device suspend state changes. Cleared by writing to SIE\\_STATUS.SUSPENDED
"""
DEV_SUSPEND

"""
    DEV_RESUME_FROM_HOST

Set when the device receives a resume from the host. Cleared by writing to SIE\\_STATUS.RESUME
"""
DEV_RESUME_FROM_HOST

"""
    SETUP_REQ

Device. Source: SIE\\_STATUS.SETUP\\_REC
"""
SETUP_REQ

"""
    DEV_SOF

Set every time the device receives a SOF (Start of Frame) packet. Cleared by reading SOF\\_RD
"""
DEV_SOF

"""
    ABORT_DONE

Raised when any bit in ABORT\\_DONE is set. Clear by clearing all bits in ABORT\\_DONE.
"""
ABORT_DONE

"""
    EP_STALL_NAK

Raised when any bit in EP\\_STATUS\\_STALL\\_NAK is set. Clear by clearing all bits in EP\\_STATUS\\_STALL\\_NAK.
"""
EP_STALL_NAK

end # register INTS

end # peripheral

