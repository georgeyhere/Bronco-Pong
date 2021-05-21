onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib clockGen_opt

do {wave.do}

view wave
view structure
view signals

do {clockGen.udo}

run -all

quit -force
