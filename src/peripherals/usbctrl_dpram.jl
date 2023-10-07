"""
    USBCTRL_DPRAM

DPRAM layout for USB device.
"""
module USBCTRL_DPRAM

const baseAddress = Ptr{UInt32}(1343225856)

"""
    SETUP_PACKET_LOW

Bytes 0-3 of the SETUP packet from the host.
"""
module SETUP_PACKET_LOWMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct SETUP_PACKET_LOWStruct(regAddress)
	BMREQUESTTYPE:8::ReadWrite
	BREQUEST:8::ReadWrite
	WVALUE:16::ReadWrite
end
const Reg = SETUP_PACKET_LOWStruct

"""
    BMREQUESTTYPE

Field has no description!
"""
BMREQUESTTYPE

"""
    BREQUEST

Field has no description!
"""
BREQUEST

"""
    WVALUE

Field has no description!
"""
WVALUE

end # register SETUP_PACKET_LOW

"""
    SETUP_PACKET_HIGH

Bytes 4-7 of the setup packet from the host.
"""
module SETUP_PACKET_HIGHMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct SETUP_PACKET_HIGHStruct(regAddress)
	WINDEX:16::ReadWrite
	WLENGTH:16::ReadWrite
end
const Reg = SETUP_PACKET_HIGHStruct

"""
    WINDEX

Field has no description!
"""
WINDEX

"""
    WLENGTH

Field has no description!
"""
WLENGTH

end # register SETUP_PACKET_HIGH

"""
    EP1_IN_CONTROL

No description of register!
"""
module EP1_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct EP1_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP1_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP1_IN_CONTROL

"""
    EP1_OUT_CONTROL

No description of register!
"""
module EP1_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct EP1_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP1_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP1_OUT_CONTROL

"""
    EP2_IN_CONTROL

No description of register!
"""
module EP2_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct EP2_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP2_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP2_IN_CONTROL

"""
    EP2_OUT_CONTROL

No description of register!
"""
module EP2_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct EP2_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP2_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP2_OUT_CONTROL

"""
    EP3_IN_CONTROL

No description of register!
"""
module EP3_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct EP3_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP3_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP3_IN_CONTROL

"""
    EP3_OUT_CONTROL

No description of register!
"""
module EP3_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct EP3_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP3_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP3_OUT_CONTROL

"""
    EP4_IN_CONTROL

No description of register!
"""
module EP4_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct EP4_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP4_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP4_IN_CONTROL

"""
    EP4_OUT_CONTROL

No description of register!
"""
module EP4_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct EP4_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP4_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP4_OUT_CONTROL

"""
    EP5_IN_CONTROL

No description of register!
"""
module EP5_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct EP5_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP5_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP5_IN_CONTROL

"""
    EP5_OUT_CONTROL

No description of register!
"""
module EP5_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct EP5_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP5_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP5_OUT_CONTROL

"""
    EP6_IN_CONTROL

No description of register!
"""
module EP6_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct EP6_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP6_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP6_IN_CONTROL

"""
    EP6_OUT_CONTROL

No description of register!
"""
module EP6_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct EP6_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP6_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP6_OUT_CONTROL

"""
    EP7_IN_CONTROL

No description of register!
"""
module EP7_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct EP7_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP7_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP7_IN_CONTROL

"""
    EP7_OUT_CONTROL

No description of register!
"""
module EP7_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct EP7_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP7_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP7_OUT_CONTROL

"""
    EP8_IN_CONTROL

No description of register!
"""
module EP8_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct EP8_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP8_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP8_IN_CONTROL

"""
    EP8_OUT_CONTROL

No description of register!
"""
module EP8_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct EP8_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP8_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP8_OUT_CONTROL

"""
    EP9_IN_CONTROL

No description of register!
"""
module EP9_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct EP9_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP9_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP9_IN_CONTROL

"""
    EP9_OUT_CONTROL

No description of register!
"""
module EP9_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct EP9_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP9_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP9_OUT_CONTROL

"""
    EP10_IN_CONTROL

No description of register!
"""
module EP10_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct EP10_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP10_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP10_IN_CONTROL

"""
    EP10_OUT_CONTROL

No description of register!
"""
module EP10_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct EP10_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP10_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP10_OUT_CONTROL

"""
    EP11_IN_CONTROL

No description of register!
"""
module EP11_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct EP11_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP11_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP11_IN_CONTROL

"""
    EP11_OUT_CONTROL

No description of register!
"""
module EP11_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct EP11_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP11_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP11_OUT_CONTROL

"""
    EP12_IN_CONTROL

No description of register!
"""
module EP12_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct EP12_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP12_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP12_IN_CONTROL

"""
    EP12_OUT_CONTROL

No description of register!
"""
module EP12_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct EP12_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP12_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP12_OUT_CONTROL

"""
    EP13_IN_CONTROL

No description of register!
"""
module EP13_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct EP13_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP13_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP13_IN_CONTROL

"""
    EP13_OUT_CONTROL

No description of register!
"""
module EP13_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct EP13_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP13_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP13_OUT_CONTROL

"""
    EP14_IN_CONTROL

No description of register!
"""
module EP14_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct EP14_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP14_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP14_IN_CONTROL

"""
    EP14_OUT_CONTROL

No description of register!
"""
module EP14_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct EP14_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP14_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP14_OUT_CONTROL

"""
    EP15_IN_CONTROL

No description of register!
"""
module EP15_IN_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct EP15_IN_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP15_IN_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP15_IN_CONTROL

"""
    EP15_OUT_CONTROL

No description of register!
"""
module EP15_OUT_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct EP15_OUT_CONTROLStruct(regAddress)
	BUFFER_ADDRESS:16::ReadWrite
	INTERRUPT_ON_NAK:1::ReadWrite
	INTERRUPT_ON_STALL:1::ReadWrite
	_:8
	ENDPOINT_TYPE:2::ReadWrite
	INTERRUPT_PER_DOUBLE_BUFF:1::ReadWrite
	INTERRUPT_PER_BUFF:1::ReadWrite
	DOUBLE_BUFFERED:1::ReadWrite
	ENABLE:1::ReadWrite
end
const Reg = EP15_OUT_CONTROLStruct

"""
    BUFFER_ADDRESS

64 byte aligned buffer address for this EP (bits 0-5 are ignored). Relative to the start of the DPRAM.
"""
BUFFER_ADDRESS

"""
    INTERRUPT_ON_NAK

Trigger an interrupt if a NAK is sent. Intended for debug only.
"""
INTERRUPT_ON_NAK

"""
    INTERRUPT_ON_STALL

Trigger an interrupt if a STALL is sent. Intended for debug only.
"""
INTERRUPT_ON_STALL

"""
    ENDPOINT_TYPE

Field has no description!
"""
ENDPOINT_TYPE

"""
    INTERRUPT_PER_DOUBLE_BUFF

Trigger an interrupt each time both buffers are done. Only valid in double buffered mode.
"""
INTERRUPT_PER_DOUBLE_BUFF

"""
    INTERRUPT_PER_BUFF

Trigger an interrupt each time a buffer is done.
"""
INTERRUPT_PER_BUFF

"""
    DOUBLE_BUFFERED

This endpoint is double buffered.
"""
DOUBLE_BUFFERED

"""
    ENABLE

Enable this endpoint. The device will not reply to any packets for this endpoint if this bit is not set.
"""
ENABLE

end # register EP15_OUT_CONTROL

"""
    EP0_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP0_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct EP0_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP0_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP0_IN_BUFFER_CONTROL

"""
    EP0_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP0_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct EP0_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP0_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP0_OUT_BUFFER_CONTROL

"""
    EP1_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP1_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct EP1_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP1_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP1_IN_BUFFER_CONTROL

"""
    EP1_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP1_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct EP1_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP1_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP1_OUT_BUFFER_CONTROL

"""
    EP2_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP2_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct EP2_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP2_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP2_IN_BUFFER_CONTROL

"""
    EP2_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP2_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct EP2_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP2_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP2_OUT_BUFFER_CONTROL

"""
    EP3_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP3_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct EP3_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP3_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP3_IN_BUFFER_CONTROL

"""
    EP3_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP3_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct EP3_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP3_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP3_OUT_BUFFER_CONTROL

"""
    EP4_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP4_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct EP4_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP4_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP4_IN_BUFFER_CONTROL

"""
    EP4_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP4_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct EP4_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP4_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP4_OUT_BUFFER_CONTROL

"""
    EP5_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP5_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct EP5_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP5_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP5_IN_BUFFER_CONTROL

"""
    EP5_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP5_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct EP5_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP5_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP5_OUT_BUFFER_CONTROL

"""
    EP6_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP6_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct EP6_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP6_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP6_IN_BUFFER_CONTROL

"""
    EP6_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP6_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000b4
@regdef struct EP6_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP6_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP6_OUT_BUFFER_CONTROL

"""
    EP7_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP7_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000b8
@regdef struct EP7_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP7_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP7_IN_BUFFER_CONTROL

"""
    EP7_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP7_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000bc
@regdef struct EP7_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP7_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP7_OUT_BUFFER_CONTROL

"""
    EP8_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP8_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000c0
@regdef struct EP8_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP8_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP8_IN_BUFFER_CONTROL

"""
    EP8_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP8_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000c4
@regdef struct EP8_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP8_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP8_OUT_BUFFER_CONTROL

"""
    EP9_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP9_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000c8
@regdef struct EP9_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP9_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP9_IN_BUFFER_CONTROL

"""
    EP9_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP9_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000cc
@regdef struct EP9_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP9_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP9_OUT_BUFFER_CONTROL

"""
    EP10_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP10_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000d0
@regdef struct EP10_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP10_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP10_IN_BUFFER_CONTROL

"""
    EP10_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP10_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000d4
@regdef struct EP10_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP10_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP10_OUT_BUFFER_CONTROL

"""
    EP11_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP11_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000d8
@regdef struct EP11_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP11_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP11_IN_BUFFER_CONTROL

"""
    EP11_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP11_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000dc
@regdef struct EP11_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP11_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP11_OUT_BUFFER_CONTROL

"""
    EP12_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP12_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000e0
@regdef struct EP12_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP12_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP12_IN_BUFFER_CONTROL

"""
    EP12_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP12_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000e4
@regdef struct EP12_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP12_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP12_OUT_BUFFER_CONTROL

"""
    EP13_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP13_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000e8
@regdef struct EP13_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP13_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP13_IN_BUFFER_CONTROL

"""
    EP13_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP13_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000ec
@regdef struct EP13_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP13_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP13_OUT_BUFFER_CONTROL

"""
    EP14_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP14_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000f0
@regdef struct EP14_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP14_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP14_IN_BUFFER_CONTROL

"""
    EP14_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP14_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000f4
@regdef struct EP14_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP14_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP14_OUT_BUFFER_CONTROL

"""
    EP15_IN_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP15_IN_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000f8
@regdef struct EP15_IN_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP15_IN_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP15_IN_BUFFER_CONTROL

"""
    EP15_OUT_BUFFER_CONTROL

Buffer control for both buffers of an endpoint. Fields ending in a \\_1 are for buffer 1.

Fields ending in a \\_0 are for buffer 0. Buffer 1 controls are only valid if the endpoint is in double buffered mode.
"""
module EP15_OUT_BUFFER_CONTROLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..USBCTRL_DPRAM: baseAddress

const regAddress = baseAddress + 0x00000000000000fc
@regdef struct EP15_OUT_BUFFER_CONTROLStruct(regAddress)
	LENGTH_0:10::ReadWrite
	AVAILABLE_0:1::ReadWrite
	STALL:1::ReadWrite
	RESET:1::ReadWrite
	PID_0:1::ReadWrite
	LAST_0:1::ReadWrite
	FULL_0:1::ReadWrite
	LENGTH_1:10::ReadWrite
	AVAILABLE_1:1::ReadWrite
	DOUBLE_BUFFER_ISO_OFFSET:2::ReadWrite
	PID_1:1::ReadWrite
	LAST_1:1::ReadWrite
	FULL_1:1::ReadWrite
end
const Reg = EP15_OUT_BUFFER_CONTROLStruct

"""
    LENGTH_0

The length of the data in buffer 0.
"""
LENGTH_0

"""
    AVAILABLE_0

Buffer 0 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_0

"""
    STALL

Reply with a stall (valid for both buffers).
"""
STALL

"""
    RESET

Reset the buffer selector to buffer 0.
"""
RESET

"""
    PID_0

The data pid of buffer 0.
"""
PID_0

"""
    LAST_0

Buffer 0 is the last buffer of the transfer.
"""
LAST_0

"""
    FULL_0

Buffer 0 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_0

"""
    LENGTH_1

The length of the data in buffer 1.
"""
LENGTH_1

"""
    AVAILABLE_1

Buffer 1 is available. This bit is set to indicate the buffer can be used by the controller. The controller clears the available bit when writing the status back.
"""
AVAILABLE_1

"""
    DOUBLE_BUFFER_ISO_OFFSET

The number of bytes buffer 1 is offset from buffer 0 in Isochronous mode. Only valid in double buffered mode for an Isochronous endpoint.

For a non Isochronous endpoint the offset is always 64 bytes.
"""
DOUBLE_BUFFER_ISO_OFFSET

"""
    PID_1

The data pid of buffer 1.
"""
PID_1

"""
    LAST_1

Buffer 1 is the last buffer of the transfer.
"""
LAST_1

"""
    FULL_1

Buffer 1 is full. For an IN transfer (TX to the host) the bit is set to indicate the data is valid. For an OUT transfer (RX from the host) this bit should be left as a 0. The host will set it when it has filled the buffer with data.
"""
FULL_1

end # register EP15_OUT_BUFFER_CONTROL

end # peripheral

