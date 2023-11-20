module RP2040

# This project was generated from the SVD file found under `src/SVD`.

#=
The following is the original license text of the SVD file.
Its license may not necessarily apply to this generated code.

Copyright (c) 2020 Raspberry Pi (Trading) Ltd.\n
    \n
    SPDX-License-Identifier: BSD-3-Clause
=#

using MCUCommon: Register, Field

include("peripherals.jl")
include("gpio.jl")
include("pwm.jl")

end # module
