const GPIO_PADS = ntuple(30) do i
    @eval getproperty(Peripherals.PADS_BANK0, Symbol(:GPIO, $i-1, :Mod))
end

struct GPIO{P,N}
    function GPIO(m::Module)
        N = findfirst(==(m), GPIO_PADS)
        N isa Nothing && throw(ArgumentError("Given pad not a GPIO pad!"))
        new{m.Reg,N-1}()
    end
    function GPIO(i::Integer)
        0 <= i < length(GPIO_PADS) || throw(ArgumentError("No GPIO with number $(i)!"))
        reg = @inbounds(GPIO_PADS[i+1]).Reg
        new{reg,i}()
    end
end

function setindex!(g::GPIO, d)

end

function getindex(g::GPIO)

end

function init!(g::GPIO)

end

function direction!(g::GPIO)

end
