onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib DCM_opt

do {wave.do}

view wave
view structure
view signals

do {DCM.udo}

run -all

quit -force
