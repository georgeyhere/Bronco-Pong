onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ila_0_SPI_opt

do {wave.do}

view wave
view structure
view signals

do {ila_0_SPI.udo}

run -all

quit -force
