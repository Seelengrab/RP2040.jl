"""
    UART0

No description of peripheral!
"""
module UART0

const baseAddress = Ptr{UInt32}(1073954816)

"""
    UARTDR

Data Register, UARTDR
"""
module UARTDRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct UARTDRStruct(regAddress)
	DATA:8::ReadWrite
	FE:1::Read
	PE:1::Read
	BE:1::Read
	OE:1::Read
	_:20
end
const Reg = UARTDRStruct

"""
    DATA

Receive (read) data character. Transmit (write) data character.
"""
DATA

"""
    FE

Framing error. When set to 1, it indicates that the received character did not have a valid stop bit (a valid stop bit is 1). In FIFO mode, this error is associated with the character at the top of the FIFO.
"""
FE

"""
    PE

Parity error. When set to 1, it indicates that the parity of the received data character does not match the parity that the EPS and SPS bits in the Line Control Register, UARTLCR\\_H. In FIFO mode, this error is associated with the character at the top of the FIFO.
"""
PE

"""
    BE

Break error. This bit is set to 1 if a break condition was detected, indicating that the received data input was held LOW for longer than a full-word transmission time (defined as start, data, parity and stop bits). In FIFO mode, this error is associated with the character at the top of the FIFO. When a break occurs, only one 0 character is loaded into the FIFO. The next character is only enabled after the receive data input goes to a 1 (marking state), and the next valid start bit is received.
"""
BE

"""
    OE

Overrun error. This bit is set to 1 if data is received and the receive FIFO is already full. This is cleared to 0 once there is an empty space in the FIFO and a new character can be written to it.
"""
OE

end # register UARTDR

"""
    UARTRSR

Receive Status Register/Error Clear Register, UARTRSR/UARTECR
"""
module UARTRSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct UARTRSRStruct(regAddress)
	FE:1::ReadWrite
	PE:1::ReadWrite
	BE:1::ReadWrite
	OE:1::ReadWrite
	_:28
end
const Reg = UARTRSRStruct

"""
    FE

Framing error. When set to 1, it indicates that the received character did not have a valid stop bit (a valid stop bit is 1). This bit is cleared to 0 by a write to UARTECR. In FIFO mode, this error is associated with the character at the top of the FIFO.
"""
FE

"""
    PE

Parity error. When set to 1, it indicates that the parity of the received data character does not match the parity that the EPS and SPS bits in the Line Control Register, UARTLCR\\_H. This bit is cleared to 0 by a write to UARTECR. In FIFO mode, this error is associated with the character at the top of the FIFO.
"""
PE

"""
    BE

Break error. This bit is set to 1 if a break condition was detected, indicating that the received data input was held LOW for longer than a full-word transmission time (defined as start, data, parity, and stop bits). This bit is cleared to 0 after a write to UARTECR. In FIFO mode, this error is associated with the character at the top of the FIFO. When a break occurs, only one 0 character is loaded into the FIFO. The next character is only enabled after the receive data input goes to a 1 (marking state) and the next valid start bit is received.
"""
BE

"""
    OE

Overrun error. This bit is set to 1 if data is received and the FIFO is already full. This bit is cleared to 0 by a write to UARTECR. The FIFO contents remain valid because no more data is written when the FIFO is full, only the contents of the shift register are overwritten. The CPU must now read the data, to empty the FIFO.
"""
OE

end # register UARTRSR

"""
    UARTFR

Flag Register, UARTFR
"""
module UARTFRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct UARTFRStruct(regAddress)
	CTS:1::Read
	DSR:1::Read
	DCD:1::Read
	BUSY:1::Read
	RXFE:1::Read
	TXFF:1::Read
	RXFF:1::Read
	TXFE:1::Read
	RI:1::Read
	_:23
end
const Reg = UARTFRStruct

"""
    CTS

Clear to send. This bit is the complement of the UART clear to send, nUARTCTS, modem status input. That is, the bit is 1 when nUARTCTS is LOW.
"""
CTS

"""
    DSR

Data set ready. This bit is the complement of the UART data set ready, nUARTDSR, modem status input. That is, the bit is 1 when nUARTDSR is LOW.
"""
DSR

"""
    DCD

Data carrier detect. This bit is the complement of the UART data carrier detect, nUARTDCD, modem status input. That is, the bit is 1 when nUARTDCD is LOW.
"""
DCD

"""
    BUSY

UART busy. If this bit is set to 1, the UART is busy transmitting data. This bit remains set until the complete byte, including all the stop bits, has been sent from the shift register. This bit is set as soon as the transmit FIFO becomes non-empty, regardless of whether the UART is enabled or not.
"""
BUSY

"""
    RXFE

Receive FIFO empty. The meaning of this bit depends on the state of the FEN bit in the UARTLCR\\_H Register. If the FIFO is disabled, this bit is set when the receive holding register is empty. If the FIFO is enabled, the RXFE bit is set when the receive FIFO is empty.
"""
RXFE

"""
    TXFF

Transmit FIFO full. The meaning of this bit depends on the state of the FEN bit in the UARTLCR\\_H Register. If the FIFO is disabled, this bit is set when the transmit holding register is full. If the FIFO is enabled, the TXFF bit is set when the transmit FIFO is full.
"""
TXFF

"""
    RXFF

Receive FIFO full. The meaning of this bit depends on the state of the FEN bit in the UARTLCR\\_H Register. If the FIFO is disabled, this bit is set when the receive holding register is full. If the FIFO is enabled, the RXFF bit is set when the receive FIFO is full.
"""
RXFF

"""
    TXFE

Transmit FIFO empty. The meaning of this bit depends on the state of the FEN bit in the Line Control Register, UARTLCR\\_H. If the FIFO is disabled, this bit is set when the transmit holding register is empty. If the FIFO is enabled, the TXFE bit is set when the transmit FIFO is empty. This bit does not indicate if there is data in the transmit shift register.
"""
TXFE

"""
    RI

Ring indicator. This bit is the complement of the UART ring indicator, nUARTRI, modem status input. That is, the bit is 1 when nUARTRI is LOW.
"""
RI

end # register UARTFR

"""
    UARTILPR

IrDA Low-Power Counter Register, UARTILPR
"""
module UARTILPRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct UARTILPRStruct(regAddress)
	ILPDVSR:8::ReadWrite
	_:24
end
const Reg = UARTILPRStruct

"""
    ILPDVSR

8-bit low-power divisor value. These bits are cleared to 0 at reset.
"""
ILPDVSR

end # register UARTILPR

"""
    UARTIBRD

Integer Baud Rate Register, UARTIBRD
"""
module UARTIBRDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct UARTIBRDStruct(regAddress)
	BAUD_DIVINT:16::ReadWrite
	_:16
end
const Reg = UARTIBRDStruct

"""
    BAUD_DIVINT

The integer baud rate divisor. These bits are cleared to 0 on reset.
"""
BAUD_DIVINT

end # register UARTIBRD

"""
    UARTFBRD

Fractional Baud Rate Register, UARTFBRD
"""
module UARTFBRDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct UARTFBRDStruct(regAddress)
	BAUD_DIVFRAC:6::ReadWrite
	_:26
end
const Reg = UARTFBRDStruct

"""
    BAUD_DIVFRAC

The fractional baud rate divisor. These bits are cleared to 0 on reset.
"""
BAUD_DIVFRAC

end # register UARTFBRD

"""
    UARTLCR_H

Line Control Register, UARTLCR\\_H
"""
module UARTLCR_HMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct UARTLCR_HStruct(regAddress)
	BRK:1::ReadWrite
	PEN:1::ReadWrite
	EPS:1::ReadWrite
	STP2:1::ReadWrite
	FEN:1::ReadWrite
	WLEN:2::ReadWrite
	SPS:1::ReadWrite
	_:24
end
const Reg = UARTLCR_HStruct

"""
    BRK

Send break. If this bit is set to 1, a low-level is continually output on the UARTTXD output, after completing transmission of the current character. For the proper execution of the break command, the software must set this bit for at least two complete frames. For normal use, this bit must be cleared to 0.
"""
BRK

"""
    PEN

Parity enable: 0 = parity is disabled and no parity bit added to the data frame 1 = parity checking and generation is enabled.
"""
PEN

"""
    EPS

Even parity select. Controls the type of parity the UART uses during transmission and reception: 0 = odd parity. The UART generates or checks for an odd number of 1s in the data and parity bits. 1 = even parity. The UART generates or checks for an even number of 1s in the data and parity bits. This bit has no effect when the PEN bit disables parity checking and generation.
"""
EPS

"""
    STP2

Two stop bits select. If this bit is set to 1, two stop bits are transmitted at the end of the frame. The receive logic does not check for two stop bits being received.
"""
STP2

"""
    FEN

Enable FIFOs: 0 = FIFOs are disabled (character mode) that is, the FIFOs become 1-byte-deep holding registers 1 = transmit and receive FIFO buffers are enabled (FIFO mode).
"""
FEN

"""
    WLEN

Word length. These bits indicate the number of data bits transmitted or received in a frame as follows: b11 = 8 bits b10 = 7 bits b01 = 6 bits b00 = 5 bits.
"""
WLEN

"""
    SPS

Stick parity select. 0 = stick parity is disabled 1 = either: * if the EPS bit is 0 then the parity bit is transmitted and checked as a 1 * if the EPS bit is 1 then the parity bit is transmitted and checked as a 0. This bit has no effect when the PEN bit disables parity checking and generation.
"""
SPS

end # register UARTLCR_H

"""
    UARTCR

Control Register, UARTCR
"""
module UARTCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct UARTCRStruct(regAddress)
	UARTEN:1::ReadWrite
	SIREN:1::ReadWrite
	SIRLP:1::ReadWrite
	_:4
	LBE:1::ReadWrite
	TXE:1::ReadWrite
	RXE:1::ReadWrite
	DTR:1::ReadWrite
	RTS:1::ReadWrite
	OUT1:1::ReadWrite
	OUT2:1::ReadWrite
	RTSEN:1::ReadWrite
	CTSEN:1::ReadWrite
	_:16
end
const Reg = UARTCRStruct

"""
    UARTEN

UART enable: 0 = UART is disabled. If the UART is disabled in the middle of transmission or reception, it completes the current character before stopping. 1 = the UART is enabled. Data transmission and reception occurs for either UART signals or SIR signals depending on the setting of the SIREN bit.
"""
UARTEN

"""
    SIREN

SIR enable: 0 = IrDA SIR ENDEC is disabled. nSIROUT remains LOW (no light pulse generated), and signal transitions on SIRIN have no effect. 1 = IrDA SIR ENDEC is enabled. Data is transmitted and received on nSIROUT and SIRIN. UARTTXD remains HIGH, in the marking state. Signal transitions on UARTRXD or modem status inputs have no effect. This bit has no effect if the UARTEN bit disables the UART.
"""
SIREN

"""
    SIRLP

SIR low-power IrDA mode. This bit selects the IrDA encoding mode. If this bit is cleared to 0, low-level bits are transmitted as an active high pulse with a width of 3 / 16th of the bit period. If this bit is set to 1, low-level bits are transmitted with a pulse width that is 3 times the period of the IrLPBaud16 input signal, regardless of the selected bit rate. Setting this bit uses less power, but might reduce transmission distances.
"""
SIRLP

"""
    LBE

Loopback enable. If this bit is set to 1 and the SIREN bit is set to 1 and the SIRTEST bit in the Test Control Register, UARTTCR is set to 1, then the nSIROUT path is inverted, and fed through to the SIRIN path. The SIRTEST bit in the test register must be set to 1 to override the normal half-duplex SIR operation. This must be the requirement for accessing the test registers during normal operation, and SIRTEST must be cleared to 0 when loopback testing is finished. This feature reduces the amount of external coupling required during system test. If this bit is set to 1, and the SIRTEST bit is set to 0, the UARTTXD path is fed through to the UARTRXD path. In either SIR mode or UART mode, when this bit is set, the modem outputs are also fed through to the modem inputs. This bit is cleared to 0 on reset, to disable loopback.
"""
LBE

"""
    TXE

Transmit enable. If this bit is set to 1, the transmit section of the UART is enabled. Data transmission occurs for either UART signals, or SIR signals depending on the setting of the SIREN bit. When the UART is disabled in the middle of transmission, it completes the current character before stopping.
"""
TXE

"""
    RXE

Receive enable. If this bit is set to 1, the receive section of the UART is enabled. Data reception occurs for either UART signals or SIR signals depending on the setting of the SIREN bit. When the UART is disabled in the middle of reception, it completes the current character before stopping.
"""
RXE

"""
    DTR

Data transmit ready. This bit is the complement of the UART data transmit ready, nUARTDTR, modem status output. That is, when the bit is programmed to a 1 then nUARTDTR is LOW.
"""
DTR

"""
    RTS

Request to send. This bit is the complement of the UART request to send, nUARTRTS, modem status output. That is, when the bit is programmed to a 1 then nUARTRTS is LOW.
"""
RTS

"""
    OUT1

This bit is the complement of the UART Out1 (nUARTOut1) modem status output. That is, when the bit is programmed to a 1 the output is 0. For DTE this can be used as Data Carrier Detect (DCD).
"""
OUT1

"""
    OUT2

This bit is the complement of the UART Out2 (nUARTOut2) modem status output. That is, when the bit is programmed to a 1, the output is 0. For DTE this can be used as Ring Indicator (RI).
"""
OUT2

"""
    RTSEN

RTS hardware flow control enable. If this bit is set to 1, RTS hardware flow control is enabled. Data is only requested when there is space in the receive FIFO for it to be received.
"""
RTSEN

"""
    CTSEN

CTS hardware flow control enable. If this bit is set to 1, CTS hardware flow control is enabled. Data is only transmitted when the nUARTCTS signal is asserted.
"""
CTSEN

end # register UARTCR

"""
    UARTIFLS

Interrupt FIFO Level Select Register, UARTIFLS
"""
module UARTIFLSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct UARTIFLSStruct(regAddress)
	TXIFLSEL:3::ReadWrite
	RXIFLSEL:3::ReadWrite
	_:26
end
const Reg = UARTIFLSStruct

"""
    TXIFLSEL

Transmit interrupt FIFO level select. The trigger points for the transmit interrupt are as follows: b000 = Transmit FIFO becomes &lt;= 1 / 8 full b001 = Transmit FIFO becomes &lt;= 1 / 4 full b010 = Transmit FIFO becomes &lt;= 1 / 2 full b011 = Transmit FIFO becomes &lt;= 3 / 4 full b100 = Transmit FIFO becomes &lt;= 7 / 8 full b101-b111 = reserved.
"""
TXIFLSEL

"""
    RXIFLSEL

Receive interrupt FIFO level select. The trigger points for the receive interrupt are as follows: b000 = Receive FIFO becomes &gt;= 1 / 8 full b001 = Receive FIFO becomes &gt;= 1 / 4 full b010 = Receive FIFO becomes &gt;= 1 / 2 full b011 = Receive FIFO becomes &gt;= 3 / 4 full b100 = Receive FIFO becomes &gt;= 7 / 8 full b101-b111 = reserved.
"""
RXIFLSEL

end # register UARTIFLS

"""
    UARTIMSC

Interrupt Mask Set/Clear Register, UARTIMSC
"""
module UARTIMSCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct UARTIMSCStruct(regAddress)
	RIMIM:1::ReadWrite
	CTSMIM:1::ReadWrite
	DCDMIM:1::ReadWrite
	DSRMIM:1::ReadWrite
	RXIM:1::ReadWrite
	TXIM:1::ReadWrite
	RTIM:1::ReadWrite
	FEIM:1::ReadWrite
	PEIM:1::ReadWrite
	BEIM:1::ReadWrite
	OEIM:1::ReadWrite
	_:21
end
const Reg = UARTIMSCStruct

"""
    RIMIM

nUARTRI modem interrupt mask. A read returns the current mask for the UARTRIINTR interrupt. On a write of 1, the mask of the UARTRIINTR interrupt is set. A write of 0 clears the mask.
"""
RIMIM

"""
    CTSMIM

nUARTCTS modem interrupt mask. A read returns the current mask for the UARTCTSINTR interrupt. On a write of 1, the mask of the UARTCTSINTR interrupt is set. A write of 0 clears the mask.
"""
CTSMIM

"""
    DCDMIM

nUARTDCD modem interrupt mask. A read returns the current mask for the UARTDCDINTR interrupt. On a write of 1, the mask of the UARTDCDINTR interrupt is set. A write of 0 clears the mask.
"""
DCDMIM

"""
    DSRMIM

nUARTDSR modem interrupt mask. A read returns the current mask for the UARTDSRINTR interrupt. On a write of 1, the mask of the UARTDSRINTR interrupt is set. A write of 0 clears the mask.
"""
DSRMIM

"""
    RXIM

Receive interrupt mask. A read returns the current mask for the UARTRXINTR interrupt. On a write of 1, the mask of the UARTRXINTR interrupt is set. A write of 0 clears the mask.
"""
RXIM

"""
    TXIM

Transmit interrupt mask. A read returns the current mask for the UARTTXINTR interrupt. On a write of 1, the mask of the UARTTXINTR interrupt is set. A write of 0 clears the mask.
"""
TXIM

"""
    RTIM

Receive timeout interrupt mask. A read returns the current mask for the UARTRTINTR interrupt. On a write of 1, the mask of the UARTRTINTR interrupt is set. A write of 0 clears the mask.
"""
RTIM

"""
    FEIM

Framing error interrupt mask. A read returns the current mask for the UARTFEINTR interrupt. On a write of 1, the mask of the UARTFEINTR interrupt is set. A write of 0 clears the mask.
"""
FEIM

"""
    PEIM

Parity error interrupt mask. A read returns the current mask for the UARTPEINTR interrupt. On a write of 1, the mask of the UARTPEINTR interrupt is set. A write of 0 clears the mask.
"""
PEIM

"""
    BEIM

Break error interrupt mask. A read returns the current mask for the UARTBEINTR interrupt. On a write of 1, the mask of the UARTBEINTR interrupt is set. A write of 0 clears the mask.
"""
BEIM

"""
    OEIM

Overrun error interrupt mask. A read returns the current mask for the UARTOEINTR interrupt. On a write of 1, the mask of the UARTOEINTR interrupt is set. A write of 0 clears the mask.
"""
OEIM

end # register UARTIMSC

"""
    UARTRIS

Raw Interrupt Status Register, UARTRIS
"""
module UARTRISMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct UARTRISStruct(regAddress)
	RIRMIS:1::Read
	CTSRMIS:1::Read
	DCDRMIS:1::Read
	DSRRMIS:1::Read
	RXRIS:1::Read
	TXRIS:1::Read
	RTRIS:1::Read
	FERIS:1::Read
	PERIS:1::Read
	BERIS:1::Read
	OERIS:1::Read
	_:21
end
const Reg = UARTRISStruct

"""
    RIRMIS

nUARTRI modem interrupt status. Returns the raw interrupt state of the UARTRIINTR interrupt.
"""
RIRMIS

"""
    CTSRMIS

nUARTCTS modem interrupt status. Returns the raw interrupt state of the UARTCTSINTR interrupt.
"""
CTSRMIS

"""
    DCDRMIS

nUARTDCD modem interrupt status. Returns the raw interrupt state of the UARTDCDINTR interrupt.
"""
DCDRMIS

"""
    DSRRMIS

nUARTDSR modem interrupt status. Returns the raw interrupt state of the UARTDSRINTR interrupt.
"""
DSRRMIS

"""
    RXRIS

Receive interrupt status. Returns the raw interrupt state of the UARTRXINTR interrupt.
"""
RXRIS

"""
    TXRIS

Transmit interrupt status. Returns the raw interrupt state of the UARTTXINTR interrupt.
"""
TXRIS

"""
    RTRIS

Receive timeout interrupt status. Returns the raw interrupt state of the UARTRTINTR interrupt. a
"""
RTRIS

"""
    FERIS

Framing error interrupt status. Returns the raw interrupt state of the UARTFEINTR interrupt.
"""
FERIS

"""
    PERIS

Parity error interrupt status. Returns the raw interrupt state of the UARTPEINTR interrupt.
"""
PERIS

"""
    BERIS

Break error interrupt status. Returns the raw interrupt state of the UARTBEINTR interrupt.
"""
BERIS

"""
    OERIS

Overrun error interrupt status. Returns the raw interrupt state of the UARTOEINTR interrupt.
"""
OERIS

end # register UARTRIS

"""
    UARTMIS

Masked Interrupt Status Register, UARTMIS
"""
module UARTMISMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct UARTMISStruct(regAddress)
	RIMMIS:1::Read
	CTSMMIS:1::Read
	DCDMMIS:1::Read
	DSRMMIS:1::Read
	RXMIS:1::Read
	TXMIS:1::Read
	RTMIS:1::Read
	FEMIS:1::Read
	PEMIS:1::Read
	BEMIS:1::Read
	OEMIS:1::Read
	_:21
end
const Reg = UARTMISStruct

"""
    RIMMIS

nUARTRI modem masked interrupt status. Returns the masked interrupt state of the UARTRIINTR interrupt.
"""
RIMMIS

"""
    CTSMMIS

nUARTCTS modem masked interrupt status. Returns the masked interrupt state of the UARTCTSINTR interrupt.
"""
CTSMMIS

"""
    DCDMMIS

nUARTDCD modem masked interrupt status. Returns the masked interrupt state of the UARTDCDINTR interrupt.
"""
DCDMMIS

"""
    DSRMMIS

nUARTDSR modem masked interrupt status. Returns the masked interrupt state of the UARTDSRINTR interrupt.
"""
DSRMMIS

"""
    RXMIS

Receive masked interrupt status. Returns the masked interrupt state of the UARTRXINTR interrupt.
"""
RXMIS

"""
    TXMIS

Transmit masked interrupt status. Returns the masked interrupt state of the UARTTXINTR interrupt.
"""
TXMIS

"""
    RTMIS

Receive timeout masked interrupt status. Returns the masked interrupt state of the UARTRTINTR interrupt.
"""
RTMIS

"""
    FEMIS

Framing error masked interrupt status. Returns the masked interrupt state of the UARTFEINTR interrupt.
"""
FEMIS

"""
    PEMIS

Parity error masked interrupt status. Returns the masked interrupt state of the UARTPEINTR interrupt.
"""
PEMIS

"""
    BEMIS

Break error masked interrupt status. Returns the masked interrupt state of the UARTBEINTR interrupt.
"""
BEMIS

"""
    OEMIS

Overrun error masked interrupt status. Returns the masked interrupt state of the UARTOEINTR interrupt.
"""
OEMIS

end # register UARTMIS

"""
    UARTICR

Interrupt Clear Register, UARTICR
"""
module UARTICRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct UARTICRStruct(regAddress)
	RIMIC:1::ReadWrite
	CTSMIC:1::ReadWrite
	DCDMIC:1::ReadWrite
	DSRMIC:1::ReadWrite
	RXIC:1::ReadWrite
	TXIC:1::ReadWrite
	RTIC:1::ReadWrite
	FEIC:1::ReadWrite
	PEIC:1::ReadWrite
	BEIC:1::ReadWrite
	OEIC:1::ReadWrite
	_:21
end
const Reg = UARTICRStruct

"""
    RIMIC

nUARTRI modem interrupt clear. Clears the UARTRIINTR interrupt.
"""
RIMIC

"""
    CTSMIC

nUARTCTS modem interrupt clear. Clears the UARTCTSINTR interrupt.
"""
CTSMIC

"""
    DCDMIC

nUARTDCD modem interrupt clear. Clears the UARTDCDINTR interrupt.
"""
DCDMIC

"""
    DSRMIC

nUARTDSR modem interrupt clear. Clears the UARTDSRINTR interrupt.
"""
DSRMIC

"""
    RXIC

Receive interrupt clear. Clears the UARTRXINTR interrupt.
"""
RXIC

"""
    TXIC

Transmit interrupt clear. Clears the UARTTXINTR interrupt.
"""
TXIC

"""
    RTIC

Receive timeout interrupt clear. Clears the UARTRTINTR interrupt.
"""
RTIC

"""
    FEIC

Framing error interrupt clear. Clears the UARTFEINTR interrupt.
"""
FEIC

"""
    PEIC

Parity error interrupt clear. Clears the UARTPEINTR interrupt.
"""
PEIC

"""
    BEIC

Break error interrupt clear. Clears the UARTBEINTR interrupt.
"""
BEIC

"""
    OEIC

Overrun error interrupt clear. Clears the UARTOEINTR interrupt.
"""
OEIC

end # register UARTICR

"""
    UARTDMACR

DMA Control Register, UARTDMACR
"""
module UARTDMACRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct UARTDMACRStruct(regAddress)
	RXDMAE:1::ReadWrite
	TXDMAE:1::ReadWrite
	DMAONERR:1::ReadWrite
	_:29
end
const Reg = UARTDMACRStruct

"""
    RXDMAE

Receive DMA enable. If this bit is set to 1, DMA for the receive FIFO is enabled.
"""
RXDMAE

"""
    TXDMAE

Transmit DMA enable. If this bit is set to 1, DMA for the transmit FIFO is enabled.
"""
TXDMAE

"""
    DMAONERR

DMA on error. If this bit is set to 1, the DMA receive request outputs, UARTRXDMASREQ or UARTRXDMABREQ, are disabled when the UART error interrupt is asserted.
"""
DMAONERR

end # register UARTDMACR

"""
    UARTPERIPHID0

UARTPeriphID0 Register
"""
module UARTPERIPHID0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000fe0
@regdef struct UARTPERIPHID0Struct(regAddress)
	PARTNUMBER0:8::Read
	_:24
end
const Reg = UARTPERIPHID0Struct

"""
    PARTNUMBER0

These bits read back as 0x11
"""
PARTNUMBER0

end # register UARTPERIPHID0

"""
    UARTPERIPHID1

UARTPeriphID1 Register
"""
module UARTPERIPHID1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000fe4
@regdef struct UARTPERIPHID1Struct(regAddress)
	PARTNUMBER1:4::Read
	DESIGNER0:4::Read
	_:24
end
const Reg = UARTPERIPHID1Struct

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

end # register UARTPERIPHID1

"""
    UARTPERIPHID2

UARTPeriphID2 Register
"""
module UARTPERIPHID2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000fe8
@regdef struct UARTPERIPHID2Struct(regAddress)
	DESIGNER1:4::Read
	REVISION:4::Read
	_:24
end
const Reg = UARTPERIPHID2Struct

"""
    DESIGNER1

These bits read back as 0x4
"""
DESIGNER1

"""
    REVISION

This field depends on the revision of the UART: r1p0 0x0 r1p1 0x1 r1p3 0x2 r1p4 0x2 r1p5 0x3
"""
REVISION

end # register UARTPERIPHID2

"""
    UARTPERIPHID3

UARTPeriphID3 Register
"""
module UARTPERIPHID3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000fec
@regdef struct UARTPERIPHID3Struct(regAddress)
	CONFIGURATION:8::Read
	_:24
end
const Reg = UARTPERIPHID3Struct

"""
    CONFIGURATION

These bits read back as 0x00
"""
CONFIGURATION

end # register UARTPERIPHID3

"""
    UARTPCELLID0

UARTPCellID0 Register
"""
module UARTPCELLID0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000ff0
@regdef struct UARTPCELLID0Struct(regAddress)
	UARTPCELLID0:8::Read
	_:24
end
const Reg = UARTPCELLID0Struct

"""
    UARTPCELLID0

These bits read back as 0x0D
"""
UARTPCELLID0

end # register UARTPCELLID0

"""
    UARTPCELLID1

UARTPCellID1 Register
"""
module UARTPCELLID1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000ff4
@regdef struct UARTPCELLID1Struct(regAddress)
	UARTPCELLID1:8::Read
	_:24
end
const Reg = UARTPCELLID1Struct

"""
    UARTPCELLID1

These bits read back as 0xF0
"""
UARTPCELLID1

end # register UARTPCELLID1

"""
    UARTPCELLID2

UARTPCellID2 Register
"""
module UARTPCELLID2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000ff8
@regdef struct UARTPCELLID2Struct(regAddress)
	UARTPCELLID2:8::Read
	_:24
end
const Reg = UARTPCELLID2Struct

"""
    UARTPCELLID2

These bits read back as 0x05
"""
UARTPCELLID2

end # register UARTPCELLID2

"""
    UARTPCELLID3

UARTPCellID3 Register
"""
module UARTPCELLID3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..UART0: baseAddress

const regAddress = baseAddress + 0x0000000000000ffc
@regdef struct UARTPCELLID3Struct(regAddress)
	UARTPCELLID3:8::Read
	_:24
end
const Reg = UARTPCELLID3Struct

"""
    UARTPCELLID3

These bits read back as 0xB1
"""
UARTPCELLID3

end # register UARTPCELLID3

end # peripheral

