"""
    RESETS

No description of peripheral!
"""
module RESETS

const baseAddress = Ptr{UInt32}(1073790976)

"""
    RESET

Reset control. If a bit is set it means the peripheral is in reset. 0 means the peripheral's reset is deasserted.
"""
module RESETMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RESETS: baseAddress

const regAddress = baseAddress + 0x0000000000000000
@regdef struct RESETStruct(regAddress)
	adc:1::ReadWrite
	busctrl:1::ReadWrite
	dma:1::ReadWrite
	i2c0:1::ReadWrite
	i2c1:1::ReadWrite
	io_bank0:1::ReadWrite
	io_qspi:1::ReadWrite
	jtag:1::ReadWrite
	pads_bank0:1::ReadWrite
	pads_qspi:1::ReadWrite
	pio0:1::ReadWrite
	pio1:1::ReadWrite
	pll_sys:1::ReadWrite
	pll_usb:1::ReadWrite
	pwm:1::ReadWrite
	rtc:1::ReadWrite
	spi0:1::ReadWrite
	spi1:1::ReadWrite
	syscfg:1::ReadWrite
	sysinfo:1::ReadWrite
	tbman:1::ReadWrite
	timer:1::ReadWrite
	uart0:1::ReadWrite
	uart1:1::ReadWrite
	usbctrl:1::ReadWrite
	_:7
end
const Reg = RESETStruct

"""
    adc

Field has no description!
"""
adc

"""
    busctrl

Field has no description!
"""
busctrl

"""
    dma

Field has no description!
"""
dma

"""
    i2c0

Field has no description!
"""
i2c0

"""
    i2c1

Field has no description!
"""
i2c1

"""
    io_bank0

Field has no description!
"""
io_bank0

"""
    io_qspi

Field has no description!
"""
io_qspi

"""
    jtag

Field has no description!
"""
jtag

"""
    pads_bank0

Field has no description!
"""
pads_bank0

"""
    pads_qspi

Field has no description!
"""
pads_qspi

"""
    pio0

Field has no description!
"""
pio0

"""
    pio1

Field has no description!
"""
pio1

"""
    pll_sys

Field has no description!
"""
pll_sys

"""
    pll_usb

Field has no description!
"""
pll_usb

"""
    pwm

Field has no description!
"""
pwm

"""
    rtc

Field has no description!
"""
rtc

"""
    spi0

Field has no description!
"""
spi0

"""
    spi1

Field has no description!
"""
spi1

"""
    syscfg

Field has no description!
"""
syscfg

"""
    sysinfo

Field has no description!
"""
sysinfo

"""
    tbman

Field has no description!
"""
tbman

"""
    timer

Field has no description!
"""
timer

"""
    uart0

Field has no description!
"""
uart0

"""
    uart1

Field has no description!
"""
uart1

"""
    usbctrl

Field has no description!
"""
usbctrl

end # register RESET

"""
    WDSEL

Watchdog select. If a bit is set then the watchdog will reset this peripheral when the watchdog fires.
"""
module WDSELMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RESETS: baseAddress

const regAddress = baseAddress + 0x0000000000000004
@regdef struct WDSELStruct(regAddress)
	adc:1::ReadWrite
	busctrl:1::ReadWrite
	dma:1::ReadWrite
	i2c0:1::ReadWrite
	i2c1:1::ReadWrite
	io_bank0:1::ReadWrite
	io_qspi:1::ReadWrite
	jtag:1::ReadWrite
	pads_bank0:1::ReadWrite
	pads_qspi:1::ReadWrite
	pio0:1::ReadWrite
	pio1:1::ReadWrite
	pll_sys:1::ReadWrite
	pll_usb:1::ReadWrite
	pwm:1::ReadWrite
	rtc:1::ReadWrite
	spi0:1::ReadWrite
	spi1:1::ReadWrite
	syscfg:1::ReadWrite
	sysinfo:1::ReadWrite
	tbman:1::ReadWrite
	timer:1::ReadWrite
	uart0:1::ReadWrite
	uart1:1::ReadWrite
	usbctrl:1::ReadWrite
	_:7
end
const Reg = WDSELStruct

"""
    adc

Field has no description!
"""
adc

"""
    busctrl

Field has no description!
"""
busctrl

"""
    dma

Field has no description!
"""
dma

"""
    i2c0

Field has no description!
"""
i2c0

"""
    i2c1

Field has no description!
"""
i2c1

"""
    io_bank0

Field has no description!
"""
io_bank0

"""
    io_qspi

Field has no description!
"""
io_qspi

"""
    jtag

Field has no description!
"""
jtag

"""
    pads_bank0

Field has no description!
"""
pads_bank0

"""
    pads_qspi

Field has no description!
"""
pads_qspi

"""
    pio0

Field has no description!
"""
pio0

"""
    pio1

Field has no description!
"""
pio1

"""
    pll_sys

Field has no description!
"""
pll_sys

"""
    pll_usb

Field has no description!
"""
pll_usb

"""
    pwm

Field has no description!
"""
pwm

"""
    rtc

Field has no description!
"""
rtc

"""
    spi0

Field has no description!
"""
spi0

"""
    spi1

Field has no description!
"""
spi1

"""
    syscfg

Field has no description!
"""
syscfg

"""
    sysinfo

Field has no description!
"""
sysinfo

"""
    tbman

Field has no description!
"""
tbman

"""
    timer

Field has no description!
"""
timer

"""
    uart0

Field has no description!
"""
uart0

"""
    uart1

Field has no description!
"""
uart1

"""
    usbctrl

Field has no description!
"""
usbctrl

end # register WDSEL

"""
    RESET_DONE

Reset done. If a bit is set then a reset done signal has been returned by the peripheral. This indicates that the peripheral's registers are ready to be accessed.
"""
module RESET_DONEMod

using MCUCommon: @regdef, Read, Write, ReadWrite, ReadWriteOnce
using ..RESETS: baseAddress

const regAddress = baseAddress + 0x0000000000000008
@regdef struct RESET_DONEStruct(regAddress)
	adc:1::Read
	busctrl:1::Read
	dma:1::Read
	i2c0:1::Read
	i2c1:1::Read
	io_bank0:1::Read
	io_qspi:1::Read
	jtag:1::Read
	pads_bank0:1::Read
	pads_qspi:1::Read
	pio0:1::Read
	pio1:1::Read
	pll_sys:1::Read
	pll_usb:1::Read
	pwm:1::Read
	rtc:1::Read
	spi0:1::Read
	spi1:1::Read
	syscfg:1::Read
	sysinfo:1::Read
	tbman:1::Read
	timer:1::Read
	uart0:1::Read
	uart1:1::Read
	usbctrl:1::Read
	_:7
end
const Reg = RESET_DONEStruct

"""
    adc

Field has no description!
"""
adc

"""
    busctrl

Field has no description!
"""
busctrl

"""
    dma

Field has no description!
"""
dma

"""
    i2c0

Field has no description!
"""
i2c0

"""
    i2c1

Field has no description!
"""
i2c1

"""
    io_bank0

Field has no description!
"""
io_bank0

"""
    io_qspi

Field has no description!
"""
io_qspi

"""
    jtag

Field has no description!
"""
jtag

"""
    pads_bank0

Field has no description!
"""
pads_bank0

"""
    pads_qspi

Field has no description!
"""
pads_qspi

"""
    pio0

Field has no description!
"""
pio0

"""
    pio1

Field has no description!
"""
pio1

"""
    pll_sys

Field has no description!
"""
pll_sys

"""
    pll_usb

Field has no description!
"""
pll_usb

"""
    pwm

Field has no description!
"""
pwm

"""
    rtc

Field has no description!
"""
rtc

"""
    spi0

Field has no description!
"""
spi0

"""
    spi1

Field has no description!
"""
spi1

"""
    syscfg

Field has no description!
"""
syscfg

"""
    sysinfo

Field has no description!
"""
sysinfo

"""
    tbman

Field has no description!
"""
tbman

"""
    timer

Field has no description!
"""
timer

"""
    uart0

Field has no description!
"""
uart0

"""
    uart1

Field has no description!
"""
uart1

"""
    usbctrl

Field has no description!
"""
usbctrl

end # register RESET_DONE

end # peripheral

