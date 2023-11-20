const PWM_CSRS = ntuple(8) do i getglobal(Peripherals.PWM, Symbol(:CH, i-1, :_CSRMod)) end
const PWM_DIVS = ntuple(8) do i getglobal(Peripherals.PWM, Symbol(:CH, i-1, :_DIVMod)) end
const PWM_CTRS = ntuple(8) do i getglobal(Peripherals.PWM, Symbol(:CH, i-1, :_CTRMod)) end
const PWM_CCS  = ntuple(8) do i getglobal(Peripherals.PWM, Symbol(:CH, i-1, :_CCMod )) end
const PWM_TOPS = ntuple(8) do i getglobal(Peripherals.PWM, Symbol(:CH, i-1, :_TOPMod)) end

struct PWM{G,S}
    function PWM(g::GPIO{G,S}) where {G,S}
        s = sliceFromGPIO(g)
        new{g, s}()
    end
end

sliceFromGPIO(::GPIO{P,C,Num}) where {P,C,Num}   = (Num >> 0x1) & 0x7
channelFromGPIO(::GPIO{P,C,Num}) where {P,C,Num} =  Num         & 0x1

@enum PWM_CLKDIV_MODE::UInt8 begin
    PWM_DIV_FREE_RUNNING=0x0
    PWM_DIV_B_HIGH=0x1
    PWM_DIV_B_RISING=0x2
    PWM_DIV_B_FALLING=0x3
end

struct PWMConfig{C,D,T}
    csr::C
    div::D
    top::T
end

function defaultConfig(pwm::PWM{G,Slice}) where {G,Slice}
    csr = zero(typeof(PWM_CSRS[Slice+0x1].Reg))
    div = zero(typeof(PWM_DIVS[Slice+0x1].Reg))
    topT = typeof(zero(typeof(PWM_TOPS[Slice+0x1].Reg)))

    csr.PH_CORRECT = false
    div.INT = 0x1
    csr.DIVMODE = UInt8(PWM_DIV_FREE_RUNNING)
    csr.A_INV = false
    csr.B_INV = false
    top = topT(typemax(UInt16))

    PWMConfig{typeof(csr), typeof(div), typeof(top)}(csr, div, top)
end

function set_wrap!(p::PWM{G,S}, w::UInt16) where {G,S}
    PWM_TOPS[S].Reg[] = w
end

function init!(p::PWM{G}, cfg::PWMConfig{C,D,T}, start::Bool) where {G,C,D,T}
    s = sliceFromGPIO(G)+0x1 # +1 for indexing
    csr = PWM_CSRS[s].Reg
    csr[] = zero(typeof(csr))

    ctr = PWM_CTRS[s].Reg
    ctr[] = zero(typeof(ctr))
    cc  = PWM_CCS[s].Reg
    cc[]  = zero(typeof(cc ))

    top = PWM_TOPS[s].Reg
    top[] = cfg.top
    div = PWM_DIVS[s].Reg
    div[] = cfg.div
    csr_val = cfg.csr
    csr_val.EN = start
    csr.Reg[] = csr_val
    nothing
end

function level!(pwm::PWM{G}, level::UInt16) where G
    s = sliceFromGPIO(G)+0x1 # +1 for indexing
    c = channelFromGPIO(G)
    cc = PWM_CCS[s]
    if iszero(c)
        cc.A[] = level
    else
        cc.B[] = level
    end
    level
    nothing
end
