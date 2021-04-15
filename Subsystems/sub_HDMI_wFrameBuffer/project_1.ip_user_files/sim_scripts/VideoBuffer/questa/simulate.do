onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib VideoBuffer_opt

do {wave.do}

view wave
view structure
view signals

do {VideoBuffer.udo}

run -all

quit -force
