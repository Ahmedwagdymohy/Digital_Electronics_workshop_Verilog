vlib work

vlog synchronous_reset_d_ff.v d_flip_flop_tb.v

vsim -voptargs=+acc work.d_flip_flop_tb

add wave*

run -all

quit -sim