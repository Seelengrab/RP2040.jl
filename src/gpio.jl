using RP2040.Peripherals.SIO

const GPIO_PADS  = ntuple(30) do i getglobal(Peripherals.PADS_BANK0, Symbol(:GPIO, i-1, :Mod)) end
const GPIO_CTRLS = ntuple(30) do i getglobal(Peripherals.IO_BANK0, Symbol(:GPIO, i-1, :_CTRLMod)) end

"""
    GPIO{P,C,N}

Represents a general purpose IO peripheral. `N` is the (zero-based) number of the GPIO.
"""
struct GPIO{P,C,N}
    function GPIO(m::Module)
        N = findfirst(==(m), GPIO_PADS)
        N isa Nothing && throw(ArgumentError("Given pad not a GPIO pad!"))
        ctrl = @inbounds GPIO_CTRLS[N]
        new{m.Reg,ctrl.Reg,Int32(N-1)}()
    end
    function GPIO(i::Integer)
        0 <= i < length(GPIO_PADS) || throw(ArgumentError("No GPIO with number $(i)!"))
        reg  = @inbounds(GPIO_PADS[i+1]).Reg
        ctrl = @inbounds(GPIO_CTRLS[i+1]).Reg
        new{reg,ctrl,Int32(i)}()
    end
end

function Base.setindex!(g::GPIO{P,C,reg}, val::Bool) where {P,C,reg}
    data = ((val % UInt32) << reg)
    SIO.GPIO_OUT_SETMod.GPIO_OUT_SET[] = data
    val
end

function Base.getindex(g::GPIO{P,C,reg}) where {P,C,reg}
    mask = ((val % UInt32) << reg)
    data = SIO.GPIO_INMod.GPIO_IN[]
    !iszero(data & mask)
end

@enum GPIO_DIR::UInt8 GPIO_IN=0 GPIO_OUT=1

"""
    init!(::GPIO, dir::GPIO_DIR)

Initialize the given GPIO pin as a generic, software controlled I/O device.

`GPIO_OUT` implies that a pull-up is enabled, while `GPIO_IN` implies a pull-down.
"""
function init!(g::GPIO, dir::GPIO_DIR=GPIO_OUT)
    function!(g, GPIO_FUNC_SIO)
    direction!(g, dir)
    pulls!(g, dir == GPIO_OUT, dir == GPIO_IN)

end

function direction!(::GPIO{P,C,io}, out::GPIO_DIR) where {P,C,io}
    outdata = UInt32(0x1) << (io % UInt32)
    R = if out === GPIO_OUT
        R = SIO.GPIO_OE_SETMod.GPIO_OE_SET
    else
        R = SIO.GPIO_OE_CLRMod.GPIO_OE_CLR
    end
    R[] = outdata
    nothing
end

@enum GPIO_FUNCS::UInt32 begin
    GPIO_FUNC_XIP=0x0
    GPIO_FUNC_SPI=0x1
    GPIO_FUNC_UART=0x2
    GPIO_FUNC_I2C=0x3
    GPIO_FUNC_PWM=0x4
    GPIO_FUNC_SIO=0x5
    GPIO_FUNC_PIO0=0x6
    GPIO_FUNC_PIO1=0x7
    GPIO_FUNC_GPCK=0x8
    GPIO_FUNC_USB=0x9
    GPIO_FUNC_NULL=0x1f
end

function function!(g::GPIO{P,C}, func::GPIO_FUNCS) where {P,C}
    init = P[]
    init.IE = true
    init.OD = false
    P[] = init
    c = zero(typeof(C))
    c.FUNCSEL = UInt32(func)
    c.OUTOVER = 0x0
    c.OEOVER  = 0x0
    c.INOVER  = 0x0
    c.IRQOVER = 0x0
    C[] = c
    nothing
end

function pulls!(g::GPIO{P}, up::Bool, down::Bool) where P
    t = P[]
    t.PUE = up
    t.PDE = down
    P[] = t
    nothing
end
