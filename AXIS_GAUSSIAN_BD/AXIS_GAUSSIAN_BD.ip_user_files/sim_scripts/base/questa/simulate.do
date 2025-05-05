onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib base_opt

do {wave.do}

view wave
view structure
view signals

do {base.udo}

run -all

quit -force
