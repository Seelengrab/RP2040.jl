"""
    PWM

Simple PWM
"""
module PWM

const baseAddress = Ptr{UInt32}(1074069504)

"""
    CH0_CSR

Control and status register
"""
module CH0_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CH0_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH0_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH0_CSR

"""
    CH0_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH0_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct CH0_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH0_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH0_DIV

"""
    CH0_CTR

Direct access to the PWM counter
"""
module CH0_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct CH0_CTRStruct(regAddress)
	CH0_CTR:16::ReadWrite
	_:16
end
const Reg = CH0_CTRStruct

"""
    CH0_CTR

Field has no description!
"""
CH0_CTR

end # register CH0_CTR

"""
    CH0_CC

Counter compare values
"""
module CH0_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct CH0_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH0_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH0_CC

"""
    CH0_TOP

Counter wrap value
"""
module CH0_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct CH0_TOPStruct(regAddress)
	CH0_TOP:16::ReadWrite
	_:16
end
const Reg = CH0_TOPStruct

"""
    CH0_TOP

Field has no description!
"""
CH0_TOP

end # register CH0_TOP

"""
    CH1_CSR

Control and status register
"""
module CH1_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct CH1_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH1_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH1_CSR

"""
    CH1_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH1_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct CH1_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH1_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH1_DIV

"""
    CH1_CTR

Direct access to the PWM counter
"""
module CH1_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct CH1_CTRStruct(regAddress)
	CH1_CTR:16::ReadWrite
	_:16
end
const Reg = CH1_CTRStruct

"""
    CH1_CTR

Field has no description!
"""
CH1_CTR

end # register CH1_CTR

"""
    CH1_CC

Counter compare values
"""
module CH1_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct CH1_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH1_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH1_CC

"""
    CH1_TOP

Counter wrap value
"""
module CH1_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct CH1_TOPStruct(regAddress)
	CH1_TOP:16::ReadWrite
	_:16
end
const Reg = CH1_TOPStruct

"""
    CH1_TOP

Field has no description!
"""
CH1_TOP

end # register CH1_TOP

"""
    CH2_CSR

Control and status register
"""
module CH2_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct CH2_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH2_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH2_CSR

"""
    CH2_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH2_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct CH2_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH2_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH2_DIV

"""
    CH2_CTR

Direct access to the PWM counter
"""
module CH2_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct CH2_CTRStruct(regAddress)
	CH2_CTR:16::ReadWrite
	_:16
end
const Reg = CH2_CTRStruct

"""
    CH2_CTR

Field has no description!
"""
CH2_CTR

end # register CH2_CTR

"""
    CH2_CC

Counter compare values
"""
module CH2_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct CH2_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH2_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH2_CC

"""
    CH2_TOP

Counter wrap value
"""
module CH2_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct CH2_TOPStruct(regAddress)
	CH2_TOP:16::ReadWrite
	_:16
end
const Reg = CH2_TOPStruct

"""
    CH2_TOP

Field has no description!
"""
CH2_TOP

end # register CH2_TOP

"""
    CH3_CSR

Control and status register
"""
module CH3_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct CH3_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH3_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH3_CSR

"""
    CH3_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH3_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct CH3_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH3_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH3_DIV

"""
    CH3_CTR

Direct access to the PWM counter
"""
module CH3_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct CH3_CTRStruct(regAddress)
	CH3_CTR:16::ReadWrite
	_:16
end
const Reg = CH3_CTRStruct

"""
    CH3_CTR

Field has no description!
"""
CH3_CTR

end # register CH3_CTR

"""
    CH3_CC

Counter compare values
"""
module CH3_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct CH3_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH3_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH3_CC

"""
    CH3_TOP

Counter wrap value
"""
module CH3_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000004c
@regdef struct CH3_TOPStruct(regAddress)
	CH3_TOP:16::ReadWrite
	_:16
end
const Reg = CH3_TOPStruct

"""
    CH3_TOP

Field has no description!
"""
CH3_TOP

end # register CH3_TOP

"""
    CH4_CSR

Control and status register
"""
module CH4_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct CH4_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH4_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH4_CSR

"""
    CH4_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH4_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct CH4_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH4_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH4_DIV

"""
    CH4_CTR

Direct access to the PWM counter
"""
module CH4_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct CH4_CTRStruct(regAddress)
	CH4_CTR:16::ReadWrite
	_:16
end
const Reg = CH4_CTRStruct

"""
    CH4_CTR

Field has no description!
"""
CH4_CTR

end # register CH4_CTR

"""
    CH4_CC

Counter compare values
"""
module CH4_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct CH4_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH4_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH4_CC

"""
    CH4_TOP

Counter wrap value
"""
module CH4_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct CH4_TOPStruct(regAddress)
	CH4_TOP:16::ReadWrite
	_:16
end
const Reg = CH4_TOPStruct

"""
    CH4_TOP

Field has no description!
"""
CH4_TOP

end # register CH4_TOP

"""
    CH5_CSR

Control and status register
"""
module CH5_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct CH5_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH5_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH5_CSR

"""
    CH5_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH5_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct CH5_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH5_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH5_DIV

"""
    CH5_CTR

Direct access to the PWM counter
"""
module CH5_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct CH5_CTRStruct(regAddress)
	CH5_CTR:16::ReadWrite
	_:16
end
const Reg = CH5_CTRStruct

"""
    CH5_CTR

Field has no description!
"""
CH5_CTR

end # register CH5_CTR

"""
    CH5_CC

Counter compare values
"""
module CH5_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct CH5_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH5_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH5_CC

"""
    CH5_TOP

Counter wrap value
"""
module CH5_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct CH5_TOPStruct(regAddress)
	CH5_TOP:16::ReadWrite
	_:16
end
const Reg = CH5_TOPStruct

"""
    CH5_TOP

Field has no description!
"""
CH5_TOP

end # register CH5_TOP

"""
    CH6_CSR

Control and status register
"""
module CH6_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct CH6_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH6_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH6_CSR

"""
    CH6_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH6_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct CH6_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH6_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH6_DIV

"""
    CH6_CTR

Direct access to the PWM counter
"""
module CH6_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct CH6_CTRStruct(regAddress)
	CH6_CTR:16::ReadWrite
	_:16
end
const Reg = CH6_CTRStruct

"""
    CH6_CTR

Field has no description!
"""
CH6_CTR

end # register CH6_CTR

"""
    CH6_CC

Counter compare values
"""
module CH6_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct CH6_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH6_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH6_CC

"""
    CH6_TOP

Counter wrap value
"""
module CH6_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct CH6_TOPStruct(regAddress)
	CH6_TOP:16::ReadWrite
	_:16
end
const Reg = CH6_TOPStruct

"""
    CH6_TOP

Field has no description!
"""
CH6_TOP

end # register CH6_TOP

"""
    CH7_CSR

Control and status register
"""
module CH7_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct CH7_CSRStruct(regAddress)
	EN:1::ReadWrite
	PH_CORRECT:1::ReadWrite
	A_INV:1::ReadWrite
	B_INV:1::ReadWrite
	DIVMODE:2::ReadWrite
	PH_RET:1::ReadWrite
	PH_ADV:1::ReadWrite
	_:24
end
const Reg = CH7_CSRStruct

"""
    EN

Enable the PWM channel.
"""
EN

"""
    PH_CORRECT

1: Enable phase-correct modulation. 0: Trailing-edge
"""
PH_CORRECT

"""
    A_INV

Invert output A
"""
A_INV

"""
    B_INV

Invert output B
"""
B_INV

"""
    DIVMODE

Field has no description!
"""
DIVMODE

"""
    PH_RET

Retard the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running.
"""
PH_RET

"""
    PH_ADV

Advance the phase of the counter by 1 count, while it is running.

Self-clearing. Write a 1, and poll until low. Counter must be running

at less than full speed (div\\_int + div\\_frac / 16 &gt; 1)
"""
PH_ADV

end # register CH7_CSR

"""
    CH7_DIV

INT and FRAC form a fixed-point fractional number.

Counting rate is system clock frequency divided by this number.

Fractional division uses simple 1st-order sigma-delta.
"""
module CH7_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct CH7_DIVStruct(regAddress)
	FRAC:4::ReadWrite
	INT:8::ReadWrite
	_:20
end
const Reg = CH7_DIVStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    INT

Field has no description!
"""
INT

end # register CH7_DIV

"""
    CH7_CTR

Direct access to the PWM counter
"""
module CH7_CTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct CH7_CTRStruct(regAddress)
	CH7_CTR:16::ReadWrite
	_:16
end
const Reg = CH7_CTRStruct

"""
    CH7_CTR

Field has no description!
"""
CH7_CTR

end # register CH7_CTR

"""
    CH7_CC

Counter compare values
"""
module CH7_CCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct CH7_CCStruct(regAddress)
	A:16::ReadWrite
	B:16::ReadWrite
end
const Reg = CH7_CCStruct

"""
    A

Field has no description!
"""
A

"""
    B

Field has no description!
"""
B

end # register CH7_CC

"""
    CH7_TOP

Counter wrap value
"""
module CH7_TOPMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct CH7_TOPStruct(regAddress)
	CH7_TOP:16::ReadWrite
	_:16
end
const Reg = CH7_TOPStruct

"""
    CH7_TOP

Field has no description!
"""
CH7_TOP

end # register CH7_TOP

"""
    EN

This register aliases the CSR\\_EN bits for all channels.

Writing to this register allows multiple channels to be enabled

or disabled simultaneously, so they can run in perfect sync.

For each channel, there is only one physical EN register bit,

which can be accessed through here or CHx\\_CSR.
"""
module ENMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct ENStruct(regAddress)
	CH0:1::ReadWrite
	CH1:1::ReadWrite
	CH2:1::ReadWrite
	CH3:1::ReadWrite
	CH4:1::ReadWrite
	CH5:1::ReadWrite
	CH6:1::ReadWrite
	CH7:1::ReadWrite
	_:24
end
const Reg = ENStruct

"""
    CH0

Field has no description!
"""
CH0

"""
    CH1

Field has no description!
"""
CH1

"""
    CH2

Field has no description!
"""
CH2

"""
    CH3

Field has no description!
"""
CH3

"""
    CH4

Field has no description!
"""
CH4

"""
    CH5

Field has no description!
"""
CH5

"""
    CH6

Field has no description!
"""
CH6

"""
    CH7

Field has no description!
"""
CH7

end # register EN

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct INTRStruct(regAddress)
	CH0:1::ReadWrite
	CH1:1::ReadWrite
	CH2:1::ReadWrite
	CH3:1::ReadWrite
	CH4:1::ReadWrite
	CH5:1::ReadWrite
	CH6:1::ReadWrite
	CH7:1::ReadWrite
	_:24
end
const Reg = INTRStruct

"""
    CH0

Field has no description!
"""
CH0

"""
    CH1

Field has no description!
"""
CH1

"""
    CH2

Field has no description!
"""
CH2

"""
    CH3

Field has no description!
"""
CH3

"""
    CH4

Field has no description!
"""
CH4

"""
    CH5

Field has no description!
"""
CH5

"""
    CH6

Field has no description!
"""
CH6

"""
    CH7

Field has no description!
"""
CH7

end # register INTR

"""
    INTE

Interrupt Enable
"""
module INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct INTEStruct(regAddress)
	CH0:1::ReadWrite
	CH1:1::ReadWrite
	CH2:1::ReadWrite
	CH3:1::ReadWrite
	CH4:1::ReadWrite
	CH5:1::ReadWrite
	CH6:1::ReadWrite
	CH7:1::ReadWrite
	_:24
end
const Reg = INTEStruct

"""
    CH0

Field has no description!
"""
CH0

"""
    CH1

Field has no description!
"""
CH1

"""
    CH2

Field has no description!
"""
CH2

"""
    CH3

Field has no description!
"""
CH3

"""
    CH4

Field has no description!
"""
CH4

"""
    CH5

Field has no description!
"""
CH5

"""
    CH6

Field has no description!
"""
CH6

"""
    CH7

Field has no description!
"""
CH7

end # register INTE

"""
    INTF

Interrupt Force
"""
module INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct INTFStruct(regAddress)
	CH0:1::ReadWrite
	CH1:1::ReadWrite
	CH2:1::ReadWrite
	CH3:1::ReadWrite
	CH4:1::ReadWrite
	CH5:1::ReadWrite
	CH6:1::ReadWrite
	CH7:1::ReadWrite
	_:24
end
const Reg = INTFStruct

"""
    CH0

Field has no description!
"""
CH0

"""
    CH1

Field has no description!
"""
CH1

"""
    CH2

Field has no description!
"""
CH2

"""
    CH3

Field has no description!
"""
CH3

"""
    CH4

Field has no description!
"""
CH4

"""
    CH5

Field has no description!
"""
CH5

"""
    CH6

Field has no description!
"""
CH6

"""
    CH7

Field has no description!
"""
CH7

end # register INTF

"""
    INTS

Interrupt status after masking &amp; forcing
"""
module INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PWM: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct INTSStruct(regAddress)
	CH0:1::Read
	CH1:1::Read
	CH2:1::Read
	CH3:1::Read
	CH4:1::Read
	CH5:1::Read
	CH6:1::Read
	CH7:1::Read
	_:24
end
const Reg = INTSStruct

"""
    CH0

Field has no description!
"""
CH0

"""
    CH1

Field has no description!
"""
CH1

"""
    CH2

Field has no description!
"""
CH2

"""
    CH3

Field has no description!
"""
CH3

"""
    CH4

Field has no description!
"""
CH4

"""
    CH5

Field has no description!
"""
CH5

"""
    CH6

Field has no description!
"""
CH6

"""
    CH7

Field has no description!
"""
CH7

end # register INTS

end # peripheral

