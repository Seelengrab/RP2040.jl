"""
    TIMER

Controls time and alarms

time is a 64 bit value indicating the time in usec since power-on

timeh is the top 32 bits of time &amp; timel is the bottom 32 bits

to change time write to timelw before timehw

to read time read from timelr before timehr

An alarm is set by setting alarm\\_enable and writing to the corresponding alarm register

When an alarm is pending, the corresponding alarm\\_running signal will be high

An alarm can be cancelled before it has finished by clearing the alarm\\_enable

When an alarm fires, the corresponding alarm\\_irq is set and alarm\\_running is cleared

To clear the interrupt write a 1 to the corresponding alarm\\_irq
"""
module TIMER

const baseAddress = Ptr{UInt32}(1074085888)

"""
    TIMEHW

Write to bits 63:32 of time

always write timelw before timehw
"""
module TIMEHWMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct TIMEHWStruct(regAddress)
	TIMEHW:32
end
const Reg = TIMEHWStruct

end # register TIMEHW

"""
    TIMELW

Write to bits 31:0 of time

writes do not get copied to time until timehw is written
"""
module TIMELWMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct TIMELWStruct(regAddress)
	TIMELW:32
end
const Reg = TIMELWStruct

end # register TIMELW

"""
    TIMEHR

Read from bits 63:32 of time

always read timelr before timehr
"""
module TIMEHRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct TIMEHRStruct(regAddress)
	TIMEHR:32
end
const Reg = TIMEHRStruct

end # register TIMEHR

"""
    TIMELR

Read from bits 31:0 of time
"""
module TIMELRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x000000000000000c
@regdef struct TIMELRStruct(regAddress)
	TIMELR:32
end
const Reg = TIMELRStruct

end # register TIMELR

"""
    ALARM0

Arm alarm 0, and configure the time it will fire.

Once armed, the alarm fires when TIMER\\_ALARM0 == TIMELR.

The alarm will disarm itself once it fires, and can

be disarmed early using the ARMED status register.
"""
module ALARM0Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000010
@regdef struct ALARM0Struct(regAddress)
	ALARM0:32
end
const Reg = ALARM0Struct

end # register ALARM0

"""
    ALARM1

Arm alarm 1, and configure the time it will fire.

Once armed, the alarm fires when TIMER\\_ALARM1 == TIMELR.

The alarm will disarm itself once it fires, and can

be disarmed early using the ARMED status register.
"""
module ALARM1Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000014
@regdef struct ALARM1Struct(regAddress)
	ALARM1:32
end
const Reg = ALARM1Struct

end # register ALARM1

"""
    ALARM2

Arm alarm 2, and configure the time it will fire.

Once armed, the alarm fires when TIMER\\_ALARM2 == TIMELR.

The alarm will disarm itself once it fires, and can

be disarmed early using the ARMED status register.
"""
module ALARM2Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000018
@regdef struct ALARM2Struct(regAddress)
	ALARM2:32
end
const Reg = ALARM2Struct

end # register ALARM2

"""
    ALARM3

Arm alarm 3, and configure the time it will fire.

Once armed, the alarm fires when TIMER\\_ALARM3 == TIMELR.

The alarm will disarm itself once it fires, and can

be disarmed early using the ARMED status register.
"""
module ALARM3Mod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x000000000000001c
@regdef struct ALARM3Struct(regAddress)
	ALARM3:32
end
const Reg = ALARM3Struct

end # register ALARM3

"""
    ARMED

Indicates the armed/disarmed status of each alarm.

A write to the corresponding ALARMx register arms the alarm.

Alarms automatically disarm upon firing, but writing ones here

will disarm immediately without waiting to fire.
"""
module ARMEDMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000020
@regdef struct ARMEDStruct(regAddress)
	ARMED:4::ReadWrite
	_:28
end
const Reg = ARMEDStruct

"""
    ARMED

Field has no description!
"""
ARMED

end # register ARMED

"""
    TIMERAWH

Raw read from bits 63:32 of time (no side effects)
"""
module TIMERAWHMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000024
@regdef struct TIMERAWHStruct(regAddress)
	TIMERAWH:32
end
const Reg = TIMERAWHStruct

end # register TIMERAWH

"""
    TIMERAWL

Raw read from bits 31:0 of time (no side effects)
"""
module TIMERAWLMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000028
@regdef struct TIMERAWLStruct(regAddress)
	TIMERAWL:32
end
const Reg = TIMERAWLStruct

end # register TIMERAWL

"""
    DBGPAUSE

Set bits high to enable pause when the corresponding debug ports are active
"""
module DBGPAUSEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x000000000000002c
@regdef struct DBGPAUSEStruct(regAddress)
	_:1
	DBG0:1::ReadWrite
	DBG1:1::ReadWrite
	_:29
end
const Reg = DBGPAUSEStruct

"""
    DBG0

Pause when processor 0 is in debug mode
"""
DBG0

"""
    DBG1

Pause when processor 1 is in debug mode
"""
DBG1

end # register DBGPAUSE

"""
    PAUSE

Set high to pause the timer
"""
module PAUSEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000030
@regdef struct PAUSEStruct(regAddress)
	PAUSE:1::ReadWrite
	_:31
end
const Reg = PAUSEStruct

"""
    PAUSE

Field has no description!
"""
PAUSE

end # register PAUSE

"""
    INTR

Raw Interrupts
"""
module INTRMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000034
@regdef struct INTRStruct(regAddress)
	ALARM_0:1::ReadWrite
	ALARM_1:1::ReadWrite
	ALARM_2:1::ReadWrite
	ALARM_3:1::ReadWrite
	_:28
end
const Reg = INTRStruct

"""
    ALARM_0

Field has no description!
"""
ALARM_0

"""
    ALARM_1

Field has no description!
"""
ALARM_1

"""
    ALARM_2

Field has no description!
"""
ALARM_2

"""
    ALARM_3

Field has no description!
"""
ALARM_3

end # register INTR

"""
    INTE

Interrupt Enable
"""
module INTEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000038
@regdef struct INTEStruct(regAddress)
	ALARM_0:1::ReadWrite
	ALARM_1:1::ReadWrite
	ALARM_2:1::ReadWrite
	ALARM_3:1::ReadWrite
	_:28
end
const Reg = INTEStruct

"""
    ALARM_0

Field has no description!
"""
ALARM_0

"""
    ALARM_1

Field has no description!
"""
ALARM_1

"""
    ALARM_2

Field has no description!
"""
ALARM_2

"""
    ALARM_3

Field has no description!
"""
ALARM_3

end # register INTE

"""
    INTF

Interrupt Force
"""
module INTFMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x000000000000003c
@regdef struct INTFStruct(regAddress)
	ALARM_0:1::ReadWrite
	ALARM_1:1::ReadWrite
	ALARM_2:1::ReadWrite
	ALARM_3:1::ReadWrite
	_:28
end
const Reg = INTFStruct

"""
    ALARM_0

Field has no description!
"""
ALARM_0

"""
    ALARM_1

Field has no description!
"""
ALARM_1

"""
    ALARM_2

Field has no description!
"""
ALARM_2

"""
    ALARM_3

Field has no description!
"""
ALARM_3

end # register INTF

"""
    INTS

Interrupt status after masking &amp; forcing
"""
module INTSMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..TIMER: baseAddress

const regAddress = baseAddress + 0x0000000000000040
@regdef struct INTSStruct(regAddress)
	ALARM_0:1::Read
	ALARM_1:1::Read
	ALARM_2:1::Read
	ALARM_3:1::Read
	_:28
end
const Reg = INTSStruct

"""
    ALARM_0

Field has no description!
"""
ALARM_0

"""
    ALARM_1

Field has no description!
"""
ALARM_1

"""
    ALARM_2

Field has no description!
"""
ALARM_2

"""
    ALARM_3

Field has no description!
"""
ALARM_3

end # register INTS

end # peripheral

