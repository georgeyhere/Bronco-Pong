onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ila_0_SPI xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ila_0_SPI.udo}

run -all

quit -force
