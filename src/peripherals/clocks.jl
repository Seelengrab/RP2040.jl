"""
    CLOCKS

No description of peripheral!
"""
module CLOCKS

const baseAddress = Ptr{UInt32}(1073774592)

"""
    CLK_GPOUT0_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_GPOUT0_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct CLK_GPOUT0_CTRLStruct(regAddress)
	_:5
	AUXSRC:4::ReadWrite
	_:1
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	DC50:1::ReadWrite
	_:3
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_GPOUT0_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    DC50

Enables duty cycle correction for odd divisors
"""
DC50

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_GPOUT0_CTRL

"""
    CLK_GPOUT0_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_GPOUT0_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct CLK_GPOUT0_DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:24::ReadWrite
end
const Reg = CLK_GPOUT0_DIVStruct

"""
    FRAC

Fractional component of the divisor
"""
FRAC

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_GPOUT0_DIV

"""
    CLK_GPOUT0_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_GPOUT0_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct CLK_GPOUT0_SELECTEDStruct(regAddress)
	CLK_GPOUT0_SELECTED:32
end
const Reg = CLK_GPOUT0_SELECTEDStruct

end # register CLK_GPOUT0_SELECTED

"""
    CLK_GPOUT1_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_GPOUT1_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct CLK_GPOUT1_CTRLStruct(regAddress)
	_:5
	AUXSRC:4::ReadWrite
	_:1
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	DC50:1::ReadWrite
	_:3
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_GPOUT1_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    DC50

Enables duty cycle correction for odd divisors
"""
DC50

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_GPOUT1_CTRL

"""
    CLK_GPOUT1_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_GPOUT1_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct CLK_GPOUT1_DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:24::ReadWrite
end
const Reg = CLK_GPOUT1_DIVStruct

"""
    FRAC

Fractional component of the divisor
"""
FRAC

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_GPOUT1_DIV

"""
    CLK_GPOUT1_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_GPOUT1_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct CLK_GPOUT1_SELECTEDStruct(regAddress)
	CLK_GPOUT1_SELECTED:32
end
const Reg = CLK_GPOUT1_SELECTEDStruct

end # register CLK_GPOUT1_SELECTED

"""
    CLK_GPOUT2_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_GPOUT2_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct CLK_GPOUT2_CTRLStruct(regAddress)
	_:5
	AUXSRC:4::ReadWrite
	_:1
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	DC50:1::ReadWrite
	_:3
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_GPOUT2_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    DC50

Enables duty cycle correction for odd divisors
"""
DC50

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_GPOUT2_CTRL

"""
    CLK_GPOUT2_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_GPOUT2_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct CLK_GPOUT2_DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:24::ReadWrite
end
const Reg = CLK_GPOUT2_DIVStruct

"""
    FRAC

Fractional component of the divisor
"""
FRAC

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_GPOUT2_DIV

"""
    CLK_GPOUT2_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_GPOUT2_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct CLK_GPOUT2_SELECTEDStruct(regAddress)
	CLK_GPOUT2_SELECTED:32
end
const Reg = CLK_GPOUT2_SELECTEDStruct

end # register CLK_GPOUT2_SELECTED

"""
    CLK_GPOUT3_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_GPOUT3_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct CLK_GPOUT3_CTRLStruct(regAddress)
	_:5
	AUXSRC:4::ReadWrite
	_:1
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	DC50:1::ReadWrite
	_:3
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_GPOUT3_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    DC50

Enables duty cycle correction for odd divisors
"""
DC50

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_GPOUT3_CTRL

"""
    CLK_GPOUT3_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_GPOUT3_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct CLK_GPOUT3_DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:24::ReadWrite
end
const Reg = CLK_GPOUT3_DIVStruct

"""
    FRAC

Fractional component of the divisor
"""
FRAC

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_GPOUT3_DIV

"""
    CLK_GPOUT3_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_GPOUT3_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct CLK_GPOUT3_SELECTEDStruct(regAddress)
	CLK_GPOUT3_SELECTED:32
end
const Reg = CLK_GPOUT3_SELECTEDStruct

end # register CLK_GPOUT3_SELECTED

"""
    CLK_REF_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_REF_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct CLK_REF_CTRLStruct(regAddress)
	SRC:2::ReadWrite
	_:3
	AUXSRC:2::ReadWrite
	_:25
end
const Reg = CLK_REF_CTRLStruct

"""
    SRC

Selects the clock source glitchlessly, can be changed on-the-fly
"""
SRC

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

end # register CLK_REF_CTRL

"""
    CLK_REF_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_REF_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct CLK_REF_DIVStruct(regAddress)
	_:8
	INT:2::ReadWrite
	_:22
end
const Reg = CLK_REF_DIVStruct

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_REF_DIV

"""
    CLK_REF_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

The glitchless multiplexer does not switch instantaneously (to avoid glitches), so software should poll this register to wait for the switch to complete. This register contains one decoded bit for each of the clock sources enumerated in the CTRL SRC field. At most one of these bits will be set at any time, indicating that clock is currently present at the output of the glitchless mux. Whilst switching is in progress, this register may briefly show all-0s.
"""
module CLK_REF_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct CLK_REF_SELECTEDStruct(regAddress)
	CLK_REF_SELECTED:32
end
const Reg = CLK_REF_SELECTEDStruct

end # register CLK_REF_SELECTED

"""
    CLK_SYS_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_SYS_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct CLK_SYS_CTRLStruct(regAddress)
	SRC:1::ReadWrite
	_:4
	AUXSRC:3::ReadWrite
	_:24
end
const Reg = CLK_SYS_CTRLStruct

"""
    SRC

Selects the clock source glitchlessly, can be changed on-the-fly
"""
SRC

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

end # register CLK_SYS_CTRL

"""
    CLK_SYS_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_SYS_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct CLK_SYS_DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:24::ReadWrite
end
const Reg = CLK_SYS_DIVStruct

"""
    FRAC

Fractional component of the divisor
"""
FRAC

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_SYS_DIV

"""
    CLK_SYS_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

The glitchless multiplexer does not switch instantaneously (to avoid glitches), so software should poll this register to wait for the switch to complete. This register contains one decoded bit for each of the clock sources enumerated in the CTRL SRC field. At most one of these bits will be set at any time, indicating that clock is currently present at the output of the glitchless mux. Whilst switching is in progress, this register may briefly show all-0s.
"""
module CLK_SYS_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000044
@regdef struct CLK_SYS_SELECTEDStruct(regAddress)
	CLK_SYS_SELECTED:32
end
const Reg = CLK_SYS_SELECTEDStruct

end # register CLK_SYS_SELECTED

"""
    CLK_PERI_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_PERI_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000048
@regdef struct CLK_PERI_CTRLStruct(regAddress)
	_:5
	AUXSRC:3::ReadWrite
	_:2
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	_:20
end
const Reg = CLK_PERI_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

end # register CLK_PERI_CTRL

"""
    CLK_PERI_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_PERI_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000050
@regdef struct CLK_PERI_SELECTEDStruct(regAddress)
	CLK_PERI_SELECTED:32
end
const Reg = CLK_PERI_SELECTEDStruct

end # register CLK_PERI_SELECTED

"""
    CLK_USB_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_USB_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000054
@regdef struct CLK_USB_CTRLStruct(regAddress)
	_:5
	AUXSRC:3::ReadWrite
	_:2
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	_:4
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_USB_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_USB_CTRL

"""
    CLK_USB_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_USB_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000058
@regdef struct CLK_USB_DIVStruct(regAddress)
	_:8
	INT:2::ReadWrite
	_:22
end
const Reg = CLK_USB_DIVStruct

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_USB_DIV

"""
    CLK_USB_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_USB_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000005c
@regdef struct CLK_USB_SELECTEDStruct(regAddress)
	CLK_USB_SELECTED:32
end
const Reg = CLK_USB_SELECTEDStruct

end # register CLK_USB_SELECTED

"""
    CLK_ADC_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_ADC_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000060
@regdef struct CLK_ADC_CTRLStruct(regAddress)
	_:5
	AUXSRC:3::ReadWrite
	_:2
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	_:4
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_ADC_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_ADC_CTRL

"""
    CLK_ADC_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_ADC_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000064
@regdef struct CLK_ADC_DIVStruct(regAddress)
	_:8
	INT:2::ReadWrite
	_:22
end
const Reg = CLK_ADC_DIVStruct

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_ADC_DIV

"""
    CLK_ADC_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_ADC_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000068
@regdef struct CLK_ADC_SELECTEDStruct(regAddress)
	CLK_ADC_SELECTED:32
end
const Reg = CLK_ADC_SELECTEDStruct

end # register CLK_ADC_SELECTED

"""
    CLK_RTC_CTRL

Clock control, can be changed on-the-fly (except for auxsrc)
"""
module CLK_RTC_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000006c
@regdef struct CLK_RTC_CTRLStruct(regAddress)
	_:5
	AUXSRC:3::ReadWrite
	_:2
	KILL:1::ReadWrite
	ENABLE:1::ReadWrite
	_:4
	PHASE:2::ReadWrite
	_:2
	NUDGE:1::ReadWrite
	_:11
end
const Reg = CLK_RTC_CTRLStruct

"""
    AUXSRC

Selects the auxiliary clock source, will glitch when switching
"""
AUXSRC

"""
    KILL

Asynchronously kills the clock generator
"""
KILL

"""
    ENABLE

Starts and stops the clock generator cleanly
"""
ENABLE

"""
    PHASE

This delays the enable signal by up to 3 cycles of the input clock

This must be set before the clock is enabled to have any effect
"""
PHASE

"""
    NUDGE

An edge on this signal shifts the phase of the output by 1 cycle of the input clock

This can be done at any time
"""
NUDGE

end # register CLK_RTC_CTRL

"""
    CLK_RTC_DIV

Clock divisor, can be changed on-the-fly
"""
module CLK_RTC_DIVMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000070
@regdef struct CLK_RTC_DIVStruct(regAddress)
	FRAC:8::ReadWrite
	INT:24::ReadWrite
end
const Reg = CLK_RTC_DIVStruct

"""
    FRAC

Fractional component of the divisor
"""
FRAC

"""
    INT

Integer component of the divisor, 0 -&gt; divide by 2^16
"""
INT

end # register CLK_RTC_DIV

"""
    CLK_RTC_SELECTED

Indicates which SRC is currently selected by the glitchless mux (one-hot).

This slice does not have a glitchless mux (only the AUX\\_SRC field is present, not SRC) so this register is hardwired to 0x1.
"""
module CLK_RTC_SELECTEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000074
@regdef struct CLK_RTC_SELECTEDStruct(regAddress)
	CLK_RTC_SELECTED:32
end
const Reg = CLK_RTC_SELECTEDStruct

end # register CLK_RTC_SELECTED

"""
    CLK_SYS_RESUS_CTRL

No description of register!
"""
module CLK_SYS_RESUS_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000078
@regdef struct CLK_SYS_RESUS_CTRLStruct(regAddress)
	TIMEOUT:8::ReadWrite
	ENABLE:1::ReadWrite
	_:3
	FRCE:1::ReadWrite
	_:3
	CLEAR:1::ReadWrite
	_:15
end
const Reg = CLK_SYS_RESUS_CTRLStruct

"""
    TIMEOUT

This is expressed as a number of clk\\_ref cycles

and must be &gt;= 2x clk\\_ref\\_freq/min\\_clk\\_tst\\_freq
"""
TIMEOUT

"""
    ENABLE

Enable resus
"""
ENABLE

"""
    FRCE

Force a resus, for test purposes only
"""
FRCE

"""
    CLEAR

For clearing the resus after the fault that triggered it has been corrected
"""
CLEAR

end # register CLK_SYS_RESUS_CTRL

"""
    CLK_SYS_RESUS_STATUS

No description of register!
"""
module CLK_SYS_RESUS_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000007c
@regdef struct CLK_SYS_RESUS_STATUSStruct(regAddress)
	RESUSSED:1::Read
	_:31
end
const Reg = CLK_SYS_RESUS_STATUSStruct

"""
    RESUSSED

Clock has been resuscitated, correct the error then send ctrl\\_clear=1
"""
RESUSSED

end # register CLK_SYS_RESUS_STATUS

"""
    FC0_REF_KHZ

Reference clock frequency in kHz
"""
module FC0_REF_KHZMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000080
@regdef struct FC0_REF_KHZStruct(regAddress)
	FC0_REF_KHZ:20::ReadWrite
	_:12
end
const Reg = FC0_REF_KHZStruct

"""
    FC0_REF_KHZ

Field has no description!
"""
FC0_REF_KHZ

end # register FC0_REF_KHZ

"""
    FC0_MIN_KHZ

Minimum pass frequency in kHz. This is optional. Set to 0 if you are not using the pass/fail flags
"""
module FC0_MIN_KHZMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000084
@regdef struct FC0_MIN_KHZStruct(regAddress)
	FC0_MIN_KHZ:25::ReadWrite
	_:7
end
const Reg = FC0_MIN_KHZStruct

"""
    FC0_MIN_KHZ

Field has no description!
"""
FC0_MIN_KHZ

end # register FC0_MIN_KHZ

"""
    FC0_MAX_KHZ

Maximum pass frequency in kHz. This is optional. Set to 0x1ffffff if you are not using the pass/fail flags
"""
module FC0_MAX_KHZMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000088
@regdef struct FC0_MAX_KHZStruct(regAddress)
	FC0_MAX_KHZ:25::ReadWrite
	_:7
end
const Reg = FC0_MAX_KHZStruct

"""
    FC0_MAX_KHZ

Field has no description!
"""
FC0_MAX_KHZ

end # register FC0_MAX_KHZ

"""
    FC0_DELAY

Delays the start of frequency counting to allow the mux to settle

Delay is measured in multiples of the reference clock period
"""
module FC0_DELAYMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000008c
@regdef struct FC0_DELAYStruct(regAddress)
	FC0_DELAY:3::ReadWrite
	_:29
end
const Reg = FC0_DELAYStruct

"""
    FC0_DELAY

Field has no description!
"""
FC0_DELAY

end # register FC0_DELAY

"""
    FC0_INTERVAL

The test interval is 0.98us * 2**interval, but let's call it 1us * 2**interval

The default gives a test interval of 250us
"""
module FC0_INTERVALMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000090
@regdef struct FC0_INTERVALStruct(regAddress)
	FC0_INTERVAL:4::ReadWrite
	_:28
end
const Reg = FC0_INTERVALStruct

"""
    FC0_INTERVAL

Field has no description!
"""
FC0_INTERVAL

end # register FC0_INTERVAL

"""
    FC0_SRC

Clock sent to frequency counter, set to 0 when not required

Writing to this register initiates the frequency count
"""
module FC0_SRCMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000094
@regdef struct FC0_SRCStruct(regAddress)
	FC0_SRC:8::ReadWrite
	_:24
end
const Reg = FC0_SRCStruct

"""
    FC0_SRC

Field has no description!
"""
FC0_SRC

end # register FC0_SRC

"""
    FC0_STATUS

Frequency counter status
"""
module FC0_STATUSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x0000000000000098
@regdef struct FC0_STATUSStruct(regAddress)
	PASS:1::Read
	_:3
	DONE:1::Read
	_:3
	RUNNING:1::Read
	_:3
	WAITING:1::Read
	_:3
	FAIL:1::Read
	_:3
	SLOW:1::Read
	_:3
	FAST:1::Read
	_:3
	DIED:1::Read
	_:3
end
const Reg = FC0_STATUSStruct

"""
    PASS

Test passed
"""
PASS

"""
    DONE

Test complete
"""
DONE

"""
    RUNNING

Test running
"""
RUNNING

"""
    WAITING

Waiting for test clock to start
"""
WAITING

"""
    FAIL

Test failed
"""
FAIL

"""
    SLOW

Test clock slower than expected, only valid when status\\_done=1
"""
SLOW

"""
    FAST

Test clock faster than expected, only valid when status\\_done=1
"""
FAST

"""
    DIED

Test clock stopped during test
"""
DIED

end # register FC0_STATUS

"""
    FC0_RESULT

Result of frequency measurement, only valid when status\\_done=1
"""
module FC0_RESULTMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x000000000000009c
@regdef struct FC0_RESULTStruct(regAddress)
	FRAC:5::Read
	KHZ:25::Read
	_:2
end
const Reg = FC0_RESULTStruct

"""
    FRAC

Field has no description!
"""
FRAC

"""
    KHZ

Field has no description!
"""
KHZ

end # register FC0_RESULT

"""
    WAKE_EN0

enable clock in wake mode
"""
module WAKE_EN0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000a0
@regdef struct WAKE_EN0Struct(regAddress)
	clk_sys_clocks:1::ReadWrite
	clk_adc_adc:1::ReadWrite
	clk_sys_adc:1::ReadWrite
	clk_sys_busctrl:1::ReadWrite
	clk_sys_busfabric:1::ReadWrite
	clk_sys_dma:1::ReadWrite
	clk_sys_i2c0:1::ReadWrite
	clk_sys_i2c1:1::ReadWrite
	clk_sys_io:1::ReadWrite
	clk_sys_jtag:1::ReadWrite
	clk_sys_vreg_and_chip_reset:1::ReadWrite
	clk_sys_pads:1::ReadWrite
	clk_sys_pio0:1::ReadWrite
	clk_sys_pio1:1::ReadWrite
	clk_sys_pll_sys:1::ReadWrite
	clk_sys_pll_usb:1::ReadWrite
	clk_sys_psm:1::ReadWrite
	clk_sys_pwm:1::ReadWrite
	clk_sys_resets:1::ReadWrite
	clk_sys_rom:1::ReadWrite
	clk_sys_rosc:1::ReadWrite
	clk_rtc_rtc:1::ReadWrite
	clk_sys_rtc:1::ReadWrite
	clk_sys_sio:1::ReadWrite
	clk_peri_spi0:1::ReadWrite
	clk_sys_spi0:1::ReadWrite
	clk_peri_spi1:1::ReadWrite
	clk_sys_spi1:1::ReadWrite
	clk_sys_sram0:1::ReadWrite
	clk_sys_sram1:1::ReadWrite
	clk_sys_sram2:1::ReadWrite
	clk_sys_sram3:1::ReadWrite
end
const Reg = WAKE_EN0Struct

"""
    clk_sys_clocks

Field has no description!
"""
clk_sys_clocks

"""
    clk_adc_adc

Field has no description!
"""
clk_adc_adc

"""
    clk_sys_adc

Field has no description!
"""
clk_sys_adc

"""
    clk_sys_busctrl

Field has no description!
"""
clk_sys_busctrl

"""
    clk_sys_busfabric

Field has no description!
"""
clk_sys_busfabric

"""
    clk_sys_dma

Field has no description!
"""
clk_sys_dma

"""
    clk_sys_i2c0

Field has no description!
"""
clk_sys_i2c0

"""
    clk_sys_i2c1

Field has no description!
"""
clk_sys_i2c1

"""
    clk_sys_io

Field has no description!
"""
clk_sys_io

"""
    clk_sys_jtag

Field has no description!
"""
clk_sys_jtag

"""
    clk_sys_vreg_and_chip_reset

Field has no description!
"""
clk_sys_vreg_and_chip_reset

"""
    clk_sys_pads

Field has no description!
"""
clk_sys_pads

"""
    clk_sys_pio0

Field has no description!
"""
clk_sys_pio0

"""
    clk_sys_pio1

Field has no description!
"""
clk_sys_pio1

"""
    clk_sys_pll_sys

Field has no description!
"""
clk_sys_pll_sys

"""
    clk_sys_pll_usb

Field has no description!
"""
clk_sys_pll_usb

"""
    clk_sys_psm

Field has no description!
"""
clk_sys_psm

"""
    clk_sys_pwm

Field has no description!
"""
clk_sys_pwm

"""
    clk_sys_resets

Field has no description!
"""
clk_sys_resets

"""
    clk_sys_rom

Field has no description!
"""
clk_sys_rom

"""
    clk_sys_rosc

Field has no description!
"""
clk_sys_rosc

"""
    clk_rtc_rtc

Field has no description!
"""
clk_rtc_rtc

"""
    clk_sys_rtc

Field has no description!
"""
clk_sys_rtc

"""
    clk_sys_sio

Field has no description!
"""
clk_sys_sio

"""
    clk_peri_spi0

Field has no description!
"""
clk_peri_spi0

"""
    clk_sys_spi0

Field has no description!
"""
clk_sys_spi0

"""
    clk_peri_spi1

Field has no description!
"""
clk_peri_spi1

"""
    clk_sys_spi1

Field has no description!
"""
clk_sys_spi1

"""
    clk_sys_sram0

Field has no description!
"""
clk_sys_sram0

"""
    clk_sys_sram1

Field has no description!
"""
clk_sys_sram1

"""
    clk_sys_sram2

Field has no description!
"""
clk_sys_sram2

"""
    clk_sys_sram3

Field has no description!
"""
clk_sys_sram3

end # register WAKE_EN0

"""
    WAKE_EN1

enable clock in wake mode
"""
module WAKE_EN1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000a4
@regdef struct WAKE_EN1Struct(regAddress)
	clk_sys_sram4:1::ReadWrite
	clk_sys_sram5:1::ReadWrite
	clk_sys_syscfg:1::ReadWrite
	clk_sys_sysinfo:1::ReadWrite
	clk_sys_tbman:1::ReadWrite
	clk_sys_timer:1::ReadWrite
	clk_peri_uart0:1::ReadWrite
	clk_sys_uart0:1::ReadWrite
	clk_peri_uart1:1::ReadWrite
	clk_sys_uart1:1::ReadWrite
	clk_sys_usbctrl:1::ReadWrite
	clk_usb_usbctrl:1::ReadWrite
	clk_sys_watchdog:1::ReadWrite
	clk_sys_xip:1::ReadWrite
	clk_sys_xosc:1::ReadWrite
	_:17
end
const Reg = WAKE_EN1Struct

"""
    clk_sys_sram4

Field has no description!
"""
clk_sys_sram4

"""
    clk_sys_sram5

Field has no description!
"""
clk_sys_sram5

"""
    clk_sys_syscfg

Field has no description!
"""
clk_sys_syscfg

"""
    clk_sys_sysinfo

Field has no description!
"""
clk_sys_sysinfo

"""
    clk_sys_tbman

Field has no description!
"""
clk_sys_tbman

"""
    clk_sys_timer

Field has no description!
"""
clk_sys_timer

"""
    clk_peri_uart0

Field has no description!
"""
clk_peri_uart0

"""
    clk_sys_uart0

Field has no description!
"""
clk_sys_uart0

"""
    clk_peri_uart1

Field has no description!
"""
clk_peri_uart1

"""
    clk_sys_uart1

Field has no description!
"""
clk_sys_uart1

"""
    clk_sys_usbctrl

Field has no description!
"""
clk_sys_usbctrl

"""
    clk_usb_usbctrl

Field has no description!
"""
clk_usb_usbctrl

"""
    clk_sys_watchdog

Field has no description!
"""
clk_sys_watchdog

"""
    clk_sys_xip

Field has no description!
"""
clk_sys_xip

"""
    clk_sys_xosc

Field has no description!
"""
clk_sys_xosc

end # register WAKE_EN1

"""
    SLEEP_EN0

enable clock in sleep mode
"""
module SLEEP_EN0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000a8
@regdef struct SLEEP_EN0Struct(regAddress)
	clk_sys_clocks:1::ReadWrite
	clk_adc_adc:1::ReadWrite
	clk_sys_adc:1::ReadWrite
	clk_sys_busctrl:1::ReadWrite
	clk_sys_busfabric:1::ReadWrite
	clk_sys_dma:1::ReadWrite
	clk_sys_i2c0:1::ReadWrite
	clk_sys_i2c1:1::ReadWrite
	clk_sys_io:1::ReadWrite
	clk_sys_jtag:1::ReadWrite
	clk_sys_vreg_and_chip_reset:1::ReadWrite
	clk_sys_pads:1::ReadWrite
	clk_sys_pio0:1::ReadWrite
	clk_sys_pio1:1::ReadWrite
	clk_sys_pll_sys:1::ReadWrite
	clk_sys_pll_usb:1::ReadWrite
	clk_sys_psm:1::ReadWrite
	clk_sys_pwm:1::ReadWrite
	clk_sys_resets:1::ReadWrite
	clk_sys_rom:1::ReadWrite
	clk_sys_rosc:1::ReadWrite
	clk_rtc_rtc:1::ReadWrite
	clk_sys_rtc:1::ReadWrite
	clk_sys_sio:1::ReadWrite
	clk_peri_spi0:1::ReadWrite
	clk_sys_spi0:1::ReadWrite
	clk_peri_spi1:1::ReadWrite
	clk_sys_spi1:1::ReadWrite
	clk_sys_sram0:1::ReadWrite
	clk_sys_sram1:1::ReadWrite
	clk_sys_sram2:1::ReadWrite
	clk_sys_sram3:1::ReadWrite
end
const Reg = SLEEP_EN0Struct

"""
    clk_sys_clocks

Field has no description!
"""
clk_sys_clocks

"""
    clk_adc_adc

Field has no description!
"""
clk_adc_adc

"""
    clk_sys_adc

Field has no description!
"""
clk_sys_adc

"""
    clk_sys_busctrl

Field has no description!
"""
clk_sys_busctrl

"""
    clk_sys_busfabric

Field has no description!
"""
clk_sys_busfabric

"""
    clk_sys_dma

Field has no description!
"""
clk_sys_dma

"""
    clk_sys_i2c0

Field has no description!
"""
clk_sys_i2c0

"""
    clk_sys_i2c1

Field has no description!
"""
clk_sys_i2c1

"""
    clk_sys_io

Field has no description!
"""
clk_sys_io

"""
    clk_sys_jtag

Field has no description!
"""
clk_sys_jtag

"""
    clk_sys_vreg_and_chip_reset

Field has no description!
"""
clk_sys_vreg_and_chip_reset

"""
    clk_sys_pads

Field has no description!
"""
clk_sys_pads

"""
    clk_sys_pio0

Field has no description!
"""
clk_sys_pio0

"""
    clk_sys_pio1

Field has no description!
"""
clk_sys_pio1

"""
    clk_sys_pll_sys

Field has no description!
"""
clk_sys_pll_sys

"""
    clk_sys_pll_usb

Field has no description!
"""
clk_sys_pll_usb

"""
    clk_sys_psm

Field has no description!
"""
clk_sys_psm

"""
    clk_sys_pwm

Field has no description!
"""
clk_sys_pwm

"""
    clk_sys_resets

Field has no description!
"""
clk_sys_resets

"""
    clk_sys_rom

Field has no description!
"""
clk_sys_rom

"""
    clk_sys_rosc

Field has no description!
"""
clk_sys_rosc

"""
    clk_rtc_rtc

Field has no description!
"""
clk_rtc_rtc

"""
    clk_sys_rtc

Field has no description!
"""
clk_sys_rtc

"""
    clk_sys_sio

Field has no description!
"""
clk_sys_sio

"""
    clk_peri_spi0

Field has no description!
"""
clk_peri_spi0

"""
    clk_sys_spi0

Field has no description!
"""
clk_sys_spi0

"""
    clk_peri_spi1

Field has no description!
"""
clk_peri_spi1

"""
    clk_sys_spi1

Field has no description!
"""
clk_sys_spi1

"""
    clk_sys_sram0

Field has no description!
"""
clk_sys_sram0

"""
    clk_sys_sram1

Field has no description!
"""
clk_sys_sram1

"""
    clk_sys_sram2

Field has no description!
"""
clk_sys_sram2

"""
    clk_sys_sram3

Field has no description!
"""
clk_sys_sram3

end # register SLEEP_EN0

"""
    SLEEP_EN1

enable clock in sleep mode
"""
module SLEEP_EN1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000ac
@regdef struct SLEEP_EN1Struct(regAddress)
	clk_sys_sram4:1::ReadWrite
	clk_sys_sram5:1::ReadWrite
	clk_sys_syscfg:1::ReadWrite
	clk_sys_sysinfo:1::ReadWrite
	clk_sys_tbman:1::ReadWrite
	clk_sys_timer:1::ReadWrite
	clk_peri_uart0:1::ReadWrite
	clk_sys_uart0:1::ReadWrite
	clk_peri_uart1:1::ReadWrite
	clk_sys_uart1:1::ReadWrite
	clk_sys_usbctrl:1::ReadWrite
	clk_usb_usbctrl:1::ReadWrite
	clk_sys_watchdog:1::ReadWrite
	clk_sys_xip:1::ReadWrite
	clk_sys_xosc:1::ReadWrite
	_:17
end
const Reg = SLEEP_EN1Struct

"""
    clk_sys_sram4

Field has no description!
"""
clk_sys_sram4

"""
    clk_sys_sram5

Field has no description!
"""
clk_sys_sram5

"""
    clk_sys_syscfg

Field has no description!
"""
clk_sys_syscfg

"""
    clk_sys_sysinfo

Field has no description!
"""
clk_sys_sysinfo

"""
    clk_sys_tbman

Field has no description!
"""
clk_sys_tbman

"""
    clk_sys_timer

Field has no description!
"""
clk_sys_timer

"""
    clk_peri_uart0

Field has no description!
"""
clk_peri_uart0

"""
    clk_sys_uart0

Field has no description!
"""
clk_sys_uart0

"""
    clk_peri_uart1

Field has no description!
"""
clk_peri_uart1

"""
    clk_sys_uart1

Field has no description!
"""
clk_sys_uart1

"""
    clk_sys_usbctrl

Field has no description!
"""
clk_sys_usbctrl

"""
    clk_usb_usbctrl

Field has no description!
"""
clk_usb_usbctrl

"""
    clk_sys_watchdog

Field has no description!
"""
clk_sys_watchdog

"""
    clk_sys_xip

Field has no description!
"""
clk_sys_xip

"""
    clk_sys_xosc

Field has no description!
"""
clk_sys_xosc

end # register SLEEP_EN1

"""
    ENABLED0

indicates the state of the clock enable
"""
module ENABLED0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000b0
@regdef struct ENABLED0Struct(regAddress)
	clk_sys_clocks:1::Read
	clk_adc_adc:1::Read
	clk_sys_adc:1::Read
	clk_sys_busctrl:1::Read
	clk_sys_busfabric:1::Read
	clk_sys_dma:1::Read
	clk_sys_i2c0:1::Read
	clk_sys_i2c1:1::Read
	clk_sys_io:1::Read
	clk_sys_jtag:1::Read
	clk_sys_vreg_and_chip_reset:1::Read
	clk_sys_pads:1::Read
	clk_sys_pio0:1::Read
	clk_sys_pio1:1::Read
	clk_sys_pll_sys:1::Read
	clk_sys_pll_usb:1::Read
	clk_sys_psm:1::Read
	clk_sys_pwm:1::Read
	clk_sys_resets:1::Read
	clk_sys_rom:1::Read
	clk_sys_rosc:1::Read
	clk_rtc_rtc:1::Read
	clk_sys_rtc:1::Read
	clk_sys_sio:1::Read
	clk_peri_spi0:1::Read
	clk_sys_spi0:1::Read
	clk_peri_spi1:1::Read
	clk_sys_spi1:1::Read
	clk_sys_sram0:1::Read
	clk_sys_sram1:1::Read
	clk_sys_sram2:1::Read
	clk_sys_sram3:1::Read
end
const Reg = ENABLED0Struct

"""
    clk_sys_clocks

Field has no description!
"""
clk_sys_clocks

"""
    clk_adc_adc

Field has no description!
"""
clk_adc_adc

"""
    clk_sys_adc

Field has no description!
"""
clk_sys_adc

"""
    clk_sys_busctrl

Field has no description!
"""
clk_sys_busctrl

"""
    clk_sys_busfabric

Field has no description!
"""
clk_sys_busfabric

"""
    clk_sys_dma

Field has no description!
"""
clk_sys_dma

"""
    clk_sys_i2c0

Field has no description!
"""
clk_sys_i2c0

"""
    clk_sys_i2c1

Field has no description!
"""
clk_sys_i2c1

"""
    clk_sys_io

Field has no description!
"""
clk_sys_io

"""
    clk_sys_jtag

Field has no description!
"""
clk_sys_jtag

"""
    clk_sys_vreg_and_chip_reset

Field has no description!
"""
clk_sys_vreg_and_chip_reset

"""
    clk_sys_pads

Field has no description!
"""
clk_sys_pads

"""
    clk_sys_pio0

Field has no description!
"""
clk_sys_pio0

"""
    clk_sys_pio1

Field has no description!
"""
clk_sys_pio1

"""
    clk_sys_pll_sys

Field has no description!
"""
clk_sys_pll_sys

"""
    clk_sys_pll_usb

Field has no description!
"""
clk_sys_pll_usb

"""
    clk_sys_psm

Field has no description!
"""
clk_sys_psm

"""
    clk_sys_pwm

Field has no description!
"""
clk_sys_pwm

"""
    clk_sys_resets

Field has no description!
"""
clk_sys_resets

"""
    clk_sys_rom

Field has no description!
"""
clk_sys_rom

"""
    clk_sys_rosc

Field has no description!
"""
clk_sys_rosc

"""
    clk_rtc_rtc

Field has no description!
"""
clk_rtc_rtc

"""
    clk_sys_rtc

Field has no description!
"""
clk_sys_rtc

"""
    clk_sys_sio

Field has no description!
"""
clk_sys_sio

"""
    clk_peri_spi0

Field has no description!
"""
clk_peri_spi0

"""
    clk_sys_spi0

Field has no description!
"""
clk_sys_spi0

"""
    clk_peri_spi1

Field has no description!
"""
clk_peri_spi1

"""
    clk_sys_spi1

Field has no description!
"""
clk_sys_spi1

"""
    clk_sys_sram0

Field has no description!
"""
clk_sys_sram0

"""
    clk_sys_sram1

Field has no description!
"""
clk_sys_sram1

"""
    clk_sys_sram2

Field has no description!
"""
clk_sys_sram2

"""
    clk_sys_sram3

Field has no description!
"""
clk_sys_sram3

end # register ENABLED0

"""
    ENABLED1

indicates the state of the clock enable
"""
module ENABLED1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000b4
@regdef struct ENABLED1Struct(regAddress)
	clk_sys_sram4:1::Read
	clk_sys_sram5:1::Read
	clk_sys_syscfg:1::Read
	clk_sys_sysinfo:1::Read
	clk_sys_tbman:1::Read
	clk_sys_timer:1::Read
	clk_peri_uart0:1::Read
	clk_sys_uart0:1::Read
	clk_peri_uart1:1::Read
	clk_sys_uart1:1::Read
	clk_sys_usbctrl:1::Read
	clk_usb_usbctrl:1::Read
	clk_sys_watchdog:1::Read
	clk_sys_xip:1::Read
	clk_sys_xosc:1::Read
	_:17
end
const Reg = ENABLED1Struct

"""
    clk_sys_sram4

Field has no description!
"""
clk_sys_sram4

"""
    clk_sys_sram5

Field has no description!
"""
clk_sys_sram5

"""
    clk_sys_syscfg

Field has no description!
"""
clk_sys_syscfg

"""
    clk_sys_sysinfo

Field has no description!
"""
clk_sys_sysinfo

"""
    clk_sys_tbman

Field has no description!
"""
clk_sys_tbman

"""
    clk_sys_timer

Field has no description!
"""
clk_sys_timer

"""
    clk_peri_uart0

Field has no description!
"""
clk_peri_uart0

"""
    clk_sys_uart0

Field has no description!
"""
clk_sys_uart0

"""
    clk_peri_uart1

Field has no description!
"""
clk_peri_uart1

"""
    clk_sys_uart1

Field has no description!
"""
clk_sys_uart1

"""
    clk_sys_usbctrl

Field has no description!
"""
clk_sys_usbctrl

"""
    clk_usb_usbctrl

Field has no description!
"""
clk_usb_usbctrl

"""
    clk_sys_watchdog

Field has no description!
"""
clk_sys_watchdog

"""
    clk_sys_xip

Field has no description!
"""
clk_sys_xip

"""
    clk_sys_xosc

Field has no description!
"""
clk_sys_xosc

end # register ENABLED1

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000b8
@regdef struct INTRStruct(regAddress)
	CLK_SYS_RESUS:1::Read
	_:31
end
const Reg = INTRStruct

"""
    CLK_SYS_RESUS

Field has no description!
"""
CLK_SYS_RESUS

end # register INTR

"""
    INTE

Interrupt Enable
"""
module INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000bc
@regdef struct INTEStruct(regAddress)
	CLK_SYS_RESUS:1::ReadWrite
	_:31
end
const Reg = INTEStruct

"""
    CLK_SYS_RESUS

Field has no description!
"""
CLK_SYS_RESUS

end # register INTE

"""
    INTF

Interrupt Force
"""
module INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000c0
@regdef struct INTFStruct(regAddress)
	CLK_SYS_RESUS:1::ReadWrite
	_:31
end
const Reg = INTFStruct

"""
    CLK_SYS_RESUS

Field has no description!
"""
CLK_SYS_RESUS

end # register INTF

"""
    INTS

Interrupt status after masking &amp; forcing
"""
module INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..CLOCKS: baseAddress

const regAddress = baseAddress + 0x00000000000000c4
@regdef struct INTSStruct(regAddress)
	CLK_SYS_RESUS:1::Read
	_:31
end
const Reg = INTSStruct

"""
    CLK_SYS_RESUS

Field has no description!
"""
CLK_SYS_RESUS

end # register INTS

end # peripheral

