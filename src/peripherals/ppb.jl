"""
    PPB

No description of peripheral!
"""
module PPB

const baseAddress = Ptr{UInt32}(3758096384)

"""
    SYST_CSR

Use the SysTick Control and Status Register to enable the SysTick features.
"""
module SYST_CSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e010
@regdef struct SYST_CSRStruct(regAddress)
	ENABLE:1::ReadWrite
	TICKINT:1::ReadWrite
	CLKSOURCE:1::ReadWrite
	_:13
	COUNTFLAG:1::Read
	_:15
end
const Reg = SYST_CSRStruct

"""
    ENABLE

Enable SysTick counter:

0 = Counter disabled.

1 = Counter enabled.
"""
ENABLE

"""
    TICKINT

Enables SysTick exception request:

0 = Counting down to zero does not assert the SysTick exception request.

1 = Counting down to zero to asserts the SysTick exception request.
"""
TICKINT

"""
    CLKSOURCE

SysTick clock source. Always reads as one if SYST\\_CALIB reports NOREF.

Selects the SysTick timer clock source:

0 = External reference clock.

1 = Processor clock.
"""
CLKSOURCE

"""
    COUNTFLAG

Returns 1 if timer counted to 0 since last time this was read. Clears on read by application or debugger.
"""
COUNTFLAG

end # register SYST_CSR

"""
    SYST_RVR

Use the SysTick Reload Value Register to specify the start value to load into the current value register when the counter reaches 0. It can be any value between 0 and 0x00FFFFFF. A start value of 0 is possible, but has no effect because the SysTick interrupt and COUNTFLAG are activated when counting from 1 to 0. The reset value of this register is UNKNOWN.

To generate a multi-shot timer with a period of N processor clock cycles, use a RELOAD value of N-1. For example, if the SysTick interrupt is required every 100 clock pulses, set RELOAD to 99.
"""
module SYST_RVRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e014
@regdef struct SYST_RVRStruct(regAddress)
	RELOAD:24::ReadWrite
	_:8
end
const Reg = SYST_RVRStruct

"""
    RELOAD

Value to load into the SysTick Current Value Register when the counter reaches 0.
"""
RELOAD

end # register SYST_RVR

"""
    SYST_CVR

Use the SysTick Current Value Register to find the current value in the register. The reset value of this register is UNKNOWN.
"""
module SYST_CVRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e018
@regdef struct SYST_CVRStruct(regAddress)
	CURRENT:24::ReadWrite
	_:8
end
const Reg = SYST_CVRStruct

"""
    CURRENT

Reads return the current value of the SysTick counter. This register is write-clear. Writing to it with any value clears the register to 0. Clearing this register also clears the COUNTFLAG bit of the SysTick Control and Status Register.
"""
CURRENT

end # register SYST_CVR

"""
    SYST_CALIB

Use the SysTick Calibration Value Register to enable software to scale to any required speed using divide and multiply.
"""
module SYST_CALIBMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e01c
@regdef struct SYST_CALIBStruct(regAddress)
	TENMS:24::Read
	_:6
	SKEW:1::Read
	NOREF:1::Read
end
const Reg = SYST_CALIBStruct

"""
    TENMS

An optional Reload value to be used for 10ms (100Hz) timing, subject to system clock skew errors. If the value reads as 0, the calibration value is not known.
"""
TENMS

"""
    SKEW

If reads as 1, the calibration value for 10ms is inexact (due to clock frequency).
"""
SKEW

"""
    NOREF

If reads as 1, the Reference clock is not provided - the CLKSOURCE bit of the SysTick Control and Status register will be forced to 1 and cannot be cleared to 0.
"""
NOREF

end # register SYST_CALIB

"""
    NVIC_ISER

Use the Interrupt Set-Enable Register to enable interrupts and determine which interrupts are currently enabled.

If a pending interrupt is enabled, the NVIC activates the interrupt based on its priority. If an interrupt is not enabled, asserting its interrupt signal changes the interrupt state to pending, but the NVIC never activates the interrupt, regardless of its priority.
"""
module NVIC_ISERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e100
@regdef struct NVIC_ISERStruct(regAddress)
	SETENA:32::ReadWrite
end
const Reg = NVIC_ISERStruct

"""
    SETENA

Interrupt set-enable bits.

Write:

0 = No effect.

1 = Enable interrupt.

Read:

0 = Interrupt disabled.

1 = Interrupt enabled.
"""
SETENA

end # register NVIC_ISER

"""
    NVIC_ICER

Use the Interrupt Clear-Enable Registers to disable interrupts and determine which interrupts are currently enabled.
"""
module NVIC_ICERMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e180
@regdef struct NVIC_ICERStruct(regAddress)
	CLRENA:32::ReadWrite
end
const Reg = NVIC_ICERStruct

"""
    CLRENA

Interrupt clear-enable bits.

Write:

0 = No effect.

1 = Disable interrupt.

Read:

0 = Interrupt disabled.

1 = Interrupt enabled.
"""
CLRENA

end # register NVIC_ICER

"""
    NVIC_ISPR

The NVIC\\_ISPR forces interrupts into the pending state, and shows which interrupts are pending.
"""
module NVIC_ISPRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e200
@regdef struct NVIC_ISPRStruct(regAddress)
	SETPEND:32::ReadWrite
end
const Reg = NVIC_ISPRStruct

"""
    SETPEND

Interrupt set-pending bits.

Write:

0 = No effect.

1 = Changes interrupt state to pending.

Read:

0 = Interrupt is not pending.

1 = Interrupt is pending.

Note: Writing 1 to the NVIC\\_ISPR bit corresponding to:

An interrupt that is pending has no effect.

A disabled interrupt sets the state of that interrupt to pending.
"""
SETPEND

end # register NVIC_ISPR

"""
    NVIC_ICPR

Use the Interrupt Clear-Pending Register to clear pending interrupts and determine which interrupts are currently pending.
"""
module NVIC_ICPRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e280
@regdef struct NVIC_ICPRStruct(regAddress)
	CLRPEND:32::ReadWrite
end
const Reg = NVIC_ICPRStruct

"""
    CLRPEND

Interrupt clear-pending bits.

Write:

0 = No effect.

1 = Removes pending state and interrupt.

Read:

0 = Interrupt is not pending.

1 = Interrupt is pending.
"""
CLRPEND

end # register NVIC_ICPR

"""
    NVIC_IPR0

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.

Note: Writing 1 to an NVIC\\_ICPR bit does not affect the active state of the corresponding interrupt.

These registers are only word-accessible
"""
module NVIC_IPR0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e400
@regdef struct NVIC_IPR0Struct(regAddress)
	_:6
	IP_0:2::ReadWrite
	_:6
	IP_1:2::ReadWrite
	_:6
	IP_2:2::ReadWrite
	_:6
	IP_3:2::ReadWrite
end
const Reg = NVIC_IPR0Struct

"""
    IP_0

Priority of interrupt 0
"""
IP_0

"""
    IP_1

Priority of interrupt 1
"""
IP_1

"""
    IP_2

Priority of interrupt 2
"""
IP_2

"""
    IP_3

Priority of interrupt 3
"""
IP_3

end # register NVIC_IPR0

"""
    NVIC_IPR1

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e404
@regdef struct NVIC_IPR1Struct(regAddress)
	_:6
	IP_4:2::ReadWrite
	_:6
	IP_5:2::ReadWrite
	_:6
	IP_6:2::ReadWrite
	_:6
	IP_7:2::ReadWrite
end
const Reg = NVIC_IPR1Struct

"""
    IP_4

Priority of interrupt 4
"""
IP_4

"""
    IP_5

Priority of interrupt 5
"""
IP_5

"""
    IP_6

Priority of interrupt 6
"""
IP_6

"""
    IP_7

Priority of interrupt 7
"""
IP_7

end # register NVIC_IPR1

"""
    NVIC_IPR2

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e408
@regdef struct NVIC_IPR2Struct(regAddress)
	_:6
	IP_8:2::ReadWrite
	_:6
	IP_9:2::ReadWrite
	_:6
	IP_10:2::ReadWrite
	_:6
	IP_11:2::ReadWrite
end
const Reg = NVIC_IPR2Struct

"""
    IP_8

Priority of interrupt 8
"""
IP_8

"""
    IP_9

Priority of interrupt 9
"""
IP_9

"""
    IP_10

Priority of interrupt 10
"""
IP_10

"""
    IP_11

Priority of interrupt 11
"""
IP_11

end # register NVIC_IPR2

"""
    NVIC_IPR3

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e40c
@regdef struct NVIC_IPR3Struct(regAddress)
	_:6
	IP_12:2::ReadWrite
	_:6
	IP_13:2::ReadWrite
	_:6
	IP_14:2::ReadWrite
	_:6
	IP_15:2::ReadWrite
end
const Reg = NVIC_IPR3Struct

"""
    IP_12

Priority of interrupt 12
"""
IP_12

"""
    IP_13

Priority of interrupt 13
"""
IP_13

"""
    IP_14

Priority of interrupt 14
"""
IP_14

"""
    IP_15

Priority of interrupt 15
"""
IP_15

end # register NVIC_IPR3

"""
    NVIC_IPR4

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR4Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e410
@regdef struct NVIC_IPR4Struct(regAddress)
	_:6
	IP_16:2::ReadWrite
	_:6
	IP_17:2::ReadWrite
	_:6
	IP_18:2::ReadWrite
	_:6
	IP_19:2::ReadWrite
end
const Reg = NVIC_IPR4Struct

"""
    IP_16

Priority of interrupt 16
"""
IP_16

"""
    IP_17

Priority of interrupt 17
"""
IP_17

"""
    IP_18

Priority of interrupt 18
"""
IP_18

"""
    IP_19

Priority of interrupt 19
"""
IP_19

end # register NVIC_IPR4

"""
    NVIC_IPR5

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR5Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e414
@regdef struct NVIC_IPR5Struct(regAddress)
	_:6
	IP_20:2::ReadWrite
	_:6
	IP_21:2::ReadWrite
	_:6
	IP_22:2::ReadWrite
	_:6
	IP_23:2::ReadWrite
end
const Reg = NVIC_IPR5Struct

"""
    IP_20

Priority of interrupt 20
"""
IP_20

"""
    IP_21

Priority of interrupt 21
"""
IP_21

"""
    IP_22

Priority of interrupt 22
"""
IP_22

"""
    IP_23

Priority of interrupt 23
"""
IP_23

end # register NVIC_IPR5

"""
    NVIC_IPR6

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR6Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e418
@regdef struct NVIC_IPR6Struct(regAddress)
	_:6
	IP_24:2::ReadWrite
	_:6
	IP_25:2::ReadWrite
	_:6
	IP_26:2::ReadWrite
	_:6
	IP_27:2::ReadWrite
end
const Reg = NVIC_IPR6Struct

"""
    IP_24

Priority of interrupt 24
"""
IP_24

"""
    IP_25

Priority of interrupt 25
"""
IP_25

"""
    IP_26

Priority of interrupt 26
"""
IP_26

"""
    IP_27

Priority of interrupt 27
"""
IP_27

end # register NVIC_IPR6

"""
    NVIC_IPR7

Use the Interrupt Priority Registers to assign a priority from 0 to 3 to each of the available interrupts. 0 is the highest priority, and 3 is the lowest.
"""
module NVIC_IPR7Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000e41c
@regdef struct NVIC_IPR7Struct(regAddress)
	_:6
	IP_28:2::ReadWrite
	_:6
	IP_29:2::ReadWrite
	_:6
	IP_30:2::ReadWrite
	_:6
	IP_31:2::ReadWrite
end
const Reg = NVIC_IPR7Struct

"""
    IP_28

Priority of interrupt 28
"""
IP_28

"""
    IP_29

Priority of interrupt 29
"""
IP_29

"""
    IP_30

Priority of interrupt 30
"""
IP_30

"""
    IP_31

Priority of interrupt 31
"""
IP_31

end # register NVIC_IPR7

"""
    CPUID

Read the CPU ID Base Register to determine: the ID number of the processor core, the version number of the processor core, the implementation details of the processor core.
"""
module CPUIDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed00
@regdef struct CPUIDStruct(regAddress)
	REVISION:4::Read
	PARTNO:12::Read
	ARCHITECTURE:4::Read
	VARIANT:4::Read
	IMPLEMENTER:8::Read
end
const Reg = CPUIDStruct

"""
    REVISION

Minor revision number m in the rnpm revision status:

0x1 = Patch 1.
"""
REVISION

"""
    PARTNO

Number of processor within family: 0xC60 = Cortex-M0+
"""
PARTNO

"""
    ARCHITECTURE

Constant that defines the architecture of the processor:

0xC = ARMv6-M architecture.
"""
ARCHITECTURE

"""
    VARIANT

Major revision number n in the rnpm revision status:

0x0 = Revision 0.
"""
VARIANT

"""
    IMPLEMENTER

Implementor code: 0x41 = ARM
"""
IMPLEMENTER

end # register CPUID

"""
    ICSR

Use the Interrupt Control State Register to set a pending Non-Maskable Interrupt (NMI), set or clear a pending PendSV, set or clear a pending SysTick, check for pending exceptions, check the vector number of the highest priority pended exception, check the vector number of the active exception.
"""
module ICSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed04
@regdef struct ICSRStruct(regAddress)
	VECTACTIVE:9::Read
	_:3
	VECTPENDING:9::Read
	_:1
	ISRPENDING:1::Read
	ISRPREEMPT:1::Read
	_:1
	PENDSTCLR:1::ReadWrite
	PENDSTSET:1::ReadWrite
	PENDSVCLR:1::ReadWrite
	PENDSVSET:1::ReadWrite
	_:2
	NMIPENDSET:1::ReadWrite
end
const Reg = ICSRStruct

"""
    VECTACTIVE

Active exception number field. Reset clears the VECTACTIVE field.
"""
VECTACTIVE

"""
    VECTPENDING

Indicates the exception number for the highest priority pending exception: 0 = no pending exceptions. Non zero = The pending state includes the effect of memory-mapped enable and mask registers. It does not include the PRIMASK special-purpose register qualifier.
"""
VECTPENDING

"""
    ISRPENDING

External interrupt pending flag
"""
ISRPENDING

"""
    ISRPREEMPT

The system can only access this bit when the core is halted. It indicates that a pending interrupt is to be taken in the next running cycle. If C\\_MASKINTS is clear in the Debug Halting Control and Status Register, the interrupt is serviced.
"""
ISRPREEMPT

"""
    PENDSTCLR

SysTick exception clear-pending bit.

Write:

0 = No effect.

1 = Removes the pending state from the SysTick exception.

This bit is WO. On a register read its value is Unknown.
"""
PENDSTCLR

"""
    PENDSTSET

SysTick exception set-pending bit.

Write:

0 = No effect.

1 = Changes SysTick exception state to pending.

Read:

0 = SysTick exception is not pending.

1 = SysTick exception is pending.
"""
PENDSTSET

"""
    PENDSVCLR

PendSV clear-pending bit.

Write:

0 = No effect.

1 = Removes the pending state from the PendSV exception.
"""
PENDSVCLR

"""
    PENDSVSET

PendSV set-pending bit.

Write:

0 = No effect.

1 = Changes PendSV exception state to pending.

Read:

0 = PendSV exception is not pending.

1 = PendSV exception is pending.

Writing 1 to this bit is the only way to set the PendSV exception state to pending.
"""
PENDSVSET

"""
    NMIPENDSET

Setting this bit will activate an NMI. Since NMI is the highest priority exception, it will activate as soon as it is registered.

NMI set-pending bit.

Write:

0 = No effect.

1 = Changes NMI exception state to pending.

Read:

0 = NMI exception is not pending.

1 = NMI exception is pending.

Because NMI is the highest-priority exception, normally the processor enters the NMI

exception handler as soon as it detects a write of 1 to this bit. Entering the handler then clears

this bit to 0. This means a read of this bit by the NMI exception handler returns 1 only if the

NMI signal is reasserted while the processor is executing that handler.
"""
NMIPENDSET

end # register ICSR

"""
    VTOR

The VTOR holds the vector table offset address.
"""
module VTORMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed08
@regdef struct VTORStruct(regAddress)
	_:8
	TBLOFF:24::ReadWrite
end
const Reg = VTORStruct

"""
    TBLOFF

Bits [31:8] of the indicate the vector table offset address.
"""
TBLOFF

end # register VTOR

"""
    AIRCR

Use the Application Interrupt and Reset Control Register to: determine data endianness, clear all active state information from debug halt mode, request a system reset.
"""
module AIRCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed0c
@regdef struct AIRCRStruct(regAddress)
	_:1
	VECTCLRACTIVE:1::ReadWrite
	SYSRESETREQ:1::ReadWrite
	_:12
	ENDIANESS:1::Read
	VECTKEY:16::ReadWrite
end
const Reg = AIRCRStruct

"""
    VECTCLRACTIVE

Clears all active state information for fixed and configurable exceptions. This bit: is self-clearing, can only be set by the DAP when the core is halted.  When set: clears all active exception status of the processor, forces a return to Thread mode, forces an IPSR of 0. A debugger must re-initialize the stack.
"""
VECTCLRACTIVE

"""
    SYSRESETREQ

Writing 1 to this bit causes the SYSRESETREQ signal to the outer system to be asserted to request a reset. The intention is to force a large system reset of all major components except for debug. The C\\_HALT bit in the DHCSR is cleared as a result of the system reset requested. The debugger does not lose contact with the device.
"""
SYSRESETREQ

"""
    ENDIANESS

Data endianness implemented:

0 = Little-endian.
"""
ENDIANESS

"""
    VECTKEY

Register key:

Reads as Unknown

On writes, write 0x05FA to VECTKEY, otherwise the write is ignored.
"""
VECTKEY

end # register AIRCR

"""
    SCR

System Control Register. Use the System Control Register for power-management functions: signal to the system when the processor can enter a low power state, control how the processor enters and exits low power states.
"""
module SCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed10
@regdef struct SCRStruct(regAddress)
	_:1
	SLEEPONEXIT:1::ReadWrite
	SLEEPDEEP:1::ReadWrite
	_:1
	SEVONPEND:1::ReadWrite
	_:27
end
const Reg = SCRStruct

"""
    SLEEPONEXIT

Indicates sleep-on-exit when returning from Handler mode to Thread mode:

0 = Do not sleep when returning to Thread mode.

1 = Enter sleep, or deep sleep, on return from an ISR to Thread mode.

Setting this bit to 1 enables an interrupt driven application to avoid returning to an empty main application.
"""
SLEEPONEXIT

"""
    SLEEPDEEP

Controls whether the processor uses sleep or deep sleep as its low power mode:

0 = Sleep.

1 = Deep sleep.
"""
SLEEPDEEP

"""
    SEVONPEND

Send Event on Pending bit:

0 = Only enabled interrupts or events can wakeup the processor, disabled interrupts are excluded.

1 = Enabled events and all interrupts, including disabled interrupts, can wakeup the processor.

When an event or interrupt becomes pending, the event signal wakes up the processor from WFE. If the

processor is not waiting for an event, the event is registered and affects the next WFE.

The processor also wakes up on execution of an SEV instruction or an external event.
"""
SEVONPEND

end # register SCR

"""
    CCR

The Configuration and Control Register permanently enables stack alignment and causes unaligned accesses to result in a Hard Fault.
"""
module CCRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed14
@regdef struct CCRStruct(regAddress)
	_:3
	UNALIGN_TRP:1::Read
	_:5
	STKALIGN:1::Read
	_:22
end
const Reg = CCRStruct

"""
    UNALIGN_TRP

Always reads as one, indicates that all unaligned accesses generate a HardFault.
"""
UNALIGN_TRP

"""
    STKALIGN

Always reads as one, indicates 8-byte stack alignment on exception entry. On exception entry, the processor uses bit[9] of the stacked PSR to indicate the stack alignment. On return from the exception it uses this stacked bit to restore the correct stack alignment.
"""
STKALIGN

end # register CCR

"""
    SHPR2

System handlers are a special class of exception handler that can have their priority set to any of the priority levels. Use the System Handler Priority Register 2 to set the priority of SVCall.
"""
module SHPR2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed1c
@regdef struct SHPR2Struct(regAddress)
	_:30
	PRI_11:2::ReadWrite
end
const Reg = SHPR2Struct

"""
    PRI_11

Priority of system handler 11, SVCall
"""
PRI_11

end # register SHPR2

"""
    SHPR3

System handlers are a special class of exception handler that can have their priority set to any of the priority levels. Use the System Handler Priority Register 3 to set the priority of PendSV and SysTick.
"""
module SHPR3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed20
@regdef struct SHPR3Struct(regAddress)
	_:22
	PRI_14:2::ReadWrite
	_:6
	PRI_15:2::ReadWrite
end
const Reg = SHPR3Struct

"""
    PRI_14

Priority of system handler 14, PendSV
"""
PRI_14

"""
    PRI_15

Priority of system handler 15, SysTick
"""
PRI_15

end # register SHPR3

"""
    SHCSR

Use the System Handler Control and State Register to determine or clear the pending status of SVCall.
"""
module SHCSRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed24
@regdef struct SHCSRStruct(regAddress)
	_:15
	SVCALLPENDED:1::ReadWrite
	_:16
end
const Reg = SHCSRStruct

"""
    SVCALLPENDED

Reads as 1 if SVCall is Pending.  Write 1 to set pending SVCall, write 0 to clear pending SVCall.
"""
SVCALLPENDED

end # register SHCSR

"""
    MPU_TYPE

Read the MPU Type Register to determine if the processor implements an MPU, and how many regions the MPU supports.
"""
module MPU_TYPEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed90
@regdef struct MPU_TYPEStruct(regAddress)
	SEPARATE:1::Read
	_:7
	DREGION:8::Read
	IREGION:8::Read
	_:8
end
const Reg = MPU_TYPEStruct

"""
    SEPARATE

Indicates support for separate instruction and data address maps. Reads as 0 as ARMv6-M only supports a unified MPU.
"""
SEPARATE

"""
    DREGION

Number of regions supported by the MPU.
"""
DREGION

"""
    IREGION

Instruction region. Reads as zero as ARMv6-M only supports a unified MPU.
"""
IREGION

end # register MPU_TYPE

"""
    MPU_CTRL

Use the MPU Control Register to enable and disable the MPU, and to control whether the default memory map is enabled as a background region for privileged accesses, and whether the MPU is enabled for HardFaults and NMIs.
"""
module MPU_CTRLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed94
@regdef struct MPU_CTRLStruct(regAddress)
	ENABLE:1::ReadWrite
	HFNMIENA:1::ReadWrite
	PRIVDEFENA:1::ReadWrite
	_:29
end
const Reg = MPU_CTRLStruct

"""
    ENABLE

Enables the MPU. If the MPU is disabled, privileged and unprivileged accesses use the default memory map.

0 = MPU disabled.

1 = MPU enabled.
"""
ENABLE

"""
    HFNMIENA

Controls the use of the MPU for HardFaults and NMIs. Setting this bit when ENABLE is clear results in UNPREDICTABLE behaviour.

When the MPU is enabled:

0 = MPU is disabled during HardFault and NMI handlers, regardless of the value of the ENABLE bit.

1 = the MPU is enabled during HardFault and NMI handlers.
"""
HFNMIENA

"""
    PRIVDEFENA

Controls whether the default memory map is enabled as a background region for privileged accesses. This bit is ignored when ENABLE is clear.

0 = If the MPU is enabled, disables use of the default memory map. Any memory access to a location not

covered by any enabled region causes a fault.

1 = If the MPU is enabled, enables use of the default memory map as a background region for privileged software accesses.

When enabled, the background region acts as if it is region number -1. Any region that is defined and enabled has priority over this default map.
"""
PRIVDEFENA

end # register MPU_CTRL

"""
    MPU_RNR

Use the MPU Region Number Register to select the region currently accessed by MPU\\_RBAR and MPU\\_RASR.
"""
module MPU_RNRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed98
@regdef struct MPU_RNRStruct(regAddress)
	REGION:4::ReadWrite
	_:28
end
const Reg = MPU_RNRStruct

"""
    REGION

Indicates the MPU region referenced by the MPU\\_RBAR and MPU\\_RASR registers.

The MPU supports 8 memory regions, so the permitted values of this field are 0-7.
"""
REGION

end # register MPU_RNR

"""
    MPU_RBAR

Read the MPU Region Base Address Register to determine the base address of the region identified by MPU\\_RNR. Write to update the base address of said region or that of a specified region, with whose number MPU\\_RNR will also be updated.
"""
module MPU_RBARMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000ed9c
@regdef struct MPU_RBARStruct(regAddress)
	REGION:4::ReadWrite
	VALID:1::ReadWrite
	_:3
	ADDR:24::ReadWrite
end
const Reg = MPU_RBARStruct

"""
    REGION

On writes, specifies the number of the region whose base address to update provided VALID is set written as 1. On reads, returns bits [3:0] of MPU\\_RNR.
"""
REGION

"""
    VALID

On writes, indicates whether the write must update the base address of the region identified by the REGION field, updating the MPU\\_RNR to indicate this new region.

Write:

0 = MPU\\_RNR not changed, and the processor:

Updates the base address for the region specified in the MPU\\_RNR.

Ignores the value of the REGION field.

1 = The processor:

Updates the value of the MPU\\_RNR to the value of the REGION field.

Updates the base address for the region specified in the REGION field.

Always reads as zero.
"""
VALID

"""
    ADDR

Base address of the region.
"""
ADDR

end # register MPU_RBAR

"""
    MPU_RASR

Use the MPU Region Attribute and Size Register to define the size, access behaviour and memory type of the region identified by MPU\\_RNR, and enable that region.
"""
module MPU_RASRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..PPB: baseAddress

const regAddress = baseAddress + 0x000000000000eda0
@regdef struct MPU_RASRStruct(regAddress)
	ENABLE:1::ReadWrite
	SIZE:5::ReadWrite
	_:2
	SRD:8::ReadWrite
	ATTRS:16::ReadWrite
end
const Reg = MPU_RASRStruct

"""
    ENABLE

Enables the region.
"""
ENABLE

"""
    SIZE

Indicates the region size. Region size in bytes = 2^(SIZE+1). The minimum permitted value is 7 (b00111) = 256Bytes
"""
SIZE

"""
    SRD

Subregion Disable. For regions of 256 bytes or larger, each bit of this field controls whether one of the eight equal subregions is enabled.
"""
SRD

"""
    ATTRS

The MPU Region Attribute field. Use to define the region attribute control.

28 = XN: Instruction access disable bit:

0 = Instruction fetches enabled.

1 = Instruction fetches disabled.

26:24 = AP: Access permission field

18 = S: Shareable bit

17 = C: Cacheable bit

16 = B: Bufferable bit
"""
ATTRS

end # register MPU_RASR

end # peripheral

