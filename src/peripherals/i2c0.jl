"""
    I2C0

DW\\_apb\\_i2c address block\n

List of configuration constants for the Synopsys I2C hardware (you may see references to these in I2C register header; these are *fixed* values, set at hardware design time):\n

IC\\_ULTRA\\_FAST\\_MODE ................ 0x0

IC\\_UFM\\_TBUF\\_CNT\\_DEFAULT ........... 0x8

IC\\_UFM\\_SCL\\_LOW\\_COUNT .............. 0x0008

IC\\_UFM\\_SCL\\_HIGH\\_COUNT ............. 0x0006

IC\\_TX\\_TL .......................... 0x0

IC\\_TX\\_CMD\\_BLOCK ................... 0x1

IC\\_HAS\\_DMA ........................ 0x1

IC\\_HAS\\_ASYNC\\_FIFO ................. 0x0

IC\\_SMBUS\\_ARP ...................... 0x0

IC\\_FIRST\\_DATA\\_BYTE\\_STATUS ......... 0x1

IC\\_INTR\\_IO ........................ 0x1

IC\\_MASTER\\_MODE .................... 0x1

IC\\_DEFAULT\\_ACK\\_GENERAL\\_CALL ....... 0x1

IC\\_INTR\\_POL ....................... 0x1

IC\\_OPTIONAL\\_SAR ................... 0x0

IC\\_DEFAULT\\_TAR\\_SLAVE\\_ADDR ......... 0x055

IC\\_DEFAULT\\_SLAVE\\_ADDR ............. 0x055

IC\\_DEFAULT\\_HS\\_SPKLEN .............. 0x1

IC\\_FS\\_SCL\\_HIGH\\_COUNT .............. 0x0006

IC\\_HS\\_SCL\\_LOW\\_COUNT ............... 0x0008

IC\\_DEVICE\\_ID\\_VALUE ................ 0x0

IC\\_10BITADDR\\_MASTER ............... 0x0

IC\\_CLK\\_FREQ\\_OPTIMIZATION .......... 0x0

IC\\_DEFAULT\\_FS\\_SPKLEN .............. 0x7

IC\\_ADD\\_ENCODED\\_PARAMS ............. 0x0

IC\\_DEFAULT\\_SDA\\_HOLD ............... 0x000001

IC\\_DEFAULT\\_SDA\\_SETUP .............. 0x64

IC\\_AVOID\\_RX\\_FIFO\\_FLUSH\\_ON\\_TX\\_ABRT . 0x0

IC\\_CLOCK\\_PERIOD ................... 100

IC\\_EMPTYFIFO\\_HOLD\\_MASTER\\_EN ....... 1

IC\\_RESTART\\_EN ..................... 0x1

IC\\_TX\\_CMD\\_BLOCK\\_DEFAULT ........... 0x0

IC\\_BUS\\_CLEAR\\_FEATURE .............. 0x0

IC\\_CAP\\_LOADING .................... 100

IC\\_FS\\_SCL\\_LOW\\_COUNT ............... 0x000d

APB\\_DATA\\_WIDTH .................... 32

IC\\_SDA\\_STUCK\\_TIMEOUT\\_DEFAULT ...... 0xffffffff

IC\\_SLV\\_DATA\\_NACK\\_ONLY ............. 0x1

IC\\_10BITADDR\\_SLAVE ................ 0x0

IC\\_CLK\\_TYPE ....................... 0x0

IC\\_SMBUS\\_UDID\\_MSB ................. 0x0

IC\\_SMBUS\\_SUSPEND\\_ALERT ............ 0x0

IC\\_HS\\_SCL\\_HIGH\\_COUNT .............. 0x0006

IC\\_SLV\\_RESTART\\_DET\\_EN ............. 0x1

IC\\_SMBUS .......................... 0x0

IC\\_OPTIONAL\\_SAR\\_DEFAULT ........... 0x0

IC\\_PERSISTANT\\_SLV\\_ADDR\\_DEFAULT .... 0x0

IC\\_USE\\_COUNTS ..................... 0x0

IC\\_RX\\_BUFFER\\_DEPTH ................ 16

IC\\_SCL\\_STUCK\\_TIMEOUT\\_DEFAULT ...... 0xffffffff

IC\\_RX\\_FULL\\_HLD\\_BUS\\_EN ............. 0x1

IC\\_SLAVE\\_DISABLE .................. 0x1

IC\\_RX\\_TL .......................... 0x0

IC\\_DEVICE\\_ID ...................... 0x0

IC\\_HC\\_COUNT\\_VALUES ................ 0x0

I2C\\_DYNAMIC\\_TAR\\_UPDATE ............ 0

IC\\_SMBUS\\_CLK\\_LOW\\_MEXT\\_DEFAULT ..... 0xffffffff

IC\\_SMBUS\\_CLK\\_LOW\\_SEXT\\_DEFAULT ..... 0xffffffff

IC\\_HS\\_MASTER\\_CODE ................. 0x1

IC\\_SMBUS\\_RST\\_IDLE\\_CNT\\_DEFAULT ..... 0xffff

IC\\_SMBUS\\_UDID\\_LSB\\_DEFAULT ......... 0xffffffff

IC\\_SS\\_SCL\\_HIGH\\_COUNT .............. 0x0028

IC\\_SS\\_SCL\\_LOW\\_COUNT ............... 0x002f

IC\\_MAX\\_SPEED\\_MODE ................. 0x2

IC\\_STAT\\_FOR\\_CLK\\_STRETCH ........... 0x0

IC\\_STOP\\_DET\\_IF\\_MASTER\\_ACTIVE ...... 0x0

IC\\_DEFAULT\\_UFM\\_SPKLEN ............. 0x1

IC\\_TX\\_BUFFER\\_DEPTH ................ 16
"""
module I2C0

const baseAddress = Ptr{UInt32}(1074020352)

"""
    IC_CON

I2C Control Register. This register can be written only when the DW\\_apb\\_i2c is disabled, which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect.\n

Read/Write Access: - bit 10 is read only. - bit 11 is read only - bit 16 is read only - bit 17 is read only - bits 18 and 19 are read only.
"""
module IC_CONMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct IC_CONStruct(regAddress)
	MASTER_MODE:1::ReadWrite
	SPEED:2::ReadWrite
	IC_10BITADDR_SLAVE:1::ReadWrite
	IC_10BITADDR_MASTER:1::ReadWrite
	IC_RESTART_EN:1::ReadWrite
	IC_SLAVE_DISABLE:1::ReadWrite
	STOP_DET_IFADDRESSED:1::ReadWrite
	TX_EMPTY_CTRL:1::ReadWrite
	RX_FIFO_FULL_HLD_CTRL:1::ReadWrite
	STOP_DET_IF_MASTER_ACTIVE:1::Read
	_:21
end
const Reg = IC_CONStruct

"""
    MASTER_MODE

This bit controls whether the DW\\_apb\\_i2c master is enabled.\n

NOTE: Software should ensure that if this bit is written with '1' then bit 6 should also be written with a '1'.
"""
MASTER_MODE

"""
    SPEED

These bits control at which speed the DW\\_apb\\_i2c operates; its setting is relevant only if one is operating the DW\\_apb\\_i2c in master mode. Hardware protects against illegal values being programmed by software. These bits must be programmed appropriately for slave mode also, as it is used to capture correct value of spike filter as per the speed mode.\n

This register should be programmed only with a value in the range of 1 to IC\\_MAX\\_SPEED\\_MODE; otherwise, hardware updates this register with the value of IC\\_MAX\\_SPEED\\_MODE.\n

1: standard mode (100 kbit/s)\n

2: fast mode (&lt;=400 kbit/s) or fast mode plus (&lt;=1000Kbit/s)\n

3: high speed mode (3.4 Mbit/s)\n

Note: This field is not applicable when IC\\_ULTRA\\_FAST\\_MODE=1
"""
SPEED

"""
    IC_10BITADDR_SLAVE

When acting as a slave, this bit controls whether the DW\\_apb\\_i2c responds to 7- or 10-bit addresses. - 0: 7-bit addressing. The DW\\_apb\\_i2c ignores transactions that involve 10-bit addressing; for 7-bit addressing, only the lower 7 bits of the IC\\_SAR register are compared. - 1: 10-bit addressing. The DW\\_apb\\_i2c responds to only 10-bit addressing transfers that match the full 10 bits of the IC\\_SAR register.
"""
IC_10BITADDR_SLAVE

"""
    IC_10BITADDR_MASTER

Controls whether the DW\\_apb\\_i2c starts its transfers in 7- or 10-bit addressing mode when acting as a master. - 0: 7-bit addressing - 1: 10-bit addressing
"""
IC_10BITADDR_MASTER

"""
    IC_RESTART_EN

Determines whether RESTART conditions may be sent when acting as a master. Some older slaves do not support handling RESTART conditions; however, RESTART conditions are used in several DW\\_apb\\_i2c operations. When RESTART is disabled, the master is prohibited from performing the following functions: - Sending a START BYTE - Performing any high-speed mode operation - High-speed mode operation - Performing direction changes in combined format mode - Performing a read operation with a 10-bit address By replacing RESTART condition followed by a STOP and a subsequent START condition, split operations are broken down into multiple DW\\_apb\\_i2c transfers. If the above operations are performed, it will result in setting bit 6 (TX\\_ABRT) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: ENABLED
"""
IC_RESTART_EN

"""
    IC_SLAVE_DISABLE

This bit controls whether I2C has its slave disabled, which means once the presetn signal is applied, then this bit is set and the slave is disabled.\n

If this bit is set (slave is disabled), DW\\_apb\\_i2c functions only as a master and does not perform any action that requires a slave.\n

NOTE: Software should ensure that if this bit is written with 0, then bit 0 should also be written with a 0.
"""
IC_SLAVE_DISABLE

"""
    STOP_DET_IFADDRESSED

In slave mode: - 1'b1:  issues the STOP\\_DET interrupt only when it is addressed. - 1'b0:  issues the STOP\\_DET irrespective of whether it's addressed or not. Reset value: 0x0\n

NOTE: During a general call address, this slave does not issue the STOP\\_DET interrupt if STOP\\_DET\\_IF\\_ADDRESSED = 1'b1, even if the slave responds to the general call address by generating ACK. The STOP\\_DET interrupt is generated only when the transmitted address matches the slave address (SAR).
"""
STOP_DET_IFADDRESSED

"""
    TX_EMPTY_CTRL

This bit controls the generation of the TX\\_EMPTY interrupt, as described in the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0.
"""
TX_EMPTY_CTRL

"""
    RX_FIFO_FULL_HLD_CTRL

This bit controls whether DW\\_apb\\_i2c should hold the bus when the Rx FIFO is physically full to its RX\\_BUFFER\\_DEPTH, as described in the IC\\_RX\\_FULL\\_HLD\\_BUS\\_EN parameter.\n

Reset value: 0x0.
"""
RX_FIFO_FULL_HLD_CTRL

"""
    STOP_DET_IF_MASTER_ACTIVE

Master issues the STOP\\_DET interrupt irrespective of whether master is active or not
"""
STOP_DET_IF_MASTER_ACTIVE

end # register IC_CON

"""
    IC_TAR

I2C Target Address Register\n

This register is 12 bits wide, and bits 31:12 are reserved. This register can be written to only when IC\\_ENABLE[0] is set to 0.\n

Note: If the software or application is aware that the DW\\_apb\\_i2c is not using the TAR address for the pending commands in the Tx FIFO, then it is possible to update the TAR address even while the Tx FIFO has entries (IC\\_STATUS[2]= 0). - It is not necessary to perform any write to this register if DW\\_apb\\_i2c is enabled as an I2C slave only.
"""
module IC_TARMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct IC_TARStruct(regAddress)
	IC_TAR:10::ReadWrite
	GC_OR_START:1::ReadWrite
	SPECIAL:1::ReadWrite
	_:20
end
const Reg = IC_TARStruct

"""
    IC_TAR

This is the target address for any master transaction. When transmitting a General Call, these bits are ignored. To generate a START BYTE, the CPU needs to write only once into these bits.\n

If the IC\\_TAR and IC\\_SAR are the same, loopback exists but the FIFOs are shared between master and slave, so full loopback is not feasible. Only one direction loopback mode is supported (simplex), not duplex. A master cannot transmit to itself; it can transmit to only a slave.
"""
IC_TAR

"""
    GC_OR_START

If bit 11 (SPECIAL) is set to 1 and bit 13(Device-ID) is set to 0, then this bit indicates whether a General Call or START byte command is to be performed by the DW\\_apb\\_i2c. - 0: General Call Address - after issuing a General Call, only writes may be performed. Attempting to issue a read command results in setting bit 6 (TX\\_ABRT) of the IC\\_RAW\\_INTR\\_STAT register. The DW\\_apb\\_i2c remains in General Call mode until the SPECIAL bit value (bit 11) is cleared. - 1: START BYTE Reset value: 0x0
"""
GC_OR_START

"""
    SPECIAL

This bit indicates whether software performs a Device-ID or General Call or START BYTE command. - 0: ignore bit 10 GC\\_OR\\_START and use IC\\_TAR normally - 1: perform special I2C command as specified in Device\\_ID or GC\\_OR\\_START bit Reset value: 0x0
"""
SPECIAL

end # register IC_TAR

"""
    IC_SAR

I2C Slave Address Register
"""
module IC_SARMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct IC_SARStruct(regAddress)
	IC_SAR:10::ReadWrite
	_:22
end
const Reg = IC_SARStruct

"""
    IC_SAR

The IC\\_SAR holds the slave address when the I2C is operating as a slave. For 7-bit addressing, only IC\\_SAR[6:0] is used.\n

This register can be written only when the I2C interface is disabled, which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect.\n

Note: The default values cannot be any of the reserved address locations: that is, 0x00 to 0x07, or 0x78 to 0x7f. The correct operation of the device is not guaranteed if you program the IC\\_SAR or IC\\_TAR to a reserved value. Refer to &lt;&lt;table\\_I2C\\_firstbyte\\_bit\\_defs&gt;&gt; for a complete list of these reserved values.
"""
IC_SAR

end # register IC_SAR

"""
    IC_DATA_CMD

I2C Rx/Tx Data Buffer and Command Register; this is the register the CPU writes to when filling the TX FIFO and the CPU reads from when retrieving bytes from RX FIFO.\n

The size of the register changes as follows:\n

Write: - 11 bits when IC\\_EMPTYFIFO\\_HOLD\\_MASTER\\_EN=1 - 9 bits when IC\\_EMPTYFIFO\\_HOLD\\_MASTER\\_EN=0 Read: - 12 bits when IC\\_FIRST\\_DATA\\_BYTE\\_STATUS = 1 - 8 bits when IC\\_FIRST\\_DATA\\_BYTE\\_STATUS = 0 Note: In order for the DW\\_apb\\_i2c to continue acknowledging reads, a read command should be written for every byte that is to be received; otherwise the DW\\_apb\\_i2c will stop acknowledging.
"""
module IC_DATA_CMDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct IC_DATA_CMDStruct(regAddress)
	DAT:8::ReadWrite
	CMD:1::ReadWrite
	STOP:1::ReadWrite
	RESTART:1::ReadWrite
	FIRST_DATA_BYTE:1::Read
	_:20
end
const Reg = IC_DATA_CMDStruct

"""
    DAT

This register contains the data to be transmitted or received on the I2C bus. If you are writing to this register and want to perform a read, bits 7:0 (DAT) are ignored by the DW\\_apb\\_i2c. However, when you read this register, these bits return the value of data received on the DW\\_apb\\_i2c interface.\n

Reset value: 0x0
"""
DAT

"""
    CMD

This bit controls whether a read or a write is performed. This bit does not control the direction when the DW\\_apb\\_i2con acts as a slave. It controls only the direction when it acts as a master.\n

When a command is entered in the TX FIFO, this bit distinguishes the write and read commands. In slave-receiver mode, this bit is a 'don't care' because writes to this register are not required. In slave-transmitter mode, a '0' indicates that the data in IC\\_DATA\\_CMD is to be transmitted.\n

When programming this bit, you should remember the following: attempting to perform a read operation after a General Call command has been sent results in a TX\\_ABRT interrupt (bit 6 of the IC\\_RAW\\_INTR\\_STAT register), unless bit 11 (SPECIAL) in the IC\\_TAR register has been cleared. If a '1' is written to this bit after receiving a RD\\_REQ interrupt, then a TX\\_ABRT interrupt occurs.\n

Reset value: 0x0
"""
CMD

"""
    STOP

This bit controls whether a STOP is issued after the byte is sent or received.\n

  - 1 - STOP is issued after this byte, regardless of whether or not the Tx FIFO is empty. If the Tx FIFO is not empty, the master immediately tries to start a new transfer by issuing a START and arbitrating for the bus. - 0 - STOP is not issued after this byte, regardless of whether or not the Tx FIFO is empty. If the Tx FIFO is not empty, the master continues the current transfer by sending/receiving data bytes according to the value of the CMD bit. If the Tx FIFO is empty, the master holds the SCL line low and stalls the bus until a new command is available in the Tx FIFO. Reset value: 0x0
"""
STOP

"""
    RESTART

This bit controls whether a RESTART is issued before the byte is sent or received.\n

1 - If IC\\_RESTART\\_EN is 1, a RESTART is issued before the data is sent/received (according to the value of CMD), regardless of whether or not the transfer direction is changing from the previous command; if IC\\_RESTART\\_EN is 0, a STOP followed by a START is issued instead.\n

0 - If IC\\_RESTART\\_EN is 1, a RESTART is issued only if the transfer direction is changing from the previous command; if IC\\_RESTART\\_EN is 0, a STOP followed by a START is issued instead.\n

Reset value: 0x0
"""
RESTART

"""
    FIRST_DATA_BYTE

Indicates the first data byte received after the address phase for receive transfer in Master receiver or Slave receiver mode.\n

Reset value : 0x0\n

NOTE:  In case of APB\\_DATA\\_WIDTH=8,\n

1. The user has to perform two APB Reads to IC\\_DATA\\_CMD in order to get status on 11 bit.\n

2. In order to read the 11 bit, the user has to perform the first data byte read [7:0] (offset 0x10) and then perform the second read [15:8] (offset 0x11) in order to know the status of 11 bit (whether the data received in previous read is a first data byte or not).\n

3. The 11th bit is an optional read field, user can ignore 2nd byte read [15:8] (offset 0x11) if not interested in FIRST\\_DATA\\_BYTE status.
"""
FIRST_DATA_BYTE

end # register IC_DATA_CMD

"""
    IC_SS_SCL_HCNT

Standard Speed I2C Clock SCL High Count Register
"""
module IC_SS_SCL_HCNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct IC_SS_SCL_HCNTStruct(regAddress)
	IC_SS_SCL_HCNT:16::ReadWrite
	_:16
end
const Reg = IC_SS_SCL_HCNTStruct

"""
    IC_SS_SCL_HCNT

This register must be set before any I2C bus transaction can take place to ensure proper I/O timing. This register sets the SCL clock high-period count for standard speed. For more information, refer to 'IC\\_CLK Frequency Configuration'.\n

This register can be written only when the I2C interface is disabled which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect.\n

The minimum valid value is 6; hardware prevents values less than this being written, and if attempted results in 6 being set. For designs with APB\\_DATA\\_WIDTH = 8, the order of programming is important to ensure the correct operation of the DW\\_apb\\_i2c. The lower byte must be programmed first. Then the upper byte is programmed.\n

NOTE: This register must not be programmed to a value higher than 65525, because DW\\_apb\\_i2c uses a 16-bit counter to flag an I2C bus idle condition when this counter reaches a value of IC\\_SS\\_SCL\\_HCNT + 10.
"""
IC_SS_SCL_HCNT

end # register IC_SS_SCL_HCNT

"""
    IC_SS_SCL_LCNT

Standard Speed I2C Clock SCL Low Count Register
"""
module IC_SS_SCL_LCNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct IC_SS_SCL_LCNTStruct(regAddress)
	IC_SS_SCL_LCNT:16::ReadWrite
	_:16
end
const Reg = IC_SS_SCL_LCNTStruct

"""
    IC_SS_SCL_LCNT

This register must be set before any I2C bus transaction can take place to ensure proper I/O timing. This register sets the SCL clock low period count for standard speed. For more information, refer to 'IC\\_CLK Frequency Configuration'\n

This register can be written only when the I2C interface is disabled which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect.\n

The minimum valid value is 8; hardware prevents values less than this being written, and if attempted, results in 8 being set. For designs with APB\\_DATA\\_WIDTH = 8, the order of programming is important to ensure the correct operation of DW\\_apb\\_i2c. The lower byte must be programmed first, and then the upper byte is programmed.
"""
IC_SS_SCL_LCNT

end # register IC_SS_SCL_LCNT

"""
    IC_FS_SCL_HCNT

Fast Mode or Fast Mode Plus I2C Clock SCL High Count Register
"""
module IC_FS_SCL_HCNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct IC_FS_SCL_HCNTStruct(regAddress)
	IC_FS_SCL_HCNT:16::ReadWrite
	_:16
end
const Reg = IC_FS_SCL_HCNTStruct

"""
    IC_FS_SCL_HCNT

This register must be set before any I2C bus transaction can take place to ensure proper I/O timing. This register sets the SCL clock high-period count for fast mode or fast mode plus. It is used in high-speed mode to send the Master Code and START BYTE or General CALL. For more information, refer to 'IC\\_CLK Frequency Configuration'.\n

This register goes away and becomes read-only returning 0s if IC\\_MAX\\_SPEED\\_MODE = standard. This register can be written only when the I2C interface is disabled, which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect.\n

The minimum valid value is 6; hardware prevents values less than this being written, and if attempted results in 6 being set. For designs with APB\\_DATA\\_WIDTH == 8 the order of programming is important to ensure the correct operation of the DW\\_apb\\_i2c. The lower byte must be programmed first. Then the upper byte is programmed.
"""
IC_FS_SCL_HCNT

end # register IC_FS_SCL_HCNT

"""
    IC_FS_SCL_LCNT

Fast Mode or Fast Mode Plus I2C Clock SCL Low Count Register
"""
module IC_FS_SCL_LCNTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct IC_FS_SCL_LCNTStruct(regAddress)
	IC_FS_SCL_LCNT:16::ReadWrite
	_:16
end
const Reg = IC_FS_SCL_LCNTStruct

"""
    IC_FS_SCL_LCNT

This register must be set before any I2C bus transaction can take place to ensure proper I/O timing. This register sets the SCL clock low period count for fast speed. It is used in high-speed mode to send the Master Code and START BYTE or General CALL. For more information, refer to 'IC\\_CLK Frequency Configuration'.\n

This register goes away and becomes read-only returning 0s if IC\\_MAX\\_SPEED\\_MODE = standard.\n

This register can be written only when the I2C interface is disabled, which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect.\n

The minimum valid value is 8; hardware prevents values less than this being written, and if attempted results in 8 being set. For designs with APB\\_DATA\\_WIDTH = 8 the order of programming is important to ensure the correct operation of the DW\\_apb\\_i2c. The lower byte must be programmed first. Then the upper byte is programmed. If the value is less than 8 then the count value gets changed to 8.
"""
IC_FS_SCL_LCNT

end # register IC_FS_SCL_LCNT

"""
    IC_INTR_STAT

I2C Interrupt Status Register\n

Each bit in this register has a corresponding mask bit in the IC\\_INTR\\_MASK register. These bits are cleared by reading the matching interrupt clear register. The unmasked raw versions of these bits are available in the IC\\_RAW\\_INTR\\_STAT register.
"""
module IC_INTR_STATMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct IC_INTR_STATStruct(regAddress)
	R_RX_UNDER:1::Read
	R_RX_OVER:1::Read
	R_RX_FULL:1::Read
	R_TX_OVER:1::Read
	R_TX_EMPTY:1::Read
	R_RD_REQ:1::Read
	R_TX_ABRT:1::Read
	R_RX_DONE:1::Read
	R_ACTIVITY:1::Read
	R_STOP_DET:1::Read
	R_START_DET:1::Read
	R_GEN_CALL:1::Read
	R_RESTART_DET:1::Read
	_:19
end
const Reg = IC_INTR_STATStruct

"""
    R_RX_UNDER

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_RX\\_UNDER bit.\n

Reset value: 0x0
"""
R_RX_UNDER

"""
    R_RX_OVER

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_RX\\_OVER bit.\n

Reset value: 0x0
"""
R_RX_OVER

"""
    R_RX_FULL

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_RX\\_FULL bit.\n

Reset value: 0x0
"""
R_RX_FULL

"""
    R_TX_OVER

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_TX\\_OVER bit.\n

Reset value: 0x0
"""
R_TX_OVER

"""
    R_TX_EMPTY

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_TX\\_EMPTY bit.\n

Reset value: 0x0
"""
R_TX_EMPTY

"""
    R_RD_REQ

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_RD\\_REQ bit.\n

Reset value: 0x0
"""
R_RD_REQ

"""
    R_TX_ABRT

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_TX\\_ABRT bit.\n

Reset value: 0x0
"""
R_TX_ABRT

"""
    R_RX_DONE

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_RX\\_DONE bit.\n

Reset value: 0x0
"""
R_RX_DONE

"""
    R_ACTIVITY

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_ACTIVITY bit.\n

Reset value: 0x0
"""
R_ACTIVITY

"""
    R_STOP_DET

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_STOP\\_DET bit.\n

Reset value: 0x0
"""
R_STOP_DET

"""
    R_START_DET

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_START\\_DET bit.\n

Reset value: 0x0
"""
R_START_DET

"""
    R_GEN_CALL

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_GEN\\_CALL bit.\n

Reset value: 0x0
"""
R_GEN_CALL

"""
    R_RESTART_DET

See IC\\_RAW\\_INTR\\_STAT for a detailed description of R\\_RESTART\\_DET bit.\n

Reset value: 0x0
"""
R_RESTART_DET

end # register IC_INTR_STAT

"""
    IC_INTR_MASK

I2C Interrupt Mask Register.\n

These bits mask their corresponding interrupt status bits. This register is active low; a value of 0 masks the interrupt, whereas a value of 1 unmasks the interrupt.
"""
module IC_INTR_MASKMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct IC_INTR_MASKStruct(regAddress)
	M_RX_UNDER:1::ReadWrite
	M_RX_OVER:1::ReadWrite
	M_RX_FULL:1::ReadWrite
	M_TX_OVER:1::ReadWrite
	M_TX_EMPTY:1::ReadWrite
	M_RD_REQ:1::ReadWrite
	M_TX_ABRT:1::ReadWrite
	M_RX_DONE:1::ReadWrite
	M_ACTIVITY:1::ReadWrite
	M_STOP_DET:1::ReadWrite
	M_START_DET:1::ReadWrite
	M_GEN_CALL:1::ReadWrite
	M_RESTART_DET:1::ReadWrite
	_:19
end
const Reg = IC_INTR_MASKStruct

"""
    M_RX_UNDER

This bit masks the R\\_RX\\_UNDER interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_RX_UNDER

"""
    M_RX_OVER

This bit masks the R\\_RX\\_OVER interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_RX_OVER

"""
    M_RX_FULL

This bit masks the R\\_RX\\_FULL interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_RX_FULL

"""
    M_TX_OVER

This bit masks the R\\_TX\\_OVER interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_TX_OVER

"""
    M_TX_EMPTY

This bit masks the R\\_TX\\_EMPTY interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_TX_EMPTY

"""
    M_RD_REQ

This bit masks the R\\_RD\\_REQ interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_RD_REQ

"""
    M_TX_ABRT

This bit masks the R\\_TX\\_ABRT interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_TX_ABRT

"""
    M_RX_DONE

This bit masks the R\\_RX\\_DONE interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_RX_DONE

"""
    M_ACTIVITY

This bit masks the R\\_ACTIVITY interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
M_ACTIVITY

"""
    M_STOP_DET

This bit masks the R\\_STOP\\_DET interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
M_STOP_DET

"""
    M_START_DET

This bit masks the R\\_START\\_DET interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
M_START_DET

"""
    M_GEN_CALL

This bit masks the R\\_GEN\\_CALL interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x1
"""
M_GEN_CALL

"""
    M_RESTART_DET

This bit masks the R\\_RESTART\\_DET interrupt in IC\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
M_RESTART_DET

end # register IC_INTR_MASK

"""
    IC_RAW_INTR_STAT

I2C Raw Interrupt Status Register\n

Unlike the IC\\_INTR\\_STAT register, these bits are not masked so they always show the true status of the DW\\_apb\\_i2c.
"""
module IC_RAW_INTR_STATMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct IC_RAW_INTR_STATStruct(regAddress)
	RX_UNDER:1::Read
	RX_OVER:1::Read
	RX_FULL:1::Read
	TX_OVER:1::Read
	TX_EMPTY:1::Read
	RD_REQ:1::Read
	TX_ABRT:1::Read
	RX_DONE:1::Read
	ACTIVITY:1::Read
	STOP_DET:1::Read
	START_DET:1::Read
	GEN_CALL:1::Read
	RESTART_DET:1::Read
	_:19
end
const Reg = IC_RAW_INTR_STATStruct

"""
    RX_UNDER

Set if the processor attempts to read the receive buffer when it is empty by reading from the IC\\_DATA\\_CMD register. If the module is disabled (IC\\_ENABLE[0]=0), this bit keeps its level until the master or slave state machines go into idle, and when ic\\_en goes to 0, this interrupt is cleared.\n

Reset value: 0x0
"""
RX_UNDER

"""
    RX_OVER

Set if the receive buffer is completely filled to IC\\_RX\\_BUFFER\\_DEPTH and an additional byte is received from an external I2C device. The DW\\_apb\\_i2c acknowledges this, but any data bytes received after the FIFO is full are lost. If the module is disabled (IC\\_ENABLE[0]=0), this bit keeps its level until the master or slave state machines go into idle, and when ic\\_en goes to 0, this interrupt is cleared.\n

Note:  If bit 9 of the IC\\_CON register (RX\\_FIFO\\_FULL\\_HLD\\_CTRL) is programmed to HIGH, then the RX\\_OVER interrupt never occurs, because the Rx FIFO never overflows.\n

Reset value: 0x0
"""
RX_OVER

"""
    RX_FULL

Set when the receive buffer reaches or goes above the RX\\_TL threshold in the IC\\_RX\\_TL register. It is automatically cleared by hardware when buffer level goes below the threshold. If the module is disabled (IC\\_ENABLE[0]=0), the RX FIFO is flushed and held in reset; therefore the RX FIFO is not full. So this bit is cleared once the IC\\_ENABLE bit 0 is programmed with a 0, regardless of the activity that continues.\n

Reset value: 0x0
"""
RX_FULL

"""
    TX_OVER

Set during transmit if the transmit buffer is filled to IC\\_TX\\_BUFFER\\_DEPTH and the processor attempts to issue another I2C command by writing to the IC\\_DATA\\_CMD register. When the module is disabled, this bit keeps its level until the master or slave state machines go into idle, and when ic\\_en goes to 0, this interrupt is cleared.\n

Reset value: 0x0
"""
TX_OVER

"""
    TX_EMPTY

The behavior of the TX\\_EMPTY interrupt status differs based on the TX\\_EMPTY\\_CTRL selection in the IC\\_CON register. - When TX\\_EMPTY\\_CTRL = 0: This bit is set to 1 when the transmit buffer is at or below the threshold value set in the IC\\_TX\\_TL register. - When TX\\_EMPTY\\_CTRL = 1: This bit is set to 1 when the transmit buffer is at or below the threshold value set in the IC\\_TX\\_TL register and the transmission of the address/data from the internal shift register for the most recently popped command is completed. It is automatically cleared by hardware when the buffer level goes above the threshold. When IC\\_ENABLE[0] is set to 0, the TX FIFO is flushed and held in reset. There the TX FIFO looks like it has no data within it, so this bit is set to 1, provided there is activity in the master or slave state machines. When there is no longer any activity, then with ic\\_en=0, this bit is set to 0.\n

Reset value: 0x0.
"""
TX_EMPTY

"""
    RD_REQ

This bit is set to 1 when DW\\_apb\\_i2c is acting as a slave and another I2C master is attempting to read data from DW\\_apb\\_i2c. The DW\\_apb\\_i2c holds the I2C bus in a wait state (SCL=0) until this interrupt is serviced, which means that the slave has been addressed by a remote master that is asking for data to be transferred. The processor must respond to this interrupt and then write the requested data to the IC\\_DATA\\_CMD register. This bit is set to 0 just after the processor reads the IC\\_CLR\\_RD\\_REQ register.\n

Reset value: 0x0
"""
RD_REQ

"""
    TX_ABRT

This bit indicates if DW\\_apb\\_i2c, as an I2C transmitter, is unable to complete the intended actions on the contents of the transmit FIFO. This situation can occur both as an I2C master or an I2C slave, and is referred to as a 'transmit abort'. When this bit is set to 1, the IC\\_TX\\_ABRT\\_SOURCE register indicates the reason why the transmit abort takes places.\n

Note:  The DW\\_apb\\_i2c flushes/resets/empties the TX\\_FIFO and RX\\_FIFO whenever there is a transmit abort caused by any of the events tracked by the IC\\_TX\\_ABRT\\_SOURCE register. The FIFOs remains in this flushed state until the register IC\\_CLR\\_TX\\_ABRT is read. Once this read is performed, the Tx FIFO is then ready to accept more data bytes from the APB interface.\n

Reset value: 0x0
"""
TX_ABRT

"""
    RX_DONE

When the DW\\_apb\\_i2c is acting as a slave-transmitter, this bit is set to 1 if the master does not acknowledge a transmitted byte. This occurs on the last byte of the transmission, indicating that the transmission is done.\n

Reset value: 0x0
"""
RX_DONE

"""
    ACTIVITY

This bit captures DW\\_apb\\_i2c activity and stays set until it is cleared. There are four ways to clear it: - Disabling the DW\\_apb\\_i2c - Reading the IC\\_CLR\\_ACTIVITY register - Reading the IC\\_CLR\\_INTR register - System reset Once this bit is set, it stays set unless one of the four methods is used to clear it. Even if the DW\\_apb\\_i2c module is idle, this bit remains set until cleared, indicating that there was activity on the bus.\n

Reset value: 0x0
"""
ACTIVITY

"""
    STOP_DET

Indicates whether a STOP condition has occurred on the I2C interface regardless of whether DW\\_apb\\_i2c is operating in slave or master mode.\n

In Slave Mode: - If IC\\_CON[7]=1'b1  (STOP\\_DET\\_IFADDRESSED), the STOP\\_DET interrupt will be issued only if slave is addressed. Note: During a general call address, this slave does not issue a STOP\\_DET interrupt if STOP\\_DET\\_IF\\_ADDRESSED=1'b1, even if the slave responds to the general call address by generating ACK. The STOP\\_DET interrupt is generated only when the transmitted address matches the slave address (SAR). - If IC\\_CON[7]=1'b0 (STOP\\_DET\\_IFADDRESSED), the STOP\\_DET interrupt is issued irrespective of whether it is being addressed. In Master Mode: - If IC\\_CON[10]=1'b1  (STOP\\_DET\\_IF\\_MASTER\\_ACTIVE),the STOP\\_DET interrupt will be issued only if Master is active. - If IC\\_CON[10]=1'b0  (STOP\\_DET\\_IFADDRESSED),the STOP\\_DET interrupt will be issued irrespective of whether master is active or not. Reset value: 0x0
"""
STOP_DET

"""
    START_DET

Indicates whether a START or RESTART condition has occurred on the I2C interface regardless of whether DW\\_apb\\_i2c is operating in slave or master mode.\n

Reset value: 0x0
"""
START_DET

"""
    GEN_CALL

Set only when a General Call address is received and it is acknowledged. It stays set until it is cleared either by disabling DW\\_apb\\_i2c or when the CPU reads bit 0 of the IC\\_CLR\\_GEN\\_CALL register. DW\\_apb\\_i2c stores the received data in the Rx buffer.\n

Reset value: 0x0
"""
GEN_CALL

"""
    RESTART_DET

Indicates whether a RESTART condition has occurred on the I2C interface when DW\\_apb\\_i2c is operating in Slave mode and the slave is being addressed. Enabled only when IC\\_SLV\\_RESTART\\_DET\\_EN=1.\n

Note: However, in high-speed mode or during a START BYTE transfer, the RESTART comes before the address field as per the I2C protocol. In this case, the slave is not the addressed slave when the RESTART is issued, therefore DW\\_apb\\_i2c does not generate the RESTART\\_DET interrupt.\n

Reset value: 0x0
"""
RESTART_DET

end # register IC_RAW_INTR_STAT

"""
    IC_RX_TL

I2C Receive FIFO Threshold Register
"""
module IC_RX_TLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct IC_RX_TLStruct(regAddress)
	RX_TL:8::ReadWrite
	_:24
end
const Reg = IC_RX_TLStruct

"""
    RX_TL

Receive FIFO Threshold Level.\n

Controls the level of entries (or above) that triggers the RX\\_FULL interrupt (bit 2 in IC\\_RAW\\_INTR\\_STAT register). The valid range is 0-255, with the additional restriction that hardware does not allow this value to be set to a value larger than the depth of the buffer. If an attempt is made to do that, the actual value set will be the maximum depth of the buffer. A value of 0 sets the threshold for 1 entry, and a value of 255 sets the threshold for 256 entries.
"""
RX_TL

end # register IC_RX_TL

"""
    IC_TX_TL

I2C Transmit FIFO Threshold Register
"""
module IC_TX_TLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct IC_TX_TLStruct(regAddress)
	TX_TL:8::ReadWrite
	_:24
end
const Reg = IC_TX_TLStruct

"""
    TX_TL

Transmit FIFO Threshold Level.\n

Controls the level of entries (or below) that trigger the TX\\_EMPTY interrupt (bit 4 in IC\\_RAW\\_INTR\\_STAT register). The valid range is 0-255, with the additional restriction that it may not be set to value larger than the depth of the buffer. If an attempt is made to do that, the actual value set will be the maximum depth of the buffer. A value of 0 sets the threshold for 0 entries, and a value of 255 sets the threshold for 255 entries.
"""
TX_TL

end # register IC_TX_TL

"""
    IC_CLR_INTR

Clear Combined and Individual Interrupt Register
"""
module IC_CLR_INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct IC_CLR_INTRStruct(regAddress)
	CLR_INTR:1::Read
	_:31
end
const Reg = IC_CLR_INTRStruct

"""
    CLR_INTR

Read this register to clear the combined interrupt, all individual interrupts, and the IC\\_TX\\_ABRT\\_SOURCE register. This bit does not clear hardware clearable interrupts but software clearable interrupts. Refer to Bit 9 of the IC\\_TX\\_ABRT\\_SOURCE register for an exception to clearing IC\\_TX\\_ABRT\\_SOURCE.\n

Reset value: 0x0
"""
CLR_INTR

end # register IC_CLR_INTR

"""
    IC_CLR_RX_UNDER

Clear RX\\_UNDER Interrupt Register
"""
module IC_CLR_RX_UNDERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct IC_CLR_RX_UNDERStruct(regAddress)
	CLR_RX_UNDER:1::Read
	_:31
end
const Reg = IC_CLR_RX_UNDERStruct

"""
    CLR_RX_UNDER

Read this register to clear the RX\\_UNDER interrupt (bit 0) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_RX_UNDER

end # register IC_CLR_RX_UNDER

"""
    IC_CLR_RX_OVER

Clear RX\\_OVER Interrupt Register
"""
module IC_CLR_RX_OVERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct IC_CLR_RX_OVERStruct(regAddress)
	CLR_RX_OVER:1::Read
	_:31
end
const Reg = IC_CLR_RX_OVERStruct

"""
    CLR_RX_OVER

Read this register to clear the RX\\_OVER interrupt (bit 1) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_RX_OVER

end # register IC_CLR_RX_OVER

"""
    IC_CLR_TX_OVER

Clear TX\\_OVER Interrupt Register
"""
module IC_CLR_TX_OVERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct IC_CLR_TX_OVERStruct(regAddress)
	CLR_TX_OVER:1::Read
	_:31
end
const Reg = IC_CLR_TX_OVERStruct

"""
    CLR_TX_OVER

Read this register to clear the TX\\_OVER interrupt (bit 3) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_TX_OVER

end # register IC_CLR_TX_OVER

"""
    IC_CLR_RD_REQ

Clear RD\\_REQ Interrupt Register
"""
module IC_CLR_RD_REQMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct IC_CLR_RD_REQStruct(regAddress)
	CLR_RD_REQ:1::Read
	_:31
end
const Reg = IC_CLR_RD_REQStruct

"""
    CLR_RD_REQ

Read this register to clear the RD\\_REQ interrupt (bit 5) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_RD_REQ

end # register IC_CLR_RD_REQ

"""
    IC_CLR_TX_ABRT

Clear TX\\_ABRT Interrupt Register
"""
module IC_CLR_TX_ABRTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct IC_CLR_TX_ABRTStruct(regAddress)
	CLR_TX_ABRT:1::Read
	_:31
end
const Reg = IC_CLR_TX_ABRTStruct

"""
    CLR_TX_ABRT

Read this register to clear the TX\\_ABRT interrupt (bit 6) of the IC\\_RAW\\_INTR\\_STAT register, and the IC\\_TX\\_ABRT\\_SOURCE register. This also releases the TX FIFO from the flushed/reset state, allowing more writes to the TX FIFO. Refer to Bit 9 of the IC\\_TX\\_ABRT\\_SOURCE register for an exception to clearing IC\\_TX\\_ABRT\\_SOURCE.\n

Reset value: 0x0
"""
CLR_TX_ABRT

end # register IC_CLR_TX_ABRT

"""
    IC_CLR_RX_DONE

Clear RX\\_DONE Interrupt Register
"""
module IC_CLR_RX_DONEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct IC_CLR_RX_DONEStruct(regAddress)
	CLR_RX_DONE:1::Read
	_:31
end
const Reg = IC_CLR_RX_DONEStruct

"""
    CLR_RX_DONE

Read this register to clear the RX\\_DONE interrupt (bit 7) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_RX_DONE

end # register IC_CLR_RX_DONE

"""
    IC_CLR_ACTIVITY

Clear ACTIVITY Interrupt Register
"""
module IC_CLR_ACTIVITYMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct IC_CLR_ACTIVITYStruct(regAddress)
	CLR_ACTIVITY:1::Read
	_:31
end
const Reg = IC_CLR_ACTIVITYStruct

"""
    CLR_ACTIVITY

Reading this register clears the ACTIVITY interrupt if the I2C is not active anymore. If the I2C module is still active on the bus, the ACTIVITY interrupt bit continues to be set. It is automatically cleared by hardware if the module is disabled and if there is no further activity on the bus. The value read from this register to get status of the ACTIVITY interrupt (bit 8) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_ACTIVITY

end # register IC_CLR_ACTIVITY

"""
    IC_CLR_STOP_DET

Clear STOP\\_DET Interrupt Register
"""
module IC_CLR_STOP_DETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct IC_CLR_STOP_DETStruct(regAddress)
	CLR_STOP_DET:1::Read
	_:31
end
const Reg = IC_CLR_STOP_DETStruct

"""
    CLR_STOP_DET

Read this register to clear the STOP\\_DET interrupt (bit 9) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_STOP_DET

end # register IC_CLR_STOP_DET

"""
    IC_CLR_START_DET

Clear START\\_DET Interrupt Register
"""
module IC_CLR_START_DETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct IC_CLR_START_DETStruct(regAddress)
	CLR_START_DET:1::Read
	_:31
end
const Reg = IC_CLR_START_DETStruct

"""
    CLR_START_DET

Read this register to clear the START\\_DET interrupt (bit 10) of the IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_START_DET

end # register IC_CLR_START_DET

"""
    IC_CLR_GEN_CALL

Clear GEN\\_CALL Interrupt Register
"""
module IC_CLR_GEN_CALLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct IC_CLR_GEN_CALLStruct(regAddress)
	CLR_GEN_CALL:1::Read
	_:31
end
const Reg = IC_CLR_GEN_CALLStruct

"""
    CLR_GEN_CALL

Read this register to clear the GEN\\_CALL interrupt (bit 11) of IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_GEN_CALL

end # register IC_CLR_GEN_CALL

"""
    IC_ENABLE

I2C Enable Register
"""
module IC_ENABLEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct IC_ENABLEStruct(regAddress)
	ENABLE:1::ReadWrite
	ABORT:1::ReadWrite
	TX_CMD_BLOCK:1::ReadWrite
	_:29
end
const Reg = IC_ENABLEStruct

"""
    ENABLE

Controls whether the DW\\_apb\\_i2c is enabled. - 0: Disables DW\\_apb\\_i2c (TX and RX FIFOs are held in an erased state) - 1: Enables DW\\_apb\\_i2c Software can disable DW\\_apb\\_i2c while it is active. However, it is important that care be taken to ensure that DW\\_apb\\_i2c is disabled properly. A recommended procedure is described in 'Disabling DW\\_apb\\_i2c'.\n

When DW\\_apb\\_i2c is disabled, the following occurs: - The TX FIFO and RX FIFO get flushed. - Status bits in the IC\\_INTR\\_STAT register are still active until DW\\_apb\\_i2c goes into IDLE state. If the module is transmitting, it stops as well as deletes the contents of the transmit buffer after the current transfer is complete. If the module is receiving, the DW\\_apb\\_i2c stops the current transfer at the end of the current byte and does not acknowledge the transfer.\n

In systems with asynchronous pclk and ic\\_clk when IC\\_CLK\\_TYPE parameter set to asynchronous (1), there is a two ic\\_clk delay when enabling or disabling the DW\\_apb\\_i2c. For a detailed description on how to disable DW\\_apb\\_i2c, refer to 'Disabling DW\\_apb\\_i2c'\n

Reset value: 0x0
"""
ENABLE

"""
    ABORT

When set, the controller initiates the transfer abort. - 0: ABORT not initiated or ABORT done - 1: ABORT operation in progress The software can abort the I2C transfer in master mode by setting this bit. The software can set this bit only when ENABLE is already set; otherwise, the controller ignores any write to ABORT bit. The software cannot clear the ABORT bit once set. In response to an ABORT, the controller issues a STOP and flushes the Tx FIFO after completing the current transfer, then sets the TX\\_ABORT interrupt after the abort operation. The ABORT bit is cleared automatically after the abort operation.\n

For a detailed description on how to abort I2C transfers, refer to 'Aborting I2C Transfers'.\n

Reset value: 0x0
"""
ABORT

"""
    TX_CMD_BLOCK

In Master mode: - 1'b1: Blocks the transmission of data on I2C bus even if Tx FIFO has data to transmit. - 1'b0: The transmission of data starts on I2C bus automatically, as soon as the first data is available in the Tx FIFO. Note: To block the execution of Master commands, set the TX\\_CMD\\_BLOCK bit only when Tx FIFO is empty (IC\\_STATUS[2]==1) and Master is in Idle state (IC\\_STATUS[5] == 0). Any further commands put in the Tx FIFO are not executed until TX\\_CMD\\_BLOCK bit is unset. Reset value:  IC\\_TX\\_CMD\\_BLOCK\\_DEFAULT
"""
TX_CMD_BLOCK

end # register IC_ENABLE

"""
    IC_STATUS

I2C Status Register\n

This is a read-only register used to indicate the current transfer status and FIFO status. The status register may be read at any time. None of the bits in this register request an interrupt.\n

When the I2C is disabled by writing 0 in bit 0 of the IC\\_ENABLE register: - Bits 1 and 2 are set to 1 - Bits 3 and 10 are set to 0 When the master or slave state machines goes to idle and ic\\_en=0: - Bits 5 and 6 are set to 0
"""
module IC_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct IC_STATUSStruct(regAddress)
	ACTIVITY:1::Read
	TFNF:1::Read
	TFE:1::Read
	RFNE:1::Read
	RFF:1::Read
	MST_ACTIVITY:1::Read
	SLV_ACTIVITY:1::Read
	_:25
end
const Reg = IC_STATUSStruct

"""
    ACTIVITY

I2C Activity Status. Reset value: 0x0
"""
ACTIVITY

"""
    TFNF

Transmit FIFO Not Full. Set when the transmit FIFO contains one or more empty locations, and is cleared when the FIFO is full. - 0: Transmit FIFO is full - 1: Transmit FIFO is not full Reset value: 0x1
"""
TFNF

"""
    TFE

Transmit FIFO Completely Empty. When the transmit FIFO is completely empty, this bit is set. When it contains one or more valid entries, this bit is cleared. This bit field does not request an interrupt. - 0: Transmit FIFO is not empty - 1: Transmit FIFO is empty Reset value: 0x1
"""
TFE

"""
    RFNE

Receive FIFO Not Empty. This bit is set when the receive FIFO contains one or more entries; it is cleared when the receive FIFO is empty. - 0: Receive FIFO is empty - 1: Receive FIFO is not empty Reset value: 0x0
"""
RFNE

"""
    RFF

Receive FIFO Completely Full. When the receive FIFO is completely full, this bit is set. When the receive FIFO contains one or more empty location, this bit is cleared. - 0: Receive FIFO is not full - 1: Receive FIFO is full Reset value: 0x0
"""
RFF

"""
    MST_ACTIVITY

Master FSM Activity Status. When the Master Finite State Machine (FSM) is not in the IDLE state, this bit is set. - 0: Master FSM is in IDLE state so the Master part of DW\\_apb\\_i2c is not Active - 1: Master FSM is not in IDLE state so the Master part of DW\\_apb\\_i2c is Active Note: IC\\_STATUS[0]-that is, ACTIVITY bit-is the OR of SLV\\_ACTIVITY and MST\\_ACTIVITY bits.\n

Reset value: 0x0
"""
MST_ACTIVITY

"""
    SLV_ACTIVITY

Slave FSM Activity Status. When the Slave Finite State Machine (FSM) is not in the IDLE state, this bit is set. - 0: Slave FSM is in IDLE state so the Slave part of DW\\_apb\\_i2c is not Active - 1: Slave FSM is not in IDLE state so the Slave part of DW\\_apb\\_i2c is Active Reset value: 0x0
"""
SLV_ACTIVITY

end # register IC_STATUS

"""
    IC_TXFLR

I2C Transmit FIFO Level Register This register contains the number of valid data entries in the transmit FIFO buffer. It is cleared whenever: - The I2C is disabled - There is a transmit abort - that is, TX\\_ABRT bit is set in the IC\\_RAW\\_INTR\\_STAT register - The slave bulk transmit mode is aborted The register increments whenever data is placed into the transmit FIFO and decrements when data is taken from the transmit FIFO.
"""
module IC_TXFLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct IC_TXFLRStruct(regAddress)
	TXFLR:5::Read
	_:27
end
const Reg = IC_TXFLRStruct

"""
    TXFLR

Transmit FIFO Level. Contains the number of valid data entries in the transmit FIFO.\n

Reset value: 0x0
"""
TXFLR

end # register IC_TXFLR

"""
    IC_RXFLR

I2C Receive FIFO Level Register This register contains the number of valid data entries in the receive FIFO buffer. It is cleared whenever: - The I2C is disabled - Whenever there is a transmit abort caused by any of the events tracked in IC\\_TX\\_ABRT\\_SOURCE The register increments whenever data is placed into the receive FIFO and decrements when data is taken from the receive FIFO.
"""
module IC_RXFLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct IC_RXFLRStruct(regAddress)
	RXFLR:5::Read
	_:27
end
const Reg = IC_RXFLRStruct

"""
    RXFLR

Receive FIFO Level. Contains the number of valid data entries in the receive FIFO.\n

Reset value: 0x0
"""
RXFLR

end # register IC_RXFLR

"""
    IC_SDA_HOLD

I2C SDA Hold Time Length Register\n

The bits [15:0] of this register are used to control the hold time of SDA during transmit in both slave and master mode (after SCL goes from HIGH to LOW).\n

The bits [23:16] of this register are used to extend the SDA transition (if any) whenever SCL is HIGH in the receiver in either master or slave mode.\n

Writes to this register succeed only when IC\\_ENABLE[0]=0.\n

The values in this register are in units of ic\\_clk period. The value programmed in IC\\_SDA\\_TX\\_HOLD must be greater than the minimum hold time in each mode (one cycle in master mode, seven cycles in slave mode) for the value to be implemented.\n

The programmed SDA hold time during transmit (IC\\_SDA\\_TX\\_HOLD) cannot exceed at any time the duration of the low part of scl. Therefore the programmed value cannot be larger than N\\_SCL\\_LOW-2, where N\\_SCL\\_LOW is the duration of the low part of the scl period measured in ic\\_clk cycles.
"""
module IC_SDA_HOLDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct IC_SDA_HOLDStruct(regAddress)
	IC_SDA_TX_HOLD:16::ReadWrite
	IC_SDA_RX_HOLD:8::ReadWrite
	_:8
end
const Reg = IC_SDA_HOLDStruct

"""
    IC_SDA_TX_HOLD

Sets the required SDA hold time in units of ic\\_clk period, when DW\\_apb\\_i2c acts as a transmitter.\n

Reset value: IC\\_DEFAULT\\_SDA\\_HOLD[15:0].
"""
IC_SDA_TX_HOLD

"""
    IC_SDA_RX_HOLD

Sets the required SDA hold time in units of ic\\_clk period, when DW\\_apb\\_i2c acts as a receiver.\n

Reset value: IC\\_DEFAULT\\_SDA\\_HOLD[23:16].
"""
IC_SDA_RX_HOLD

end # register IC_SDA_HOLD

"""
    IC_TX_ABRT_SOURCE

I2C Transmit Abort Source Register\n

This register has 32 bits that indicate the source of the TX\\_ABRT bit. Except for Bit 9, this register is cleared whenever the IC\\_CLR\\_TX\\_ABRT register or the IC\\_CLR\\_INTR register is read. To clear Bit 9, the source of the ABRT\\_SBYTE\\_NORSTRT must be fixed first; RESTART must be enabled (IC\\_CON[5]=1), the SPECIAL bit must be cleared (IC\\_TAR[11]), or the GC\\_OR\\_START bit must be cleared (IC\\_TAR[10]).\n

Once the source of the ABRT\\_SBYTE\\_NORSTRT is fixed, then this bit can be cleared in the same manner as other bits in this register. If the source of the ABRT\\_SBYTE\\_NORSTRT is not fixed before attempting to clear this bit, Bit 9 clears for one cycle and is then re-asserted.
"""
module IC_TX_ABRT_SOURCEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct IC_TX_ABRT_SOURCEStruct(regAddress)
	ABRT_7B_ADDR_NOACK:1::Read
	ABRT_10ADDR1_NOACK:1::Read
	ABRT_10ADDR2_NOACK:1::Read
	ABRT_TXDATA_NOACK:1::Read
	ABRT_GCALL_NOACK:1::Read
	ABRT_GCALL_READ:1::Read
	ABRT_HS_ACKDET:1::Read
	ABRT_SBYTE_ACKDET:1::Read
	ABRT_HS_NORSTRT:1::Read
	ABRT_SBYTE_NORSTRT:1::Read
	ABRT_10B_RD_NORSTRT:1::Read
	ABRT_MASTER_DIS:1::Read
	ARB_LOST:1::Read
	ABRT_SLVFLUSH_TXFIFO:1::Read
	ABRT_SLV_ARBLOST:1::Read
	ABRT_SLVRD_INTX:1::Read
	ABRT_USER_ABRT:1::Read
	_:6
	TX_FLUSH_CNT:9::Read
end
const Reg = IC_TX_ABRT_SOURCEStruct

"""
    ABRT_7B_ADDR_NOACK

This field indicates that the Master is in 7-bit addressing mode and the address sent was not acknowledged by any slave.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Master-Receiver
"""
ABRT_7B_ADDR_NOACK

"""
    ABRT_10ADDR1_NOACK

This field indicates that the Master is in 10-bit address mode and the first 10-bit address byte was not acknowledged by any slave.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Master-Receiver
"""
ABRT_10ADDR1_NOACK

"""
    ABRT_10ADDR2_NOACK

This field indicates that the Master is in 10-bit address mode and that the second address byte of the 10-bit address was not acknowledged by any slave.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Master-Receiver
"""
ABRT_10ADDR2_NOACK

"""
    ABRT_TXDATA_NOACK

This field indicates the master-mode only bit. When the master receives an acknowledgement for the address, but when it sends data byte(s) following the address, it did not receive an acknowledge from the remote slave(s).\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter
"""
ABRT_TXDATA_NOACK

"""
    ABRT_GCALL_NOACK

This field indicates that DW\\_apb\\_i2c in master mode has sent a General Call and no slave on the bus acknowledged the General Call.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter
"""
ABRT_GCALL_NOACK

"""
    ABRT_GCALL_READ

This field indicates that DW\\_apb\\_i2c in the master mode has sent a General Call but the user programmed the byte following the General Call to be a read from the bus (IC\\_DATA\\_CMD[9] is set to 1).\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter
"""
ABRT_GCALL_READ

"""
    ABRT_HS_ACKDET

This field indicates that the Master is in High Speed mode and the High Speed Master code was acknowledged (wrong behavior).\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master
"""
ABRT_HS_ACKDET

"""
    ABRT_SBYTE_ACKDET

This field indicates that the Master has sent a START Byte and the START Byte was acknowledged (wrong behavior).\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master
"""
ABRT_SBYTE_ACKDET

"""
    ABRT_HS_NORSTRT

This field indicates that the restart is disabled (IC\\_RESTART\\_EN bit (IC\\_CON[5]) =0) and the user is trying to use the master to transfer data in High Speed mode.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Master-Receiver
"""
ABRT_HS_NORSTRT

"""
    ABRT_SBYTE_NORSTRT

To clear Bit 9, the source of the ABRT\\_SBYTE\\_NORSTRT must be fixed first; restart must be enabled (IC\\_CON[5]=1), the SPECIAL bit must be cleared (IC\\_TAR[11]), or the GC\\_OR\\_START bit must be cleared (IC\\_TAR[10]). Once the source of the ABRT\\_SBYTE\\_NORSTRT is fixed, then this bit can be cleared in the same manner as other bits in this register. If the source of the ABRT\\_SBYTE\\_NORSTRT is not fixed before attempting to clear this bit, bit 9 clears for one cycle and then gets reasserted. When this field is set to 1, the restart is disabled (IC\\_RESTART\\_EN bit (IC\\_CON[5]) =0) and the user is trying to send a START Byte.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master
"""
ABRT_SBYTE_NORSTRT

"""
    ABRT_10B_RD_NORSTRT

This field indicates that the restart is disabled (IC\\_RESTART\\_EN bit (IC\\_CON[5]) =0) and the master sends a read command in 10-bit addressing mode.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Receiver
"""
ABRT_10B_RD_NORSTRT

"""
    ABRT_MASTER_DIS

This field indicates that the User tries to initiate a Master operation with the Master mode disabled.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Master-Receiver
"""
ABRT_MASTER_DIS

"""
    ARB_LOST

This field specifies that the Master has lost arbitration, or if IC\\_TX\\_ABRT\\_SOURCE[14] is also set, then the slave transmitter has lost arbitration.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Slave-Transmitter
"""
ARB_LOST

"""
    ABRT_SLVFLUSH_TXFIFO

This field specifies that the Slave has received a read command and some data exists in the TX FIFO, so the slave issues a TX\\_ABRT interrupt to flush old data in TX FIFO.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Slave-Transmitter
"""
ABRT_SLVFLUSH_TXFIFO

"""
    ABRT_SLV_ARBLOST

This field indicates that a Slave has lost the bus while transmitting data to a remote master. IC\\_TX\\_ABRT\\_SOURCE[12] is set at the same time. Note:  Even though the slave never 'owns' the bus, something could go wrong on the bus. This is a fail safe check. For instance, during a data transmission at the low-to-high transition of SCL, if what is on the data bus is not what is supposed to be transmitted, then DW\\_apb\\_i2c no longer own the bus.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Slave-Transmitter
"""
ABRT_SLV_ARBLOST

"""
    ABRT_SLVRD_INTX

1: When the processor side responds to a slave mode request for data to be transmitted to a remote master and user writes a 1 in CMD (bit 8) of IC\\_DATA\\_CMD register.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Slave-Transmitter
"""
ABRT_SLVRD_INTX

"""
    ABRT_USER_ABRT

This is a master-mode-only bit. Master has detected the transfer abort (IC\\_ENABLE[1])\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter
"""
ABRT_USER_ABRT

"""
    TX_FLUSH_CNT

This field indicates the number of Tx FIFO Data Commands which are flushed due to TX\\_ABRT interrupt. It is cleared whenever I2C is disabled.\n

Reset value: 0x0\n

Role of DW\\_apb\\_i2c:  Master-Transmitter or Slave-Transmitter
"""
TX_FLUSH_CNT

end # register IC_TX_ABRT_SOURCE

"""
    IC_SLV_DATA_NACK_ONLY

Generate Slave Data NACK Register\n

The register is used to generate a NACK for the data part of a transfer when DW\\_apb\\_i2c is acting as a slave-receiver. This register only exists when the IC\\_SLV\\_DATA\\_NACK\\_ONLY parameter is set to 1. When this parameter disabled, this register does not exist and writing to the register's address has no effect.\n

A write can occur on this register if both of the following conditions are met: - DW\\_apb\\_i2c is disabled (IC\\_ENABLE[0] = 0) - Slave part is inactive (IC\\_STATUS[6] = 0) Note: The IC\\_STATUS[6] is a register read-back location for the internal slv\\_activity signal; the user should poll this before writing the ic\\_slv\\_data\\_nack\\_only bit.
"""
module IC_SLV_DATA_NACK_ONLYMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct IC_SLV_DATA_NACK_ONLYStruct(regAddress)
	NACK:1::ReadWrite
	_:31
end
const Reg = IC_SLV_DATA_NACK_ONLYStruct

"""
    NACK

Generate NACK. This NACK generation only occurs when DW\\_apb\\_i2c is a slave-receiver. If this register is set to a value of 1, it can only generate a NACK after a data byte is received; hence, the data transfer is aborted and the data received is not pushed to the receive buffer.\n

When the register is set to a value of 0, it generates NACK/ACK, depending on normal criteria. - 1: generate NACK after data byte received - 0: generate NACK/ACK normally Reset value: 0x0
"""
NACK

end # register IC_SLV_DATA_NACK_ONLY

"""
    IC_DMA_CR

DMA Control Register\n

The register is used to enable the DMA Controller interface operation. There is a separate bit for transmit and receive. This can be programmed regardless of the state of IC\\_ENABLE.
"""
module IC_DMA_CRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct IC_DMA_CRStruct(regAddress)
	RDMAE:1::ReadWrite
	TDMAE:1::ReadWrite
	_:30
end
const Reg = IC_DMA_CRStruct

"""
    RDMAE

Receive DMA Enable. This bit enables/disables the receive FIFO DMA channel. Reset value: 0x0
"""
RDMAE

"""
    TDMAE

Transmit DMA Enable. This bit enables/disables the transmit FIFO DMA channel. Reset value: 0x0
"""
TDMAE

end # register IC_DMA_CR

"""
    IC_DMA_TDLR

DMA Transmit Data Level Register
"""
module IC_DMA_TDLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct IC_DMA_TDLRStruct(regAddress)
	DMATDL:4::ReadWrite
	_:28
end
const Reg = IC_DMA_TDLRStruct

"""
    DMATDL

Transmit Data Level. This bit field controls the level at which a DMA request is made by the transmit logic. It is equal to the watermark level; that is, the dma\\_tx\\_req signal is generated when the number of valid data entries in the transmit FIFO is equal to or below this field value, and TDMAE = 1.\n

Reset value: 0x0
"""
DMATDL

end # register IC_DMA_TDLR

"""
    IC_DMA_RDLR

I2C Receive Data Level Register
"""
module IC_DMA_RDLRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct IC_DMA_RDLRStruct(regAddress)
	DMARDL:4::ReadWrite
	_:28
end
const Reg = IC_DMA_RDLRStruct

"""
    DMARDL

Receive Data Level. This bit field controls the level at which a DMA request is made by the receive logic. The watermark level = DMARDL+1; that is, dma\\_rx\\_req is generated when the number of valid data entries in the receive FIFO is equal to or more than this field value + 1, and RDMAE =1. For instance, when DMARDL is 0, then dma\\_rx\\_req is asserted when 1 or more data entries are present in the receive FIFO.\n

Reset value: 0x0
"""
DMARDL

end # register IC_DMA_RDLR

"""
    IC_SDA_SETUP

I2C SDA Setup Register\n

This register controls the amount of time delay (in terms of number of ic\\_clk clock periods) introduced in the rising edge of SCL - relative to SDA changing - when DW\\_apb\\_i2c services a read request in a slave-transmitter operation. The relevant I2C requirement is tSU:DAT (note 4) as detailed in the I2C Bus Specification. This register must be programmed with a value equal to or greater than 2.\n

Writes to this register succeed only when IC\\_ENABLE[0] = 0.\n

Note: The length of setup time is calculated using [(IC\\_SDA\\_SETUP - 1) * (ic\\_clk\\_period)], so if the user requires 10 ic\\_clk periods of setup time, they should program a value of 11. The IC\\_SDA\\_SETUP register is only used by the DW\\_apb\\_i2c when operating as a slave transmitter.
"""
module IC_SDA_SETUPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct IC_SDA_SETUPStruct(regAddress)
	SDA_SETUP:8::ReadWrite
	_:24
end
const Reg = IC_SDA_SETUPStruct

"""
    SDA_SETUP

SDA Setup. It is recommended that if the required delay is 1000ns, then for an ic\\_clk frequency of 10 MHz, IC\\_SDA\\_SETUP should be programmed to a value of 11. IC\\_SDA\\_SETUP must be programmed with a minimum value of 2.
"""
SDA_SETUP

end # register IC_SDA_SETUP

"""
    IC_ACK_GENERAL_CALL

I2C ACK General Call Register\n

The register controls whether DW\\_apb\\_i2c responds with a ACK or NACK when it receives an I2C General Call address.\n

This register is applicable only when the DW\\_apb\\_i2c is in slave mode.
"""
module IC_ACK_GENERAL_CALLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct IC_ACK_GENERAL_CALLStruct(regAddress)
	ACK_GEN_CALL:1::ReadWrite
	_:31
end
const Reg = IC_ACK_GENERAL_CALLStruct

"""
    ACK_GEN_CALL

ACK General Call. When set to 1, DW\\_apb\\_i2c responds with a ACK (by asserting ic\\_data\\_oe) when it receives a General Call. Otherwise, DW\\_apb\\_i2c responds with a NACK (by negating ic\\_data\\_oe).
"""
ACK_GEN_CALL

end # register IC_ACK_GENERAL_CALL

"""
    IC_ENABLE_STATUS

I2C Enable Status Register\n

The register is used to report the DW\\_apb\\_i2c hardware status when the IC\\_ENABLE[0] register is set from 1 to 0; that is, when DW\\_apb\\_i2c is disabled.\n

If IC\\_ENABLE[0] has been set to 1, bits 2:1 are forced to 0, and bit 0 is forced to 1.\n

If IC\\_ENABLE[0] has been set to 0, bits 2:1 is only be valid as soon as bit 0 is read as '0'.\n

Note: When IC\\_ENABLE[0] has been set to 0, a delay occurs for bit 0 to be read as 0 because disabling the DW\\_apb\\_i2c depends on I2C bus activities.
"""
module IC_ENABLE_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct IC_ENABLE_STATUSStruct(regAddress)
	IC_EN:1::Read
	SLV_DISABLED_WHILE_BUSY:1::Read
	SLV_RX_DATA_LOST:1::Read
	_:29
end
const Reg = IC_ENABLE_STATUSStruct

"""
    IC_EN

ic\\_en Status. This bit always reflects the value driven on the output port ic\\_en. - When read as 1, DW\\_apb\\_i2c is deemed to be in an enabled state. - When read as 0, DW\\_apb\\_i2c is deemed completely inactive. Note:  The CPU can safely read this bit anytime. When this bit is read as 0, the CPU can safely read SLV\\_RX\\_DATA\\_LOST (bit 2) and SLV\\_DISABLED\\_WHILE\\_BUSY (bit 1).\n

Reset value: 0x0
"""
IC_EN

"""
    SLV_DISABLED_WHILE_BUSY

Slave Disabled While Busy (Transmit, Receive). This bit indicates if a potential or active Slave operation has been aborted due to the setting bit 0 of the IC\\_ENABLE register from 1 to 0. This bit is set when the CPU writes a 0 to the IC\\_ENABLE register while:\n

(a) DW\\_apb\\_i2c is receiving the address byte of the Slave-Transmitter operation from a remote master;\n

OR,\n

(b) address and data bytes of the Slave-Receiver operation from a remote master.\n

When read as 1, DW\\_apb\\_i2c is deemed to have forced a NACK during any part of an I2C transfer, irrespective of whether the I2C address matches the slave address set in DW\\_apb\\_i2c (IC\\_SAR register) OR if the transfer is completed before IC\\_ENABLE is set to 0 but has not taken effect.\n

Note:  If the remote I2C master terminates the transfer with a STOP condition before the DW\\_apb\\_i2c has a chance to NACK a transfer, and IC\\_ENABLE[0] has been set to 0, then this bit will also be set to 1.\n

When read as 0, DW\\_apb\\_i2c is deemed to have been disabled when there is master activity, or when the I2C bus is idle.\n

Note:  The CPU can safely read this bit when IC\\_EN (bit 0) is read as 0.\n

Reset value: 0x0
"""
SLV_DISABLED_WHILE_BUSY

"""
    SLV_RX_DATA_LOST

Slave Received Data Lost. This bit indicates if a Slave-Receiver operation has been aborted with at least one data byte received from an I2C transfer due to the setting bit 0 of IC\\_ENABLE from 1 to 0. When read as 1, DW\\_apb\\_i2c is deemed to have been actively engaged in an aborted I2C transfer (with matching address) and the data phase of the I2C transfer has been entered, even though a data byte has been responded with a NACK.\n

Note:  If the remote I2C master terminates the transfer with a STOP condition before the DW\\_apb\\_i2c has a chance to NACK a transfer, and IC\\_ENABLE[0] has been set to 0, then this bit is also set to 1.\n

When read as 0, DW\\_apb\\_i2c is deemed to have been disabled without being actively involved in the data phase of a Slave-Receiver transfer.\n

Note:  The CPU can safely read this bit when IC\\_EN (bit 0) is read as 0.\n

Reset value: 0x0
"""
SLV_RX_DATA_LOST

end # register IC_ENABLE_STATUS

"""
    IC_FS_SPKLEN

I2C SS, FS or FM+ spike suppression limit\n

This register is used to store the duration, measured in ic\\_clk cycles, of the longest spike that is filtered out by the spike suppression logic when the component is operating in SS, FS or FM+ modes. The relevant I2C requirement is tSP (table 4) as detailed in the I2C Bus Specification. This register must be programmed with a minimum value of 1.
"""
module IC_FS_SPKLENMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct IC_FS_SPKLENStruct(regAddress)
	IC_FS_SPKLEN:8::ReadWrite
	_:24
end
const Reg = IC_FS_SPKLENStruct

"""
    IC_FS_SPKLEN

This register must be set before any I2C bus transaction can take place to ensure stable operation. This register sets the duration, measured in ic\\_clk cycles, of the longest spike in the SCL or SDA lines that will be filtered out by the spike suppression logic. This register can be written only when the I2C interface is disabled which corresponds to the IC\\_ENABLE[0] register being set to 0. Writes at other times have no effect. The minimum valid value is 1; hardware prevents values less than this being written, and if attempted results in 1 being set. or more information, refer to 'Spike Suppression'.
"""
IC_FS_SPKLEN

end # register IC_FS_SPKLEN

"""
    IC_CLR_RESTART_DET

Clear RESTART\\_DET Interrupt Register
"""
module IC_CLR_RESTART_DETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct IC_CLR_RESTART_DETStruct(regAddress)
	CLR_RESTART_DET:1::Read
	_:31
end
const Reg = IC_CLR_RESTART_DETStruct

"""
    CLR_RESTART_DET

Read this register to clear the RESTART\\_DET interrupt (bit 12) of IC\\_RAW\\_INTR\\_STAT register.\n

Reset value: 0x0
"""
CLR_RESTART_DET

end # register IC_CLR_RESTART_DET

"""
    IC_COMP_PARAM_1

Component Parameter Register 1\n

Note This register is not implemented and therefore reads as 0. If it was implemented it would be a constant read-only register that contains encoded information about the component's parameter settings. Fields shown below are the settings for those parameters
"""
module IC_COMP_PARAM_1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct IC_COMP_PARAM_1Struct(regAddress)
	APB_DATA_WIDTH:2::Read
	MAX_SPEED_MODE:2::Read
	HC_COUNT_VALUES:1::Read
	INTR_IO:1::Read
	HAS_DMA:1::Read
	ADD_ENCODED_PARAMS:1::Read
	RX_BUFFER_DEPTH:8::Read
	TX_BUFFER_DEPTH:8::Read
	_:8
end
const Reg = IC_COMP_PARAM_1Struct

"""
    APB_DATA_WIDTH

APB data bus width is 32 bits
"""
APB_DATA_WIDTH

"""
    MAX_SPEED_MODE

MAX SPEED MODE = FAST MODE
"""
MAX_SPEED_MODE

"""
    HC_COUNT_VALUES

Programmable count values for each mode.
"""
HC_COUNT_VALUES

"""
    INTR_IO

COMBINED Interrupt outputs
"""
INTR_IO

"""
    HAS_DMA

DMA handshaking signals are enabled
"""
HAS_DMA

"""
    ADD_ENCODED_PARAMS

Encoded parameters not visible
"""
ADD_ENCODED_PARAMS

"""
    RX_BUFFER_DEPTH

RX Buffer Depth = 16
"""
RX_BUFFER_DEPTH

"""
    TX_BUFFER_DEPTH

TX Buffer Depth = 16
"""
TX_BUFFER_DEPTH

end # register IC_COMP_PARAM_1

"""
    IC_COMP_VERSION

I2C Component Version Register
"""
module IC_COMP_VERSIONMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct IC_COMP_VERSIONStruct(regAddress)
	IC_COMP_VERSION:32::Read
end
const Reg = IC_COMP_VERSIONStruct

"""
    IC_COMP_VERSION

Field has no description!
"""
IC_COMP_VERSION

end # register IC_COMP_VERSION

"""
    IC_COMP_TYPE

I2C Component Type Register
"""
module IC_COMP_TYPEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..I2C0: baseAddress

const regAddress = baseAddress + 0x00000000000000fc
@regdef struct IC_COMP_TYPEStruct(regAddress)
	IC_COMP_TYPE:32::Read
end
const Reg = IC_COMP_TYPEStruct

"""
    IC_COMP_TYPE

Designware Component Type number = 0x44\\_57\\_01\\_40. This assigned unique hex value is constant and is derived from the two ASCII letters 'DW' followed by a 16-bit unsigned number.
"""
IC_COMP_TYPE

end # register IC_COMP_TYPE

end # peripheral

